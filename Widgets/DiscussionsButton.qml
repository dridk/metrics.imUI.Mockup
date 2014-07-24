import QtQuick 2.0

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts

Row{
    id: container
    spacing: 6
    property int conversations: 0
    property int updates: 0

    Icon{
        name: "conversation"
        size: Fonts.ICON_TINY
    }
    Text{
        id: chartConversations
        text: container.conversations + ""
        size: Fonts.SIZE_CHART_DESCRIPTION
    }
    Text{
        id: chartUpdates
        color: Palette.UPDATE_COLOR
        text: "+" + container.updates
        size: Fonts.SIZE_CHART_DESCRIPTION
        visible: container.updates
    }
    MouseArea{
        id: sensor
        anchors.fill: parent
    }
}
