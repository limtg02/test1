<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("�α��� �ð��� �ʰ��Ͽ��ų� �� �������� �� ������ �����ϴ�.");
   setTimeout("window.close();", 1000);
   </script>
	<%response.end%>
<%end if%>
<%response.expires = 0%>
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

if rs0("chkpage")="12" then%>
<Script Language="JavaScript">
<!--
   alert("�˻縦 ����ģ ���� �̹Ƿ� �� �������� �ٽ� ���� �� �����ϴ�.");
   history.go(+1);
//-->
</Script>  
<%response.end%>
<%end if%>

<html>
<head>
<title>�ʵ� 1�г�� 11page</title>
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
<form name="form1" method="get" action="testa_chk.asp" target="_top">
<input type="hidden" name="chkpage" value="11">

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
                <td>
                    <table width="740" border="0" cellspacing="0" cellpadding="1">
                      <tr> 
                        <td width="25" height=30><img src="../../images/mun_ico_msg1.gif" width="20" height="16" border=0></td>
                        <td><font color="#CC3333">�Ʒ��� ������ �� �а� ���� ��Ȯ�� ���̶�� �����Ǵ� 
                          ��ȣ�� üũ�ϼ���. </font></td>
                      </tr>
                    </table>
                  </td>
              </tr>
              <tr> 
                <td>
                     
                    <table width="740" border="1" bordercolordark=white bordercolorlight=black cellpadding=0 cellspacing=0 align="center">
                      <tr bgcolor="CBEABE"> 
                        <td width="50" height="30"> 
                          <div align="center">NO.</div>
                      </td>
                        <td width="690" height="30"> 
                          <div align="center">�� ��</div>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="middle" bgcolor="CBEABE"> 
                          <div align="center"><br>
                          27</div>
                      </td>
                        <td width="690" height="30">�Ʒ� �׸� �� ���� �׸��� ��� ���ϱ��?</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="600" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="200"> 
                              <div align="center">�� 
                                <input type="radio" name="test_27" value="01" <%if rs0("test_27")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="200"> 
                              <div align="center">�� 
                                <input type="radio" name="test_27" value="02" <%if rs0("test_27")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="200"> 
                              <div align="center">�� 
                                <input type="radio" name="test_27" value="03" <%if rs0("test_27")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="200"> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_27[0].checked=true'><img src="../../mun_img/element_27_mun_01.gif" width="110" height="142" border=0></a></div>
                            </td>
                            <td width="200"> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_27[1].checked=true'><img src="../../mun_img/element_27_mun_02.gif" width="110" height="142" border=0></a></div>
                            </td>
                            <td width="200"> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_27[2].checked=true'><img src="../../mun_img/element_27_mun_03.gif" width="110" height="142" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                        <br>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">28</div>
                      </td>
                        <td width="690" height="30">����� �˸��� ������?</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                          <table width="650" border="0" cellspacing="0" cellpadding="1">
                            <tr> 
                            <td rowspan="2" width="300"><img src="../../mun_img/element_28_mun_ex.gif" width="285" height="117"></td>
                              <td width="116"> 
                                <div align="center">
                                <input type="radio" name="test_28" value="01" <%if rs0("test_28")=01 then%> checked <%end if%>>
                                </div>
                            </td>
                              <td width="116"> 
                                <div align="center">
                                <input type="radio" name="test_28" value="02" <%if rs0("test_28")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                              <td width="117"> 
                                <div align="center">
                                <input type="radio" name="test_28" value="03" <%if rs0("test_28")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                              <td valign="top"> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_28[0].checked=true'>�� ��</a> </div>
                            </td>
                              <td valign="top"> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_28[1].checked=true'>�� �� </a></div>
                            </td>
                              <td valign="top"> 
                                <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_28[2].checked=true'>�� ��</a> </div>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" valign="middle" bgcolor="CBEABE"> 
                          <div align="center">29</div>
                      </td>
                        <td width="690" height="30">�Ʒ� �׸� �߿��� ������ 2���� �ٸ� ���� ��� 
                          �� ��ȣ�� üũ�ϼ���.</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="600" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="100"> 
                              <div align="center">�� 
                                <input type="radio" name="test_29" value="01" <%if rs0("test_29")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="100"> 
                              <div align="center">�� 
                                <input type="radio" name="test_29" value="02" <%if rs0("test_29")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="100"> 
                              <div align="center">�� 
                                <input type="radio" name="test_29" value="03" <%if rs0("test_29")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="100"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_29[0].checked=true'><img src="../../mun_img/element_29_mun01.gif" width="120" height="110" border=0></a></div>
                            </td>
                            <td width="100"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_29[1].checked=true'><img src="../../mun_img/element_29_mun02.gif" width="110" height="110" border=0></a></div>
                            </td>
                            <td width="100"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_29[2].checked=true'><img src="../../mun_img/element_29_mun03.gif" width="120" height="110" border=0></a></div>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    <tr> 
                        <td rowspan="2" bgcolor="CBEABE"> 
                          <div align="center">30</div>
                      </td>
                        <td width="690" height="30">�ƹ����� �Ƶ��� ���谡 �ִٸ�, ��ӴϿ� ���� 
                          �ִ� ���� �Ʒ� �� ��� ������ ã�� üũ�ϼ���.</td>
                    </tr>
                    <tr> 
                      <td width="690"><br>
                        <table width="600" border="0" cellspacing="0" cellpadding="1">
                          <tr> 
                            <td width="200" height="9"> 
                              <div align="center">
                                <input type="radio" name="test_30" value="01" <%if rs0("test_30")=01 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="200" height="9"> 
                              <div align="center">
                                <input type="radio" name="test_30" value="02" <%if rs0("test_30")=02 then%> checked <%end if%>>
                              </div>
                            </td>
                            <td width="200" height="9"> 
                              <div align="center">
                                <input type="radio" name="test_30" value="03" <%if rs0("test_30")=03 then%> checked <%end if%>>
                              </div>
                            </td>
                          </tr>
                          <tr> 
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_30[0].checked=true'>�� �ҸӴ�</a> </div>
                            </td>
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_30[1].checked=true'>�� ���� </a></div>
                            </td>
                            <td width="200"> 
                              <div align="center"><a onfocus=this.blur() href=javascript:chk(); onClick='form1.test_30[2].checked=true'>�� �� </a></div>
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
                        <div align="center"><img src="../../images/goodbye_t.gif" width="687" height="150"></div>
                      </td>
                    </tr>
                    <tr>
                      <td height="25">
                        <div align="center"><a onfocus=this.blur() href="JavaScript:send_form()" target="_self"><img src="../../images/end_send.gif" width="150" height="51" border=0></a></div>  <p align="center"><a onfocus=this.blur() href="testa-10.asp"><img src="../../mun_img/pre_ico.gif" border=0>&nbsp;</a></p>
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