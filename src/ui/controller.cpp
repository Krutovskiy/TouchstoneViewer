#include "controller.h"

#include <QDebug>

#include "src/app/TouchstoneFile.h"
#include "src/app/TouchstoneData.h"


Controller::Controller(TouchstoneFile * dataProcessor, QObject *parent)
    : m_fileReader(dataProcessor),
    QObject{parent}
{
    connect(dataProcessor, &TouchstoneFile::processingFinished, this, &Controller::updateState);
    connect(dataProcessor, &TouchstoneFile::error, this, [this](const QString * err) {
        emit error(*err);
    });
}

void Controller::updateState(const TouchstoneData * state)
{
    QStringList headers;
    foreach (auto & value, state->headers()) {
        headers.append(QString("[%1]").arg(value.mid(2).trimmed()));
    }
    m_title = headers.join(' ');

    double minFreq = std::numeric_limits<double>::max();
    double maxFreq = std::numeric_limits<double>::lowest();
    double minLogMag = std::numeric_limits<double>::max();
    double maxLogMag = std::numeric_limits<double>::lowest();

    m_points.clear();
    m_points.reserve(state->frequencies().size());
    for (int i = 0; i < state->frequencies().size(); ++i) {
        auto freq = state->frequencies()[i];
        auto magnitude = state->logMags()[i];
        m_points.append(QPointF(state->frequencies()[i], state->logMags()[i]));

        minFreq = std::min(minFreq, freq);
        maxFreq = std::max(maxFreq, freq);
        minLogMag = std::min(minLogMag, magnitude);
        maxLogMag = std::max(maxLogMag, magnitude);
    }

    m_minMaxFreq = {minFreq, maxFreq};
    m_minMaxLogMag = {minLogMag, maxLogMag};

    emit stateChanged();
}

void Controller::openFile(const QString &fileUrl)
{
    m_fileReader->processFile(fileUrl);
}
