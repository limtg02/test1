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
<title>�ʵ� 1�г�� 08page</title>
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
                        <td><font color="#CC3333">�Ʒ��� ������ �� �а� ���� ��Ȯ�� ���̶�� �����Ǵ� 
                          ��ȣ�� üũ�ϼ���. </font></td>
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
                          <div align="center">�� ��</div>
                        </td>
                      </tr>
                      <tr> 
                        <td colspan="2" height="30">�� �Ʒ��� ������ �� �а�, 3���� ���忡�� �ùٸ� 
                          ���� �ϳ� �����Ͽ� �� ��ȣ�� üũ�ϼ���.</td>
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
                                    <td><b>ȸ���̿� �����̰� �� ���� �ǰ�, ȸ���̿� �����̰� �� ���� �Ǿ� �ٴٸ��⸦ �ϸ� ���º��̴�. <br>
                                      �׷��� ȸ���̴� �����̺��� ���ϰ�, ȸ���̴� �����̺��� ���ϴ�. <br>
                                      ����</b> </td>
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
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_11[0].checked=true'>�� ���� ���� �� ����� ȸ���̴�.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_11" value="02" <%if rs0("test_11")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_11[1].checked=true'>�� ���� ���� �� ����� �����̴�. </a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_11" value="03" <%if rs0("test_11")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_11[2].checked=true'>�� �� ��� �� ���� ���� �� ����� ȸ���̳� ȸ���̴�. </a>
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
                                    <td><b>�ο�� �������� Ű�� ����. <br>
                                      �����̿� ������ Ű�� ����. <br>
                                      ����</b></td>
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
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_12[0].checked=true'>�� ������ Ű�� ������ Ű���� ũ��.</a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_12" value="02" <%if rs0("test_12")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_12[1].checked=true'>�� �� ����� Ű�� ��� ����. </a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_12" value="03" <%if rs0("test_12")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_12[2].checked=true'>�� �� ����� Ű�� ������ �� �� ����.</a> </td>
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
                                    <td><b>���� ������ ũ��. <br>
                                      ���� �޵κ��� ũ��. <br>
                                      ���� </b></td>
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
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_13[0].checked=true'>�� ���� ���� ���� ���̴�. </a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_13" value="02" <%if rs0("test_13")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_13[1].checked=true'>�� ���� ū ���� ���̴�.</a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_13" value="03" <%if rs0("test_13")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_13[2].checked=true'>�� ���� ���� ���� ���̴�.</a> </td>
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
                                    <td><b>���� �Ա� ���� ������ �Ͽ���. <br>
                                      ���� ���� �Ŀ� ���ٲ����� �Ͽ���. <br>
                                      ����</b> </td>
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
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_14[0].checked=true'>�� ������ �� ���� ������ ���� �ڿ���.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_14" value="02" <%if rs0("test_14")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_14[1].checked=true'>�� ���� ���� ������ �Ծ���.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_14" value="03" <%if rs0("test_14")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_14[2].checked=true'>�� ������ ���� �ϰ� ���ٲ����� �Ͽ���.</a> </td>
                            </tr>
                          </table>
                          <br>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" valign="middle" bgcolor="CBEABE" rowspan="2"> 
                          <div align="center">15</div>
                        </td>
                        <td width="690" height="30"> ���� ������ �׾��� �ִ� �ܾ�� ����� �ܾ 
                          �ϳ� ��� ���ϼ���.</td>
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
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_15[0].checked=true'>�� �η���</a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_15" value="02" <%if rs0("test_15")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_15[1].checked=true'>�� ģ���ϰ�</a></td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_15" value="03" <%if rs0("test_15")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td width="600"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_15[2].checked=true'>�� �β�����</a></td>
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
