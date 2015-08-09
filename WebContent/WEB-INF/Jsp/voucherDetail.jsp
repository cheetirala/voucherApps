<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>  
<!doctype html>
<html lang="en">
<head>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=utf-8">
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0; user-scalable=0;" />
<title>VouchersClub</title>
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
<!-- main css -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
<!--mobile css-->
<link href="resources/css/mobile.css" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600' rel='stylesheet' type='text/css'>

<!-- html5.js for IE less than 9 -->
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!-- css3-mediaqueries.js for IE less than 9 -->
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-55868896-1', 'auto');
  ga('send', 'pageview');
</script>
<script type="text/javascript" src="resources/js/jquery2.min.js"></script>


<script type='text/javascript'>

var loopCount=1;
var voucherSize=${voucherSize};
$(document).ready(function(){
	/* $('#content').MyPagination({height: 800, fadeSpeed: 10}); */
	
	var pageCounter = 0;
	
$("img.a").hover(
function() {
$(this).stop().animate({"opacity": "0"}, "fast");
},
function() {
$(this).stop().animate({"opacity": "1"}, "fast");
});

});


function showCode(code,url){
	$('#'+code).css("display", "none");
	$('#'+code+"Val").css("display", "block");
	window.open(url);
	
}
function getNextPage(index){
	loopCount = index;
	$.ajax({
		   type: "GET",
		   url: "/getNextPage",
		  cache: false,    
		  data:({index : index}),
		  contentType: 'application/json',
		    mimeType: 'application/json',
		  success: function(data){
			  $('#content').html('');
			  loadVoucherList(data);
		  }
		 });
	
}
function nextButtonPagenation(){
	var remainder = voucherSize % 10;
	var pagecount = (voucherSize-remainder)/10;
	if(voucherSize % 10 != 0){
		pagecount=pagecount+1;
	}
	if(loopCount<pagecount){
	getNextPage(loopCount+1);
	}
}

function PreButtonPagenation(){
	if(loopCount>1){
	getNextPage(loopCount-1);
	}
}

function loadVoucherList(data){
	
	$.each(data, function(idx, obj) {
		
		var div1;
		var div= "<div class='box_1 fl'>"+
		"<img src="+obj.logoPath+" alt=''>"+
		"<div class='box_rgh'>"+
			"<div class='expire_con'>Expires on " + obj.endDate+ "<span> <img src='resources/images/dot.png' alt=''> use online</span></div>"+			
			"<div class='offer_con'>"+
				"<h1>"+obj.title+"</h1>"+				
				"<p>" + "Terms and Conditions:" +obj.description+"</p>"+				
			"</div>";
			var uri = obj.defaultTrackUri;
			 if((obj.code).length!=0){
				 div1='<div class="get_deal_btn">'+
				"<div id="+obj.code+"  class='get_btn' onClick=showCode(this.id,'"+uri+"\')>show code & visit site</div>"+
				"<div id="+obj.code+"Val class='get_btn' style='display:none'>"+obj.code+"</div>"+
			"</div></div></div>";}
			else{
				div1="<div class='get_deal_btn'>"+
				"<div class='get_btn' onClick=window.open('"+
						uri+
						"\')>get deal</div>"+
			"</div></div></div>";}
			 
			 var res = div.concat(div1); 
		$('#content').append(res);
	});
	
	
}

	</script>


</head>

<body>
<!-- Google Tag Manager -->
<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-W2VM56"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-W2VM56');</script>
<!-- End Google Tag Manager -->

