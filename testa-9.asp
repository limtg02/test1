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
<title>초등 1학년용 09page</title>
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
<input type="hidden" name="chkpage" value="9">
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
                        <td colspan="2" height="30">◎ 아래 ①, ②, ③의 3개의 그림 중에서 <span class="t1">가장 
                          올바르다고 생각하는 그림</span>을 한 개씩만 골라 체크하세요.</td>
                    </tr>
                    <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">16</div>
                      </td>
                      <td width="690"> 
                        <table width="679" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="226"> 
                              <div align="center">① 
                                <input type="radio" name="test_16" value="01" <%if rs0("test_16")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="226"> 
                              <div align="center">② 
                                <input type="radio" name="test_16" value="02" <%if rs0("test_16")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="227"> 
                              <div align="center">③ 
                                <input type="radio" name="test_16" value="03" <%if rs0("test_16")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="226"> 
                                <div align="center"> <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_16[0].checked=true'><img src="../../mun_img/element_16_mun_01.gif" width="91" height="100" border=0></a></div>
                            </td>
                            <td width="226"> 
                                <div align="center"> <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_16[1].checked=true'><img src="../../mun_img/element_16_mun_02.gif" width="98" height="100" border=0></a></div>
                            </td>
                            <td width="227"> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_16[2].checked=true'> <img src="../../mun_img/element_16_mun_03.gif" width="98" height="100" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">17</div>
                      </td>
                      <td width="690"> 
                        <table width="679" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="226"> 
                              <div align="center">①
<input type="radio" name="test_17" value="01" <%if rs0("test_17")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="226"> 
                              <div align="center">② 
                                <input type="radio" name="test_17" value="02" <%if rs0("test_17")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="227"> 
                              <div align="center">③
<input type="radio" name="test_17" value="03" <%if rs0("test_17")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_17[0].checked=true'><img src="../../mun_img/element_17_mun_01.gif" width="98" height="100" border=0></a></div>
                            </td>
                            <td> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_17[1].checked=true'><img src="../../mun_img/element_17_mun_02.gif" width="98" height="100" border=0></a></div>
                            </td>
                            <td> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_17[2].checked=true'><img src="../../mun_img/element_17_mun_03.gif" width="98" height="100" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">18</div>
                      </td>
                      <td width="690"> 
                        <table width="679" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="226"> 
                              <div align="center">①
<input type="radio" name="test_18" value="01" <%if rs0("test_18")=01 then%> checked <%end if%>></div>
                            </td>
                            <td width="226"> 
                              <div align="center"> ②
<input type="radio" name="test_18" value="02" <%if rs0("test_18")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="227"> 
                              <div align="center"> ③
<input type="radio" name="test_18" value="03" <%if rs0("test_18")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_18[0].checked=true'><img src="../../mun_img/element_18_mun_01.gif" width="110" height="100" border=0></a></div>
                            </td>
                            <td> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_18[1].checked=true'><img src="../../mun_img/element_18_mun_02.gif" width="145" height="100" border=0></a></div>
                            </td>
                            <td> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_18[2].checked=true'><img src="../../mun_img/element_18_mun_03.gif" width="145" height="100" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">19</div>
                        <div align="center"></div>
                      </td>
                        <td width="690" height="30"> 다음 A그림을 접으면 아래 ①, ②, ③ 중에 
                          어떤 그림이 되나요?</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="680" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td rowspan="2" width="140"> 
                              <div align="center"><img src="../../mun_img/element_19_mun_ex.gif" width="110" height="140" border=0></div>
                            </td>
                            <td width="180" height="15"> 
                              <div align="center">① 
                                <input type="radio" name="test_19" value="01" <%if rs0("test_19")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="180" height="15"> 
                              <div align="center">② 
                                <input type="radio" name="test_19" value="02" <%if rs0("test_19")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="180" height="15"> 
                              <div align="center">③ 
                                <input type="radio" name="test_19" value="03" <%if rs0("test_19")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_19[0].checked=true'><img src="../../mun_img/element_19_mun01.gif" width="120" height="95" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_19[1].checked=true'><img src="../../mun_img/element_19_mun02.gif" width="120" height="95" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_19[2].checked=true'><img src="../../mun_img/element_19_mun03.gif" width="120" height="95" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">20</div>
                      </td>
                        <td width="690" height="30"> 다음 A그림의 위치나 방향이 바뀌어진 같은 그림을 
                          아래 ①, ②, ③ 의 그림 중에서 한 개만 골라 체크하세요.</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="680" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td rowspan="2" width="140"> 
                              <p align="center"><img src="../../mun_img/element_20_mun.gif" width="110" height="140"></p>
                            </td>
                            <td width="180" height="15"> 
                              <div align="center">① 
                                <input type="radio" name="test_20" value="01" <%if rs0("test_20")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="180" height="15"> 
                              <div align="center">② 
                                <input type="radio" name="test_20" value="02" <%if rs0("test_20")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="180" height="15"> 
                              <div align="center">③ 
                                <input type="radio" name="test_20" value="03" <%if rs0("test_20")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_20[0].checked=true'><img src="../../mun_img/element_20_mun01.gif" width="76" height="95" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_20[1].checked=true'><img src="../../mun_img/element_20_mun02.gif" width="81" height="95" border=0></a> 
                              </div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_20[2].checked=true'><img src="../../mun_img/element_20_mun03.gif" width="150" height="95" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                  </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center"><a onfocus=this.blur() href="testa-8.asp"><img src="../../mun_img/pre_ico.gif" border=0></a>&nbsp; <a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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