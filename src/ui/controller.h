#ifndef CONTROLLER_H
#define CONTROLLER_H


#include <QObject>
#include <QPair>
#include <QPointF>
#include <QVector>

class TouchstoneFile;
class TouchstoneData;

class Controller : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString title READ title NOTIFY stateChanged)
    Q_PROPERTY(QVector<QPointF> points READ points NOTIFY stateChanged)
    Q_PROPERTY(QPointF minMaxFreq READ minMaxFreq NOTIFY stateChanged)
    Q_PROPERTY(QPointF minMaxLogMag READ minMaxLogMag NOTIFY stateChanged)

public:
    explicit Controller(TouchstoneFile * dataProcessor, QObject *parent = nullptr);
    void updateState(const TouchstoneData * state);

    const QString & title() const { return m_title; }
    const QVector<QPointF> & points() const { return m_points; }
    const QPointF & minMaxFreq() const { return m_minMaxFreq; }
    const QPointF & minMaxLogMag() const { return m_minMaxLogMag; }

public slots:
    void openFile(const QString & fileUrl);

signals:
    void error(const QString & error);
    void stateChanged();

private:
    TouchstoneFile * m_fileReader;
    QString m_title;
    QVector<QPointF> m_points;
    QPointF m_minMaxFreq;
    QPointF m_minMaxLogMag;
};

#endif // CONTROLLER_H
