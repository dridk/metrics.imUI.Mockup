import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Data"
import "../Common"
import "../Common/palette.js" as Palette

Rectangle {
    id: sidebar
    width: 240
    height: 600
    color: Palette.VIEW_BACKGROUND_I


    ColumnLayout {
        id: columnMain
        spacing: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent
        Image{
            anchors.horizontalCenter: parent.horizontalCenter
            source: "assets/logo_full.png"
        }
        Button{
            icon: "add"
            style: Palette.BUTTON_PRIMARY
            Layout.alignment: Qt.AlignHCenter
        }

        Section{
            anchors.left: parent.left
            anchors.right: parent.right
            title: "DASH VIEWS"
            sectionItem: ViewItem {
                text: textm
                     updates:  updatesm
                     selected: selectedm
            }
            sectionModel: DashboardModel{}
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
