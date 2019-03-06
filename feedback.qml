import QtQuick 2.0

Item {
    id: mainScreen
    width: 1280
    height: 800


    Image {
        id: image
        anchors.fill: parent
        source: "coffee1page.jpg"
    }

    Text {
        id: text1
        color: "#ffffff"
        text: qsTr("Estimation")
        font.bold: true
        anchors.top: parent.top
        anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 40
        font.pixelSize: 60
    }


    Component.onCompleted: {
        listFeedback.model.append({topic: "Too Sweat"},
                                  {topic: "Too beatter"},
                                  {topic: "Too much coco"},
                                  {topic: "not decious"})
    }

    Item {
        id: itemList
        anchors{
            top: text1.bottom
            topMargin: 20
            left: parent.left
            leftMargin: 40
        }
        clip: true
        width: parent.width - 80
        height: parent.height - 150


        ListView{
            id: listFeedback
            anchors.fill: parent
            model:4
            spacing: 3
            delegate: Rectangle{
                id: mainRec
                width: parent.width
                height: 200
                radius: 5
                color: "#F54F3A2B"

                Rectangle{
                    width: parent.width - 30
                    height: parent.height - 30
                    anchors{
                        top: parent.top
                        left: parent.left
                        topMargin: 15
                        leftMargin: 15
                    }

                    color: "#99000000"
                    border.color: "#FFC300"
                    border.width: 5
                    radius: 5

                }


                Rectangle{
                    id: checkBox
                    width: 50
                    height: 50
                    anchors{
                        top:parent.top
                        left: parent.left
                        topMargin: (parent.height - height)/2
                        leftMargin: 100
                    }

                    border.color: "#ffffff"
                    border.width: 10
                    radius: 5
                    color: "#3b000000"
                }

                Text {
                    id: choice
                    text: qsTr("Too Sweat")
                    font.pixelSize: 50
                    color: "#ffffff"
                    anchors{
                        left: checkBox.right
                        leftMargin: 50
                        top: parent.top
                        topMargin: (parent.height - height)/2
                    }
                }

                MouseArea{
                    anchors.fill: parent
                    onClicked: {

                    }
                }

            }
        }

    }



}
