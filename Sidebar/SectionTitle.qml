import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/fonts.js" as Fonts
import "../Common/palette.js" as Palette

SectionItem {
    property alias text: titleText.text
    clickable: false
    Text {
        id: titleText
        color: Palette.LINK_COLOR
        size: Fonts.SIZE_SMALL
        font.family: "Verdana"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.fill: parent
        font.capitalization: Font.AllUppercase
        Layout.fillWidth: true
    }
}
