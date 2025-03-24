import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Dialogs
import TouchstoneViewer 1.0

ToolBar {
    RowLayout {
        Button {
            text: qsTr("Выберите файл")
            focusPolicy: Qt.TabFocus
            onClicked: fileDialog.open()
        }

        Text {
            id: menuTitle
            text: controller.title
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }

    }

    FileDialog {
        id: fileDialog
        currentFolder: StandardPaths.standardLocations(StandardPaths.DocumentsLocation)[0]
        title: "Выберите файл Touchstone"
        nameFilters: ["Touchstone files (*.s1p)"]
        onAccepted: controller.openFile(selectedFile)
    }

    Connections {
        target: controller
        function onStateChanged(){
            menuTitle.text = controller.title
        }
    }


}


