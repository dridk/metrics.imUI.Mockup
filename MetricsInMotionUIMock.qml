import QtQuick 2.2
import QtQuick.Window 2.0
import QtQuick.Layouts 1.1

import "Common"

import "Browser"

import "Sidebar"
import "Widgets"

import "Common/palette.js" as Palette

Window {
    id: window
    width: 1300
    height: 760
    minimumWidth: 600
    minimumHeight: 400

    property variant definition: {
        "intendedResolution": {
            "width": 1600,
            "height": 900
        },
        "currentResolution": {
            "width": Screen.width,
            "height": Screen.height
        }
    }

    Component.onCompleted: {
        RHT.init(window)
    }

    title: "metrics.im MOCKUP"

    Fonts {
    } //Load custom and icon fonts

    Toolbar {
        id: toolbar
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
    }
    Rectangle {
        id: view
        anchors.top: toolbar.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        color: Palette.VIEW_BACKGROUND

        RowLayout {
            spacing: 0
            anchors.fill: parent
            Sidebar {
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }
            WidgetView {
                Layout.fillWidth: true
                anchors.top: parent.top
                anchors.bottom: parent.bottom
            }
        }

//        OverlayContainer{
//            anchors.fill: parent
//        }
    }

}
