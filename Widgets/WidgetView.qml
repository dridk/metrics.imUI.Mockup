import QtQuick 2.0
import "../Common"

Item {
    id: toolbarContainer
    width: 1200
    height: 600

    Item{
        id: wrapper
        anchors.rightMargin: 50
        anchors.leftMargin: 50
        anchors.fill: parent


        WidgetToolbar{
            id: toolbar
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: parent.top

        }

        ChartVIew{
            id: chartview
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.topMargin: 10
            anchors.bottom: parent.bottom
            anchors.top: toolbar.bottom

        }
    }

    Scrollbar{
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        flickable: chartview
    }
}
