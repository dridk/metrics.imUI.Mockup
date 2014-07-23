import QtQuick 2.0

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts

SectionItem {
    property alias text: titleText.text
    Text {
        id: titleText
        color: "#118db1"
        size: Fonts.SIZE_SMALL
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        font.family: "Verdana"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.fill: parent
        font.capitalization: Font.AllUppercase
    }
}
