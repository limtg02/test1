<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("로그인 시간을 초과하였거나 이 페이지를 볼 권한이 없습니다.");
   setTimeout("window.close();", 1000);
   </script>
   <%response.end%>
<%end if%>

<html>
<head>
<title>초등 1학년용 인성검사</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<frameset cols="0,*" frameborder="NO" border="0" framespacing="0" rows="*"> 
  <frame name="leftFrame" scrolling="NO" noresize src="timechk_in.asp">
  <frame name="mainFrame" src="testa-1-1.asp">
</frameset>

</body>
</html>
