<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/global_head.jsp" %>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2aa948b64a88c50b066555806f58f46c"></script>

 <body>
	<center>
	<div id="wrap">
		<%@ include file="../include/top.jsp" %>

		<img src="../images/center/sub_image.jpg" id="main_visual" />

		<div class="contents_box">
			<div class="left_contents">
				<img src="../images/center/left_title.gif" alt="센터소개 Center Introduction" class="left_title" />
				<%@ include file="../include/center_leftmenu.jsp" %>
			</div>
			<div class="right_contents">
				<div class="top_title">
					<img src="../images/center/sub07_title.gif" alt="오시는길" class="con_title" />
					<p class="location"><img src="../images/center/house.gif" />&nbsp;&nbsp;센터소개&nbsp;>&nbsp;오시는길<p>
				</div>
				<div class="con_box">
					<p class="con_tit"><img src="../images/center/sub07_tit01.gif" alt="오시는길" /></p>
					
					<div id="map" style="width:700px;height:380px;" ></div>   
   					<script>
				      var container = document.getElementById('map');
				      var options = {
				         center: new kakao.maps.LatLng(33.450701, 126.570667),
				         level: 3
				      };
				
				      var map = new kakao.maps.Map(container, options);
				      
				      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				          mapOption = { 
				              center: new kakao.maps.LatLng(37.478820248714875, 126.87876539517411), // 지도의 중심좌표
				              level: 3 // 지도의 확대 레벨
				          };
				   
				      var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
				   
				      // 마커가 표시될 위치입니다 
				      var markerPosition  = new kakao.maps.LatLng(37.478820248714875, 126.87876539517411); 
				   
				      // 마커를 생성합니다
				      var marker = new kakao.maps.Marker({
				          position: markerPosition
				      });
				   
				      // 마커가 지도 위에 표시되도록 설정합니다
				      marker.setMap(map);
				   
				      // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
				      // marker.setMap(null);
				   </script>

					<p class="con_tit"><img src="../images/center/sub07_tit02.gif" alt="자가용 오시는길" / style="padding-top: 30px;"></p>
					<div class="in_box">
						<p class="dot_tit">강북 방향</p>
						<p style="margin-bottom:15px;">강변북로 진입 후 월드컵 경기장 방면으로 우측방향 → 난지도길 가양대교 방향으로 좌회전 → 상암동길 상암초교 방면으로 우회전 </p>
						<p class="dot_tit">일산 방향</p>
						<p style="margin-bottom:15px;">강변북로 수색/가양대교 방향으로 우측방향, 강변북로 수색역/월드컵경기장 방면으로 좌측방향 → 월드컵 경기장 방면으로 우측방향 → 상암동길 상암초교 방면으로 좌회전  </p>
					</div>
					<p class="con_tit"><img src="../images/center/sub07_tit03.gif" alt="대중교통 이용시" /></p>
					<div class="in_box">
						<p class="dot_tit">버스</p>
						<p style="margin-bottom:15px;">172번, 271번, 470번, 6715번, 7011번, 7013번, 7016번, 7019번, 7715번 월드컵3단지 정문 앞 하차  </p>
						<p class="dot_tit">지하철</p>
						<p style="margin-bottom:15px;">2호선, 6호선 합정역 2번출구에서 271번 환승 후 월드컵파크 3단지 정문 앞 하차<br />6호선 마포구청역 1번출구에서 271번 환승 후 월드컵파크 3단지 정문 앞 하차 </p>
						<p class="dot_tit">마을버스</p>
						<p>마포8번, 마포15번</p>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../include/quick.jsp" %>
	</div>
	

	<%@ include file="../include/footer.jsp" %>
	</center>
 </body>
</html>