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
<title>초등 1학년용 07page</title>
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
<body text="#000000" background="../../images/all-back.gif">
<form name="form1" method="get" action="testa_chk.asp">
<input type="hidden" name="chkpage" value="7">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table width="768" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td><img src="../../mun_img/element_bg_01.gif" width="768" height="56"></td>
        </tr>
        <tr> 
          <td background="../../mun_img/element_bg_02.gif"> 
            <table width="740" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td><img src="../../mun_img/element_06_mesg.gif" width="324" height="26"><br>
                  <br>
                    <span class="t1">아래 A와 B가 연관이 있을 때</span> C와 연관이 있는 그림은 ①, 
                    ②, ③ 중에 어느 것일까요?<br>
                  <br>
                                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td bgcolor="#FFFFFF" valign="middle"> 
                          <div align="center"><b><img src="../../mun_img/element_06_ex.gif" width="522" height="128" align="middle"> 
                            <font color="#FF0000"> 정답 ③</font></b></div>
                      </td>
                    </tr>
                  </table>
                  
                </td>
              </tr>
              <tr> 
                <td>
 <table width="740" border="1" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                      <tr> 
                        <td width="50" bgcolor="CBEABE"> 
                          <div align="center">6</div>
                      </td>
                      <td width="690"> <br>
                        <table width="680" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td rowspan="2" width="310"><img src="../../mun_img/element_06.gif" width="300" height="95"></td>
                            <td width="123"> 
                              <div align="center">①
<input type="radio" name="test_06" value="01" <%if rs0("test_06")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="123"> 
                              <div align="center">②
<input type="radio" name="test_06" value="02" <%if rs0("test_06")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="124"> 
                              <div align="center">③
<input type="radio" name="test_06" value="03" <%if rs0("test_06")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_06[0].checked=true'><img src="../../mun_img/element_06_mun_01.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_06[1].checked=true'><img src="../../mun_img/element_06_mun_02.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_06[2].checked=true'><img src="../../mun_img/element_06_mun_03.gif" width="64" height="55" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td width="50" bgcolor="CBEABE"> 
                          <div align="center">7</div>
                      </td>
                      <td width="690"> <br>
                        <table width="680" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td rowspan="2" width="310"><img src="../../mun_img/element_07_mun.gif" width="300" height="95" border=0></td>
                            <td width="123"> 
                              <div align="center">①
<input type="radio" name="test_07" value="01" <%if rs0("test_07")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="123"> 
                              <div align="center">② 
                                <input type="radio" name="test_07" value="02" <%if rs0("test_07")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="124"> 
                              <div align="center">③ 
                                <input type="radio" name="test_07" value="03" <%if rs0("test_07")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_07[0].checked=true'><img src="../../mun_img/element_07_mun01.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_07[1].checked=true'><img src="../../mun_img/element_07_mun02.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_07[2].checked=true'><img src="../../mun_img/element_07_mun03.gif" width="64" height="55" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td width="50" bgcolor="CBEABE"> 
                          <div align="center">8</div>
                      </td>
                      <td width="690"> <br>
                        <table width="680" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td rowspan="2" width="310"><img src="../../mun_img/element_08_mun.gif" width="300" height="95" border=0></td>
                            <td width="123"> 
                              <div align="center">①
<input type="radio" name="test_08" value="01" <%if rs0("test_08")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="123"> 
                              <div align="center">②
                                <input type="radio" name="test_08" value="02" <%if rs0("test_08")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="124"> 
                              <div align="center">③
                                <input type="radio" name="test_08" value="03" <%if rs0("test_08")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_08[0].checked=true'><img src="../../mun_img/element_08_mun01.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_08[1].checked=true'><img src="../../mun_img/element_08_mun02.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_08[2].checked=true'><img src="../../mun_img/element_08_mun03.gif" width="64" height="55" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td width="50" bgcolor="CBEABE"> 
                          <div align="center">9</div>
                      </td>
                      <td width="690"> <br>
                        <table width="680" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td rowspan="2" width="310"><img src="../../mun_img/element_09_mun.gif" width="300" height="95" border=0></td>
                            <td width="123"> 
                              <div align="center">①
<input type="radio" name="test_09" value="01" <%if rs0("test_09")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="123"> 
                              <div align="center">②
                                <input type="radio" name="test_09" value="02" <%if rs0("test_09")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="124"> 
                              <div align="center">③
                                <input type="radio" name="test_09" value="03" <%if rs0("test_09")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_09[0].checked=true'><img src="../../mun_img/element_09_mun01.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_09[1].checked=true'><img src="../../mun_img/element_09_mun02.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_09[2].checked=true'><img src="../../mun_img/element_09_mun03.gif" width="64" height="55" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td width="50" bgcolor="CBEABE"> 
                          <p align="center">10</p>
                        </td>
                      <td width="690"> <br>
                        <table width="680" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td rowspan="2" width="310"><img src="../../mun_img/element_10_mun.gif" width="300" height="95" border=0></td>
                            <td width="123"> 
                              <div align="center">1 
                                <input type="radio" name="test_10" value="01" <%if rs0("test_10")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="123"> 
                              <div align="center">②
                                <input type="radio" name="test_10" value="02" <%if rs0("test_10")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="124"> 
                              <div align="center">③
                                <input type="radio" name="test_10" value="03" <%if rs0("test_10")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_10[0].checked=true'><img src="../../mun_img/element_10_mun01.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_10[1].checked=true'><img src="../../mun_img/element_10_mun02.gif" width="64" height="55" border=0></a></div>
                            </td>
                            <td> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_10[2].checked=true'><img src="../../mun_img/element_10_mun03.gif" width="64" height="55" border=0></a></div>
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
                          <p align="center"><a onfocus=this.blur() href="testa-6.asp"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;</a><a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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
