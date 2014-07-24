import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts

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
        spacing: 2
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 15
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
                color: Palette.UI_INACTIVE_COLOR
            }
            Text{
                id: chartConversations
                text: chartContainer.conversations + ""
                size: Fonts.SIZE_CHART_DESCRIPTION
                color: Palette.UI_INACTIVE_COLOR
            }
            Text{
                id: chartUpdates
                color: Palette.UPDATE_COLOR
                text: "+" + chartContainer.updates
                size: Fonts.SIZE_CHART_DESCRIPTION
                visible: chartContainer.updates
            }
        }
        Text{
            id: chartDescription
            height: 25
            text: "Comparative of two years 2013-2014"
            size: Fonts.SIZE_CHART_DESCRIPTION
            color: Palette.TEXT_FADED_COLOR
        }
        Image{
            id: chartSRC
            anchors.horizontalCenter: parent.horizontalCenter
            source: "./resources/chart.1.png"
        }
    }

    Button{
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        icon: "edit"
        scale: containsMouse ? 1 : 0.8
        opacity: containsMouse ? 1 : 0.5
    }
}
