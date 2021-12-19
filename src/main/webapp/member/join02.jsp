<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/global_head.jsp" %>

<script>
	function validateForm(form){
		
		if(!form.name.value ){
            alert('이름을 입력하세요');
            return false;
        }
		
		//아이디가 8자 이상인지 확인 (12자 미만인지는 maxlength로 지정함)
        if(form.id.value.length<8){ 
            alert("아이디는 8자 이상 입력하세요");
            form.id.value = '';
            return false;
        }
        //아이디 첫문자 숫자 못옴 isNaN이용해서 숫자면 false
        var isNum = (isNaN(form.id.value.charAt(0)));
        if(isNum==false){
            alert("아이디의 첫문자는 숫자가 올 수 없습니다.");
            return false;
        }
        //숫자랑 영문 이외에는 모든 값을 입력할 수 없도록 !(Not)연산자 붙여서 확인
        var whatType = form.id.value
        for(var i=0; i<whatType.length; i++){
            if(!((whatType[i]>='a' && whatType[i]<='z') ||
                    (whatType[i]>='A' && whatType[i]<='Z') ||
                    (whatType[i]>='0' && whatType[i]<='9'))){
                alert("숫자랑 영문자만 입력가능합니다.");
                return false;
            }
        }

        //패스워드가 공란인경우
        if(!form.pass1.value || !form.pass2.value){
            alert('패스워드를 입력하세요');
            return false;
        }
        //패스워드가 일치하지 않는 경우
        if(form.pass1.value != form.pass2.value){
            alert('입력한 패스워드가 일치하지 않습니다.');
            form.pass1.value=""; 
            form.pass2.value="";
            form.pass1.focus();
            return false;
        }

        //이름공란
        if(form.name.value ==""){
            alert("이름을 입력하세요");
            form.name.focus();
            return false;
        }
        
        //도메인 미선택
        if(form.email_sel.value==""){
            alert("도메인을 선택하세요");
            form.email_sel.focus();
            return false;
        }

        //주소공란
        if(form.zipcode.value=="" || form.addr1.value=="" || form.addr2.value==""){
            alert("주소를 입력하세요");
            return false;
        }
        
        if(form.phone2.value =="" && form.phone2.value==""){
            alert("전화번호를 입력하세요");
            return false;
        }

        if(form.hphone2.value =="" && form.hphone2.value==""){
            alert("휴대폰번호를 입력하세요");
            return false;
        }

         //폼 검증이 끝난 후 서버로 전송 직후 로딩 이미지를 띄워준다.
        document.getElementById("id_loading").style.display = 'block';
        return false;
	}
}
</script>

 <body>
	<!-- <center> -->
	<form name = "join02Frm" onclick="return validateForm(this);">
	<div id="wrap">
		<%@ include file="../include/top.jsp" %>

		<img src="../images/member/sub_image.jpg" id="main_visual" />

		<div class="contents_box">
			<div class="left_contents">
				<%@ include file = "../include/member_leftmenu.jsp" %>
			</div>
			<div class="right_contents">
				<div class="top_title">
					<img src="../images/join_tit.gif" alt="회원가입" class="con_title" />
					<p class="location"><img src="../images/center/house.gif" />&nbsp;&nbsp;멤버쉽&nbsp;>&nbsp;회원가입<p>
				</div>
				
				<p class="join_title"><img src="../images/join_tit03.gif" alt="회원정보입력" /></p>
				<table cellpadding="0" cellspacing="0" border="0" class="join_box">
					<colgroup>
						<col width="80px;" />
						<col width="*" />
					</colgroup>
					<tr>
						<th><img src="../images/join_tit001.gif" /></th>
						<td><input type="text" name="name" value="" class="join_input" /></td>
					</tr>
					<tr>
						<th><img src="../images/join_tit002.gif" /></th>
						<td><input type="text" name="id"  value="" class="join_input" />&nbsp;<a onclick="id_check_person();" style="cursor:hand;"><img src="../images/btn_idcheck.gif" alt="중복확인"/></a>&nbsp;&nbsp;<span>* 4자 이상 12자 이내의 영문/숫자 조합하여 공백 없이 기입</span></td>
					</tr>
					<tr>
						<th><img src="../images/join_tit003.gif" /></th>
						<td><input type="password" name="pass" value="" class="join_input" />&nbsp;&nbsp;<span>* 4자 이상 12자 이내의 영문/숫자 조합</span></td>
					</tr>
					<tr>
						<th><img src="../images/join_tit04.gif" /></th>
						<td><input type="password" name="pass2" value="" class="join_input" /></td>
					</tr>
					
					<tr>
						<th><img src="../images/join_tit06.gif" /></th>
						<td>
							<input type="text" name="tel1" value="" maxlength="3" class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="tel2" value="" maxlength="4" class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="tel3" value="" maxlength="4" class="join_input" style="width:50px;" />
						</td>
					</tr>
					<tr>
						<th><img src="../images/join_tit07.gif" /></th>
						<td>
							<input type="text" name="mobile1" value="" maxlength="3" class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="mobile2" value="" maxlength="4" class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="mobile3" value="" maxlength="4" class="join_input" style="width:50px;" /></td>
					</tr>
					<tr>
						<th><img src="../images/join_tit08.gif" /></th>
						<td>
							<input type="text" name="email_1" style="width:100px;height:20px;border:solid 1px #dadada;" value="" /> @ 
							<input type="text" name="email_2" style="width:150px;height:20px;border:solid 1px #dadada;" value="" readonly />
							<select name="last_email_check2" onChange="email_input(this);" class="pass" id="last_email_check2" >
								<option selected="" value="">선택해주세요</option>
								<option value="1" >직접입력</option>
								<option value="dreamwiz.com" >dreamwiz.com</option>
								<option value="empal.com" >empal.com</option>
								<option value="empas.com" >empas.com</option>
								<option value="freechal.com" >freechal.com</option>
								<option value="hanafos.com" >hanafos.com</option>
								<option value="hanmail.net" >hanmail.net</option>
								<option value="hotmail.com" >hotmail.com</option>
								<option value="intizen.com" >intizen.com</option>
								<option value="korea.com" >korea.com</option>
								<option value="kornet.net" >kornet.net</option>
								<option value="msn.co.kr" >msn.co.kr</option>
								<option value="nate.com" >nate.com</option>
								<option value="naver.com" >naver.com</option>
								<option value="netian.com" >netian.com</option>
								<option value="orgio.co.kr" >orgio.co.kr</option>
								<option value="paran.com" >paran.com</option>
								<option value="sayclub.com" >sayclub.com</option>
								<option value="yahoo.co.kr" >yahoo.co.kr</option>
								<option value="yahoo.com" >yahoo.com</option>
							</select>
							
							<input type="checkbox" name="open_email" value="1">
							<span>이메일 수신동의</span>
						</td>
					</tr>
					<tr>
						<th><img src="../images/join_tit09.gif" /></th>
						<td>
							<input type="text" name="zip1" value=""  class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="zip2" value=""  class="join_input" style="width:50px;" />
							<a href="javascript:;" title="새 창으로 열림" onclick="zipFind('zipFind', '<?=$_Common[bbs_path]?>member_zipcode_find.php', 590, 500, 0);" onkeypress="">[우편번호검색]</a> 
							    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
							    <script>
							    function zipFind(){
							        new daum.Postcode({
							            oncomplete: function(data) {
							                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
							                // 예제를 참고하여 다양한 활용법을 확인해 보세요.
							                var frm = document.myform;
							                frm.zipcode.value =  data.zonecode; //12345(우편번호)
							                frm.addr1.value = data.address; //기본주소
							                frm.addr2.focus();
							            }
							        }).open();
							    }
							    </script>
							<br/>
							
							<input type="text" name="addr1" value=""  class="join_input" style="width:550px; margin-top:5px;" /><br>
							<input type="text" name="addr2" value=""  class="join_input" style="width:550px; margin-top:5px;" />
						</td>
					</tr>
				</table>
				<p style="text-align:center; margin-bottom:20px"><a href="join02.jsp"><img src="../images/btn01.gif" /></a>&nbsp;&nbsp;<a href="#"><img src="../images/btn02.gif" /></a></p>
			</div>
		</div>
		<%@ include file="../include/quick.jsp" %>
	</div>
	</form>
	<%@ include file="../include/footer.jsp" %>
	</center>
 </body>
</html>
