import QtQuick 2.1
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0
ToolBar {
    background: Rectangle{
        color: "black"
    }

    RowLayout {
        anchors.fill: parent

        ToolButton {
            id: botonMenu
            onClicked:{
                stack.pop(null)
            }

            background: Rectangle {
                implicitWidth: 40
                implicitHeight: 40
                color: "black"
            }
            Image {
                id: bug
                source: "qrc:/Imagenes/imagen.png"
                sourceSize: Qt.size(parent.width, parent.height)
                smooth: true
                visible: false
            }

            ColorOverlay {
                anchors.fill: bug
                source: bug
                color: botonMenu.down ? "#C8C8C8" : "white"
            }
        }
        Label {
            text: qsTr("DEMOSTRACIÓN INVAP")
            elide: Label.ElideRight
            horizontalAlignment: Qt.AlignHCenter
            verticalAlignment: Qt.AlignVCenter
            Layout  .fillWidth: true
            color: "white"
            font.bold: true
        }
        ToolButton {
            onClicked: menu.open()

            contentItem: Text {
                text: ":"
                font.bold: true
                font.pixelSize: 30
                color: "white"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignLeft
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitWidth: 40
                implicitHeight: 40
                color: "black"

            }
        }
    }
}
