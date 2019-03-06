import QtQuick 2.0

Item {
    id: mainScreen
    width: 1280
    height: 960
    property alias text2: text2
    property alias text1: text1
    property real listwidth: 1280
    property real wimage: 350
    property real himage: 280
    property real fonttop: 60
    property real fontcost: 45
    property real fontdate: 30
    property real fontmargin: 50


    Component.onCompleted: {
        var userId = mainWidget.getUserID()
        getOrderList(userId);
    }



    Image{
        anchors.fill: parent
        source: 'loginback.png'
    }

    transitions: [

        Transition {
            NumberAnimation {
                target: mainScreen
                properties: "listwidth,wimage,himage,fonttop,fontcost,fontdate,fontmargin"
                duration: 400
                easing.type: Easing.InOutQuad
            }
        }
    ]

    states: [
        State {
            name: "onChangeView"
            PropertyChanges {
                target: mainScreen
                wimage: 300
                himage: 240
                fonttop: 45
                fontcost: 35
                listwidth: 780
                fontdate: 25
                fontmargin: 30
            }

            PropertyChanges {
                target: mouseArea
                height: 6
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            PropertyChanges {
                target: buy
                x: 0
                y: 730
                width: 520
                height: 70
                radius: 0
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
            }
            /*PropertyChanges {
               target: orderList
               width: mainScreen.width - stateOrder.width
           }*/

        }
    ]
    Row{
        id: stateScreen
        width: parent.width
        height: parent.height - 100
        anchors.top: parent.top
        anchors.left: parent.left
        Rectangle{
            width: listwidth
            height: parent.height
            color: "#b3000000"
            ListView{
                id:orderList
                width: listwidth
                height: 860
                clip: true
                spacing: 5
                //model:9
                orientation: ListView.Vertical
                model: ListModel {}
                delegate: Rectangle{
                    id: ractangleProductList
                    width: parent.width
                    height: himage
                    color: "#F54F3A2B"

                    Image{
                        id:imageProduct
                        width: wimage
                        height: parent.height
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        anchors.left: parent.left
                        source: image
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
                        border.width: 3
                        radius: 8
                        border.color: "#F7AE40"
                    }

                    Text{
                        id: nameProduct
                        anchors.left: imageProduct.right
                        anchors.leftMargin: 30
                        anchors.top: parent.top
                        anchors.topMargin: 30
                        font.pixelSize: fonttop
                        font.capitalization: Font.AllUppercase
                        text: name
                        font.bold: true
                        color: "#ffffff"
                    }
                    Image{
                        id: moneyImage
                        width: 90
                        height: 90
                        anchors.left: imageProduct.right
                        anchors.leftMargin: 25
                        anchors.top: nameProduct.bottom
                        anchors.topMargin: 30
                        source: "money.png"
                    }

                    Text{
                        id: costProduct
                        anchors.top: nameProduct.bottom
                        anchors.topMargin: 35
                        anchors.left: moneyImage.right
                        anchors.leftMargin: 30
                        text: cost + " Baht"
                        font.pixelSize: fontcost
                        color: "#ffffff"
                    }

                    Text{
                        anchors.right: parent.right
                        anchors.rightMargin: fontmargin
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 20
                        text: date
                        font.pixelSize: fontdate
                        color: "#ffffff"

                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            mainScreen.state = "onChangeView"
                            imagep.source = image
                            namep.text = name
                            timeOrder.text = time
                            dateOrder.text = date
                            volumeCoffee.text = coffee + " ml"
                            volumeMilk.text = milk + " ml"
                            volumeSugar.text = sugar
                            volumeCoco.text = coco + " ml"
                            costDetail.text = cost + " Baht"
                            volumeDetail.text = volume + " ml"
                        }
                    }

                }


            }


        }
        Item {
            id: stateOrder
            width: 500
            height: parent.height

            /*Image{
                anchors.fill: parent
                source: "backgroud.png"
            }*/

            Rectangle{
                id: card
                width: parent.width
                height: parent.height
                border.width: 3
                border.color: "#CFD3D5"
                color: "#ccffffff"
                Image {
                    id: imagep
                    source: "images/espresso.png"
                    anchors{
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }
                    width: parent.width
                    height: parent.height*0.4

                    Rectangle{
                        id: backbtn
                        width: 100
                        height: 50
                        anchors.top: parent.top
                        anchors.left: parent.left
                        color: "#00000000"
                        anchors.leftMargin: 10
                        anchors.topMargin: 5

                        Text{
                            id: text2
                            anchors.fill: parent
                            text: "BACK"
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.bold: true
                            font.pointSize: 30

                            color:"#ffffff"
                        }

                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                mainScreen.state = ""
                            }
                        }
                    }

                    Rectangle{
                        anchors.left: parent.left
                        anchors.bottom: parent.bottom
                        width: parent.width
                        height: 70
                        color: "#CC000000"

                        Text{
                            id: namep

                            height: parent.height
                            anchors.left: parent.left
                            anchors.leftMargin: 20
                            text: "Espresso"
                            font.family: "MS Shell Dlg 2"
                            font.capitalization: Font.Capitalize
                            verticalAlignment: Text.AlignVCenter
                            font.bold: false
                            font.pixelSize: 53
                            color: "#ffffff"
                        }

                        Row{
                            id:score
                            width: 175
                            height: parent.height
                            visible: false
                            spacing: 8
                            anchors.right: parent.right


                            Image{
                                anchors.top: parent.top
                                anchors.topMargin: 10
                                height: parent.height-20
                                width: height
                                source: "favourites.png"
                            }
                            Image{
                                anchors.top: parent.top
                                anchors.topMargin: 10
                                height: parent.height-20
                                width: height
                                source: "favourites.png"
                            }
                            Image{
                                anchors.top: parent.top
                                anchors.topMargin: 10
                                height: parent.height-20
                                width: height
                                source: "favourites.png"
                            }
                        }
                    }
                }

                Rectangle{
                    id:buy
                    width: parent.width
                    height: 100
                    anchors{
                        left: parent.left
                        bottom:parent.bottom
                    }
                    border.width: 3
                    border.color: "#F7AE40"
                    color: "#cc000000"
                    radius: 1
                    Text{
                        id: text1
                        anchors.fill: parent
                        text: "BUY"
                        font.bold: true
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 50
                        color: "#ffffff"
                    }

                    MouseArea{
                        id: mouseArea
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                        anchors.fill: parent
                        onClicked: {
                            //orderWidget.onOrder( volumeCoffee.text,volumeMilk.text, volumeMilk.text,volumeSugar.text,volumeCoco.text)
                            orderWidget.navigation(1)
                        }
                    }

                }
                Column{
                    id: columnDetai
                    width: parent.width - 50
                    spacing: 15
                    anchors{
                        top: imagep.bottom
                        topMargin: 18
                        left: parent.left
                        leftMargin: 25
                    }
                    Rectangle{
                        width: parent.width
                        height: 70
                        color: "#cc000000"
                        radius: 20
                        border.width: 3
                        border.color: "#F7AE40"
                        Text{
                            id: costDetail
                            anchors.fill: parent
                            text: "25 Bath"
                            anchors.rightMargin: 0
                            anchors.bottomMargin: 0
                            anchors.leftMargin: 0
                            anchors.topMargin: 0
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 40
                            horizontalAlignment: Text.Center
                            color: "#ffffff"
                        }
                    }
                    Rectangle{
                        width: parent.width
                        height: 70
                        color: "#cc000000"
                        radius: 20
                        border.width: 3
                        border.color: "#F7AE40"
                        Text{
                            id: volumeDetail
                            anchors.fill: parent
                            text: "180 ml"
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: 40
                            horizontalAlignment: Text.Center
                            color: "#ffffff"
                        }
                    }

                }

                Row {
                    id: row
                    x: 15
                    y: 536
                    width: 470
                    height: 150
                    spacing: 3

                    Rectangle {
                        id: coffeeRecValue
                        width: 115
                        height: parent.height
                        color: "#cc000000"
                        radius: 10
                        border.width: 3
                        border.color: "#f7ae40"

                        Text{
                            id: topCoffee
                            width: parent.width
                            text:"COFFEE"
                            anchors.top: parent.top
                            anchors.topMargin: 5
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 22
                            color: "#ffffff"
                        }

                        Image{
                            id:coffimage
                            width: 55
                            height: 55
                            source: "images/coffee.png"
                            anchors{
                                top: topCoffee.bottom
                                left: parent.left
                                leftMargin: 33
                                topMargin: 8
                            }
                        }

                        Text{
                            id: volumeCoffee
                            width: parent.width
                            anchors.top: coffimage.bottom
                            anchors.topMargin: 10
                            color: "#ffffff"
                            font.pixelSize: 27
                            text:"30 ml"
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }
                    Rectangle {
                        id: sugarRecValue
                        width: 115
                        height: parent.height
                        color: "#cc000000"
                        radius: 10
                        border.color: "#f7ae40"
                        border.width: 3

                        Text{
                            id: topSugar
                            width: parent.width
                            text:"SUGAR"
                            anchors.top: parent.top
                            anchors.topMargin: 5
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 22
                            color: "#ffffff"
                        }

                        Image{
                            id:sugarimage
                            width: 50
                            height: 50
                            source: "images/sugar.png"
                            anchors{
                                top: topSugar.bottom
                                left: parent.left
                                leftMargin: 33
                                topMargin: 8
                            }
                        }

                        Text{
                            id: volumeSugar
                            width: parent.width
                            anchors.top: sugarimage.bottom
                            anchors.topMargin: 10
                            color: "#ffffff"
                            font.pixelSize: 27
                            text: "30 ml"
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }
                    Rectangle {
                        id: milkRecValue
                        width: 115
                        height: parent.height
                        color: "#cc000000"
                        radius: 10
                        border.width: 3
                        border.color: "#f7ae40"

                        Text{
                            id: topMilk
                            width: parent.width
                            text:"MILK"
                            anchors.top: parent.top
                            anchors.topMargin: 5
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 22
                            color: "#ffffff"
                        }

                        Image{
                            id:milkimage
                            width: 50
                            height: 50
                            source: "images/milk.png"
                            anchors{
                                top: topMilk.bottom
                                left: parent.left
                                leftMargin: 33
                                topMargin: 8
                            }
                        }

                        Text{
                            id: volumeMilk
                            width: parent.width
                            anchors.top: milkimage.bottom
                            anchors.topMargin: 10
                            color: "#ffffff"
                            font.pixelSize: 27
                            text:"30 ml"
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }
                    Rectangle {
                        id: cocoRecValue
                        width: 115
                        height: parent.height
                        color: "#cc000000"
                        radius: 10
                        border.width: 3
                        border.color: "#f7ae40"

                        Text{
                            id: topCoco
                            width: parent.width
                            text:"COCO"
                            anchors.top: parent.top
                            anchors.topMargin: 5
                            horizontalAlignment: Text.AlignHCenter
                            font.pixelSize: 22
                            color: "#ffffff"
                        }

                        Image{
                            id:coimage
                            width: 50
                            height: 50
                            source: "images/chocolate-bar.png"
                            anchors{
                                top: topCoco.bottom
                                left: parent.left
                                leftMargin: 33
                                topMargin: 8
                            }
                        }

                        Text{
                            id: volumeCoco
                            width: parent.width
                            anchors.top: coimage.bottom
                            anchors.topMargin: 5
                            color: "#ffffff"
                            font.pixelSize: 27
                            text:"30 ml"
                            horizontalAlignment: Text.AlignHCenter
                        }
                    }
                }

                Text {
                    id: timeOrder
                    color: "#000000"
                    text: qsTr("18:25 pm")
                    font.bold: false
                    anchors.top: row.bottom
                    anchors.topMargin: 18
                    anchors.left: parent.left
                    anchors.leftMargin: 35
                    font.pixelSize: 35
                }

                Text {
                    id: dateOrder
                    color: "#000000"
                    text: qsTr("2018-11-12")
                    anchors.right: parent.right
                    anchors.rightMargin: 25
                    anchors.top: row.bottom
                    anchors.topMargin: 18
                    font.bold: false
                    font.pixelSize: 35
                }
            }

        }
    }

    Row{
        id: tabNaivation
        width: 1280
        height: 100
        spacing: 0

        anchors.bottom: parent.bottom
        anchors.left: parent.left

        Rectangle{
            id: tab1
            width: tabNaivation.width/2
            height: tabNaivation.height
            color: "#000000"
            border.color: "#f7ae40"
            border.width: 0

            Text{
                color: "#ffffff"
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

            MouseArea{
                anchors.fill: parent
                onClicked: {
                     mainWidget.navigationPage(1)
                }
            }

        }
        Rectangle{
            id: tab2
            width: tabNaivation.width/2
            height: tabNaivation.height
            color: "#000000"
            border.color: "#f7ae40"
            border.width: 5

            Text{
                color: "#f7ae40"
                text: "Orders"
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                font.bold: true
                font.pointSize: 50
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }
        }
    }


    function getOrderList(userID)
    {
        var xhttp = new XMLHttpRequest()
        var targetUrl = "http://localhost:3000/api/orders?userID=" + userID

        xhttp.onreadystatechange = function() {
            if (xhttp.readyState === XMLHttpRequest.DONE) {
                var orders = JSON.parse(xhttp.responseText)
                //console.debug(xhttp.responseText)
                orderList.model.clear()
                for(var index in orders)
                {
                    //console.debug(orders[index].key)
                    var d = orders[index].date;
                    //var date = new Date(d);
                    var date = getDateFormQuery(orders[index].date);
                    var time = gettimeForm(orders[index].date);
                    var imageP = "";

                    switch(orders[index].productID){
                    case '001':
                        imageP = "images/espresso.png"
                        break
                    case '002':
                        imageP = "images/mocha.png"
                        break
                    case '003':
                        imageP = 'images/chocolate.png'
                        break
                    }
                    orderList.model.append({
                                               image: imageP,
                                               name: orders[index].name,
                                               cost: orders[index].cost,
                                               date: date,
                                               time: time,
                                               coffee: orders[index].ingredients['coffee'],
                                               milk: orders[index].ingredients['milk'],
                                               sugar: orders[index].ingredients['sugar'],
                                               coco: orders[index].ingredients['coco'],
                                               volume: 0
                                           });
                }
            }else if (this.status){
                console.debug("Cannot")
            }else{
                console.log("Loading")
            }
        };

        xhttp.open("GET", targetUrl, true);
        xhttp.send();
    }

    function gettimeForm(t){
        var h;
        var m;
        var time = new Date(t);
        if(time.getHours() < 10)
        {
            h = '0' + time.getHours()
        }else{
            h = time.getHours()
        }

        if((time.getMinutes()+1) < 10)
        {
            m = '0' + time.getTime();
        }else{
            m = time.getMinutes();
        }

        return h+':'+m;
    }

    function getDateFormQuery(dd){
        var m ;
        var d ;
        var date = new Date(dd);
        if((date.getMonth() + 1) < 10){
            m = '0'+ (date.getMonth()+1);
        }else{
            m = date.getMonth()+1
        }
        if(date.getDate() < 10){
            d = "0" + date.getDate();
        }else{
            d = date.getDate();
        }
        //return `${date.getFullYear()}-${m}-${d}`
        return date.getFullYear() + '-' + m + '-' + d;
    }



}
















