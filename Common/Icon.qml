import QtQuick 2.0

import "fonts.js" as Fonts
import "palette.js" as Palette

Item{
    id: iconContainer
    property int size: 24
    property string name: "glass"
    property alias color: icon.color

    width: size
    height: size

    Text{
        id: icon
        text: Fonts.getIcon(parent.name)
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: iconContainer.size
        font.family: Fonts.ICON_FONT
        color: Palette.UI_ACTIVE_COLOR
    }
}
