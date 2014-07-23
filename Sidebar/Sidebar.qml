import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Data"
import "../Common/palette.js" as Palette

Rectangle {
    id: sidebar
    width: 240
    height: 600
    color: Palette.VIEW_BACKGROUND_I


    ColumnLayout {
        id: columnMain
        spacing: 11
        anchors.bottomMargin: 11
        anchors.topMargin: 11
        anchors.fill: parent
        Image{
            anchors.horizontalCenter: parent.horizontalCenter
            source: "assets/logo_full.png"
        }
        Section{
            anchors.left: parent.left
            anchors.right: parent.right
            height: sidebar.height * 0.4
            title: "DASH VIEWS"
            sectionItem: ViewItem{
                text: textm
                     updates:  updatesm
                     selected: selectedm
            }
            sectionModel: DashboardModel{}
        }
        Rectangle{
            height: 10
            anchors.left: parent.left
            anchors.right: parent.right
            color: Palette.WIDGET_BACKGROUND_I
        }

        Section{
            Layout.fillHeight: true
            title: "Recent Activity"
            sectionItem: FeedItem{
                header: headerm
                text: textm
            }
            sectionModel: NewsFeedModel{}
        }

    }
}
