import QtQuick 2.1
import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3

Item{

    Row{
        anchors.centerIn: parent
            spacing: 400
        BotonRadarGeneral{
            id: botonIng
            Text {
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 42
                color: botonIng.down ? "yellow" : "white"
                text: qsTr("INGLÉS")
            }

            onClicked:{
                stack.pop(null)
                stack.push(vRadarPrimario)
            }
        }
        BotonRadarGeneral{
            id: botonEsp
            Text {
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 42
                color: botonEsp.down ? "yellow" : "white"
                text: qsTr("ESPAÑOL")
            }

            onClicked:{
                stack.pop(null)
                stack.push(vRadarSecundario)
            }
        }
    }
}
