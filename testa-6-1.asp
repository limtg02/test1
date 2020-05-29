<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("로그인 시간을 초과하였거나 이 페이지를 볼 권한이 없습니다.");
   setTimeout("window.close();", 1000);
   </script>
   <%response.end%>
<%end if%>
<!--#include virtual="/include/DBOpen.inc"-->
<!--#include virtual="/include/request2.asp"-->
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
<title>초등 1학년용 06page</title>
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
<input type="hidden" name="chkpage" value="6">
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
                      <tr bgcolor="CBEABE"> 
                        <td width="45" height="30"> 
                          <div align="center">NO.</div>
                      </td>
                        <td width="689" height="30"> 
                          <div align="center">문 제</div>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" width="45" bgcolor="CBEABE"> 
                          <div align="center">1</div>
                      </td>
                        <td width="689" height="30">아래 문장을 읽고, 올바른 것을 하나 선택하여 
                          답하세요.</td>
                    </tr>
                    <tr> 
                        <td width="689"> <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0" dwcopytype="CopyTableCell" align="center">
                            <tr> 
                              <td colspan="2" background="../../mun_img/mun_bg_40pixel.gif" height="40"> 
                                <div align="center"><b>영수는 철수보다 키가 크다. 철수는 민수보다 키가 크다. 따라서 ~</b></div>
                            </td>
                          </tr>
                        </table><table width="690" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td><br>
                                <table width="380" border="0" cellspacing="0" cellpadding="0">
                                  <tr> 
                                    <td width="80"> 
                                      <div align="center"> 
                                        <input type="radio" name="test_01" value="01" <%if rs0("test_01")=01 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td width="300"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_01[0].checked=true'>① 가장 큰 것은 철수이다.</a></td>
                                  </tr>
                                  <tr> 
                                    <td width="80"> 
                                      <div align="center"> 
                                        <input type="radio" name="test_01" value="02" <%if rs0("test_01")=02 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_01[1].checked=true'>② 가장 큰 것은 민수이다.</a> </td>
                                  </tr>
                                  <tr> 
                                    <td width="80"> 
                                      <div align="center"> 
                                        <input type="radio" name="test_01" value="03" <%if rs0("test_01")=03 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_01[2].checked=true'>③ 가장 큰 것은 영수이다.</a> </td>
                                  </tr>
                                </table>
                                <br>
                              </td>
                            </tr>
                          </table>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="middle" width="45" bgcolor="CBEABE"> 
                          <div align="center">2</div>
                      </td>
                      <td width="689" height="40"> 
                          <p>용수는 연필을 4자루 받았다. 영준이는 연필을 8자루 받았다. 선진이는 연필을 7자루 받았다. 
                            <span class="t1">따라서 연필을 가장 많이 받은 어린이는 누구일까요?</span></p>
                      </td>
                    </tr>
                    <tr> 
                        <td width="689"> <br>
                          <table width="600" border="0" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                            <tr> 
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_02[0].checked=true'>① 용수</a> 
                                <input type="radio" name="test_02" value="01" <%if rs0("test_02")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_02[1].checked=true'>② 선진</a> 
                                <input type="radio" name="test_02" value="02" <%if rs0("test_02")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_02[2].checked=true'>③ 영준 </a>
                                <input type="radio" name="test_02" value="03" <%if rs0("test_02")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                        </table>
                          <br>
                        </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="middle" width="45" bgcolor="CBEABE"> 
                          <div align="center">3</div>
                      </td>
                      <td width="689"> 
                        <table width="600" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                              <td width="40">&lt;보기&gt;</td>
                              <td height="30">의 낱말들과 공통점이 있는 것은?</td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr> 
                      <td width="689"> 
                        <table width="680" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td colspan="2" align=center> 
                               <fieldset style="border:1 solid navy; background: url(bg.gif) no-repeat right bottom; width:500; height:80; padding:30"><legend align="center">보기</legend><br><b>닭, &nbsp;&nbsp;&nbsp; 거북, &nbsp;&nbsp;&nbsp; 오리, &nbsp;&nbsp;&nbsp; 꿩</b></fieldset> 
                            </td>
                          </tr>
                          <tr> 
                              <td colspan="2"> <br>
                                <table width="600" border="0" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                                  <tr> 
                                  <td width="200"> 
                                    <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_03[0].checked=true'>① 토끼</a>
                                      <input type="radio" name="test_03" value="01" <%if rs0("test_03")=01 then%> checked <%end if%>>
                                    </div>
                                  </td>
                                  <td width="200"> 
                                    <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_03[1].checked=true'>② 타조 </a>
                                      <input type="radio" name="test_03" value="02" <%if rs0("test_03")=02 then%> checked <%end if%>>
                                    </div>
                                  </td>
                                  <td width="200"> 
                                    <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_03[2].checked=true'>③ 소 </a>
                                      <input type="radio" name="test_03" value="03" <%if rs0("test_03")=03 then%> checked <%end if%>>
                                    </div>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                          <br>
                        </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" width="45" bgcolor="CBEABE"> 
                          <div align="center">4</div>
                      </td>
                        <td width="689" height="40">미정이와 민철이는 귤을 똑같이 받았다. 그런데 
                          미정이는 민철이보다 귤을 더 많이 먹었다. <span class="t1">그러면 지금 귤은 누가</span> 
                          많이 갖고 있을까요?</td>
                    </tr>
                    <tr> 
                      <td width="689"> <br>
                          <table width="380" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_04" value="01" <%if rs0("test_04")=01 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="300"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_04[0].checked=true'>① 누가 많이 갖고 있는지 알 수 없다.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_04" value="02" <%if rs0("test_04")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_04[1].checked=true'>② 미정이가 많이 갖고 있다.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_04" value="03" <%if rs0("test_04")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_04[2].checked=true'>③ 민철이가 많이 갖고 있다.</a> </td>
                            </tr>
                          </table>
                        <p>&nbsp; </p>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="3" bgcolor="CBEABE">&nbsp; 
                          <div align="center">5</div>
                      </td>
                        <td width="689" height="30">
                          <table width="500" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="25"><img src="../../mun_img/black_box.gif" width="15" height="15"></td>
                              <td> 안에 있는 낱말들과 함께 묶을 수 있는 낱말은?</td>
                            </tr>
                          </table>
                          
                        </td>
                    </tr>
                  
                    <tr> 
                        <td width="689"> <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0" dwcopytype="CopyTableCell" align="center">
                            <tr> 
                              <td colspan="2" background="../../mun_img/mun_bg_40pixel.gif" height="40"> 
                                <div align="center"><b>새,&nbsp;&nbsp;&nbsp; 나무,&nbsp;&nbsp;&nbsp; 깨</b></div>
                            </td>
                          </tr>
                        </table> 
                          <table width="680" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td colspan="2" align="center"> <br>
                                <table width="600" border="0" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0>
                                  <tr> 
                                    <td width="200"> 
                                      <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_05[0].checked=true'>① 연필 </a>
                                        <input type="radio" name="test_05" value="01" <%if rs0("test_05")=01 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td width="200"> 
                                      <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_05[1].checked=true'>② 기름</a> 
                                        <input type="radio" name="test_05" value="02" <%if rs0("test_05")=02 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td width="200"> 
                                      <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_05[2].checked=true'>③ 시장</a> 
                                        <input type="radio" name="test_05" value="03" <%if rs0("test_05")=03 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                  </tr>
                                </table>
                                <br>
                              </td>
                            </tr>
                          </table>
                      </td>
                    </tr>
                  </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center">&nbsp;<a href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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