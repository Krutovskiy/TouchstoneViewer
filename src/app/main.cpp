#include <QFontDatabase>
#include <QGuiApplication>
#include <QGuiApplication>
#include <QPair>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "src/app/TouchstoneFile.h"
#include "src/ui/controller.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Controller>("TouchstoneViewer", 1, 0, "Controller");


    Controller controller(new TouchstoneFile());

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("controller", &controller);

    const QUrl url(QStringLiteral("qrc:/TouchstoneViewer/src/ui/Main.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
