import QtQuick 2.0

import "./"

import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts

Rectangle{
    id: bage

    property bool inverse: false
    property alias text: bageText.text


    width: bageText.paintedWidth+15
    height: bageText.paintedHeight+5
    radius: height/2

    color: bage.inverse ? Palette.TEXT_DEFAULT_COLOR_I : Palette.TEXT_DEFAULT_COLOR

    Text{
        id: bageText

        color: bage.inverse ? Palette.TEXT_DEFAULT_COLOR: Palette.TEXT_DEFAULT_COLOR_I

        size: Fonts.SIZE_TINY

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
