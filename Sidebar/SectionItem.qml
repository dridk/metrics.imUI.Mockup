import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common/palette.js" as Palette
import "../Common/resolutionHelperTools.js" as RHT

Rectangle {
    width: 240
    height: RHT.em(40)
    color: selected ? Palette.SELECTION_COLOR : Qt.lighter(Palette.VIEW_BACKGROUND_I, hover ? 1.2 : 1)

    property bool selected: false
    property alias clickable: sensor.enabled
    property alias hover: sensor.containsMouse
    property alias pressed: sensor.pressed
    signal click

    default property alias _contentChildren: rowLayout.data

    RowLayout{
        id: rowLayout
        anchors.rightMargin: RHT.em(25)
        anchors.leftMargin: RHT.em(25)
        anchors.fill: parent

    }

    MouseArea{
        id: sensor
        hoverEnabled: true
        anchors.fill: parent
        onClicked: parent.click()
    }
}
