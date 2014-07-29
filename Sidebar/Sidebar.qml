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
            source: sidebar.state == "" ? "assets/logo_full.png" : "assets/logo_min.png"
        }

        Section{
            id: sectionViews
            anchors.left: parent.left
            anchors.right: parent.right
            title: "DASH VIEWS"
            sectionItem: ViewItem {
                text: textm
                     updates:  updatesm
                     selected: selectedm
            }
            sectionModel: DashboardModel{}
            Layout.fillHeight: true

//            onMoreClick: sidebar.state = sidebar.state === "MOREA" ? "" : "MOREA"

//            Button{
//                anchors.bottom: parent.bottom
//                anchors.right: parent.right
//                icon: "add"
//                style: Palette.BUTTON_PRIMARY
//                Layout.alignment: Qt.AlignHCenter
//            }
        }

        Section{
            id: sectionFeed
            title: "Recent Activity"
            sectionItem: FeedItem{
                header: headerm
                text: textm
            }
            sectionModel: NewsFeedModel{}
            Layout.fillHeight: true
//            onMoreClick: sidebar.state = sidebar.state === "MOREB" ? "" : "MOREB"
        }

    }
    states: [
        State {
            name: "MED"

            PropertyChanges {
                target: sidebar
                width: 180
            }
        },
        State {
            name: "MIN"
            PropertyChanges {
                target: sidebar
                width: 80
            }
        }
    ]
}
