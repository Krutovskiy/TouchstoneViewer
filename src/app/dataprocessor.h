#ifndef DATAPROCESSOR_H
#define DATAPROCESSOR_H

#include <QObject>
#include <QFutureWatcher>
#include <QtConcurrent>
#include "state.h"


using Result = std::variant<State, QString>;

class DataProcessor : public QObject
{
    Q_OBJECT
public:
    explicit DataProcessor(QObject *parent = nullptr);
    void processFile(const QString &fileUrl);


signals:
    void processingFinished(const State * state);
    void error(const QString * error);

private:
    static Result readAndProcessFile(const QString &filePath);
    void updateState(const Result & result);

private:
    QFutureWatcher<Result> m_watcher;
    Result m_result;

};

#endif // DATAPROCESSOR_H
