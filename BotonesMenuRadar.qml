import QtQuick 2.1
import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3

Item{
    anchors.fill: parent
    Rectangle{

        x:mainWindow.width/2
        y: mainWindow.height/5

        Text {
            id: name
            anchors.fill: parent
            text: qsTr("BIENVENIDO")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            color: "white"
            font.pixelSize: 95
            font.bold: true
        }
    }
    Rectangle{

        x: mainWindow.width/2
        y: mainWindow.height/3.1
        Image {
            id: bug
            anchors.centerIn: parent
            source: "qrc:/Imagenes/INVAP-logo.png"
            sourceSize: Qt.size(450, 350)
            smooth: true
        }
    }
    Row{
        x: mainWindow.width/6
        y: mainWindow.height/2
        spacing: 400

        BotonRadarGeneral{
            id: botonRadar1
            Text {
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 42
                font.bold: true
                color: botonRadar1.down ? "C8C8C8" : "white"
                text: qsTr("RADAR\nPRIMARIO")
            }

            onClicked:{
                stack.pop(null)
                stack.push(vRadarSecundario)
            }
        }
        BotonRadarGeneral{
            id: botonRadar2
            Text {
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 42
                font.bold: true
                color: botonRadar2.down ? "C8C8C8" : "white"
                text: qsTr("RADAR\nSECUNDARIO")
            }

            onClicked:{
                stack.pop(null)
                stack.push(vRadarPrimario)
            }
        }
    }

    Rectangle {
        y: mainWindow.height/1.25
        x: 20

        implicitWidth: 305
        implicitHeight: 130
        color: "transparent"
        Image {
            id: bug1
            source: "qrc:/Imagenes/fuerza3.png"
            sourceSize: Qt.size(parent.width, parent.height)
            smooth: true
            visible: true
        }



    }
}
