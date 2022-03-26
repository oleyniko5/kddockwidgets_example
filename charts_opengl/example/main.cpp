#include <kddockwidgets/Config.h>
#include <kddockwidgets/DockWidgetQuick.h>

#include <QQmlApplicationEngine>
#include <QApplication>

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    QQmlApplicationEngine appEngine;
    KDDockWidgets::Config::self().setQmlEngine(&appEngine);
    appEngine.load((QUrl("qrc:/main.qml")));

    return QApplication::exec();
}