import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/resolutionHelperTools.js" as RHT

ColumnLayout {
    id: section
    width: 240
    height: 200

    property alias title: sectionTitle.text
    property alias sectionItem: listView.delegate
    property alias sectionModel: listView.model

    SectionTitle{
        id: sectionTitle
        text: "Dash Views"
        anchors.left: parent.left
        anchors.right: parent.right
    }

    ListView {
        id: listView
        boundsBehavior: Flickable.StopAtBounds
        flickableDirection: Flickable.VerticalFlick
        anchors.left: parent.left
        anchors.right: parent.right
        Layout.fillHeight: true
        clip: true
    }

    MoreItem{
        visible: listView.contentHeight > listView.height
        anchors.left: parent.left
        anchors.right: parent.right
    }
}
