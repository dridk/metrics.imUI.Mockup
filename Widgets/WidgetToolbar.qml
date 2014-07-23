import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts

Column {
    width: 800
    height: 68
    RowLayout{
        anchors.left: parent.left
        anchors.right: parent.right
        height: 44
        Text{
            id: viewTitle
            text: "Personal"
            size: Fonts.SIZE_PAGE_TITLE
        }
        Button{
            icon: "edit"
        }
        Button{
            icon: "add"
            text: "Widget"
        }
        Button{
            icon: "search"
        }
        Item{
            Layout.fillWidth: true
        }
        Text{
            text: "Logged in as:"
        }
        Text{
            id: userView
            color: "#118ab1"
            text: "Eugene Trounev"
        }
}
    RowLayout{
        anchors.left: parent.left
        anchors.right: parent.right
        height: 24

        Text{
            id: viewSubTitle
            text: "Created on April 3, 2014 / Or any other description"
            size: Fonts.SIZE_PAGE_DESCRIPTION
            color: Palette.TEXT_FADED_COLOR
        }
    }
}
