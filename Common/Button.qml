import QtQuick 2.0

import "./"

import "fonts.js" as Fonts
import "palette.js" as Palette

MouseArea {
    id: buttonContainer
    width: iconBackground.width < 40 ? 40 : iconBackground.width
    height: 40

    property string icon: ""
    property string text: ""
    property int style: Palette.BUTTON_NORMAL

    Rectangle {
        id: iconBackground

        scale: buttonContainer.pressed ? 0.9 : 1

        color: buttonContainer.style === Palette.BUTTON_NORMAL ? Palette.VIEW_BACKGROUND : Palette.VIEW_BACKGROUND_I
        width: 10 + buttonIcon.width + (5 * (buttonText.visible&&buttonIcon.visible? 1 : 0)) + buttonText.paintedWidth + 10
        height: 40

        Icon{
            id: buttonIcon
            name: buttonContainer.icon
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 10
            visible: buttonContainer.icon.length
            color: buttonContainer.style === Palette.BUTTON_NORMAL ? Palette.UI_ACTIVE_COLOR : Palette.UI_ACTIVE_COLOR_I
            anchors.verticalCenterOffset: 2
            size: buttonContainer.text.length ? Fonts.ICON_TINY : Fonts.ICON_SMALL
        }
        Text{
            id: buttonText
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 10
            color: buttonContainer.style === Palette.BUTTON_NORMAL ? Palette.UI_ACTIVE_COLOR : Palette.UI_ACTIVE_COLOR_I
            visible: buttonContainer.text.length
            size: Fonts.SIZE_WIDGET_TEXT
            text: buttonContainer.text
            anchors.verticalCenterOffset: -1
        }
    }
}
