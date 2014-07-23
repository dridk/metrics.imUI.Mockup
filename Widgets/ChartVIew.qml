import QtQuick 2.0

import "../Data"
import "../Common/palette.js" as Palette
import "../Common/fonts.js" as Fonts
import "../Common/resolutionHelperTools.js" as RHT

Flickable{
    id: viewContainer
    width: 1200
    height: 600
    flickableDirection: Flickable.VerticalFlick
    clip: true

    contentWidth: wrapper.width
    contentHeight: wrapper.height

    Flow{
        id: wrapper
        width: parent.width
        spacing: 20
        Repeater{

            delegate: ChartWidget{
                colSpan: colSpanm
                rowSpan: rowSpanm
                title: titlem
                description: descriptionm
                conversations: conversationsm
                updates: updatesm
                source: chartSRCm
            }
            model: ChartsModel{}
        }
        Item{ //Spacer
            width: parent.width
            height: 20
        }
    }
}
