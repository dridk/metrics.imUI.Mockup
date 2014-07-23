import QtQuick 2.0

Item {
    id: toolbarContainer
    width: 800
    height: 600

    WidgetToolbar{
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top

    }
}
