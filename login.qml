import QtQuick 2.0
import QtQuick.Controls 2.1
import QtMultimedia 5.8

Item {
    id:mainScreen
    width: 1280
    height: 960


    property string codeID: "";

    property real dimesion: 140

    Image {
        anchors.fill: parent
        source: "loginback.png"
    }

    /*
    states: [
        State {
            name: "showProfile"
            PropertyChanges {
                target: cardProfile
                width: 530
                height: 700
                visible: true
            }
        }
    ]

    transitions: [
        Transition {
            NumberAnimation {
                target: cardProfile
                properties: "width, height"
                duration: 500
                easing.type: Easing.InOutQuad
            }

        }
    ]*/

    Rectangle{
        anchors.fill: parent
        color: "#40000000"

        Grid {
            id: grid
            x: 174
            y: 186
            width: 486
            height: 654
            clip: true
            spacing: 30
            rows: 4
            columns: 3

            Rectangle {
                id: rectangle
                width: dimesion
                height: dimesion
                color: "#b3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "1"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }

                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        rectangle.color  = "#b3ffffff"
                        setUserCode("1")
                    }
                    onReleased: {
                        rectangle.color = "#b3000000"
                    }

                }

            }

            Rectangle {
                id: rectangle1
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "2"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        console.debug("2");
                        rectangle1.color  = "#b3ffffff"
                        setUserCode("2")
                    }

                    onReleased: {
                        rectangle1.color  = "#b3000000"
                    }

                }
            }

            Rectangle {
                id: rectangle2
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "3"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        console.debug("3");
                        rectangle2.color  = "#b3ffffff"
                        setUserCode("3")
                    }
                    onReleased: {
                        rectangle2.color = "#B3000000"
                    }

                }
            }

            Rectangle {
                id: rectangle3
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "4"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }

                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        rectangle3.color  = "#b3ffffff"
                        setUserCode("4")
                    }
                    onReleased: {
                        rectangle3.color = "#B3000000"
                    }

                }

            }

            Rectangle {
                id: rectangle4
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "5"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        rectangle4.color  = "#b3ffffff"
                        setUserCode("5")
                    }

                    onReleased: {
                        rectangle4.color = "#b3000000"
                    }

                }
            }

            Rectangle {
                id: rectangle5
                width: 130
                height: 130
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "6"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        console.debug("6");
                        rectangle5.color  = "#b3ffffff"
                        setUserCode("6");

                    }
                    onReleased: {
                        rectangle5.color = "#b3000000"
                    }

                }
            }

            Rectangle {
                id: rectangle6
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "7"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        rectangle6.color  = "#b3ffffff"
                        setUserCode("7");
                    }
                    onReleased: {
                        rectangle6.color = "#b3000000"
                    }

                }
            }

            Rectangle {
                id: rectangle7
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "8"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }


                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        rectangle7.color  = "#b3ffffff"
                        setUserCode("8")
                    }
                    onReleased: {
                        rectangle7.color = "#b3000000"
                    }

                }

            }

            Rectangle {
                id: rectangle8
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "9"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        console.debug("9");
                        rectangle8.color  = "#b3ffffff"
                        setUserCode("9");
                    }
                    onReleased: {
                        rectangle8.color = "#b3000000"
                    }

                }
            }

            Rectangle {
                id: rectangle9
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "0"
                    font.bold: false
                    font.pointSize: 50
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        rectangle9.color  = "#b3ffffff"
                        setUserCode("0")
                    }
                    onReleased: {
                        rectangle9.color = "#b3000000"
                    }

                }
            }

            Rectangle {
                id: rectangle10
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "Enter"
                    font.bold: false
                    font.pointSize: 30
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                }
                MouseArea{
                    anchors.fill: parent
                    onPressed: {
                        rectangle10.color  = "#b3ffffff"
                        enterLogin()
                        //mainScreen.state = "showProfile"
                    }
                    onReleased: {
                        rectangle10.color = "#b3000000"
                    }

                }
            }

            Rectangle {
                id: rectangle11
                width: dimesion
                height: dimesion
                color: "#B3000000"
                radius: parent.width/2
                border.width: 3
                border.color: "#ffffff"

                Text{
                    anchors.fill: parent
                    color: "#ffffff"
                    text: "Back"
                    font.bold: false
                    font.pointSize: 30
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }

                MouseArea{
                    anchors.fill: parent
                    onPressed: {

                        rectangle11.color  = "#b3ffffff"
                        backCode()
                    }
                    onReleased: {
                        rectangle11.color = "#b3000000"
                    }

                }

            }
        }

        Row {
            id: row
            x: 233
            y: 78
            width: 369
            height: 54
            spacing: 30

            Rectangle {
                id: code1
                width: 50
                height: 50
                radius: width/2
                color: "#99000000"
                border.width: 4
                border.color: "#ffffff"
            }

            Rectangle {
                id: code2
                width: 50
                height: 50
                radius: width/2
                color: "#99000000"
                border.width: 4
                border.color: "#ffffff"
            }

            Rectangle {
                id: code3
                width: 50
                height: 50
                radius: width/2
                color: "#99000000"
                border.width: 4
                border.color: "#ffffff"
            }
            Rectangle {
                id: code4
                width: 50
                height: 50
                radius: width/2
                color: "#99000000"
                border.width: 4
                border.color: "#ffffff"
            }

            Rectangle {
                id: code5
                width: 50
                height: 50
                radius: width/2
                color: "#99000000"
                border.width: 4
                border.color: "#ffffff"
            }
        }

        /*Item {
            x: 721
            y: 145
            width: 500
            height: 500

            Camera {
                id: camera

                imageProcessing {
                    whiteBalanceMode: Camera.WhiteBalanceTungsten
                    contrast: 0.66
                    saturation: -0.5
                }
            }

            VideoOutput {
                anchors.fill: parent
                source: camera
            }

            ListView {
                anchors.fill: parent

                model: QtMultimedia.availableCameras
                delegate: Text {
                    text: modelData.displayName

                    MouseArea {
                        anchors.fill: parent
                        onClicked: camera.deviceId = modelData.deviceId
                    }
                }
            }
        }*/

        /*Rectangle {
            id: cardProfile
            x: 697
            y: 82
            width: 0
            height: 0
            color: "#121110"
            radius: 5
            clip: true
            visible: false

            Image {
                id: image
                width: parent.width
                height: parent.height * 0.6
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
                source: "janko.jpg"
            }

            Text {
                id: name
                color: "#ffffff"
                text: qsTr("Pannawat Sonsom")
                anchors.top: image.bottom
                anchors.topMargin: 25
                anchors.left: parent.left
                anchors.leftMargin: 20
                font.pixelSize: 45
            }
        }*/



        /*Rectangle {
            id: messageBox
            x: 673
            y: 72
            width: 582
            height: 734
            color: "#4d000000"
            radius: 10

            Text{
                x: 0
                y: 18
                width: messageBox.width
                anchors.top: text1.bottom
                anchors.topMargin: 30
                text: "  Development Team"
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pixelSize: 40
                color: "#ffffff"

            }

            Image {
                id: imageDev1
                y: 94
                width: 140
                height: 160
                anchors.left: parent.left
                anchors.leftMargin: 30
                source: "images/dev1.png"
            }

            Text {
                id: nameDev1
                y: 114
                width: 330
                height: 60
                color: "#ffffff"
                text: qsTr("Mr. Pannawat Sonsom")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: imageDev1.right
                anchors.leftMargin: 35
                font.pixelSize: 30
            }

            Text {
                id: positionDev1
                width: 330
                height: 52
                anchors.left: imageDev1.right
                anchors.top: nameDev1.bottom
                anchors.leftMargin: 35
                color: "#ffffff"
                text: qsTr("Electronic Enginerring")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 25
            }
            Image {
                id: imageDev2
                y: 271
                width: 140
                height: 160
                anchors.left: parent.left
                anchors.leftMargin: 30
                source: "images/dev3.png"
            }

            Text {
                id: nameDev2
                y: 291
                width: 330
                height: 60
                color: "#ffffff"
                text: qsTr("Mr. Napat Sakulteera")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: imageDev1.right
                anchors.leftMargin: 35
                font.pixelSize: 30
            }

            Text {
                id: positionDev2
                width: 300
                height: 52
                anchors.left: imageDev1.right
                anchors.top: nameDev1.bottom
                anchors.leftMargin: 35
                color: "#ffffff"
                text: qsTr("Electronic Enginerring")
                anchors.topMargin: 177
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 25
            }

            Image {
                id: imageDev3
                y: 460
                width: 140
                height: 160
                anchors.left: parent.left
                anchors.leftMargin: 30
                source: "images/dev2.png"
            }

            Text {
                id: nameDev3
                y: 480
                width: 330
                height: 60
                color: "#ffffff"
                text: qsTr("Mr. Pannawat Sonsom")
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.left: imageDev1.right
                anchors.leftMargin: 35
                font.pixelSize: 30
            }

            Text {
                id: positionDev3
                width: 300
                height: 52
                anchors.left: imageDev1.right
                anchors.top: nameDev1.bottom
                anchors.leftMargin: 35
                color: "#ffffff"
                text: qsTr("Electronic Enginerring")
                anchors.topMargin: 366
                font.bold: true
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pixelSize: 25
            }


        }*/



    }

    function authenCode(code)
    {
        var xhttp = new XMLHttpRequest()
        console.debug(code)
        var url = "http://localhost:3000/api/login?code=" + code
        xhttp.onreadystatechange = function(){
            if (xhttp.readyState === XMLHttpRequest.DONE) {
               var user = JSON.parse(xhttp.responseText)
               mainWidget.setUserID(user[0].key)
               mainWidget.navigationPage(1)
               console.debug(user[0].key)
               console.log(user[0])

            }else if (this.status){
                console.debug("Cannot")
            }else{
                console.log("Loading")
            }
        }

        xhttp.open("GET", url, true);
        xhttp.send();
    }

    function setUserCode(c){
        if(codeID.length < 5){
            codeID = codeID.concat(c);
            //console.debug(codeID);
            setCodePointer(codeID.length);
        }else{
            console.debug("full");
        }
    }

    function setCodePointer(index){
        switch(index){
        case 1:
            code1.color = "#99ffffff";
            break;
        case 2:
            code2.color = "#99ffffff"
            break;
        case 3:
            code3.color = "#99ffffff"
            break;
        case 4:
            code4.color = "#99ffffff"
            break;
        case 5:
            code5.color = "#99ffffff"
            break;
        }
    }

    function enterLogin(){
        if(codeID.length == 5){
            authenCode(codeID)
        }else{

        }
        codeID = ""
        code1.color = "#99000000";
        code2.color = "#99000000";
        code3.color = "#99000000";
        code4.color = "#99000000";
        code5.color = "#99000000";
    }

    function backCode(){
        var index = codeID.length
        codeID = codeID.slice(0, -1)
        console.debug(codeID)
        switch(index){
        case 1:
            code1.color = "#99000000"
            break;
        case 2:
            code2.color = "#99000000"
            break;
        case 3:
            code3.color = "#99000000"
            break;
        case 4:
            code4.color = "#99000000"
            break;
        case 5:
            code5.color = "#99000000"
            break;
        }
    }





}












