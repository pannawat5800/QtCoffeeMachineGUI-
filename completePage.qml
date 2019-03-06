import QtQuick 2.0
import QtQuick.Controls 2.0
Item {
    id:mainScreen
    width: 1280
    height: 960

    property real volumeCoffee: 0

    Rectangle{
        anchors.fill: parent
        color: "#3b000000"
    }

    states: [
        State {
            name: "name"
            PropertyChanges {
                target: mainScreen
                volumeCoffee: 623
            }
        }
    ]

    transitions: [
        Transition {
            NumberAnimation {
                target: mainScreen
                properties: "volumeCoffee"
                duration: 400
                easing.type: Easing.InOutQuad
            }

        }
    ]


    Image{
        anchors.fill: parent
        source: "janko.jpg"

        Text {
            id: nameProduct
            x: 80
            y: 60
            text: qsTr("Espresso")
            font.bold: true
            font.capitalization: Font.AllUppercase
            font.pointSize: 50
            color: "#ffffff"
            anchors{
                top: parent.top
                topMargin: 60
                left: parent.left
                leftMargin: 80
            }
        }
    }
    Image {
        id: imagebutton
        x: (parent.width - width)/2
        y: 200
        width: 600
        height: 620
        source: "coffee_cup_back.png"
    }

    /*Item {
        id: milk
        x: 340
        y: 200
        width: 600
        height: 617
        anchors.bottomMargin: 3
        clip: true
        anchors.bottom: imagebutton.bottom

        Image {
            id: milkImage
            x: 0
            y: 0
            width: 600
            height: 620
            visible: true
            anchors.bottomMargin: 0
            anchors.bottom: parent.bottom
            source: "liquid_foam.png"
        }
    }*/

    Item{
        id: coffee
        x: 340
        y: 194
        width: 600
        height: volumeCoffee
        anchors.bottomMargin: 3
        clip: true
        anchors.bottom: imagebutton.bottom

        Image {
            id: coffeeImage
            x: 0
            y: 0
            width: 600
            height: 620
            visible: true
            anchors.bottomMargin: 0
            anchors.bottom: parent.bottom
            source: "liquid_milk.png"
        }
    }

    Image {
        id: imageEdge
        x: (parent.width - width)/2
        y: 200
        width: 600
        height: 620
        source: "coffee_cup_front.png"
    }


}
