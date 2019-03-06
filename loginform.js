var login = ""

function EnterLogin() {

}

function Back(){

}

function getLenght()
{

}

function setCode(c)
{


}


function updateOrder(orderID, confirm)
{

    var date = new Date()
    var data = {
        'orderID': orderID,
        'confirm': confirm
    }

    var xhttp = new XMLHttpRequest()
    var url = "http://localhost/api/orders"
    xhttp.setRequestHeader("Content-type", "application/json; charset=utf-8")
    xhttp.onreadystatechange = function(){
        if (xhttp.readyState === XMLHttpRequest.DONE) {
           var message = JSON.parse(xhttp.responseText)

           console.debug(message)

        }else if (this.status){
            console.debug("Cannot")
        }else{
            console.log("Loading")
        }
    }
    xhttp.open("POST", url)
    xhttp.send(data)

}

function setOrder(orderID, coffee, milk, sugar, coco, productID)
{
    var date = new Date()
    var  data = {
        'orderID': orderID,
        'productID': productID,
        'date': date.getTime(),
        'ingredients': {
            'coffee': coffee,
            'milk': milk,
            'sugar': sugar,
            'coco': coco
        }
    }

    var xhttp = new XMLHttpRequest()
    var url  = "http://loicahost/api/orders"
    xhttp.setRequestHeader("Content-type", "application/json; charset=utf-8")

    xhttp.readyState = function(){

        if(xhttp.readyState === XMLHttpRequest.DONE)
        {
            var message = JSON.parse(xhttp.responseText)
            console.debug(message)
        }else if (this.status){
            console.debug("Connot connect to the server")
        }else{
            console.debug("loading")
        }
    }
    xhttp.open("PUT", url)
    xhttp.send(data)
}






















