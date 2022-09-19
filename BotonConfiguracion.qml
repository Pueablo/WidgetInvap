import QtQuick 2.15
import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import QtQuick.Dialogs 1.2

Button{
    anchors.right: parent.right
    id: botonConfiguracion
    width: 120
    height: 60

    icon.source: botonConfiguracion.down ? "qrc:/Imagenes/clipart2186150.png" : "qrc:/Imagenes/image.png"
    icon.width: 50
    icon.height: 50
    Text {
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 20
        color: botonConfiguracion.down ? "yellow" : "white"


    }

    background: Rectangle {
        border.color: "white"
        radius: 15
        color: "red"
    }                        
}
