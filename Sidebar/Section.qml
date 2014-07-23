import QtQuick 2.0
import QtQuick.Layouts 1.1

ColumnLayout {
    id: section
    width: 240
    height: 400

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
}
