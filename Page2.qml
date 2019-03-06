import QtQuick 2.4

Page2Form {
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
