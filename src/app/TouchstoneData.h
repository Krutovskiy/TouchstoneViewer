#ifndef STATE_H
#define STATE_H

#include <QPointF>
#include <QString>
#include <QVector>

class QIODevice;


class TouchstoneData
{
public:
    using Result = std::variant<TouchstoneData, QString>;

    static Result fromByteArray(const QByteArray & data);
    const QStringList headers() const { return m_headers; }
    const QVector<double> frequencies() const { return m_frequencies; }
    const QVector<double> logMags() const { return m_logMags; }

private:
    void appendData(double freq, double realPart, double imagPart);

private:
    QStringList m_headers;
    QVector<double> m_frequencies;
    QVector<double> m_logMags;
};



#endif // STATE_H
