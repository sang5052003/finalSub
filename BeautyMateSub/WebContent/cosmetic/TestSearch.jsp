<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<c:set var="ctx">${pageContext.request.contextPath }</c:set>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>JS Bin</title>
  <style>
  
    .char-글리세린, .char-세테아릴올리베이트 {
    color: red;
}
</style>
</head>
<body>

<%-- 
                            <div class="alert alert-warning alert-dismissible" role="alert" 
                                 style="width:650px; background-color: #FFFFFF;">
                                <img src="${ctx}/resources/img/flower.png"style="width:30px;">
                                
                                 <span style="font-size:12px; color:orangeRed; font-weight:bold;"> 전성분 </span><br>
                                <span id="phrase" style="font-size:12px; color: lightSeaGreen;">정제수· 글리세린· 스쿠알란·스쿠알란· 프로판디올· 사이클로펜타실록산</span>
  							                               
                            </div>    
                      
                            <div class="alert alert-warning alert-dismissible" role="alert" 
                                 style="width:650px; background-color: #FFFFFF;">
                                <img src="${ctx}/resources/img/20danger.png" style="width:30px;">
                                 <span style="font-size:12px; color:orangeRed; font-weight:bold;"> 20가지 주의성분 </span><br>                           
                               	 <div id="caution" style="font-size:12px; color: crimson;">  </div>
                 
  							

                                
                            </div>     --%>
<span id="phrase">정제수· 글리세린· 스쿠알란·스쿠알란· 프로판디올· 사이클로펜타실록산</span>
  <br><br>
  <div id="caution">  </div> 
  
$("#phrase").text();
  

  <script>
/*   var span = document.getElementById('phrase'),
    text = span.innerHTML.split('· ').map(function(el) {
       if(el==='글리세린' ||el==='세테아릴올리베이트')
         return el;
    }).join(' ');
  

var div = document.getElementById('caution');
div.innerHTML ='20가지 주의성분:'+ text; */

var temp="";
var count=0;
var span = document.getElementById('phrase'),
    text = span.innerHTML.split('· ').map(function(el) {
     temp += '<span class="char-' + el + '">' + el + '</span>';
   	 temp += ' ';
       if(el==='글리세린' ||el==='프로판디올'){
    	   count++;
    	   return el;
       }
         
    }).join('  ');
  

span.innerHTML = temp;

var div = document.getElementById('caution');
div.innerHTML = text;

console.log(count);

</script>


</body>
</html>