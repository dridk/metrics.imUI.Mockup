import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/resolutionHelperTools.js" as RHT

Item {
    id: section
    width: 240
    height: (parent.height / 2) || 200

    property alias title: sectionTitle.text
    property alias sectionItem: listView.delegate
    property alias sectionModel: listView.model

    signal moreClick

    SectionTitle{
        id: sectionTitle
        text: "Dash Views"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
    }

    ListView {
        id: listView
        anchors.top: sectionTitle.bottom
        anchors.right: parent.right
        anchors.bottom: moreItem.top
        anchors.left: parent.left
        boundsBehavior: Flickable.StopAtBounds
        flickableDirection: Flickable.VerticalFlick
        clip: true
    }

    MoreItem{
        id: moreItem
        visible: listView.contentHeight > listView.height
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        onClick: moreClick()
    }
//    Scrollbar {
//        anchors.bottom: parent.bottom
//        anchors.top: parent.top
//        anchors.right: parent.right
//        flickable: listView
//    }
}
