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
<title>�ʵ� 1�г�� 03page</title>
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
<input type="hidden" name="chkpage" value="3">
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
                          <div align="center">39</div>
                        </td>
                        <td width="550">�� ���� ���� ���� ������� ���Ѵ�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test39" value="01" <%if rs0("test39")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test39[0].checked=true'>��</a> �� 
                          <input type="radio" name="test39" value="02" <%if rs0("test39")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test39[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">40</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> ������ �� ���� ������ �� �� �ȴ�. 
                        </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test40" value="01" <%if rs0("test40")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test40[0].checked=true'>��</a> �� 
                          <input type="radio" name="test40" value="02" <%if rs0("test40")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test40[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">41</div>
                        </td>
                        <td width="550">���θ� �� �� ������ �길�ϴ�. </td>
                        <td width="140">�� 
                          <input type="radio" name="test41" value="01" <%if rs0("test41")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test41[0].checked=true'>��</a> �� 
                          <input type="radio" name="test41" value="02" <%if rs0("test41")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test41[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">42</div>
                        </td>
                        <td width="550" bgcolor="CBEABE">�б��� ������ ������ �� �ð��� �� �� 
                          ���� �������� ������. </td>
                        <td width="140" bgcolor="CBEABE">�� 
                          <input type="radio" name="test42" value="01" <%if rs0("test42")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test42[0].checked=true'>��</a> �� 
                          <input type="radio" name="test42" value="02" <%if rs0("test42")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test42[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                      <tr> 
                        <td rowspan="2" valign="top"> 
                          <div align="center"><br>
                            43</div>
                        </td>
                        <td colspan="2" height="30">�Ʒ� (1) ~ (22)�������� ���� �߿��� �ڽ��� 
                          ���� �����ϴ� ������� 3���� �����Ͽ� ��ȣ 3���� üũ�ϼ���!</td>
                      </tr>
                      <tr> 
                        <td colspan="2"> 
                          <table width="680" border="0" cellspacing="0" cellpadding="0" align="center">
                            <tr> 
                              <td width="80%" height="20">(1) ���� �츮���� ���迡�� ���� 
                                �� ��� ���� �Ǵ� ����� �����ϴ� �ڻ簡 �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(2) ���� ���ǰ��̳� ��ȣ�簡 �ǰ� 
                                �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(3) ���� �ܱ����� �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(4) ���� ���� ���� ���а��� �۰� 
                                �ƴϸ� ������ �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(5) ���� ���� ������ �ǰ� �ʹ�. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(6) ���� ��۱����� ���ϰ� �ʹ�. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(7) ���� ��ȸ�� ��糪 �źδ��� 
                                �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(8) ���� ������ ���� �ڻ簡 �ǰ� 
                                �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(9) ���� �ڻ糪 �ǻ簡 �ǰ� �ʹ�. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(10) ���� �����ڳ� õ�� ���ڰ� 
                                �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(11) ���� �౹���� ���ϴ� ��簡 
                                �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(12) �Ĺ� ���ڳ� ��� ���� �ƴϸ� 
                                ���̰� ������ ������ ���� ���ϴ� �����ڰ� �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(13) ���� ������ �丮�簡 �ǰ� 
                                �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(14) ��ǻ�� ���� �ڻ簡 �ǰ� �ʹ�. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(15) ���� ���� �����ϰ� ����� 
                                ���� �ϰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(16) ���� ������ ��ȭ ��쳪 �ŷ�Ʈ�� 
                                �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(17) ���� �׸��� �׸��� ���� �ϰ� 
                                �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(18) ���� �뷡�� �� �θ��� ������ 
                                �ƴϸ� ���ǰ��� �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(19) ���� �츮���� ü�� ������ 
                                ���� ���ϰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(20) ���� ü�� �������� �ǰ� �ʹ�. 
                              </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(21) ���� �����(�౸, �߱�, 
                                ��, �豸, �״Ͻ�, ����, ���� ��)�� �ǰ� �ʹ�. </td>
                            </tr>
                            <tr> 
                              <td width="80%" height="20">(22) ���� ���밡�� �ǰ� �ʹ�. 
                              </td>
                            </tr>
                          </table>
                          <br>
                          <table width="500" border="1" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                            <tr bgcolor="CBEABE"> 
                              <td width="166"> 
                                <div align="center">1���� : 
                                  <select name="test43">
                                    <option value="00">���á�</option>
                                    <option value="01">1��</option>
                                    <option value="02">2��</option>
                                    <option value="03">3��</option>
                                    <option value="04">4��</option>
                                    <option value="05">5��</option>
                                    <option value="06">6��</option>
                                    <option value="07">7��</option>
                                    <option value="08">8��</option>
                                    <option value="09">9��</option>
                                    <option value="10">10��</option>
                                    <option value="11">11��</option>
                                    <option value="12">12��</option>
                                    <option value="13">13��</option>
                                    <option value="14">14��</option>
                                    <option value="15">15��</option>
                                    <option value="16">16��</option>
                                    <option value="17">17��</option>
                                    <option value="18">18��</option>
                                    <option value="19">19��</option>
                                    <option value="20">20��</option>
                                    <option value="21">21��</option>
                                    <option value="22">22��</option>
                                  </select>
                                </div>
                              </td>
                              <td width="166" bgcolor="CBEABE" height="30"> 
                                <div align="center"> &nbsp;2���� : 
                                  <select name="test43">
                                    <option value="00">���á�</option>
                                    <option value="01">1��</option>
                                    <option value="02">2��</option>
                                    <option value="03">3��</option>
                                    <option value="04">4��</option>
                                    <option value="05">5��</option>
                                    <option value="06">6��</option>
                                    <option value="07">7��</option>
                                    <option value="08">8��</option>
                                    <option value="09">9��</option>
                                    <option value="10">10��</option>
                                    <option value="11">11��</option>
                                    <option value="12">12��</option>
                                    <option value="13">13��</option>
                                    <option value="14">14��</option>
                                    <option value="15">15��</option>
                                    <option value="16">16��</option>
                                    <option value="17">17��</option>
                                    <option value="18">18��</option>
                                    <option value="19">19��</option>
                                    <option value="20">20��</option>
                                    <option value="21">21��</option>
                                    <option value="22">22��</option>
                                  </select>
                                </div>
                              </td>
                              <td width="168"> 
                                <div align="center"> &nbsp;3���� : 
                                  <select name="test43">
                                    <option value="00">���á�</option>
                                    <option value="01">1��</option>
                                    <option value="02">2��</option>
                                    <option value="03">3��</option>
                                    <option value="04">4��</option>
                                    <option value="05">5��</option>
                                    <option value="06">6��</option>
                                    <option value="07">7��</option>
                                    <option value="08">8��</option>
                                    <option value="09">9��</option>
                                    <option value="10">10��</option>
                                    <option value="11">11��</option>
                                    <option value="12">12��</option>
                                    <option value="13">13��</option>
                                    <option value="14">14��</option>
                                    <option value="15">15��</option>
                                    <option value="16">16��</option>
                                    <option value="17">17��</option>
                                    <option value="18">18��</option>
                                    <option value="19">19��</option>
                                    <option value="20">20��</option>
                                    <option value="21">21��</option>
                                    <option value="22">22��</option>
                                  </select>
                                </div>
                              </td>
                            </tr>
                          </table>
                          <br>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">44</div>
                        </td>
                        <td bgcolor="CBEABE">ģ������ ����� �� ��Ų��. </td>
                        <td bgcolor="CBEABE">�� 
                          <input type="radio" name="test44" value="01" <%if rs0("test44")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test44[0].checked=true'>��</a> �� 
                          <input type="radio" name="test44" value="02" <%if rs0("test44")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test44[1].checked=true'>�ƴϿ�</a></td>
                      </tr>
                    </table>
                    <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                          <p align="center"><a onfocus=this.blur() href="testa-2.asp"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;</a><a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../mun_img/next_ico.gif" border=0></a></p>
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
