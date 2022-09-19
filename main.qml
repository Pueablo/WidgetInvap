import QtQuick 2.1
import QtQuick.Controls 2.1
import QtQuick.Window 2.1
import QtQuick.Dialogs 1.0
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: mainWindow

    color: "#252525"
    visible: true
    onActiveChanged: { /* Coloca a pantalla completa */
        mainWindow.visibility = activeFocusItem ? Window.FullScreen : Window.Minimized;
    }

    header: BarraMenu {
    }

    StackView {
        id: stack
        initialItem:menu_inicial
        anchors.fill: parent
    }

    OpcionesMenu {
        id: menu
        x: parent.width
        y: 0
    }

    VentanaRadarPrimario {
        id: vRadarPrimario
        visible: false
    }
    VentanaRadarSecundario {
        id: vRadarSecundario
        visible: false

    }
    VentanaMenu {
        id:menu_inicial

        BotonesMenuRadar {
        }
    }


    VentanaConfiguracion {
        id: vConfiguracion
        visible: false
    }

    VentanaIdiomas {
        id: vIdiomas
        visible: false
    }

}
