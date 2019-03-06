import QtQuick 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
import Coffee 1.0
Item{
    id:state2
    width: 1280
    height: 800

    property real sugarAmount: 2
    property real milkAmount: 4
    property real coffeeAmount: 5

    Rectangle{
        id:boxOperating
        width: parent.width - 400
        height: parent.height
        color: "#7d3407"
        anchors.left: parent
        anchors.top: parent

        Text {
            id: headNameProct
            width: 369
            height: 74
            color: "#ffffff"
            text: qsTr("ESPRESSO")
            font.bold: true
            font.underline: false
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20
            font.pixelSize: 60
        }

        Image {
            id: imageSolidCup
            x: 192
            y: 180
            width: 497
            height: 524
            source: "coffee_cup_back.png"
        }
        Item {
            id: milke
            x: 192
            width: 497
            anchors.topMargin: 400 - coffeev.height - root.milkAmount * 15 + 20
            visible: true
            anchors.bottom: imageSolidCup.bottom
            anchors.top: imageSolidCup.top
            clip: true
            Image {
                x: 0
                y: 0
                width: 497
                height: 524
                visible: true
                anchors.bottomMargin: 0
                anchors.bottom: parent.bottom
                source: "liquid_milk.png"
            }
        }

        Item {
            id: coffeev
            x: 192
            width: 497
            height: coffeeAmount * 40
            anchors.topMargin: 299
            visible: true
            anchors.bottom: imageSolidCup.bottom
            anchors.top: imageSolidCup.top
            clip: true
            Image {
                x: 0
                y: -160
                width: 497
                height: 524
                visible: true
                anchors.bottomMargin: 0
                anchors.bottom: parent.bottom
                source: "liquid_coffee.png"
            }
        }

    }

    Rectangle{
        id:boxsetting
        x: -400
        y: 0
        width: 400
        height: parent.height
        color: "#f0aa58"

        anchors.left: boxOperating.right

        Text {
            id: coffeeTopSetting
            x: 123
            y: 20
            width: 155
            height: 39
            color: "#ffffff"
            text: qsTr("Coffee")
            font.capitalization: Font.AllUppercase
            visible: true
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 50
        }

        Slider {
            id: sliderCoffee
            x: 43
            anchors.top: coffeeTopSetting.bottom
            width: 330
            height: 65
            anchors.topMargin: 12
            font.pointSize: 13
            stepSize: 1
            to: 40
            visible: true
            value: 5
        }
        Text {
            id: coffeeValueSlide
            x: 131
            anchors.top: sliderCoffee.bottom
            color: "#ffffff"
            text: sliderCoffee.value + " ml"
            anchors.topMargin: 6
            font.bold: true
            font.pixelSize: 37
        }


        /*ComboBox {
            id: comboBoxMilk
            x: 36
            y: 233
            width: 330
            height: 55
            font.pointSize: 30
            textRole: "milk"
            model: ListModel{
                ListElement{
                    text: milk
                }
                ListElement{
                    text: soil
                }
            }
        }

        Slider {
            id: sliderMilk
            x: 36
            anchors.top: comboBoxMilk.bottom
            width: 330
            height: 65
            stepSize: 1
            to: 60
            value: 30
        }
        Text{
            id: sugarTopSetting
            x: 135
            y: 382
            color: "#ffffff"
            text: qsTr("Sugar")
            visible: true
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 50
        }

        Slider {
            id: sliderSugar
            x: 36
            anchors.top: sugarTopSetting.bottom
            width: 330
            height: 65
            anchors.topMargin: 6
            value: 0.5
        }
        Text{
            id: sugarValueSlide
            x: 138
            anchors.top: sliderSugar.bottom
            color: "#ffffff"
            text: "5.00 ml"
            anchors.topMargin: 6
            font.bold: true
            font.pixelSize: 37
        }*/

        Text{
            id: cocoTopSetting
            x: 140
            y: 595
            color: "#ffffff"
            text: qsTr("Coco")
            font.capitalization: Font.AllUppercase
            visible: true
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 50
        }

        Slider {
            id: sliderCoco
            x: 36
            anchors.top: cocoTopSetting.bottom
            width: 330
            height: 65
            anchors.topMargin: 6
            value: 1
        }
        Text{
            id: cocoValueSlide
            x: 131
            anchors.top: sliderCoco.bottom
            color: "#ffffff"
            text: "5.00 ml"
            anchors.topMargin: 6
            font.bold: true
            font.pixelSize: 37

        }
    }


}
