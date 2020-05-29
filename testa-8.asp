<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("로그인 시간을 초과하였거나 이 페이지를 볼 권한이 없습니다.");
   setTimeout("window.close();", 1000);
   </script>
   <%response.end%>
<%end if%>
<!--#include virtual="/include/DBOpen.inc"-->
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
<title>초등 1학년용 08page</title>
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
<input type="hidden" name="chkpage" value="8">
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
                        <td><font color="#CC3333">아래의 문장을 잘 읽고 가장 정확한 답이라고 생각되는 
                          번호에 체크하세요. </font></td>
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
                        <td width="690" height="30" bgcolor="CBEABE"> 
                          <div align="center">문 제</div>
                        </td>
                      </tr>
                      <tr> 
                        <td colspan="2" height="30">◎ 아래의 문장을 잘 읽고, 3개의 문장에서 올바른 
                          것을 하나 선택하여 그 번호에 체크하세요.</td>
                      </tr>
                      <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">11</div>
                        </td>
                        <td width="690"> <br>
       <table width="680" border="0" cellspacing="0" cellpadding="0">
           <tr > 
       <td colspan="2" height="55" background="../../mun_img/element_blue1114_bg.gif"> 
          <table width="650" border="0" cellspacing="0" cellpadding="1" align="center">
          <tr> 
                                    <td><b>회현이와 우현이가 한 조가 되고, 회중이와 은선이가 한 조가 되어 줄다리기를 하면 무승부이다. <br>
                                      그러나 회현이는 우현이보다 강하고, 회중이는 은선이보다 강하다. <br>
                                      따라서</b> </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                          <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0" dwcopytype="CopyTableRow">
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_11" value="01" <%if rs0("test_11")=01 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_11[0].checked=true'>① 가장 힘이 센 사람은 회현이다.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_11" value="02" <%if rs0("test_11")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_11[1].checked=true'>② 힘이 제일 센 사람은 은선이다. </a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_11" value="03" <%if rs0("test_11")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_11[2].checked=true'>③ 네 사람 중 힘이 제일 센 사람은 회현이나 회중이다. </a>
                              </td>
                            </tr>
                          </table><br>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">12</div>
                        </td>
                        <td width="690"> <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td colspan="2" height="55" background="../../mun_img/element_blue1114_bg.gif"> 
                                <table width="650" border="0" cellspacing="0" cellpadding="1" align="center">
                                  <tr> 
                                    <td><b>민우와 현석이의 키는 같다. <br>
                                      영선이와 선희의 키도 같다. <br>
                                      따라서</b></td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                          <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0" dwcopytype="CopyTableRow">
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_12" value="01" <%if rs0("test_12")=01 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_12[0].checked=true'>① 여자의 키가 남자의 키보다 크다.</a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_12" value="02" <%if rs0("test_12")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_12[1].checked=true'>② 네 사람의 키가 모두 같다. </a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_12" value="03" <%if rs0("test_12")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_12[2].checked=true'>③ 네 사람의 키가 같은지 알 수 없다.</a> </td>
                            </tr>
                          </table>
                          <br>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">13</div>
                        </td>
                        <td width="690"><br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td colspan="2" height="55" background="../../mun_img/element_blue1114_bg.gif"> 
                                <table width="650" border="0" cellspacing="0" cellpadding="1" align="center">
                                  <tr> 
                                    <td><b>귤은 감보다 크다. <br>
                                      감은 앵두보다 크다. <br>
                                      따라서 </b></td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                          <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0" dwcopytype="CopyTableRow">
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_13" value="01" <%if rs0("test_13")=01 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_13[0].checked=true'>① 가장 작은 것은 귤이다. </a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_13" value="02" <%if rs0("test_13")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_13[1].checked=true'>② 가장 큰 것은 귤이다.</a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_13" value="03" <%if rs0("test_13")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_13[2].checked=true'>③ 가장 작은 것은 감이다.</a> </td>
                            </tr>
                          </table>
                          <br>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">14</div>
                        </td>
                        <td width="690"><br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td colspan="2" height="55" background="../../mun_img/element_blue1114_bg.gif"> 
                                <table width="650" border="0" cellspacing="0" cellpadding="1" align="center">
                                  <tr> 
                                    <td><b>간식 먹기 전에 숙제를 하였다. <br>
                                      간식 먹은 후에 숨바꼭질을 하였다. <br>
                                      따라서</b> </td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                          </table>
                          <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0" dwcopytype="CopyTableRow">
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_14" value="01" <%if rs0("test_14")=01 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_14[0].checked=true'>① 숙제를 한 것은 간식을 먹은 뒤였다.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_14" value="02" <%if rs0("test_14")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_14[1].checked=true'>② 가장 먼저 간식을 먹었다.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_14" value="03" <%if rs0("test_14")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_14[2].checked=true'>③ 숙제를 먼저 하고 숨바꼭질을 하였다.</a> </td>
                            </tr>
                          </table>
                          <br>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE" rowspan="2"> 
                          <div align="center">15</div>
                        </td>
                        <td width="690" height="30"> 다음 밑줄이 그어져 있는 단어와 비슷한 단어를 
                          하나 골라 답하세요.</td>
                      </tr>
                      <tr>
                        <td width="690"> <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="1">
                            <tr> 
                              <td colspan="2" height="40" background="../../mun_img/element_blue15_bg.gif"> 
                                <table width="250" border="0" cellspacing="0" cellpadding="1">
                                  <tr> 
                                    <td width="8">&nbsp;</td>
                                    <td><b><img src="../../mun_img/element_15_text_ico.gif" width="124" height="20"></b></td>
                                  </tr>
                                </table>
                              </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_15" value="01" <%if rs0("test_15")=01 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_15[0].checked=true'>① 두려워</a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_15" value="02" <%if rs0("test_15")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_15[1].checked=true'>② 친밀하게</a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_15" value="03" <%if rs0("test_15")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_15[2].checked=true'>③ 부끄러워</a></td>
                            </tr>
                          </table>
                          <br>
                        </td>
                      </tr>
                    </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center"><a onfocus=this.blur() href="testa-7.asp"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;</a><a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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
