import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common"
import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts
import "../Common/resolutionHelperTools.js" as RHT

SectionItem{
    id: viewItem
    height: RHT.em(60)

    property alias header: itemHeader.text
    property alias text: itemText.text

    Avatar{
      width: RHT.em(40)
    }
    Column{
        Layout.fillWidth: true
      Text{
          id: itemHeader
          color: Palette.TEXT_DEFAULT_COLOR_I
          text: "Test"
          verticalAlignment: Text.AlignVCenter
          size: Fonts.SIZE_SMALL
      }
      Text{
          id: itemText
          color: Palette.TEXT_DEFAULT_COLOR_I
          text: "Test"
          verticalAlignment: Text.AlignVCenter
          size: Fonts.SIZE_TINY
      }
    }
}
