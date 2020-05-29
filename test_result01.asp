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
<title>12page</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="../../styles_mun1.css" type="text/css">
<Script Language="JavaScript">
<!--
   alert("<%=trim(rs0("p_name"))%>님의 답안지가 성공적으로 제출 되었습니다.");
//-->
</Script>  
</head>

<body bgcolor="#FFFFFF" text="#000000">
<form name="form1" method="get" action="testa_chk.asp">
<input type="hidden" name="chkpage" value="12">
<br><br><br><br><br><br><br><br><br><br>
  <table width="512" border="0" cellspacing="1" cellpadding="0" align="center">
    <tr> 
      <td align=center width="511"> <img src="../../images/test_end_img_01.gif" width="510" height="45"></td>
    </tr>
    <tr> 
      <td align=center width="511" background="../../images/test_end_img_02.gif" height="50" valign="middle"> 
        <strong><%=rs0("p_name")%></strong>님의 답안지가 성공적으로 제출되었습니다.<br>
      </td>
    </tr>
    <tr> 
      <td align=center width="511"><img src="../../images/test_end_img_03.gif" width="510" height="83"></td>
    </tr>
    <tr> 
      <td align=center width="511" height="59"><a href="javascript:window.close();">확인(창닫기)</a></td>
    </tr>
    <tr> 
      <td align=center width="511">&nbsp;</td>
    </tr>
  </table>
  </form>

<%dbcon.close%>