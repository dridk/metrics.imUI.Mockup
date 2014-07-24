import QtQuick 2.0

import "./"

import "fonts.js" as Fonts
import "palette.js" as Palette
import "resolutionHelperTools.js" as RHT

MouseArea {
    id: buttonContainer
    width: iconBackground.width < 40 ? 40 : iconBackground.width
    height: 40
    hoverEnabled: true

    property string icon: ""
    property string text: ""
    property int style: Palette.BUTTON_NORMAL

    Rectangle {
        id: iconBackground

        scale: buttonContainer.pressed ? 0.9 : 1

        color: Qt.lighter(Palette.BUTTON_STYLES[buttonContainer.style].BACKGROUND, buttonContainer.containsMouse ? 1.2 : 1)
        width: 10 + buttonIcon.width + (5 * (buttonText.visible&&buttonIcon.visible? 1 : 0)) + buttonText.paintedWidth + 10
        height: 40

        Icon{
            id: buttonIcon
            name: buttonContainer.icon
            anchors.left: parent.left
            anchors.leftMargin: 10
            visible: buttonContainer.icon.length
            color: Palette.BUTTON_STYLES[buttonContainer.style].TEXT
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            size: buttonContainer.text.length ? Fonts.ICON_TINY : Fonts.ICON_SMALL
        }
        Text{
            id: buttonText
            color: Palette.BUTTON_STYLES[buttonContainer.style].TEXT
            anchors.right: parent.right
            anchors.rightMargin: 10
            visible: buttonContainer.text.length
            size: Fonts.SIZE_WIDGET_TEXT
            text: buttonContainer.text
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            anchors.bottom: parent.bottom
            anchors.top: parent.top
        }
    }
}
