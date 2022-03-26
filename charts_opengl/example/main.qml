import QtQuick
import QtQuick.Controls
import QtCharts

import com.kdab.dockwidgets 1.0 as KDDW

ApplicationWindow {
    width: 640
    height: 480
    visible: true

    KDDW.MainWindowLayout {
        anchors.fill: parent
        uniqueName: "MainWindow"

        KDDW.DockWidget {
            id: dock_widget
            uniqueName: "dock_widget"
            ChartView {
                title: "Line"
                anchors.fill: parent

                LineSeries {
                    name: "LineSeries"
                    useOpenGL: true
                    XYPoint { x: 1.5; y: 1.5 }
                    XYPoint { x: 1.9; y: 1.6 }
                    XYPoint { x: 2.5; y: 2.9 }
                    XYPoint { x: 3.1; y: 2.1 }
                    XYPoint { x: 4.2; y: 6.7 }
                }
            }
        }
        Component.onCompleted: {
            addDockWidget(dock_widget, KDDW.KDDockWidgets.Location_OnBottom);
        }
    }
}
