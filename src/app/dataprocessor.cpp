#include "dataprocessor.h"
#include <QFile>
#include <QTextStream>
#include <QDebug>
#include <cmath>

DataProcessor::DataProcessor(QObject *parent) : QObject(parent)
{
    connect(&m_watcher, &QFutureWatcher<Result>::finished, this, [this]() {
        m_result = m_watcher.future().takeResult();
        if (auto state = std::get_if<State>(&m_result)){
            emit processingFinished(state);
        }
        else if (auto err = std::get_if<QString>(&m_result)) {
            emit error(err);
        }
    });
}

void DataProcessor::processFile(const QString &fileUrl)
{
    QString filePath = QUrl(fileUrl).toLocalFile();

    QFuture<Result> future = QtConcurrent::run([this, filePath]() {
        return readAndProcessFile(filePath);
    });

    m_watcher.setFuture(future);
}

Result DataProcessor::readAndProcessFile(const QString &filePath)
{
    State state;
    QFile file(filePath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        return tr("Не удалось прочитать файл: %1").arg(filePath);
    }

    QTextStream in(&file);
    while (!in.atEnd()) {
        QString line = in.readLine().trimmed();
        if (line.isEmpty()) continue;

        if (line.startsWith("#") || line.startsWith("!")) {
            state.headers << line;
        }
        else {
            QStringList parts = line.split(" ", Qt::SkipEmptyParts);
            if (parts.size() < 3) {
                return tr("Ошибка парсинга строки: %1").arg(line);
            }

            double freq = parts[0].toDouble();
            double realPart = parts[1].toDouble();
            double imagPart = parts[2].toDouble();

            double magnitude = std::sqrt(realPart * realPart + imagPart * imagPart);
            double logMag = 20 * std::log10(magnitude);
            state.appendData(freq, logMag);
        }
    }

    file.close();
    return state;
}
