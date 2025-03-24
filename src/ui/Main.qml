import QtCore
import QtQuick
import QtQuick.Controls
import QtQuick.Dialogs
import TouchstoneViewer 1.0
import "."

ApplicationWindow {
    visible: true
    width: 800
    height: 600

    header: MenuBar {
        id: menu
        width: parent.width
    }

    Plot {
        id: plot
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: parent.left
        }
    }
}
