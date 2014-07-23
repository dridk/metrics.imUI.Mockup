import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts
import "../Common/resolutionHelperTools.js" as RHT

Rectangle {
    id: chartContainer
    width: 300 * colSpan + ((colSpan - 1)*20)
    height: 270 * rowSpan + ((rowSpan - 1)*20)

    property int rowSpan: 1
    property int colSpan: 1

    property alias title: chartTitle.text
    property alias description: chartDescription.text
    property int conversations: 0
    property int updates: 0
    property alias source: chartSRC.source

    color: Palette.WIDGET_BACKGROUND
    border.color: Palette.UI_BORDER_COLOR

    Column{
        id: wrapper
        spacing: 4
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        anchors.fill: parent
        RowLayout{
            height: 21
            spacing: 4
            anchors.right: parent.right
            anchors.left: parent.left
            Text{
                id: chartTitle
                text: "Perfomance Data"
                size: Fonts.SIZE_CHART_TITLE
            }
            Item{ //Spacer
                Layout.fillWidth: true
            }
            Icon{
                name: "conversation"
                size: Fonts.ICON_TINY
            }
            Text{
                id: chartConversations
                text: chartContainer.conversations + ""
                size: Fonts.SIZE_CHART_DESCRIPTION
            }
            Text{
                id: chartUpdates
                color: "#f54900"
                text: "+" + chartContainer.updates
                size: Fonts.SIZE_CHART_DESCRIPTION
                visible: chartContainer.updates
            }
        }
        Text{
            id: chartDescription
            text: "Comparative of two years 2013-2014"
            size: Fonts.SIZE_CHART_DESCRIPTION
        }
        Image{
            id: chartSRC
            anchors.horizontalCenter: parent.horizontalCenter
            source: "./resources/chart.1.png"
        }
    }

}
