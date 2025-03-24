#include "TouchstoneFile.h"

#include <QFile>


TouchstoneFile::TouchstoneFile(QObject *parent) : QObject(parent)
{
    connect(&m_watcher, &QFutureWatcher<Result>::finished, this, [this]() {
        m_result = m_watcher.future().takeResult();
        if (auto state = std::get_if<TouchstoneData>(&m_result)){
            emit processingFinished(state);
        }
        else if (auto err = std::get_if<QString>(&m_result)) {
            emit error(err);
        }
    });
}

void TouchstoneFile::processFile(const QString &fileUrl)
{
    QString filePath = QUrl(fileUrl).toLocalFile();

    QFuture<Result> future = QtConcurrent::run([this, filePath]() {
        return readAndProcessFile(filePath);
    });

    m_watcher.setFuture(future);
}

Result TouchstoneFile::readAndProcessFile(const QString &filePath)
{
    QFile file(filePath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        return tr("Не удалось прочитать файл: %1").arg(filePath);
    }

    QByteArray data;
    data.reserve(file.size());
    data = file.readAll();

    auto result = TouchstoneData::fromByteArray(data);

    file.close();
    return result;
}
