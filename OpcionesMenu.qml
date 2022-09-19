import QtQuick 2.1
import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3

Menu{
    id: menu
    MenuItem{
        id: menu1
        contentItem: Text {
            text: qsTr("Configuraciones")
            font.bold: true
            font.pixelSize: 16
            color: "white"
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignLeft
            elide: Text.ElideRight
        }

        background: Rectangle {
            implicitWidth: 40
            implicitHeight: 40
            color: menu1.highlighted ? "#252525" : "black"

        }

        onClicked:{
            stack.pop(null)
            stack.push(vConfiguracion)
        }
    }
    Menu{
        title: qsTr("Idioma")
        MenuItem {
            id: menu2
            contentItem: Text {
                text: qsTr("Español")
                font.bold: true
                font.pixelSize: 16
                color: "white"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignLeft
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitWidth: 40
                implicitHeight: 40
                color: menu2.highlighted ? "#252525" : "black"

            }
            onClicked: {
                onClicked: trans.selectLanguage("español");
            }
        }
//        MenuSeparator {
//            contentItem: Rectangle {
//                implicitWidth: 100
//                implicitHeight: 10
//                color: "white"
//            }
//        }
        MenuItem{
            id: menu3
            contentItem: Text {
                text: qsTr("Inglés")

                font.bold: true
                font.pixelSize: 16
                color: "white"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignLeft
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitWidth: 40
                implicitHeight: 40
                color: menu3.highlighted ? "#252525" : "black"

            }
            onClicked: {
                onClicked: trans.selectLanguage("ingles");
            }
        }

    }

//    topPadding: 2
//    bottomPadding: 2

        delegate: MenuItem {
            id: menuItem
            implicitWidth: 200
            implicitHeight: 40
            font.bold: true
            font.pixelSize: 16
            arrow: Canvas {
                x: parent.width - width
                implicitWidth: 40
                implicitHeight: 40
                visible: menuItem.subMenu
                onPaint: {
                    var ctx = getContext("2d")
                    ctx.fillStyle = "white"
                    ctx.moveTo(15, 15)
                    ctx.lineTo(width - 15, height / 2)
                    ctx.lineTo(15, height - 15)
                    ctx.closePath()
                    ctx.fill()
                }
            }

            indicator: Item {
                implicitWidth: 40
                implicitHeight: 40
                Rectangle {
                    width: 26
                    height: 26
                    anchors.centerIn: parent
                    visible: menuItem.checkable
//                    border.color: "#21be2b"
                    radius: 3
                    Rectangle {
                        width: 14
                        height: 14
                        anchors.centerIn: parent
                        visible: menuItem.checked
                        color: "white"
                        radius: 2
                    }
                }
            }

            contentItem: Text {
//                leftPadding: menuItem.indicator.width
//                rightPadding: menuItem.arrow.width
                text: menuItem.text
                font: menuItem.font
//                opacity: enabled ? 1.0 : 0.3
                color: "white"
//                font.bold: true
//                font.pixelSize: 16
                elide: Text.ElideRight
            }

            background: Rectangle {
                implicitWidth: 200
                implicitHeight: 40
                opacity: enabled ? 1 : 0.3
                color: menuItem.highlighted ? "#252525" : "transparent"
            }
        }

        background: Rectangle {
                implicitWidth: 200
                implicitHeight: 40
                color: "black"
//                border.color: "#21be2b"
//                radius: 2
            }
        /***************************************************************************/
        /***************************************************************************/
        /***************************************************************************/
        /***************************************************************************/
        /***************************************************************************/
}
