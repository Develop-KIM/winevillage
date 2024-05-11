<%-- 매장 지도 JSP 파일 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>와인 매장 지도</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCA_wHpvweyggdV7nAg-7ekrGf2Sx4h4CY"></script>
    <script>
			console.log(${store.Store_name});
    function initMap() {
    	  var map = new google.maps.Map(document.getElementById('map'), {
    	    center: {lat: 37.5665, lng: 126.9780},
    	    zoom: 12
    	  });
    	  var redIcon = {
    	    url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png",
    	    scaledSize: new google.maps.Size(32, 32)
    	  };

    	  <c:forEach var="store" items="${stores}">
    	    var marker = new google.maps.Marker({
    	      position: {lat: parseFloat('${store.latitude}'), lng: parseFloat('${store.longitude}')},
    	      map: map,
    	      title: '${store.storeName}',
    	      icon: redIcon
    	    });
    	  </c:forEach>

    	  // 현재 위치 가져오기
    	  if (navigator.geolocation) {
    	    navigator.geolocation.getCurrentPosition(function(position) {
    	      var currentLat = position.coords.latitude;
    	      var currentLng = position.coords.longitude;
    	      var currentPosition = new google.maps.LatLng(currentLat, currentLng);

    	      // 현재 위치 마커 추가
    	      var currentMarker = new google.maps.Marker({
    	        position: currentPosition,
    	        map: map,
    	        title: '현재 위치',
    	        icon: {
    	            url: 'http://maps.google.com/mapfiles/ms/icons/blue-dot.png',
    	            scaledSize: new google.maps.Size(48, 48) // 마커 크기 조절
    	          }
    	      });

    	      map.setCenter(currentPosition);
    	      map.setZoom(15);
    	    });
    	  }
    	}
        $(document).ready(function() {
        	  $('.store-list li').click(function() {
        	    var lat = $(this).data('lat');
        	    var lng = $(this).data('lng');
        	    var position = new google.maps.LatLng(lat, lng);
        	    map.setCenter(position);
        	    map.setZoom(15);
        	  });
        });
    </script>
</head>
<body onload="initMap()">
<div class="store-list">
  <h4>매장 목록</h4>
  <ul>
    <c:forEach var="store" items="${stores}">
      <li data-lat="${store.latitude}" data-lng="${store.longitude}">${store.storeName}</li>
    </c:forEach>
  </ul>
</div>
<div id="map" style="height: 500px;"></div>

</body>
</html>

    
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body onload="initMap()">
<%@ include file="../common/common.jsp"%>
 <!-- contents -->
    <section id="contents">
        <div class="lnb comm_lnb bg_lnb company_lnb lnb_wrap">
            <div class="pc_hidden">
                <a href="javascript:history.go(-1);" class="prev">이전</a>
                <div class="select_brand js_select" id="select_brand">
                    <button type="button" class="my_value js_selectBtn"
                        onclick="$(this).toggleClass('on')"><span>Shop</span></button>
                    <ul class="mb_lnb_lists">
                        <li><a href="about_us.html">Wine</a></li>
                        <li><a href="brand.html">Other</a></li>
                        <li><a href="fnb.html">About Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="pc_lnb mb_hidden">
                <div class="page_tit">
                    <h2><span>Store</span></h2>
                </div>
             
            </div>
        </div>
        <div class="wrap">
            <div class="content cs store_page">
                <div class="mb_page_tit">
                    <div class="img">
                        <img src="../../asset/images/shop/company/mb_page_tit_store.png" alt="">
                    </div>
                    <h2><span>SHOP</span></h2>
                </div>
                <div class="inner">
                    <div class="con_top">
                        <h3>Wine Village 매장안내</h3>
                        <!-- <span>와인이 필요한 순간에, <br class="pc_hidden">가장 가까운 와인나라 매장을 찾아주세요!<br>11개 직영매장 () 및 입점매장으로 운영됩니다.</span> -->
                        <span>와인이 필요한 순간, 가장 가까운 Wine Village 매장을 찾아주세요!</span>
                    </div>
                    <div class="store_map">
                        <div class="map">
                            <div id="map" style="width: 100%; height: 500px;">
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
 <!-- //contents -->
<%@ include file="../common/footer.jsp"%>
</body>
</html> --%>