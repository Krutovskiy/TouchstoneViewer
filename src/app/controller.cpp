#include "controller.h"
#include "state.h"
#include <QDebug>
#include "dataprocessor.h"

Controller::Controller(DataProcessor * dataProcessor, QObject *parent)
    : dataProcessor(dataProcessor),
    QObject{parent}
{
    connect(dataProcessor, &DataProcessor::processingFinished, this, &Controller::updateState);
}

const QString &Controller::title() const
{
    return m_title;
}

const QVector<QPointF> &Controller::points() const
{
    return m_points;
}

const QPointF &Controller::minMaxFreq() const
{
    return m_minMaxFreq;
}

const QPointF &Controller::minMaxLogMag() const
{
    return m_minMaxLogMag;
}

void Controller::updateState(const State * state)
{
    QStringList headers;
    foreach (auto & value, state->headers) {
        headers.append(QString("[%1]").arg(value.mid(2).trimmed()));
    }
    m_title = headers.join(' ');

    m_points.clear();
    m_points.reserve(state->frequencies.size());
    for (int i = 0; i < state->frequencies.size(); ++i) {
        m_points.append(QPointF(state->frequencies[i], state->logMags[i]));
    }

    m_minMaxFreq = {state->minFreq, state->maxFreq};
    m_minMaxLogMag = {state->minLogMag, state->maxLogMag};

    emit stateChanged();
}

void Controller::openFile(const QString &fileUrl)
{
    dataProcessor->processFile(fileUrl);
}
