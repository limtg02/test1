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
<title>초등 1학년용 01page</title>
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
<input type="hidden" name="chkpage" value="1">
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
                        <td height="30" bgcolor="CBEABE"> 
                          <div align="center">NO.</div>
                        </td>
                        <td height="30" bgcolor="CBEABE"> 
                          <div align="center">문 제</div>
                        </td>
                        <td height="30" bgcolor="CBEABE"> 
                          <div align="center">선택</div>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30"> 
                          <div align="center">1</div>
                        </td>
                        <td width="550" > 친구가 어려운 일을 부탁하면 도와주고 
                          싶다. </td>
                        <td width="140" >① 
                          <input type="radio" name="test01" value="01" <%if rs0("test01")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test01[0].checked=true'>예</a> ② 
                          <input type="radio" name="test01" value="02" <%if rs0("test01")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test01[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30" bgcolor="CBEABE"> 
                          <div align="center">2</div>
                        </td>
                        <td width="550" bgcolor="CBEABE" > 나는 친구를 만나면 반갑다. </td>
                        <td width="140" bgcolor="CBEABE" >① 
                          <input type="radio" name="test02" value="01" <%if rs0("test02")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test02[0].checked=true'>예</a> ② 
                          <input type="radio" name="test02" value="02" <%if rs0("test02")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test02[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30"> 
                          <div align="center">3</div>
                        </td>
                        <td width="550" >친구들이 집에 놀러오는 것을 싫어한다. </td>
                        <td width="140" >① 
                          <input type="radio" name="test03" value="01" <%if rs0("test03")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test03[0].checked=true'> 예</a> ② 
                          <input type="radio" name="test03" value="02" <%if rs0("test03")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test03[1].checked=true'> 아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30" bgcolor="CBEABE"> 
                          <div align="center">4</div>
                        </td>
                        <td width="550" bgcolor="CBEABE" >친구와 서로 도와가며 지내기를 좋아한다. 
                          <br>
                        </td>
                        <td width="140" bgcolor="CBEABE" >① 
                          <input type="radio" name="test04" value="01" <%if rs0("test04")=01 then%> checked <%end if%>>
                         <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test04[0].checked=true'>  예</a> ② 
                          <input type="radio" name="test04" value="02" <%if rs0("test04")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test04[1].checked=true'> 아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30"> 
                          <div align="center">5</div>
                        </td>
                        <td width="550" >나는 친한 친구가 많다. </td>
                        <td width="140" >① 
                          <input type="radio" name="test05" value="01" <%if rs0("test05")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test05[0].checked=true'>예</a> ② 
                          <input type="radio" name="test05" value="02" <%if rs0("test05")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test05[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30" bgcolor="CBEABE"> 
                          <div align="center">6</div>
                        </td>
                        <td width="550" bgcolor="CBEABE" >나는 친구들과 사이좋게 잘 지낸다.</td>
                        <td width="140" bgcolor="CBEABE" >① 
                          <input type="radio" name="test06" value="01" <%if rs0("test06")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test06[0].checked=true'>예</a> ② 
                          <input type="radio" name="test06" value="02" <%if rs0("test05")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test06[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">7</div>
                        </td>
                        <td width="550" >무엇이든지 친구들과 도와가면서 한다. 
                        </td>
                        <td width="140" >① 
                          <input type="radio" name="test07" value="01" <%if rs0("test07")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test07[0].checked=true'>예</a> ② 
                          <input type="radio" name="test07" value="02" <%if rs0("test07")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test07[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">8</div>
                        </td>
                        <td width="550" bgcolor="CBEABE" >무엇이든지 싫어하지 않고 끝까지 꼭 
                          한다.</td>
                        <td width="140" bgcolor="CBEABE" >① 
                          <input type="radio" name="test08" value="01" <%if rs0("test08")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test08[0].checked=true'>예</a> ② 
                          <input type="radio" name="test08" value="02" <%if rs0("test08")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test08[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">9</div>
                        </td>
                        <td width="550" >자신이 해야 할 일을 남에게 미루지 않는다. 
                        </td>
                        <td width="140" >① 
                          <input type="radio" name="test09" value="01" <%if rs0("test09")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test09[0].checked=true'>예</a> ② 
                          <input type="radio" name="test09" value="02" <%if rs0("test09")=02 then%> checked <%end if%>>
                         <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test09[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">10</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">내가 맡은 것은 어떤 일이 있어도 끝까지 
                          해낸다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test10" value="01" <%if rs0("test10")=01 then%> checked <%end if%>>
                         <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test10[0].checked=true'>예</a>② 
                          <input type="radio" name="test10" value="02" <%if rs0("test10")=02 then%> checked <%end if%>>
                        <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test10[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">11</div>
                        </td>
                        <td width="550">내가 해야 할 것을 남에게 미루지 않는다. </td>
                        <td width="140">① 
                          <input type="radio" name="test11" value="01" <%if rs0("test11")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test11[0].checked=true'>예</a> ② 
                          <input type="radio" name="test11" value="02" <%if rs0("test11")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test11[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">12</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">몸이 아파도 학교는 빠지지 않는다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test12" value="01" <%if rs0("test12")=01 then%> checked <%end if%>>
                         <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test12[0].checked=true'>예</a> ② 
                          <input type="radio" name="test12" value="02" <%if rs0("test12")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test12[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">13</div>
                        </td>
                        <td width="550">집이나 학교에서 내가 맡은 일은 다 한다. </td>
                        <td width="140">① 
                          <input type="radio" name="test13" value="01" <%if rs0("test13")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test13[0].checked=true'>예</a> ② 
                          <input type="radio" name="test13" value="02" <%if rs0("test13")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test13[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">14</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">오늘 해야 할 공부는 내일로 미루지 않는다. 
                        </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test14" value="01" <%if rs0("test14")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test14[0].checked=true'>예</a> ② 
                          <input type="radio" name="test14" value="02" <%if rs0("test14")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test14[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">15</div>
                        </td>
                        <td width="550">우리 아버지는 내가 묻는 말에는 신경질적으로 대답하신다. <br>
                        </td>
                        <td width="140">① 
                          <input type="radio" name="test15" value="01" <%if rs0("test15")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test15[0].checked=true'>예</a> ② 
                          <input type="radio" name="test15" value="02" <%if rs0("test15")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test15[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">16</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">친구한테 화를 안 낸다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test16" value="01" <%if rs0("test16")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test16[0].checked=true'>예</a> ② 
                          <input type="radio" name="test16" value="02" <%if rs0("test16")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test16[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">17</div>
                        </td>
                        <td width="550">별로 이유 없이 화가 날 때가 있다. </td>
                        <td width="140">① 
                          <input type="radio" name="test17" value="01" <%if rs0("test17")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test17[0].checked=true'>예</a> ② 
                          <input type="radio" name="test17" value="02" <%if rs0("test17")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test17[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">18</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">기분이 조금만 나빠도 짜증이 난다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test18" value="01" <%if rs0("test18")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test18[0].checked=true'>예</a> ② 
                          <input type="radio" name="test18" value="02" <%if rs0("test18")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test18[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">19</div>
                        </td>
                        <td width="550">우리 부모님은 나에게 관심이 없다. </td>
                        <td width="140">① 
                          <input type="radio" name="test19" value="01" <%if rs0("test19")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test19[0].checked=true'>예</a> ② 
                          <input type="radio" name="test19" value="02" <%if rs0("test19")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test19[1].checked=true'>아니오</a></td>
                      </tr>
                    </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;<a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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
