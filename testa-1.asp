<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("�α��� �ð��� �ʰ��Ͽ��ų� �� �������� �� ������ �����ϴ�.");
   setTimeout("window.close();", 1000);
   </script>
   <%response.end%>
<%end if%>

<html>
<head>
<title>�ʵ� 1�г�� �μ��˻�</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<frameset cols="0,*" frameborder="NO" border="0" framespacing="0" rows="*"> 
  <frame name="leftFrame" scrolling="NO" noresize src="timechk_in.asp">
  <frame name="mainFrame" src="testa-1-1.asp">
</frameset>

</body>
</html>
