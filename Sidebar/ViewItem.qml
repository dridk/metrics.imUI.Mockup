import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/fonts.js" as Fonts
import "../Common/palette.js" as Palette

SectionItem{
    id: viewItem
    property alias text: itemText.text
    property int updates: 0

    Text{
        id: itemText
        color: Palette.TEXT_DEFAULT_COLOR_I
        text: "Test"
        verticalAlignment: Text.AlignVCenter
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        Layout.fillWidth: true
        size: Fonts.SIZE_WIDGET_TEXT
    }
    Badge{
        anchors.verticalCenter: parent.verticalCenter
        text: viewItem.updates+""
        inverse: viewItem.selected
    }
}
