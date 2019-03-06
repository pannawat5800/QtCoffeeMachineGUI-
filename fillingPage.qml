import QtQuick 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3

Item{
    id:root
    width: 1280
    height: 800

    Image {
        anchors.fill: parent
        source: "janko.jpg"
    }

    property alias sliderCoffee: sliderCoffee
    property alias sliderMilk: sliderMilk
    property alias sliderCoco: sliderCoco

    property real sugarAmount: 2
    property real milkAmount: 4
    property real coffeeAmount: 0
    property real cocoAmount: 5
    property bool setting: true

    states: [
        State {
            name: "animationsetting"
            when: root.setting
            PropertyChanges {
                target: root
                coffeeAmount: sliderCoffee.value
            }

            PropertyChanges {
                target: root
                milkAmount: sliderMilk.value
            }
            /* PropertyChanges {
                target: coffee
                height: sliderCoffee.value * 40
            }*/
            PropertyChanges {
                target: root
                cocoAmount: cocoValueSlide.value

            }
        }
    ]

    Rectangle{
        id:boxOperating
        width: parent.width - 400
        height: parent.height
        color: "#00000000"
        anchors.left: parent
        anchors.top: parent

        Text {
            id: headNameProct
            width: 369
            height: 74
            color: "#ffffff"
            text: qsTr("ESPRESSO")
            horizontalAlignment: Text.AlignHCenter
            font.bold: true
            font.underline: false
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20
            font.pixelSize: 70
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
            y: 312
            width: 500
            height: coffee.height+ (root.milkAmount * 4)
            visible: true
            anchors.bottom: imageSolidCup.bottom
            clip: true
            Image {
                x: 0
                y: 0
                width: 500
                height: 524
                visible: true
                anchors.bottomMargin: 0
                anchors.bottom: parent.bottom
                source: "liquid_foam.png"
            }
        }

        Item {
            id: coffee
            x: 192
            width: 500
            height: root.coffeeAmount * 7 +70
            visible: true
            anchors.bottom: imageSolidCup.bottom
            clip: true
            Image {
                x: 0
                y: -160
                width: 500
                height: 524
                visible: true
                anchors.bottomMargin: 0
                anchors.bottom: parent.bottom
                source: "liquid_coffee.png"
            }
        }

        Image {
            id: image
            x: 192
            y: 180
            width: 500
            height: 524
            source: "coffee_cup_front.png"
        }

        Rectangle {
            id: back
            y: 701
            width: 300
            height: 100
            color: "#99000000"
            radius: 10
            border.color: "#ffffff"
            border.width: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            anchors.left: parent.left
            anchors.leftMargin: 20

            Text {
                id: element
                anchors.fill: parent
                color: "#ffffff"
                text: qsTr("BACK")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 50
            }

            MouseArea{
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
                onClicked: {
                    fillWidget.cancle();
                }
            }
        }

        Rectangle {
            id: confirm
            x: 559
            y: 701
            width: 300
            height: 100
            color: "#99000000"
            radius: 10
            border.color: "#ffffff"
            border.width: 5
            anchors.right: parent.right
            anchors.rightMargin: 21
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50

            Text {
                id: element1
                color: "#ffffff"
                anchors.fill: parent

                text: qsTr("BUY")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 50
            }

            MouseArea{
                anchors.rightMargin: 0
                anchors.bottomMargin: 8
                anchors.leftMargin: 0
                anchors.topMargin: -8
                anchors.fill: parent
                onClicked: {
                    fillWidget.confirm(coffeeAmount, sugarAmount, milkAmount, 0, cocoAmount);
                }
            }
        }


    }

    Rectangle{
        id:boxsetting
        x: -400
        y: 0
        width: 400
        height: parent.height
        color: "#cc000000"

        anchors.left: boxOperating.right

        Row{
            id: rowCoffee
            width: parent.width-50
            anchors.left: parent.left
            anchors.leftMargin: 30
            spacing: 20
            anchors.top: parent.top
            anchors.topMargin: 10
            Image{
                width: 40
                height: 40
                source: "images/coffee.png"
            }

            Text {
                id: coffeeTopSetting
                height: 60
                color: "#ffffff"
                text: qsTr("Coffee")
                font.capitalization: Font.AllUppercase
                visible: true
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 50
            }
        }


        Slider {
            id: sliderCoffee
            x: 43
            anchors.top: rowCoffee.bottom
            width: 330
            height: 65
            anchors.topMargin: 12
            font.pointSize: 13
            stepSize: 1
            to: 30
            visible: true
            value: 9
        }
        Text {
            id: coffeeValueSlide
            x: 160
            anchors.top: sliderCoffee.bottom
            color: "#ffffff"
            text: coffeeAmount + " ml"
            anchors.topMargin: 0
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
        ComboBox {
            id: comboBoxMilk
            x: 44
            width: 330
            height: 55
            anchors.top:coffeeValueSlide.bottom
            anchors.topMargin: 35
            font.pointSize: 30
            model: ListModel{
                ListElement{
                    text: 'Milk'
                }
                ListElement{
                    text: 'Soy'
                }
            }
        }
        Slider {
            id: sliderMilk
            x: 44
            anchors.top: comboBoxMilk.bottom
            width: 330
            height: 65
            anchors.topMargin: 15
            stepSize: 1
            to: 60
            value: 30
        }
        Text{
            id: milkValueSlide
            x: 160
            anchors.top:  sliderMilk.bottom
            color: "#ffffff"
            text: milkAmount + " ml"
            anchors.topMargin: -3
            font.bold: true
            font.pixelSize: 37
        }
        Text{
            id: sugarTopSetting
            x: 132
            y: 450
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
            id: cocoTopSetting
            x: 131
            y: 619
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
