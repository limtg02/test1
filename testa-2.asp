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
<title>�ʵ� 1�г�� 02page</title>
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
<input type="hidden" name="chkpage" value="2">
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
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">NO.</div>
                        </td>
                        <td width="550" height="30" bgcolor="CBEABE"> 
                          <div align="center">�� ��</div>
                        </td>
                        <td width="140" height="30" bgcolor="CBEABE"> 
                          <div align="center">����</div>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">20</div>
                        </td>
                        <td width="550"> ��ȹ��� ���� ������ ¥���� ����. </td>
                        <td width="140">�� 
                          <input type="radio" name="test20" value="01" <%if rs0("test20")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test20[0].checked=true'>��</a> �� 
                          <input type="radio" name="test20" value="02" <%if rs0("test20")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test20[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">21</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> ģ������ ȭ�� �� ����. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test21" value="01" <%if rs0("test21")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test21[0].checked=true'>��</a> �� 
                          <input type="radio" name="test21" value="02" <%if rs0("test21")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test21[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">22</div>
                        </td>
                        <td width="550"> ���� ģ���� �̿����� �ʴ´�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test22" value="01" <%if rs0("test22")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test22[0].checked=true'>��</a> �� 
                          <input type="radio" name="test22" value="02" <%if rs0("test22")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test22[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">23</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> ģ���� ���� ���� �ٸ� ģ������ ���� 
                          ���� �ִ�. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test23" value="01" <%if rs0("test23")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test23[0].checked=true'>��</a> �� 
                          <input type="radio" name="test23" value="02" <%if rs0("test23")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test23[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">24</div>
                        </td>
                        <td width="550"> ������ ���� ģ���� ���� ������ ����� ���ڴ�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test24" value="01" <%if rs0("test24")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test24[0].checked=true'>��</a> �� 
                          <input type="radio" name="test24" value="02" <%if rs0("test24")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test24[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">25</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> ģ���� �̿��� ���� ���� �ִ�. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test25" value="01" <%if rs0("test25")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test25[0].checked=true'>��</a> �� 
                          <input type="radio" name="test25" value="02" <%if rs0("test25")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test25[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">26</div>
                        </td>
                        <td width="550"> ģ���� ���� ���� �ϸ� ģ������ Ī���� �Ѵ�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test26" value="01" <%if rs0("test26")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test26[0].checked=true'>��</a> �� 
                          <input type="radio" name="test26" value="02" <%if rs0("test26")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test26[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">27</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 
                          <p> ģ���� �ߵǴ� ���� ���� �����ϰ� �̿��Ѵ�. </p>
                          </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test27" value="01" <%if rs0("test27")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test27[0].checked=true'>��</a> �� 
                          <input type="radio" name="test27" value="02" <%if rs0("test27")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test27[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">28</div>
                        </td>
                        <td width="550"> 
                          <p>
                            ���� �̿��ϴ� ģ���� �ִ�. 
                          </p>
                          </td>
                        <td width="140">�� 
                          <input type="radio" name="test28" value="01" <%if rs0("test28")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test28[0].checked=true'>��</a> �� 
                          <input type="radio" name="test28" value="02" <%if rs0("test28")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test28[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">29</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> ���θ� �ϱ� �����ϸ� ģ���� ��� ���� 
                          ������ ���. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test29" value="01" <%if rs0("test29")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test29[0].checked=true'>��</a> �� 
                          <input type="radio" name="test29" value="02" <%if rs0("test29")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test29[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">30</div>
                        </td>
                        <td width="550"> ���� ������ ������ ������ �Ѵ�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test30" value="01" <%if rs0("test30")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test30[0].checked=true'>��</a> �� 
                          <input type="radio" name="test30" value="02" <%if rs0("test30")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test30[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">31</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> ���δ� ���� �ʰ� ���� ���� ������ 
                          ���� �������� �����Ѵ�. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test31" value="01" <%if rs0("test31")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test31[0].checked=true'>��</a> �� 
                          <input type="radio" name="test31" value="02" <%if rs0("test31")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test31[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">32</div>
                        </td>
                        <td width="550"> ���� ���� �ð��� �� ģ���� �峭�� �� ģ��. </td>
                        <td width="140">�� 
                          <input type="radio" name="test32" value="01" <%if rs0("test32")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test32[0].checked=true'>��</a> �� 
                          <input type="radio" name="test32" value="02" <%if rs0("test32")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test32[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">33</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> �����ϱ� ���� ���� ����. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test33" value="01" <%if rs0("test33")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test33[0].checked=true'>��</a> �� 
                          <input type="radio" name="test33" value="02" <%if rs0("test34")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test33[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">34</div>
                        </td>
                        <td width="550"> ���� ���θ� ������ �ϰ� �ʹ�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test34" value="01" <%if rs0("test34")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test34[0].checked=true'>��</a> �� 
                          <input type="radio" name="test34" value="02" <%if rs0("test34")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test34[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">35</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> ���� ���� �ð��� �������� ������ ������ 
                          �� ��´�. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test35" value="01" <%if rs0("test35")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test35[0].checked=true'>��</a> �� 
                          <input type="radio" name="test35" value="02" <%if rs0("test35")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test35[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">36</div>
                        </td>
                        <td width="550"> ���θ� �ص� ������ �� ������ �ʴ´�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test36" value="01" <%if rs0("test36")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test36[0].checked=true'>��</a> �� 
                          <input type="radio" name="test36" value="02" <%if rs0("test36")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test36[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">37</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> ���� ���� �ϰ� ���� ���� ���� �� 
                          ���� �Ϳ� �������� ���Ѵ�. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test37" value="01" <%if rs0("test37")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test37[0].checked=true'>��</a> �� 
                          <input type="radio" name="test37" value="02" <%if rs0("test37")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test37[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">38</div>
                        </td>
                        <td width="550"> �����ϴ� ���߿� ��ǰ�� �� ���´�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test38" value="01" <%if rs0("test38")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test38[0].checked=true'>��</a> �� 
                          <input type="radio" name="test38" value="02" <%if rs0("test38")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test38[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                    </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center"><a onfocus=this.blur() href="testa-1.asp"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;</a><a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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

