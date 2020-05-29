<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("로그인 시간을 초과하였거나 이 페이지를 볼 권한이 없습니다.");
   setTimeout("window.close();", 1000);
   </script>
   <%response.end%>
<%end if%>
<!--#include virtual="/include/DBOpen.inc"-->
<!--#include virtual="/include/request1.asp"-->
<%
select case session("Lev")
case "C"
mydb="dan_element_a"
case "D"
mydb="element_a"
case "E"
mydb="com_element_a"
end select
set rs0=server.createobject("ADODB.recordset")
SQL0="select * from "&mydb&" where sys_no='"&session("sys_no")&"'"
rs0.open(SQL0),dbcon,1,1
%>
<html>
<head>
<title>초등 1학년용 03page</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="../../styles_mun1.css" type="text/css">
</head>
<Script Language="JavaScript">
function send_form() {
  document.form1.submit();
}
function chk() {}
</Script>  
</head>
<body bgcolor="#FFFFFF" text="#000000" background="../../images/all-back.gif">
<form name="form1" method="get" action="testa_chk.asp">
<input type="hidden" name="chkpage" value="3">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table width="768" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td><img src="../../mun_img/element_bg_01.gif" width="768" height="56"></td>
        </tr>
        <tr> 
          <td background="../../mun_img/element_bg_02.gif"> 
            <table width="750" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td><table width="740" border="0" cellspacing="0" cellpadding="1">
                      <tr> 
                        <td width="25" height=30><img src="../../images/mun_ico_msg1.gif" width="20" height="16"></td>
                        <td><font color="#CC3333">1-64번까지의 문항을 잘 읽어 본 후 '그렇다'라고 
                          생각되면 ①, '아니다'라고 생각되면 ②에 체크하세요! </font></td>
                      </tr>
                    </table></td>
              </tr>
              <tr> 
                <td>
                     
                    <table width="740" border="1" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">NO.</div>
                        </td>
                        <td width="550" height="30" bgcolor="CBEABE"> 
                          <div align="center">문 제</div>
                        </td>
                        <td width="140" height="30" bgcolor="CBEABE"> 
                          <div align="center">선택</div>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">39</div>
                        </td>
                        <td width="550">한 가지 일을 오래 계속하지 못한다. </td>
                        <td width="140">① 
                          <input type="radio" name="test39" value="01" <%if rs0("test39")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test39[0].checked=true'>예</a> ② 
                          <input type="radio" name="test39" value="02" <%if rs0("test39")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test39[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">40</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 공부할 때 정신 집중이 잘 안 된다. 
                        </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test40" value="01" <%if rs0("test40")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test40[0].checked=true'>예</a> ② 
                          <input type="radio" name="test40" value="02" <%if rs0("test40")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test40[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">41</div>
                        </td>
                        <td width="550">공부를 할 때 주위가 산만하다. </td>
                        <td width="140">① 
                          <input type="radio" name="test41" value="01" <%if rs0("test41")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test41[0].checked=true'>예</a> ② 
                          <input type="radio" name="test41" value="02" <%if rs0("test41")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test41[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">42</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">학교나 집에서 공부할 때 시간이 잘 안 
                          가서 지루함을 느낀다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test42" value="01" <%if rs0("test42")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test42[0].checked=true'>예</a> ② 
                          <input type="radio" name="test42" value="02" <%if rs0("test42")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test42[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td rowspan="2" valign="top"> 
                          <div align="center"><br>
                            43</div>
                        </td>
                        <td colspan="2" height="30">아래 (1) ~ (22)번까지의 내용 중에서 자신이 
                          가장 좋아하는 순서대로 3개를 선택하여 번호 3개에 체크하세요!</td>
                      </tr>
                      <tr> 
                        <td colspan="2"> 
                          <table width="680" border="0" cellspacing="0" cellpadding="0" align="center">
                            <tr> 
                              <td width="80%" height="20">(1) 나는 우리나라가 세계에서 가장 
                                잘 사는 나라가 되는 방법을 연구하는 박사가 되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(2) 나는 재판관이나 변호사가 되고 
                                싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(3) 나는 외교관이 되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(4) 나는 글을 쓰는 문학가나 작가 
                                아니면 시인이 되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(5) 나는 대학 교수가 되고 싶다. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(6) 나는 방송국에서 일하고 싶다. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(7) 나는 교회의 목사나 신부님이 
                                되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(8) 공학 교수나 공학 박사가 되고 
                                싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(9) 의학 박사나 의사가 되고 싶다. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(10) 우주 과학자나 천문 학자가 
                                되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(11) 나는 약국에서 일하는 약사가 
                                되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(12) 식물 학자나 농업 학자 아니면 
                                농촌과 어촌의 발전을 위해 일하는 지도자가 되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(13) 나는 유능한 요리사가 되고 
                                싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(14) 컴퓨터 공학 박사가 되고 싶다. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(15) 예쁜 옷을 연구하고 만드는 
                                일을 하고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(16) 나는 유명한 영화 배우나 탤런트가 
                                되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(17) 나는 그림을 그리는 일을 하고 
                                싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(18) 나는 노래를 잘 부르는 가수나 
                                아니면 성악가가 되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(19) 나는 우리나라 체육 발전을 
                                위해 일하고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(20) 나는 체육 선생님이 되고 싶다. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(21) 나는 운동선수(축구, 야구, 
                                농구, 배구, 테니스, 골프, 육상 등)가 되고 싶다. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(22) 나는 무용가가 되고 싶다. 
                              </td>
                            </tr>
                          </table>
                          <br>
                          <table width="500" border="1" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                            <tr bgcolor="CBEABE"> 
                              <td width="166"> 
                                <div align="center">1순위 : 
                                  <select name="test43">
                                    <option value="00">선택↓</option>
                                    <option value="01">1번</option>
                                    <option value="02">2번</option>
                                    <option value="03">3번</option>
                                    <option value="04">4번</option>
                                    <option value="05">5번</option>
                                    <option value="06">6번</option>
                                    <option value="07">7번</option>
                                    <option value="08">8번</option>
                                    <option value="09">9번</option>
                                    <option value="10">10번</option>
                                    <option value="11">11번</option>
                                    <option value="12">12번</option>
                                    <option value="13">13번</option>
                                    <option value="14">14번</option>
                                    <option value="15">15번</option>
                                    <option value="16">16번</option>
                                    <option value="17">17번</option>
                                    <option value="18">18번</option>
                                    <option value="19">19번</option>
                                    <option value="20">20번</option>
                                    <option value="21">21번</option>
                                    <option value="22">22번</option>
                                  </select>
                                </div>
                              </td>
                              <td width="166" bgcolor="CBEABE" height="30"> 
                                <div align="center"> &nbsp;2순위 : 
                                  <select name="test43">
                                    <option value="00">선택↓</option>
                                    <option value="01">1번</option>
                                    <option value="02">2번</option>
                                    <option value="03">3번</option>
                                    <option value="04">4번</option>
                                    <option value="05">5번</option>
                                    <option value="06">6번</option>
                                    <option value="07">7번</option>
                                    <option value="08">8번</option>
                                    <option value="09">9번</option>
                                    <option value="10">10번</option>
                                    <option value="11">11번</option>
                                    <option value="12">12번</option>
                                    <option value="13">13번</option>
                                    <option value="14">14번</option>
                                    <option value="15">15번</option>
                                    <option value="16">16번</option>
                                    <option value="17">17번</option>
                                    <option value="18">18번</option>
                                    <option value="19">19번</option>
                                    <option value="20">20번</option>
                                    <option value="21">21번</option>
                                    <option value="22">22번</option>
                                  </select>
                                </div>
                              </td>
                              <td width="168"> 
                                <div align="center"> &nbsp;3순위 : 
                                  <select name="test43">
                                    <option value="00">선택↓</option>
                                    <option value="01">1번</option>
                                    <option value="02">2번</option>
                                    <option value="03">3번</option>
                                    <option value="04">4번</option>
                                    <option value="05">5번</option>
                                    <option value="06">6번</option>
                                    <option value="07">7번</option>
                                    <option value="08">8번</option>
                                    <option value="09">9번</option>
                                    <option value="10">10번</option>
                                    <option value="11">11번</option>
                                    <option value="12">12번</option>
                                    <option value="13">13번</option>
                                    <option value="14">14번</option>
                                    <option value="15">15번</option>
                                    <option value="16">16번</option>
                                    <option value="17">17번</option>
                                    <option value="18">18번</option>
                                    <option value="19">19번</option>
                                    <option value="20">20번</option>
                                    <option value="21">21번</option>
                                    <option value="22">22번</option>
                                  </select>
                                </div>
                              </td>
                            </tr>
                          </table>
                          <br>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">44</div>
                        </td>
                        <td bgcolor="CBEABE">친구와의 약속을 잘 지킨다. </td>
                        <td bgcolor="CBEABE">① 
                          <input type="radio" name="test44" value="01" <%if rs0("test44")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test44[0].checked=true'>예</a> ② 
                          <input type="radio" name="test44" value="02" <%if rs0("test44")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test44[1].checked=true'>아니오</a></td>
                      </tr>
                    </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center"><a onfocus=this.blur() href="testa-2.asp"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;</a><a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
                        </td>
                      </tr>
                    </table>
             
 </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td><img src="../../mun_img/element_bg_03.gif" width="768" height="15"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
                  </form>  
</body>
</html>
<%
dbcon.close
set rs0=nothing
%>  
