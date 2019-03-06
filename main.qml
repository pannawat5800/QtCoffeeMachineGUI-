import QtQuick 2.0
import QtQuick.Controls 2.0
import QtGraphicalEffects 1.0
import QtQuick.Layouts 1.3
Item {
    id:mainScreen
    width: 1280
    height: 960
    clip: false


    property string productkey: "";
    Image {
        anchors.fill: parent
        source: "janko.jpg"
    }

    Rectangle{
        anchors.fill: parent
        color: "#00000000"
    }

    Component.onCompleted: {
        //console.debug("user ID main:" + mainWidget.getUserID())
        getProduct(mainWidget.getUserID());
    }

    Item{
        id:state1
        width: mainScreen.width
        height: mainScreen.height
        clip: true
        Rectangle {
            anchors.top: parent.top
            anchors.left: boxDetail.right
            width: 800; height: 860;
            color: "#00000000"
            radius: 4

            Component {
                id: appDelegate
                Item {
                    width: 250; height: 250
                    scale: PathView.iconScale
                    Rectangle{
                        id: boxImageItem
                        anchors.fill: parent
                        border.color: "#ffffff"
                        border.width: 5
                        radius: width/2
                        Image {
                            id: myIcon
                            property bool rounded: true
                            property bool adapt: true
                            source: image
                            width: boxImageItem.width-10
                            height: boxImageItem.height -10
                            anchors.top: parent.top
                            anchors.left: parent.left
                            anchors.leftMargin: 5
                            anchors.topMargin: 5
                            layer.enabled: rounded
                            layer.effect: OpacityMask {
                                maskSource: Item {
                                    width: myIcon.width
                                    height: myIcon.height
                                    Rectangle {
                                        anchors.centerIn: parent
                                        width: myIcon.adapt ? (myIcon.width) : Math.min(myIcon.width, myIcon.height)
                                        height: myIcon.adapt ? myIcon.height : width
                                        radius: Math.min(width, height)
                                    }
                                }
                            }
                        }
                    }
                    Text {
                        anchors { top: boxImageItem.bottom; horizontalCenter: parent.horizontalCenter }
                        text: name
                        color: "#ffffff"
                        font.capitalization: Font.AllUppercase
                        font.pixelSize:30
                        font.bold: true

                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked:{
                            view.currentIndex = index
                            productkey = key
                            imageProduct.source = image
                            nameProduct.text = name
                            costProduct.text = cost + " Bath"
                            volumeProduct.text = parseInt(coffee)+parseInt(milk) + parseInt(coco) + " ml"
                            coffee.text = parseInt(coffee)
                            milk.text = parseInt(milk) + " ml"
                            sugar.text = sugar + " ml"
                            coco.text = parseInt(coco) + "ml"
                            //onSelectedItem();
                        }

                    }

                }
            }

            Component {
                id: appHighlight
                Rectangle { width: 80; height: 80; color: "lightsteelblue"; radius: width/2}
            }

            PathView {
                id: view
                width: 780
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.leftMargin: 94
                anchors.topMargin: 0
                highlight: appHighlight
                preferredHighlightBegin: 0.5
                preferredHighlightEnd: 0.5
                Keys.onFlipPressed: incrementCurrentIndex()
                focus: true
                Keys.onLeftPressed: decrementCurrentIndex()
                Keys.onRightPressed: incrementCurrentIndex()
                //model: appModel
                model: ListModel {}
                delegate: appDelegate
                path: Path {
                    startX: 480
                    startY: 580
                    PathArc {
                        x: 500; y: 200
                        radiusX: 240; radiusY: 240
                        useLargeArc: true
                    }
                }

            }
        }

        Rectangle {
            id: boxDetail
            anchors{
                top: parent.top
                left: parent.left
            }
            width: 927
            height: 860
            color: "#00000000"

            Rectangle{
                id: boxProduct
                width: 880
                height: 280
                anchors{
                    top: parent.top
                    left: parent.left
                    topMargin: 20
                    leftMargin: 20
                }
                radius: 1
                color:"#F54F3A2B"

                Image{
                    id:imageProduct
                    width: 350;
                    height: parent.height
                    anchors{
                        top: parent.top
                        left: parent.left
                    }
                    source: "images/espresso.png"
                }

                Rectangle{
                    width: parent.width - imageProduct.width - 20
                    height: parent.height - 20
                    anchors{
                        top: parent.top
                        left: imageProduct.right
                        topMargin: 10
                        leftMargin: 10
                    }
                    color: "#cc000000"
                    radius: 10
                    border.width: 3
                    border.color: "#F7AE40"
                }


                Text{
                    id:nameProduct
                    anchors{
                        top: parent.top
                        left: imageProduct.right
                        topMargin: 20
                        leftMargin: 30
                    }
                    text: "Espresso"
                    font.capitalization: Font.AllUppercase
                    font.bold: true
                    font.pixelSize: 60
                    color:"#ffffff"
                }

                Text{
                    id:costtext
                    width: 115
                    height: 54
                    anchors{
                        top: nameProduct.bottom
                        left: imageProduct.right
                        topMargin: 15
                        leftMargin: 30
                    }
                    text: " cost: "
                    font.bold: true
                    font.pixelSize: 40
                    color:"#ffffff"
                }
                Text{
                    id:costProduct
                    anchors{
                        top: nameProduct.bottom
                        left: costtext.right
                        topMargin: 15
                        leftMargin: 30
                    }
                    text: "25 Bath"
                    font.bold: true
                    font.pixelSize: 40
                    color:"#daab69"
                }
                Text{
                    id:volumetext
                    anchors{
                        top: costtext.bottom
                        left: imageProduct.right
                        topMargin: 15
                        leftMargin: 30
                    }
                    text: " volume: "
                    font.bold: true
                    font.pixelSize: 40
                    color:"#ffffff"
                }
                Text{
                    id:volumeProduct
                    anchors{
                        top: costProduct.bottom
                        left: volumetext.right
                        topMargin: 20
                        leftMargin: 30
                    }
                    text: "270 ml"
                    font.bold: true
                    font.pixelSize: 40
                    color:"#daab69"

                }
            }

            Rectangle{
                id: productComponent
                width: 880
                height: 289
                anchors{
                    top: boxProduct.bottom
                    left: parent.left
                    topMargin: 20
                    leftMargin: 20
                }
                color: "#CC000000"
                radius: 10
                border.color: "#f7ae40"
                border.width: 5

                Text {
                    id: topicComponent
                    color: "#ffffff"
                    text: qsTr("Material Component")
                    font.family: "Tahoma"
                    anchors{
                        top: parent.top
                        left: parent.left
                        topMargin: 10
                        leftMargin: 30
                    }
                    font.bold: true
                    font.pixelSize: 40

                }

                Row {
                    id: row
                    x: 31
                    y: 168
                    width: 820
                    height: 60
                    spacing: 35

                    Image {
                        id: image
                        width: parent.height
                        height: parent.height
                        source: "images/coffee.png"
                    }
                    Text{
                        id:coffee
                        width: parent.height
                        height: parent.height
                        color: "#ffffff"
                        text: ""
                        font.bold: true
                        font.pointSize: 25
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter

                    }
                    Image {
                        id: image1
                        width: parent.height
                        height: parent.height
                        source: "images/sugar.png"
                    }
                    Text{
                        id:sugar
                        width: parent.height
                        height: parent.height
                        color: "#ffffff"
                        text: ""
                        font.bold: true
                        font.pointSize: 25
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter

                    }
                    Image {
                        id: image3
                        width: parent.height
                        height: parent.height
                        source: "images/milk.png"
                    }
                    Text{
                        id:milk
                        width: parent.height
                        height: parent.height
                        color: "#ffffff"
                        text: "-"
                        font.bold: true
                        font.pointSize: 25
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter

                    }
                    Image {
                        id: image4
                        width: parent.height
                        height: parent.height
                        source: "images/chocolate-bar.png"
                    }
                    Text{
                        id:coco
                        width: parent.height
                        height: parent.height
                        color: "#ffffff"
                        text: ""
                        font.bold: true
                        font.pointSize: 25
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter

                    }

                }

                Text {
                    id: text1
                    x: 31
                    y: 73
                    width: 820
                    height: 39
                    text: "Build correct phrases in a language that you are learning"
                    font.pixelSize: 27
                    color: "#ffffff"
                }


            }

            Rectangle {
                id: buyBtn
                x: 20
                width: 370
                height: 110
                anchors.top: productComponent.bottom
                anchors.topMargin: 30
                color: "#CC000000"
                border.color: "#f7ae40"
                border.width: 5
                radius: 10

                Text{
                    color: "#ffffff"
                    text: "BUY"
                    font.bold: true
                    font.pointSize: 35
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                }

                MouseArea{
                    height: 100
                    anchors.fill: parent
                    onPressed: {
                        buyBtn.color  = "#b3ffffff"
                        console.debug(nameProduct.text);
                        //setOrderedProduct(productID)
                        mainWidget.navigationPage(4)

                    }
                    onReleased: {
                        buyBtn.color  = "##CC000000"
                    }
                }
            }
            Rectangle{
                id: settingBtn
                x: 570
                width: 370
                height: 110
                anchors.top: productComponent.bottom
                anchors.topMargin: 30
                color: "#CC000000"
                border.color: "#f7ae40"
                border.width: 5
                radius: 10
                anchors.right: parent.right
                anchors.rightMargin: 37

                Text{
                    anchors.fill: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    color: "#ffffff"
                    font.pixelSize: 40
                    text: "SETTING"
                    font.bold: true
                }

                MouseArea{
                    height: 100
                    anchors.rightMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.fill: parent
                    onClicked: {
                        mainWidget.onselected(nameProduct.text);
                    }
                }
            }
        }
    }

    function getProduct(userID)
    {
        var xhttp = new XMLHttpRequest()
        var url = "http://localhost:3000/api/products?userID=" + userID
        xhttp.onreadystatechange = function(){
            if (xhttp.readyState === XMLHttpRequest.DONE) {
                var products = JSON.parse(xhttp.responseText)
                //console.debug(xhttp.responseText)
                var imagep = "";
                for(var index in products)
                {
                    switch(products[index].key){
                    case '001':
                        imagep = "images/espresso.png"
                        break
                    case '002':
                        imagep = "images/mocha.png"
                        break
                    case '003':
                        imagep = 'images/chocolate.png'
                        break
                    }
                    console.debug(products[index].name);
                    view.model.append({
                                          key: products[index].key,
                                          image: imagep,
                                          name: products[index].name,
                                          type: products[index].type,
                                          cost: products[index].cost,
                                          coffee: products[index].Ingredient.coffee,
                                          sugar: products[index].Ingredient.sugar,
                                          coco: products[index].Ingredient.coco,
                                          milk: products[index].Ingredient.milk,
                                          status: products[index].status})
                }

            }else if (this.status){
                console.debug("Cannot")
            }else{
                console.log("Loading")
            }
        }

        xhttp.open("GET", url, true);
        xhttp.send();

    }
    RowLayout {
        id: tabNaivation
        anchors.bottom: mainScreen.bottom
        anchors.right: mainScreen.right
        anchors.left: mainScreen.left
        width: mainScreen.width
        height: 100
        spacing: 0

        Rectangle {
            id: tab1
            width: tabNaivation.width/2
            height: tabNaivation.height
            color: "#ffffff"
            border.color: "#f7ae40"
            border.width: 5

            Text{
                color: "#000000"
                text: "Products"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                font.bold: true
                font.pointSize: 35
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }
        }

        Rectangle {
            id: tab2
            width: tabNaivation.width/2
            height: tabNaivation.height
            color: "#CC000000"
            border.color: "#f7ae40"
            border.width: 5

            Text{
                color: "#ffffff"
                text: "Orders"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                font.bold: true
                font.pointSize: 35
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }

            MouseArea{
                anchors.fill: parent
                 onClicked: {
                    mainWidget.navigationPage(2);
                    //console.debug("Route to order page");
                }
            }
        }
    }

    function setOrderedProduct(productID){
        //mainWidget.setProductID(key)

        mainWidget.navigation(3)
    }


}


