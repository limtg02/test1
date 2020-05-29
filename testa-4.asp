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
<title>초등 1학년용 04page</title>
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
<input type="hidden" name="chkpage" value="4">
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
                          <div align="center">45</div>
                        </td>
                        <td width="550"> 친구한테 빌린 물건은 반드시 약속한 날짜에 돌려주고 있다. </td>
                        <td width="140">① 
                          <input type="radio" name="test45" value="01" <%if rs0("test45")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test45[0].checked=true'>예</a> ② 
                          <input type="radio" name="test45" value="02" <%if rs0("test45")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test45[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">46</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 부모님께 야단을 맞을 것 같으면 거짓말을 
                          한다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test46" value="01" <%if rs0("test46")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test46[0].checked=true'>예</a> ② 
                          <input type="radio" name="test46" value="02" <%if rs0("test46")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test46[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">47</div>
                        </td>
                        <td width="550"> 나는 친척집에 가 있어도 아버지, 어머니가 보고 싶지 않다. </td>
                        <td width="140">① 
                          <input type="radio" name="test47" value="01" <%if rs0("test47")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test47[0].checked=true'>예</a> ② 
                          <input type="radio" name="test47" value="02" <%if rs0("test47")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test47[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">48</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 건널목을 건너갈 때 신호등에 초록불이 
                          켜지면 건너간다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test48" value="01" <%if rs0("test48")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test48[0].checked=true'>예</a> ② 
                          <input type="radio" name="test48" value="02" <%if rs0("test48")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test48[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">49</div>
                        </td>
                        <td width="550"> 길을 걷다가 가끔 침을 뱉는다. </td>
                        <td width="140">① 
                          <input type="radio" name="test49" value="01" <%if rs0("test49")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test49[0].checked=true'>예</a> ② 
                          <input type="radio" name="test49" value="02" <%if rs0("test49")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test49[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">50</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 나는 부모님 말씀을 잘 듣는다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test50" value="01" <%if rs0("test50")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test50[0].checked=true'>예</a> ② 
                          <input type="radio" name="test50" value="02" <%if rs0("test50")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test50[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">51</div>
                        </td>
                        <td width="550"> 나는 남에게 의존하기가 싫다. </td>
                        <td width="140">① 
                          <input type="radio" name="test51" value="01" <%if rs0("test51")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test51[0].checked=true'>예</a> ② 
                          <input type="radio" name="test51" value="02" <%if rs0("test51")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test51[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">52</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 공부를 하다가 어려운 문제에 부딪히면 
                          스스로 해결하려고 노력한다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test52" value="01" <%if rs0("test52")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test52[0].checked=true'>예</a> ② 
                          <input type="radio" name="test52" value="02" <%if rs0("test52")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test52[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">53</div>
                        </td>
                        <td width="550"> 우리 부모님은 내가 원하는 대로 무조건 해 주신다. </td>
                        <td width="140">① 
                          <input type="radio" name="test53" value="01" <%if rs0("test53")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test53[0].checked=true'>예</a> ② 
                          <input type="radio" name="test53" value="02" <%if rs0("test53")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test53[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">54</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 우리 부모님은 내가 스스로 할 수 있는 
                          기회를 잘 주신다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test54" value="01" <%if rs0("test54")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test54[0].checked=true'>예</a> ② 
                          <input type="radio" name="test54" value="02" <%if rs0("test54")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test54[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">55</div>
                        </td>
                        <td width="550"> 자신이 할 수 없는 것은 거절한다. </td>
                        <td width="140">① 
                          <input type="radio" name="test55" value="01" <%if rs0("test55")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test55[0].checked=true'>예</a> ② 
                          <input type="radio" name="test55" value="02" <%if rs0("test55")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test55[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">56</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 공부나 하고자 하는 일에 대해 자신이 
                          없을 때가 많다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test56" value="01" <%if rs0("test56")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test56[0].checked=true'>예</a> ② 
                          <input type="radio" name="test56" value="02" <%if rs0("test56")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test56[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">57</div>
                        </td>
                        <td width="550"> 무엇이든지 누구의 도움 없이 스스로 할려고 노력한다. </td>
                        <td width="140">① 
                          <input type="radio" name="test57" value="01" <%if rs0("test57")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test57[0].checked=true'>예</a> ② 
                          <input type="radio" name="test57" value="02" <%if rs0("test57")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test57[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">58</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 나는 친구나 아는 사람을 길에서 먼저 
                          보면 피한다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test58" value="01" <%if rs0("test58")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test58[0].checked=true'>예</a> ② 
                          <input type="radio" name="test58" value="02" <%if rs0("test58")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test58[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">59</div>
                        </td>
                        <td width="550"> 학교에서 선생님이 나한테 노래를 불러 보라고 하면 가슴이 두근거린다. 
                        </td>
                        <td width="140">① 
                          <input type="radio" name="test59" value="01" <%if rs0("test59")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test59[0].checked=true'>예</a> ② 
                          <input type="radio" name="test59" value="02" <%if rs0("test59")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test59[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">60</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 나의 생각을 친구나 남에게 주장하거나 
                          자신있게 의논한다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test60" value="01" <%if rs0("test60")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test60[0].checked=true'>예</a> ② 
                          <input type="radio" name="test60" value="02" <%if rs0("test60")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test60[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">61</div>
                        </td>
                        <td width="550"> 남 앞에 서면 긴장되고 말을 하고 싶어도 마음대로 되지 않는다. </td>
                        <td width="140">① 
                          <input type="radio" name="test61" value="01" <%if rs0("test61")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test61[0].checked=true'>예</a> ② 
                          <input type="radio" name="test61" value="02" <%if rs0("test61")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test61[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">62</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 친구들을 나의 생각대로 따라오게 할 
                          수 있다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test62" value="01" <%if rs0("test62")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test62[0].checked=true'>예</a> ② 
                          <input type="radio" name="test62" value="02" <%if rs0("test62")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test62[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">63</div>
                        </td>
                        <td width="550"> 사람들 앞에 서면 나의 얼굴이 빨갛게 된다. </td>
                        <td width="140">① 
                          <input type="radio" name="test63" value="01" <%if rs0("test63")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test63[0].checked=true'>예</a> ② 
                          <input type="radio" name="test63" value="02" <%if rs0("test63")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test63[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">64</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 나는 친구의 의견을 먼저 듣고 나의 
                          의견을 말한다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test64" value="01" <%if rs0("test64")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test64[0].checked=true'>예</a> ② 
                          <input type="radio" name="test64" value="02" <%if rs0("test64")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test64[1].checked=true'>아니오</a></td>
                      </tr>
                    </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center"><a onfocus=this.blur() href="testa-3.asp"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;</a><a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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

