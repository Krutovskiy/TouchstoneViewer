#include "src/app/controller.h"
#include "src/app/dataprocessor.h"
#include <QGuiApplication>
#include <QFontDatabase>
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QPair>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<Controller>("TouchstoneViewer", 1, 0, "Controller");


    Controller controller(new DataProcessor());

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
