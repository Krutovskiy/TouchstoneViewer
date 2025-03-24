#ifndef CONTROLLER_H
#define CONTROLLER_H


#include <QObject>
#include <QVector>
#include <QPointF>
#include <QPair>

class DataProcessor;
class State;

class Controller : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString title READ title NOTIFY stateChanged)
    Q_PROPERTY(QVector<QPointF> points READ points NOTIFY stateChanged)
    Q_PROPERTY(QPointF minMaxFreq READ minMaxFreq NOTIFY stateChanged)
    Q_PROPERTY(QPointF minMaxLogMag READ minMaxLogMag NOTIFY stateChanged)

public:
    explicit Controller(DataProcessor * dataProcessor, QObject *parent = nullptr);
    void updateState(const State * state);

    const QString & title() const;
    const QVector<QPointF> & points() const;
    const QPointF & minMaxFreq() const;
    const QPointF & minMaxLogMag() const;

public slots:
    void openFile(const QString & fileUrl);


signals:
    void statusChanged(const QString & status);
    void titleChanged(const QString & title);
    void stateChanged();

private:
    DataProcessor * dataProcessor;
    QString m_title;
    QVector<QPointF> m_points;
    QPointF m_minMaxFreq;
    QPointF m_minMaxLogMag;
};

#endif // CONTROLLER_H
