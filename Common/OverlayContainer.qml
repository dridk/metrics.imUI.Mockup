import QtQuick 2.0
import "palette.js" as Palette

MouseArea {
    id: container
    width: 1000
    height: 600
    hoverEnabled: true
    propagateComposedEvents: false

    default property alias _contentChildren: overlay.data

    Rectangle{
        id: overlay
        anchors.fill: parent
        color: Palette.OVERLAY_BACKGROUND
        //Children go here

    }
}
