$(document).ready(function () {
	window.onload = ajaxLoad("../jsp/welcome.jsp","myframe");
//	$(".navbar-nav li").click(function () {
//		$(this).children("a").addClass("active");
//		if($(this).siblings("li").children("a").hasClass("active")){
//			$(this).siblings("li").children("a").removeClass()("active")
//		}
//	});
});
function ajaxLoad(myUl,myId)
{
    var xmlhttp;
    if (window.XMLHttpRequest){
        // IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
        xmlhttp=new XMLHttpRequest();
    }
    else{
        // IE6, IE5 浏览器执行代码
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlhttp.onreadystatechange=function(){
    	if (xmlhttp.readyState==4 && xmlhttp.status==200){
        	document.getElementById(myId).innerHTML=xmlhttp.responseText;
       	}
    }
    xmlhttp.open("GET",myUl,true);
    xmlhttp.send();
}