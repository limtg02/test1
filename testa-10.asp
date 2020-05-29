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
<title>초등 1학년용 10page</title>
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
<input type="hidden" name="chkpage" value="10">
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
                        <td width="50" height=30 bgcolor="CBEABE"> 
                          <div align="center">NO.</div>
                      </td>
                        <td width="690" bgcolor="CBEABE"> 
                          <div align="center">문 제</div>
                      </td>
                    </tr>
                    <tr> 
                        <td colspan="2" height="30">◎ 아래의 식을 계산하세요. &lt;21-22&gt;</td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="top" bgcolor="CBEABE" align=center> 
                             21
                      </td>
                        <td width="690" height="30">24+11은 얼마인가요?</td>
                    </tr>
                    <tr> 
                      <td width="690"> <br>
                          <table border=0 cellpadding=0 cellspacing=0 width="420">
                            <tr> 
                            <td width="140"> 
                              <div align="center"><font size="2">
<input type="radio" name="test_21" value="01" <%if rs0("test_21")=01 then%> checked <%end if%>>
                                </font></div>
                            </td>
                            <td width="140"> 
                              <div align="center"><font size="2">
<input type="radio" name="test_21" value="02" <%if rs0("test_21")=02 then%> checked <%end if%>>
                                </font></div>
                            </td>
                            <td width="140"> 
                              <div align="center"><font size="2">
<input type="radio" name="test_21" value="03" <%if rs0("test_21")=03 then%> checked <%end if%>>
                                </font></div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_21[0].checked=true'>① 35</a></div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_21[1].checked=true'>② 25</a></div>
                            </td>
                            <td width="140"> 
                              <div align="center"> <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_21[2].checked=true'>③ 45</a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" bgcolor="CBEABE"> 
                          <div align="center">22</div>
                      </td>
                        <td width="690" height="30">아래 문제의 식을 계산하여 그 합이 가장 적은 
                          것을 선택하여 답하세요.</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="420" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="140"> 
                              <div align="center">
                                <input type="radio" name="test_22" value="01" <%if rs0("test_22")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center">
                                <input type="radio" name="test_22" value="02" <%if rs0("test_22")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center">
                                <input type="radio" name="test_22" value="03" <%if rs0("test_22")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="140"> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_22[0].checked=true'>① 
                                  6+3+7+2</a></div>
                            </td>
                            <td width="140"> 
                              <div align="center"><font size="2"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_22[1].checked=true'>② 5+4+2+6</a></font> 
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center"> <font size="2"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_22[2].checked=true'>③ 4+6+3+2</a></font> 
                              </div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" bgcolor="CBEABE"> 
                          <div align="center">23</div>
                      </td>
                        <td width="690" height="30">아래의 수를 보고 <img src="../../mun_img/black_box.gif" width="15" height="15"> 
                          안에 적당한 수를 넣는다면 어느 것일까요?</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="420" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td colspan="3"> 
                              <div align="center"><img src="../../mun_img/element_23_mun_ex.gif" width="265" height="49"></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                        <table width="420" border="0" cellspacing="0" cellpadding="1" dwcopytype="CopyTableRow">
                          <tr> 
                            <td width="140"> 
                              <div align="center"> 
                                <input type="radio" name="test_23" value="01" <%if rs0("test_23")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center"> 
                                <input type="radio" name="test_23" value="02" <%if rs0("test_23")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center"> 
                                <input type="radio" name="test_23" value="03" <%if rs0("test_23")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_23[0].checked=true'>① 11</a> </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_23[1].checked=true'>② 13</a> </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_23[2].checked=true'>③12</a> </div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" bgcolor="CBEABE"> 
                          <div align="center">24</div>
                      </td>
                        <td width="690" height="40">영민이는 200원을 가지고 있고, 민혁이는 영민이보다 150원을 더 가지고 있다면, 두사람이 가진 돈의 합계는 얼마일까요?</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="420" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="140"> 
                              <div align="center"><font size="2">
<input type="radio" name="test_24" value="01" <%if rs0("test_24")=01 then%> checked <%end if%>>
                                </font></div>
                            </td>
                            <td width="140"> 
                              <div align="center">
                                <input type="radio" name="test_24" value="02" <%if rs0("test_24")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center">
                                <input type="radio" name="test_24" value="03" <%if rs0("test_24")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_24[0].checked=true'>① 350</a>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_24[1].checked=true'>② 550</a>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_24[2].checked=true'>③ 150</a>
                              </div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" bgcolor="CBEABE"> 
                          <div align="center">25</div>
                      </td>
                        <td width="690" height="30">
                          <p>50원짜리 동전을 몇 개 가지면 100원이 되나요?</p>
                          </td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="420" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="140"> 
                              <div align="center">
                                <input type="radio" name="test_25" value="01" <%if rs0("test_25")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center">
                                <input type="radio" name="test_25" value="02" <%if rs0("test_25")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center">
                                <input type="radio" name="test_25" value="03" <%if rs0("test_25")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_25[0].checked=true'>① 3</a> </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_25[1].checked=true'>② 2</a> </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_25[2].checked=true'>③ 4</a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr valign="middle"> 
                        <td colspan="2" height="30">◎ 아래 글을 읽고, 답하세요.</td>
                    </tr>
                    <tr> 
                        <td width="50" height="16" bgcolor="CBEABE"> 
                          <div align="center">26</div>
                      </td>
                      <td width="690" height="16"> 
                        <table width="680" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td colspan="2" height="70"  background="../../mun_img/element_blue26_box.gif"> 
                              <table width="660" border="0" cellspacing="0" cellpadding="1" align="center">
                                <tr> 
                                    <td> 나는 학교에서 공부를 마치고 집에 돌아왔다. 대문에 도착했을 때 편지함에 
                                      편지가 와 있는 것을 발견했다. 엄마는 외출해서 돌아오시면 항상 편지함에서 
                                      편지를 꺼내시는 습관이 있다. 그러나 편지가 편지함에 그대로 있었기 때문에 
                                      엄마는 아직 집에 돌아오지 않으셨구나 하고 나는 생각했다. </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                        <br>
                          <table width="580" border="0" cellspacing="0" cellpadding="1" dwcopytype="CopyTableRow">
                            <tr> 
                              <td width="80"> 
                                <div align="center">
<input type="radio" name="test_26" value="01" <%if rs0("test_26")=01 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="500"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_26[0].checked=true'>① 엄마는 집에 돌아오셨다. </a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center">
<input type="radio" name="test_26" value="02" <%if rs0("test_26")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_26[1].checked=true'> ② 엄마는 집에 돌아오시지 않았다.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center">
<input type="radio" name="test_26" value="03" <%if rs0("test_26")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td> <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_26[2].checked=true'>③ 엄마는 집에 돌아오셨을 수도 있고 아직 돌아오시지 않았을 수도 있다.</a> </td>
                            </tr>
                          </table>
                        <br>
                      </td>
                    </tr>
                  </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center"><a href="testa-9.asp"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;</a><a href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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