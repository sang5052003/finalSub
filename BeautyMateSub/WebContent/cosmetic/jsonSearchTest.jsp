<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Defiant.js - Symphony demo</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/defiant.js/1.3.1/defiant.min.js"></script>
</head>

<script>


/* var obj = {
        "car": [
            {"id": 10, "color": "silver", "name": "Volvo"},
            {"id": 11, "color": "red",    "name": "Saab"},
            {"id": 12, "color": "red",    "name": "Peugeot"},
            {"id": 13, "color": "yellow", "name": "Porsche"}
        ],
        "bike": [
            {"id": 20, "color": "black", "name": "Cannondale"},
            {"id": 21, "color": "red",   "name": "Shimano"}
        ]
    } */
/*     search = JSON.search(obj, '//car[color="yellow"]/name');

console.log( search );
// ["Porsche"] */ 


//var reds = JSON.search(obj, '//*[color="black"]');
//book[/bookstore/@specialty=@style]


var obj = {
        "car": [
            {"id": 10, "color": "silver", "name": "Volvo"},
            {"id": 11, "color": "red",    "name": "Saab"},
            {"id": 12, "color": "red",    "name": "Peugeot"},
            {"id": 13, "color": "yellow", "name": "Porsche"}
        ],
        "bike": [
            {"id": 20, "color": "black", "name": "Cannondale"},
            {"id": 21, "color": "red",   "name": "Shimano"}
        ],
        
		"aaa": [
		    {"id": 20, "color": "black", "name": "Volvo"},
		    {"id": 21, "color": "red",   "name": "Porsche"}
		]
    }

//var reds = JSON.search(obj, 'car[/aaa/@name=@name]');

var reds = JSON.search(obj, '//name');

for (var i=0; i<reds.length; i++) {
    console.log( reds[i].name );
}

</script>
</body>
</html>