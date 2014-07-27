import QtQuick 2.0


import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette

Rectangle{
    id: rectangle1

    width: 800
    height: 800
    color: Palette.VIEW_BACKGROUND_I

    ColumnLayout{
        anchors.fill: parent

        Rectangle {
            id: chartContainer
            width: parent.width
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
                        color: titleSensor.containsMouse ? Palette.LINK_COLOR : Palette.UI_ACTIVE_COLOR
                    }
                    Item{ //Spacer
                        Layout.fillWidth: true
                    }
                    Icon{
                        name: "conversation"
                        size: Fonts.ICON_TINY
                        color: titleSensor.containsMouse ? Palette.UI_ACTIVE_COLOR : Palette.UI_INACTIVE_COLOR
                    }
                    Text{
                        id: chartConversations
                        text: chartContainer.conversations + ""
                        size: Fonts.SIZE_CHART_DESCRIPTION
                        color: titleSensor.containsMouse ? Palette.UI_ACTIVE_COLOR : Palette.UI_INACTIVE_COLOR
                    }
                    Text{
                        id: chartUpdates
                        color: Palette.UPDATE_COLOR
                        text: "+" + chartContainer.updates
                        size: Fonts.SIZE_CHART_DESCRIPTION
                        visible: chartContainer.updates
                    }
                    MouseArea{
                        id: titleSensor
                        anchors.fill: parent
                        hoverEnabled: true
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
    }

    Button{
        anchors.rightMargin: 10
        anchors.topMargin: 10
        anchors.top: parent.top
        anchors.right: parent.right
        icon: "close"
        style: Palette.BUTTON_INVERSE
    }

}
