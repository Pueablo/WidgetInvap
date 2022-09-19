import QtQuick 2.15
import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import QtQuick.Dialogs 1.2

Button{
    id:botonCambiaIdioma

    width: 120
    height: 60

    Text {
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: qsTr("Cambiar\nidioma")
        font.pixelSize: 20
        color: botonCambiaIdioma.down ? "yellow" : "white"


    }

    background: Rectangle {
        border.color: "white"
        radius: 15
        color: "red"
    }



    onClicked: {

    }

}
