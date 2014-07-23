import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette

ColumnLayout {
    id: section
    width: 240
    height: 400

    property alias showAdd: addButton.visible
    signal add

    property alias title: sectionTitle.text
    property alias sectionItem: listView.delegate
    property alias sectionModel: listView.model

    SectionTitle{
        id: sectionTitle
        text: "Dash Views"
        anchors.left: parent.left
        anchors.right: parent.right
        Button{
            id: addButton
            icon: "add"
            style: Palette.BUTTON_INVERSE
            visible: false
            onClicked: section.add()
        }
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
