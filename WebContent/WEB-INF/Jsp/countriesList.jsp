<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring"
	uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html;charset=utf-8">
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0; user-scalable=0;" />
<title>VouchersClub</title>
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
<!-- main css -->
<link href="resources/css/style.css" rel="stylesheet" type="text/css">
<!--mobile css-->
<link href="resources/css/mobile.css" rel="stylesheet" type="text/css">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800'
	rel='stylesheet' type='text/css'>

<!-- html5.js for IE less than 9 -->
<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
<!-- css3-mediaqueries.js for IE less than 9 -->
<!--[if lt IE 9]>
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<![endif]-->
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');
	ga('create', 'UA-55868896-1', 'auto');
	ga('send', 'pageview');
</script>

<script type="text/javascript" src="resources/js/jquery2.min.js"></script>
<script type='text/javascript'>
	$(document).ready(function() {

		$("img.a").hover(function() {
			$(this).stop().animate({
				"opacity" : "0"
			}, "fast");
		}, function() {
			$(this).stop().animate({
				"opacity" : "1"
			}, "fast");
		});

	});

	function getVoucher(id) {
		document.getElementById('country').value = id;
		document.getElementById('countryVoucherForm').submit();
	}
</script>

</head>

<body>
	<!-- Google Tag Manager -->
	<noscript>
		<iframe src="//www.googletagmanager.com/ns.html?id=GTM-W2VM56"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<script>
		(function(w, d, s, l, i) {
			w[l] = w[l] || [];
			w[l].push({
				'gtm.start' : new Date().getTime(),
				event : 'gtm.js'
			});
			var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
					+ l
					: '';
			j.async = true;
			j.src = '//www.googletagmanager.com/gtm.js?id=' + i + dl;
			f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-W2VM56');
	</script>
	<!-- End Google Tag Manager -->

	<!--header part start-->

	<header class="header_outer">
		<div class="auto_con">
			<div class="header_inner">
				<div class="logo_con">
					<img src="resources/images/logo.png" alt="vouchersclub" border="0">
				</div>
				<div class="header_rgh">
					<div class="sm_con">
						<div class="fadehover">
							<a href="https://twitter.com/vouchersclub" target="_blank"><img
								src="resources/images/sm_1.png" alt="vouchersclub twitter"
								class="a"></a> <img src="resources/images/sm_1-h.png"
								alt="vouchersclub twitter" class="b">
						</div>

						<div class="sm_2">
							<a
								href="https://www.facebook.com/pages/Vouchersclub/1946796615459244"
								target="_blank"><img src="resources/images/sm_2.png"
								alt="vouchersclub facebook" class="a"></a> <img
								src="resources/images/sm_2_h.png" alt="vouchersclub facebook"
								class="b">
						</div>

						<div class="sm_3">
							<a href="https://plus.google.com/+Vouchersclubworldwide"
								target="_blank"><img src="resources/images/sm_3.png"
								alt="vouchersclub googleplus" class="a"></a> <img
								src="resources/images/sm_3_h.png" alt="vouchersclub googleplus"
								class="b">
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!--header part end-->

	<!--banner part start-->

	<div class="banner_otr">
		<div class="auto_con">
			<div class="place">
				<h1>Please select a country to view the vouchers</h1>
			</div>
			<div>
				<spring:form id="countryVoucherForm" action="getVoucher"
					method="post">
					<input id="country" name="country" type="hidden" />
				</spring:form>
			</div>

			<div class="banner_inr">

				<div class="flip-3d">
					<figure>
						<img id="uk" src="resources/images/flag2.jpg" alt="United Kingdom"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>United Kingdom</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="ireland" src="resources/images/flag1.jpg" alt="Ireland"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Ireland</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="netherlands" src="resources/images/flag3.jpg"
							alt="Netherlands" class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Netherlands</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="germany" src="resources/images/flag4.jpg" alt="Germany"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Germany</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="france" src="resources/images/flag5.jpg" alt="France"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>France</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="spain" src="resources/images/flag6.jpg" alt="Spain"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Spain</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="belgiumDutch" src="resources/images/flag7.jpg"
							alt="Belgium (Dutch)" class="flag_link"
							onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Belgium (Dutch)</figcaption>
				</div>

				<!-- <div class="flip-3d">
					<figure>
						<img id="belgiumFrench" src="resources/images/flag7.jpg"
							alt="Belgium (French)" class="flag_link"
							onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Belgium (French)</figcaption>
				</div> -->

				<div class="flip-3d">
					<figure>
						<img id="denmark" src="resources/images/flag9.jpg" alt="Denmark"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Denmark</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="switzerlandGerman" src="resources/images/flag22.jpg"
							alt="Switzerland (German)" class="flag_link"
							onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Switzerland (German)</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="switzerlandFrench" src="resources/images/flag22.jpg"
							alt="Switzerland (French)" class="flag_link"
							onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Switzerland (French)</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="italy" src="resources/images/flag8.jpg" alt="Italy"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Italy</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="sweden" src="resources/images/flag15.jpg" alt="Sweden"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Sweden</figcaption>
				</div>

				<!-- 	<div class="flip-3d">
					<figure>
						<img id="india" src="resources/images/flag14.jpg" alt="India" class="flag_link">
					</figure>
					<figcaption>India</figcaption>
				</div> -->

				<div class="flip-3d">
					<figure>
						<img id="norway" src="resources/images/flag16.jpg" alt="Norway"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Norway</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="finland" src="resources/images/flag17.jpg" alt="Finland"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Finland</figcaption>
				</div>

				<!-- 	<div class="flip-3d">
					<figure>
						<img id="lithuania" src="resources/images/flag18.jpg" alt="Lithuania" class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Lithuania</figcaption>
				</div> -->

				<div class="flip-3d">
					<figure>
						<img id="austriaGerman" src="resources/images/flag19.jpg"
							alt="Austria (German)" class="flag_link"
							onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Austria (German)</figcaption>
				</div>

				<!-- 		<div class="flip-3d">
					<figure>
						<img id="russia" src="resources/images/flag20.jpg" alt="Russia" class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Russia</figcaption>
				</div> -->

				<div class="flip-3d">
					<figure>
						<img id="poland" src="resources/images/flag21.jpg" alt="Poland"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Poland</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="portugal" src="resources/images/flag24.jpg"
							alt="Portugal" class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Portugal</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="brazil" src="resources/images/flag25.jpg" alt="Brazil"
							class="flag_link" onClick="getVoucher(this.id)">
					</figure>
					<figcaption>Brazil</figcaption>
				</div>

				<div class="flip-3d">
					<figure>
						<img id="unitedStates" src="resources/images/flag11.jpg"
							alt="United States" class="flag_link">
					</figure>
					<figcaption>United States</figcaption>
				</div>

			</div>
		</div>
	</div>

	<!--banner part end-->

	<!--footer part start-->

	<footer class="footer_con">
		<div class="auto_con">
			Copyright 2014 Harika Technologies Ltd. All rights reserved.
			<!-- <span>
				<a href="#">About Us</a>  <a href="#">Contact Us</a>
			</span>	 -->
		</div>
	</footer>

	<!--footer part end-->

	<!--toggle-->
	<script src="resources/js/jquery.min.js"></script>
	<script type="text/javascript">
			$(document).ready(function() {
				$(".flip").click(function() {
					$(".panel").slideToggle("slow");
				});
			});
		</script>
	<!--toggle-->
</body>
</html>
