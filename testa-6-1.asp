<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("�α��� �ð��� �ʰ��Ͽ��ų� �� �������� �� ������ �����ϴ�.");
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
<title>�ʵ� 1�г�� 06page</title>
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
                        <td><font color="#CC3333">�Ʒ��� ������ �� �а� ���� ��Ȯ�� ���̶�� �����Ǵ� 
                          ��ȣ�� üũ�ϼ���. </font></td>
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
                          <div align="center">�� ��</div>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" width="45" bgcolor="CBEABE"> 
                          <div align="center">1</div>
                      </td>
                        <td width="689" height="30">�Ʒ� ������ �а�, �ùٸ� ���� �ϳ� �����Ͽ� 
                          ���ϼ���.</td>
                    </tr>
                    <tr> 
                        <td width="689"> <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0" dwcopytype="CopyTableCell" align="center">
                            <tr> 
                              <td colspan="2" background="../../mun_img/mun_bg_40pixel.gif" height="40"> 
                                <div align="center"><b>������ ö������ Ű�� ũ��. ö���� �μ����� Ű�� ũ��. ���� ~</b></div>
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
                                    <td width="300"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_01[0].checked=true'>�� ���� ū ���� ö���̴�.</a></td>
                                  </tr>
                                  <tr> 
                                    <td width="80"> 
                                      <div align="center"> 
                                        <input type="radio" name="test_01" value="02" <%if rs0("test_01")=02 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_01[1].checked=true'>�� ���� ū ���� �μ��̴�.</a> </td>
                                  </tr>
                                  <tr> 
                                    <td width="80"> 
                                      <div align="center"> 
                                        <input type="radio" name="test_01" value="03" <%if rs0("test_01")=03 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_01[2].checked=true'>�� ���� ū ���� �����̴�.</a> </td>
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
                          <p>����� ������ 4�ڷ� �޾Ҵ�. �����̴� ������ 8�ڷ� �޾Ҵ�. �����̴� ������ 7�ڷ� �޾Ҵ�. 
                            <span class="t1">���� ������ ���� ���� ���� ��̴� �����ϱ��?</span></p>
                      </td>
                    </tr>
                    <tr> 
                        <td width="689"> <br>
                          <table width="600" border="0" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                            <tr> 
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_02[0].checked=true'>�� ���</a> 
                                <input type="radio" name="test_02" value="01" <%if rs0("test_02")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_02[1].checked=true'>�� ����</a> 
                                <input type="radio" name="test_02" value="02" <%if rs0("test_02")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_02[2].checked=true'>�� ���� </a>
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
                              <td width="40">&lt;����&gt;</td>
                              <td height="30">�� ������� �������� �ִ� ����?</td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr> 
                      <td width="689"> 
                        <table width="680" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td colspan="2" align=center> 
                               <fieldset style="border:1 solid navy; background: url(bg.gif) no-repeat right bottom; width:500; height:80; padding:30"><legend align="center">����</legend><br><b>��, &nbsp;&nbsp;&nbsp; �ź�, &nbsp;&nbsp;&nbsp; ����, &nbsp;&nbsp;&nbsp; ��</b></fieldset> 
                            </td>
                          </tr>
                          <tr> 
                              <td colspan="2"> <br>
                                <table width="600" border="0" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                                  <tr> 
                                  <td width="200"> 
                                    <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_03[0].checked=true'>�� �䳢</a>
                                      <input type="radio" name="test_03" value="01" <%if rs0("test_03")=01 then%> checked <%end if%>>
                                    </div>
                                  </td>
                                  <td width="200"> 
                                    <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_03[1].checked=true'>�� Ÿ�� </a>
                                      <input type="radio" name="test_03" value="02" <%if rs0("test_03")=02 then%> checked <%end if%>>
                                    </div>
                                  </td>
                                  <td width="200"> 
                                    <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_03[2].checked=true'>�� �� </a>
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
                        <td width="689" height="40">�����̿� ��ö�̴� ���� �Ȱ��� �޾Ҵ�. �׷��� 
                          �����̴� ��ö�̺��� ���� �� ���� �Ծ���. <span class="t1">�׷��� ���� ���� ����</span> 
                          ���� ���� �������?</td>
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
                              <td width="300"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_04[0].checked=true'>�� ���� ���� ���� �ִ��� �� �� ����.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_04" value="02" <%if rs0("test_04")=02 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_04[1].checked=true'>�� �����̰� ���� ���� �ִ�.</a> </td>
                            </tr>
                            <tr> 
                              <td width="80"> 
                                <div align="center"> 
                                  <input type="radio" name="test_04" value="03" <%if rs0("test_04")=03 then%> checked <%end if%>>
                                </div>
                              </td>
                              <td><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_04[2].checked=true'>�� ��ö�̰� ���� ���� �ִ�.</a> </td>
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
                              <td> �ȿ� �ִ� ������� �Բ� ���� �� �ִ� ������?</td>
                            </tr>
                          </table>
                          
                        </td>
                    </tr>
                  
                    <tr> 
                        <td width="689"> <br>
                          <table width="680" border="0" cellspacing="0" cellpadding="0" dwcopytype="CopyTableCell" align="center">
                            <tr> 
                              <td colspan="2" background="../../mun_img/mun_bg_40pixel.gif" height="40"> 
                                <div align="center"><b>��,&nbsp;&nbsp;&nbsp; ����,&nbsp;&nbsp;&nbsp; ��</b></div>
                            </td>
                          </tr>
                        </table> 
                          <table width="680" border="0" cellspacing="0" cellpadding="0">
                            <tr> 
                              <td colspan="2" align="center"> <br>
                                <table width="600" border="0" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0>
                                  <tr> 
                                    <td width="200"> 
                                      <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_05[0].checked=true'>�� ���� </a>
                                        <input type="radio" name="test_05" value="01" <%if rs0("test_05")=01 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td width="200"> 
                                      <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_05[1].checked=true'>�� �⸧</a> 
                                        <input type="radio" name="test_05" value="02" <%if rs0("test_05")=02 then%> checked <%end if%>>
                                      </div>
                                    </td>
                                    <td width="200"> 
                                      <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_05[2].checked=true'>�� ����</a> 
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