<!--header code--> 
<header class="header_outer">
	<div class="auto_con">
		<div class="header_inner">
			<div class="logo_con"><a href="index.jsp"><img src="resources/images/logo.png" alt="vouchersclub" border="0"></a></div>
			<div class="header_rgh">
				<div class="sm_con">
						<div class="fadehover">
							<a href="https://twitter.com/vouchersclub" target="_blank"><img
								src="resources/images/sm_1.png" alt="vouchersclub twitter" class="a"></a> <img
								src="resources/images/sm_1-h.png" alt="vouchersclub twitter" class="b">
						</div>

						<div class="sm_2">
							<a href="https://www.facebook.com/pages/Vouchersclub/1946796615459244" target="_blank"><img
								src="resources/images/sm_2.png" alt="vouchersclub facebook" class="a"></a> <img
								src="resources/images/sm_2_h.png" alt="vouchersclub facebook" class="b">
						</div>

						<div class="sm_3">
							<a
								href="https://plus.google.com/+Vouchersclubworldwide"
								target="_blank"><img src="resources/images/sm_3.png" alt="vouchersclub googleplus"
								class="a"></a> <img src="resources/images/sm_3_h.png" alt="vouchersclub googleplus"
								class="b">
						</div>
					</div>
			</div>
		</div>
	</div>
</header>
<!--header code-->

<!--banner code-->
<div class="auto_con">
	<div class="banner_con">
		<div class="search_outer">
			<spring:form action="getSearchData" method="post">
				<div class="serach_fld"><input name="serachData" type="text" value="Search for Brand or Product..." class="serach_fld_in"> </div>
				<div class="search_btn"><input name="" type="submit" value="SEARCH" class="search_btn_in"></div>
		</spring:form>
		</div>
		
	</div>
</div>
<!--banner code-->

<!--banner content code-->
<div class="auto_con">
	<div class="banner_content">
	 <div id="content" class="box_outer">
	<c:forEach items="${voucherList}" var="item">
			<div class="box_1 fl">
				<img src="${item.logoPath}" alt="company logo">
				<div class="box_rgh">
					<div class="expire_con">Expires on ${item.endDate} <span> <img src="resources/images/dot.png" alt="use online"> use online</span></div>
					<div class="offer_con">
						<h1>${item.title}</h1>
						<p>Terms and Conditions: ${item.description}</p>										
					</div>
					<c:choose>
  						<c:when test="${fn:length(item.code)> 0}">
					<div class="get_deal_btn">
						<div id="${item.code}"  class="get_btn" onClick="showCode(this.id,'${item.defaultTrackUri}')">show code & visit site</div>
						<div id="${item.code}Val" class="get_btn" style="display:none">${item.code}</div>
					</div>
						</c:when>
						<c:otherwise>
					<div class="get_deal_btn">
						<div class="get_btn" onClick="window.open('${item.defaultTrackUri}')">get deal</div>
					</div>
						</c:otherwise>
					</c:choose>
					
				</div>
			</div>
		</c:forEach>
		</div>
		</div>
	</div>
	<c:set var="pagiantionSize"  value="${voucherSize}"/>
	<c:set var="pageCount"  value="${pagiantionSize / 10}"/>
	<c:choose>
	<c:when test="${pagiantionSize % 10 == 0}">
	<c:set var="pageCount"  value="${pageCount}"/>
	</c:when>
	<c:otherwise>
	<c:set var="pageCount"  value="${pageCount + 1}"/>
	
	</c:otherwise>
	</c:choose>
	<c:if test="${pagiantionSize > 10}">
	<div class="pagination">
        <ul>
            <li><a href="#" id="prev" class="prevnext" onclick="PreButtonPagenation()">« Previous</a></li>
            <c:forEach begin="1" end="${pageCount}" step="1" varStatus="loop">
				   
				 <li><a href="#" onclick="getNextPage('${loop.count}')"><c:out value="${loop.count}"/></a></li>   
				</c:forEach>
            <li><a href="#" id="next" class="prevnext" onclick="nextButtonPagenation()">Next »</a></li>
        </ul>
        <br />
        
    </div>
    </c:if>
	
	
	
<!--banner content code-->

<!--Footer code-->
<footer class="footer_con">
	<div class="auto_con">
			Copyright  2014 Harika Technologies Ltd. All rights reserved. 
			<!-- <span>
				<a href="#">About Us</a>  <a href="#">Contact Us</a>
			</span>	 -->	
	</div>
</footer>
<!--Footer code-->


<!--toggle-->
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript"> 
$(document).ready(function(){
  $(".flip").click(function(){
    $(".panel").slideToggle("slow");
  });
});
</script>
<!--toggle-->

</body>
</html>
