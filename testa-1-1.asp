<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("�α��� �ð��� �ʰ��Ͽ��ų� �� �������� �� ������ �����ϴ�.");
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
<title>�ʵ� 1�г�� 01page</title>
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
                        <td><font color="#CC3333">1-64�������� ������ �� �о� �� �� '�׷���'��� 
                          �����Ǹ� ��, '�ƴϴ�'��� �����Ǹ� �迡 üũ�ϼ���! </font></td>
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
                          <div align="center">�� ��</div>
                        </td>
                        <td height="30" bgcolor="CBEABE"> 
                          <div align="center">����</div>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30"> 
                          <div align="center">1</div>
                        </td>
                        <td width="550" > ģ���� ����� ���� ��Ź�ϸ� �����ְ� 
                          �ʹ�. </td>
                        <td width="140" >�� 
                          <input type="radio" name="test01" value="01" <%if rs0("test01")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test01[0].checked=true'>��</a> �� 
                          <input type="radio" name="test01" value="02" <%if rs0("test01")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test01[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30" bgcolor="CBEABE"> 
                          <div align="center">2</div>
                        </td>
                        <td width="550" bgcolor="CBEABE" > ���� ģ���� ������ �ݰ���. </td>
                        <td width="140" bgcolor="CBEABE" >�� 
                          <input type="radio" name="test02" value="01" <%if rs0("test02")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test02[0].checked=true'>��</a> �� 
                          <input type="radio" name="test02" value="02" <%if rs0("test02")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test02[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30"> 
                          <div align="center">3</div>
                        </td>
                        <td width="550" >ģ������ ���� ����� ���� �Ⱦ��Ѵ�. </td>
                        <td width="140" >�� 
                          <input type="radio" name="test03" value="01" <%if rs0("test03")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test03[0].checked=true'> ��</a> �� 
                          <input type="radio" name="test03" value="02" <%if rs0("test03")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test03[1].checked=true'> �ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30" bgcolor="CBEABE"> 
                          <div align="center">4</div>
                        </td>
                        <td width="550" bgcolor="CBEABE" >ģ���� ���� ���Ͱ��� �����⸦ �����Ѵ�. 
                          <br>
                        </td>
                        <td width="140" bgcolor="CBEABE" >�� 
                          <input type="radio" name="test04" value="01" <%if rs0("test04")=01 then%> checked <%end if%>>
                         <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test04[0].checked=true'>  ��</a> �� 
                          <input type="radio" name="test04" value="02" <%if rs0("test04")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test04[1].checked=true'> �ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30"> 
                          <div align="center">5</div>
                        </td>
                        <td width="550" >���� ģ�� ģ���� ����. </td>
                        <td width="140" >�� 
                          <input type="radio" name="test05" value="01" <%if rs0("test05")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test05[0].checked=true'>��</a> �� 
                          <input type="radio" name="test05" value="02" <%if rs0("test05")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test05[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50"  height="30" bgcolor="CBEABE"> 
                          <div align="center">6</div>
                        </td>
                        <td width="550" bgcolor="CBEABE" >���� ģ����� �������� �� ������.</td>
                        <td width="140" bgcolor="CBEABE" >�� 
                          <input type="radio" name="test06" value="01" <%if rs0("test06")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test06[0].checked=true'>��</a> �� 
                          <input type="radio" name="test06" value="02" <%if rs0("test05")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test06[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">7</div>
                        </td>
                        <td width="550" >�����̵��� ģ����� ���Ͱ��鼭 �Ѵ�. 
                        </td>
                        <td width="140" >�� 
                          <input type="radio" name="test07" value="01" <%if rs0("test07")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test07[0].checked=true'>��</a> �� 
                          <input type="radio" name="test07" value="02" <%if rs0("test07")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test07[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">8</div>
                        </td>
                        <td width="550" bgcolor="CBEABE" >�����̵��� �Ⱦ����� �ʰ� ������ �� 
                          �Ѵ�.</td>
                        <td width="140" bgcolor="CBEABE" >�� 
                          <input type="radio" name="test08" value="01" <%if rs0("test08")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test08[0].checked=true'>��</a> �� 
                          <input type="radio" name="test08" value="02" <%if rs0("test08")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test08[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">9</div>
                        </td>
                        <td width="550" >�ڽ��� �ؾ� �� ���� ������ �̷��� �ʴ´�. 
                        </td>
                        <td width="140" >�� 
                          <input type="radio" name="test09" value="01" <%if rs0("test09")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test09[0].checked=true'>��</a> �� 
                          <input type="radio" name="test09" value="02" <%if rs0("test09")=02 then%> checked <%end if%>>
                         <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test09[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">10</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">���� ���� ���� � ���� �־ ������ 
                          �س���. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test10" value="01" <%if rs0("test10")=01 then%> checked <%end if%>>
                         <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test10[0].checked=true'>��</a>�� 
                          <input type="radio" name="test10" value="02" <%if rs0("test10")=02 then%> checked <%end if%>>
                        <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test10[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">11</div>
                        </td>
                        <td width="550">���� �ؾ� �� ���� ������ �̷��� �ʴ´�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test11" value="01" <%if rs0("test11")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test11[0].checked=true'>��</a> �� 
                          <input type="radio" name="test11" value="02" <%if rs0("test11")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test11[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">12</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">���� ���ĵ� �б��� ������ �ʴ´�. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test12" value="01" <%if rs0("test12")=01 then%> checked <%end if%>>
                         <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test12[0].checked=true'>��</a> �� 
                          <input type="radio" name="test12" value="02" <%if rs0("test12")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test12[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">13</div>
                        </td>
                        <td width="550">���̳� �б����� ���� ���� ���� �� �Ѵ�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test13" value="01" <%if rs0("test13")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test13[0].checked=true'>��</a> �� 
                          <input type="radio" name="test13" value="02" <%if rs0("test13")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test13[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">14</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">���� �ؾ� �� ���δ� ���Ϸ� �̷��� �ʴ´�. 
                        </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test14" value="01" <%if rs0("test14")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test14[0].checked=true'>��</a> �� 
                          <input type="radio" name="test14" value="02" <%if rs0("test14")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test14[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">15</div>
                        </td>
                        <td width="550">�츮 �ƹ����� ���� ���� ������ �Ű��������� ����ϽŴ�. <br>
                        </td>
                        <td width="140">�� 
                          <input type="radio" name="test15" value="01" <%if rs0("test15")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test15[0].checked=true'>��</a> �� 
                          <input type="radio" name="test15" value="02" <%if rs0("test15")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test15[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">16</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">ģ������ ȭ�� �� ����. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test16" value="01" <%if rs0("test16")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test16[0].checked=true'>��</a> �� 
                          <input type="radio" name="test16" value="02" <%if rs0("test16")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test16[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">17</div>
                        </td>
                        <td width="550">���� ���� ���� ȭ�� �� ���� �ִ�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test17" value="01" <%if rs0("test17")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test17[0].checked=true'>��</a> �� 
                          <input type="radio" name="test17" value="02" <%if rs0("test17")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test17[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">18</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">����� ���ݸ� ������ ¥���� ����. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test18" value="01" <%if rs0("test18")=01 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test18[0].checked=true'>��</a> �� 
                          <input type="radio" name="test18" value="02" <%if rs0("test18")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test18[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr > 
                        <td width="50" height="30"> 
                          <div align="center">19</div>
                        </td>
                        <td width="550">�츮 �θ���� ������ ������ ����. </td>
                        <td width="140">�� 
                          <input type="radio" name="test19" value="01" <%if rs0("test19")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test19[0].checked=true'>��</a> �� 
                          <input type="radio" name="test19" value="02" <%if rs0("test19")=02 then%> checked <%end if%>>
                           <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test19[1].checked=true'>�ƴϿ�</a></td>
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
