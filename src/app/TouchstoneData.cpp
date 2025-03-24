#include "TouchstoneData.h"

#include <QFile>
#include <QString>
#include <QTextStream>

TouchstoneData::Result TouchstoneData::fromByteArray(const QByteArray & data)
{
    TouchstoneData state;
    QTextStream stream(data);
    while (!stream.atEnd()) {
        auto line = stream.readLine().trimmed();
        if (line.isEmpty()) continue;

        if (line.startsWith("#") || line.startsWith("!")) {
            state.m_headers << line;
        }
        else {
            auto parts = line.split(' ', Qt::SkipEmptyParts);
            if (parts.size() < 3) {
                return QObject::tr("Не удалось распарсить строку: %1").arg(line);
            }

            bool summ = true;
            bool isOk = false;

            double freq = parts[0].toDouble(&isOk);
            summ = summ && isOk;
            double realPart = parts[1].toDouble(&isOk);
            summ = summ && isOk;
            double imagPart = parts[2].toDouble(&isOk);
            summ = summ && isOk;

            if (!summ) {
                return QObject::tr("Не удалось распарсить строку: %1").arg(line);
            }

            state.appendData(freq, realPart, imagPart);
        }
    }

    return state;
}

void TouchstoneData::appendData(double freq, double realPart, double imagPart)
{
    double magnitude = std::sqrt(realPart * realPart + imagPart * imagPart);
    double logMag = 20 * std::log10(magnitude);

    m_frequencies.append(freq);
    m_logMags.append(logMag);
}
