<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("�α��� �ð��� �ʰ��Ͽ��ų� �� �������� �� ������ �����ϴ�.");
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
<title>�ʵ� 1�г�� 10page</title>
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
                        <td><font color="#CC3333">�Ʒ��� ������ �� �а� ���� ��Ȯ�� ���̶�� �����Ǵ� 
                          ��ȣ�� üũ�ϼ���. </font></td>
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
                          <div align="center">�� ��</div>
                      </td>
                    </tr>
                    <tr> 
                        <td colspan="2" height="30">�� �Ʒ��� ���� ����ϼ���. &lt;21-22&gt;</td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="top" bgcolor="CBEABE" align=center> 
                             21
                      </td>
                        <td width="690" height="30">24+11�� ���ΰ���?</td>
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
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_21[0].checked=true'>�� 35</a></div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_21[1].checked=true'>�� 25</a></div>
                            </td>
                            <td width="140"> 
                              <div align="center"> <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_21[2].checked=true'>�� 45</a></div>
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
                        <td width="690" height="30">�Ʒ� ������ ���� ����Ͽ� �� ���� ���� ���� 
                          ���� �����Ͽ� ���ϼ���.</td>
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
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_22[0].checked=true'>�� 
                                  6+3+7+2</a></div>
                            </td>
                            <td width="140"> 
                              <div align="center"><font size="2"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_22[1].checked=true'>�� 5+4+2+6</a></font> 
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center"> <font size="2"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_22[2].checked=true'>�� 4+6+3+2</a></font> 
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
                        <td width="690" height="30">�Ʒ��� ���� ���� <img src="../../mun_img/black_box.gif" width="15" height="15"> 
                          �ȿ� ������ ���� �ִ´ٸ� ��� ���ϱ��?</td>
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
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_23[0].checked=true'>�� 11</a> </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_23[1].checked=true'>�� 13</a> </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_23[2].checked=true'>��12</a> </div>
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
                        <td width="690" height="40">�����̴� 200���� ������ �ְ�, �����̴� �����̺��� 150���� �� ������ �ִٸ�, �λ���� ���� ���� �հ�� ���ϱ��?</td>
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
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_24[0].checked=true'>�� 350</a>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_24[1].checked=true'>�� 550</a>
                              </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_24[2].checked=true'>�� 150</a>
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
                          <p>50��¥�� ������ �� �� ������ 100���� �ǳ���?</p>
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
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_25[0].checked=true'>�� 3</a> </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_25[1].checked=true'>�� 2</a> </div>
                            </td>
                            <td width="140"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_25[2].checked=true'>�� 4</a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr valign="middle"> 
                        <td colspan="2" height="30">�� �Ʒ� ���� �а�, ���ϼ���.</td>
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
                                    <td> ���� �б����� ���θ� ��ġ�� ���� ���ƿԴ�. �빮�� �������� �� �����Կ� 
                                      ������ �� �ִ� ���� �߰��ߴ�. ������ �����ؼ� ���ƿ��ø� �׻� �����Կ��� 
                                      ������ �����ô� ������ �ִ�. �׷��� ������ �����Կ� �״�� �־��� ������ 
                                      ������ ���� ���� ���ƿ��� �����̱��� �ϰ� ���� �����ߴ�. </td>
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
                              <td width="500"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_26[0].checked=true'>�� ������ ���� ���ƿ��̴�. </a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center">
<input type="radio" name="test_26" value="02" <%if rs0("test_26")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_26[1].checked=true'> �� ������ ���� ���ƿ����� �ʾҴ�.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center">
<input type="radio" name="test_26" value="03" <%if rs0("test_26")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td> <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_26[2].checked=true'>�� ������ ���� ���ƿ����� ���� �ְ� ���� ���ƿ����� �ʾ��� ���� �ִ�.</a> </td>
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