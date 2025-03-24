#ifndef STATE_H
#define STATE_H

#include <QMetaType>
#include <QPointF>
#include <QString>
#include <QVector>


struct State
{
    QStringList headers;
    QVector<double> frequencies;
    QVector<double> logMags;
    double minFreq = std::numeric_limits<double>::max();
    double maxFreq = std::numeric_limits<double>::lowest();
    double minLogMag = std::numeric_limits<double>::max();
    double maxLogMag = std::numeric_limits<double>::lowest();

    void appendData(double freq, double logMag) {
        minFreq = std::min(minFreq, freq);
        maxFreq = std::max(maxFreq, freq);
        minLogMag = std::min(minLogMag, logMag);
        maxLogMag = std::max(maxLogMag, logMag);

        frequencies.append(freq);
        logMags.append(logMag);
    }
};

Q_DECLARE_METATYPE(State)

#endif // STATE_H
