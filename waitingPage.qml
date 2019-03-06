import QtQuick 2.0
import QtQuick.Controls 2.0
Item {
    width:1280
    height: 800

    SwipeView{
        id:swipAdvertisment
        anchors.fill: parent

        Item{
            id:page1
            Image {
                id: imagePage1
                source: "images/coffee1page.jpg"
                anchors.fill: parent
                Text {
                    id: topic_text
                    x: 527
                    y: 152
                    width: 710
                    height: 48
                    color: "#ffffff"
                    text: qsTr("The new live style of your making a coffees")
                    verticalAlignment: Text.AlignTop
                    font.bold: false
                    styleColor: "#ffffff"
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 35
                }

                Text {
                    id: sub_text
                    x: 591
                    y: 73
                    color: "#ffffff"
                    text: qsTr("Smart Coffee Machine Maker")
                    font.bold: true
                    font.pixelSize: 40
                }

                Column {
                    id: column
                    x: 725
                    y: 251
                    width: 400
                    height: 400
                    spacing: 40

                    Text {
                        id: choice1
                        color: "#ffffff"
                        text: qsTr("Good Quality")
                        styleColor: "#ffffff"
                        font.pixelSize: 35
                        width: column.width
                    }

                    Text {
                        id: choice2
                        text: qsTr("Good Favor")
                        color: "#ffffff"
                        styleColor: "#ffffff"
                        font.pixelSize: 35
                        width: column.width
                    }

                    Text {
                        id: choice3
                        text: qsTr("Good Innovation")
                        color: "#ffffff"
                        styleColor: "#ffffff"
                        font.pixelSize: 35
                        width: column.width
                    }

                }

                Image {
                    id: image
                    x: 648
                    y: 251
                    width: 48
                    height: 45
                    source: "images/checked.png"
                }

                Image {
                    id: image1
                    x: 648
                    y: 332
                    width: 48
                    height: 45
                    source: "images/checked.png"
                }

                Image {
                    id: image2
                    x: 648
                    y: 414
                    width: 48
                    height: 45
                    source: "images/checked.png"
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    advertisWidget.activateLogin();
                }
            }
        }
        Item{
            id:page2
            Image {
                    id: imagePage2
                    source: "images/coffee2page.jpg"
                    anchors.fill: parent

                    Rectangle {
                        id: rectangle
                        width: 200
                        height: 200
                        color: "#4d000000"
                        anchors.fill: parent
                    }

                    Text {
                        id: topic_text1
                        x: 39
                        y: 247
                        width: 640
                        height: 73
                        color: "#ffffff"
                        text: qsTr("Machine lerning tecnology")
                        verticalAlignment: Text.AlignVCenter
                        font.bold: true
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#ffffff"
                        font.pixelSize: 45
                    }

                    Image {
                        id: image_mac
                        x: 87
                        y: 356
                        width: 544
                        height: 402
                        source: "images/machine learn.png"
                    }

                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                       advertisWidget.activateLogin();
                    }
                }
        }
        Item{
            id:page3
            Image {
                    id: imagePage3
                    source: "images/coffee3page.png"
                    anchors.fill: parent

                    Rectangle{
                        anchors.fill: parent
                        color: "#33ffffff"
                    }

                    Text {
                        id: text1
                        x: 76
                        y: 94
                        width: 606
                        height: 85
                        text: qsTr("Good Quality Product")
                        horizontalAlignment: Text.AlignHCenter
                        font.bold: true
                        font.pixelSize: 50
                    }

                    Column {
                        id: columnMaterial
                        x: 210
                        y: 194
                        width: 339
                        height: 315
                        spacing: 40

                        Text {
                            id: materail1
                            text: qsTr("Coffee")
                            font.bold: true
                            font.pixelSize: 37
                            width: columnMaterial.width
                        }
                        Text {
                            id: materail2
                            text: qsTr("Sugar")
                            font.bold: true
                            font.pixelSize: 37
                            width: columnMaterial.width
                        }
                        Text {
                            id: materail3
                            text: qsTr("Milk")
                            font.bold: true
                            font.pixelSize: 37
                            width: columnMaterial.width
                        }
                        Text {
                            id: materail4
                            text: qsTr("Chocolate")
                            font.bold: true
                            font.pixelSize: 37
                            width: columnMaterial.width
                        }
                    }

                    /*Image {
                        id: imageMat1
                        x: 118
                        y: 194
                        width: 50
                        height: 45
                        source: "coffee.png"
                    }

                    Image {
                        id: imageMat2
                        x: 118
                        y: 279
                        width: 50
                        height: 45
                        source: "sugar.png"
                    }

                    Image {
                        id: imageMat3
                        x: 118
                        y: 365
                        width: 50
                        height: 45
                        source: "milk.png"
                    }

                    Image {
                        id: image4
                        x: 118
                        y: 456
                        width: 50
                        height: 45
                        source: "chocolate-bar.png"
                    }
                }*/
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    advertisWidget.activateLogin();
                }
            }
        }

    }

    Timer{
        running: true
        repeat: true
        interval: 5000
        onTriggered:
        {
            var nexIndex = (swipAdvertisment.currentIndex + 1) % swipAdvertisment.count
            swipAdvertisment.setCurrentIndex(nexIndex)
        }
    }


    }
    PageIndicator{
        id:pageIndicator
        count: swipAdvertisment.count
        currentIndex: swipAdvertisment.currentIndex
        anchors.bottom: swipAdvertisment.bottom
        anchors.horizontalCenter: parent.horizontalCenter


    }
}
