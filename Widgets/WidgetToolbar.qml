import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts
import "../Common/resolutionHelperTools.js" as RHT

Column {
    width: 800
    height: 44
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
        VerticalSeparator{}
        Button{
            icon: "search"
        }
        Item{ //Spacer
            Layout.fillWidth: true
        }
        Button{
            icon: "projector"
        }
        Button{
            icon: "print"
        }
        VerticalSeparator{}
        Button{
            icon: "share_alt"
            text: "3"
        }
        Button{
            icon: "conversation"
            text: "24 +5"
        }

        Avatar{
          width: 40
        }

//        Text{
//            text: "Logged in as:"
//            size: Fonts.SIZE_SMALL
//            color: Palette.TEXT_FADED_COLOR
//        }
//        Text{
//            id: userView
//            color: Palette.LINK_COLOR
//            text: "Eugene Trounev"
//            size: Fonts.SIZE_SMALL
//        }
}
}
