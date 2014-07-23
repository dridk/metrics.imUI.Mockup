import QtQuick 2.0
import QtQuick.Layouts 1.1

import "../Common/palette.js" as Palette

Rectangle {
    id: sidebar
    width: 240
    height: 600
    color: "#2a4050"


    ColumnLayout {
        id: columnMain
        spacing: 11
        anchors.bottomMargin: 11
        anchors.topMargin: 11
        anchors.fill: parent
        Image{
            anchors.horizontalCenter: parent.horizontalCenter
            source: "assets/logo_full.png"
        }
        Section{
            anchors.left: parent.left
            anchors.right: parent.right
            height: sidebar.height * 0.4
            title: "DASH VIEWS"
            sectionItem: ViewItem{
                text: textm
                     updates:  updatesm
                     selected: selectedm
            }
            sectionModel: ListModel{
                ListElement{
                    textm: "Personal"
                    updatesm: 23
                    selectedm: true
                }
                ListElement{
                    textm: "Work"
                    updatesm: 12
                    selectedm: false
                }
                ListElement{
                    textm: "Play"
                    updatesm: 8
                    selectedm: false
                }
                ListElement{
                    textm: "Eat"
                    updatesm: 14
                    selectedm: false
                }
                ListElement{
                    textm: "Sleep"
                    updatesm: 25
                    selectedm: false
                }
            }
        }
        Rectangle{
            height: 10
            anchors.left: parent.left
            anchors.right: parent.right
            color: Palette.WIDGET_BACKGROUND_I
        }

        Section{
            Layout.fillHeight: true
            title: "Recent Activity"
            sectionItem: FeedItem{
                header: headerm
                text: textm
            }
            sectionModel: ListModel{
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
                ListElement{
                    headerm: "<b>Sasha S.</b>@perfomanc..."
                    textm: "Does anyone know what's going on there?"
                }
            }
        }

    }
}
