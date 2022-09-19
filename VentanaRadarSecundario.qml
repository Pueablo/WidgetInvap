import QtQuick 2.1
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import QtWebView 1.0


Item{
    WebView {
        id: webView
        anchors.fill: parent
        url: initialUrl
//        onLoadingChanged: function(loadRequest) {
//            if (loadRequest.errorString){
//                console.error(loadRequest.errorString);
//            }
//        }
    }

    //    menuBar: ToolBar {
    //        id: navigationBar
    //         ProgressBar {
    //             id: progress
    //             anchors {
    //                left: parent.left
    //                top: parent.bottom
    //                right: parent.right
    //                leftMargin: parent.leftMargin
    //                rightMargin: parent.rightMargin
    //             }
    //             height:3
    //             background: Item {}
    //             from: 0
    //             to: 100
    //             value: webView.loadProgress < 100 ? webView.loadProgress : 0
    //        }
    //    }
}
