#ifndef DATAPROCESSOR_H
#define DATAPROCESSOR_H

#include <QFutureWatcher>
#include <QObject>
#include <QtConcurrent>

#include "TouchstoneData.h"


using Result = TouchstoneData::Result;

class TouchstoneFile : public QObject
{
    Q_OBJECT
public:
    explicit TouchstoneFile(QObject *parent = nullptr);
    void processFile(const QString &fileUrl);

signals:
    void processingFinished(const TouchstoneData * state);
    void error(const QString * error);

private:
    static Result readAndProcessFile(const QString &filePath);

private:
    QFutureWatcher<Result> m_watcher;
    Result m_result;

};

#endif // DATAPROCESSOR_H
