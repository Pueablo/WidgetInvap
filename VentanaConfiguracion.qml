import QtQuick 2.1
import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3

Item{
    Row{
        anchors.centerIn: parent
        spacing: 200
        Text {
            text: qsTr("Volumen\n\n50%")
            color: 'white'
            font.pixelSize: 30
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text {
            text: qsTr("País\n\nMéxico")
            color: 'white'
            font.pixelSize: 30
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text {
            text: qsTr("Inicio automático\n\nOFF")
            color: 'white'
            font.pixelSize: 30
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text {
            text: qsTr("Brillo\n\n78%")
            color: 'white'
            font.pixelSize: 30
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
        Text {
            text: qsTr("Lectura de sensores\n\nOFF")
            color: 'white'
            font.pixelSize: 30
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
