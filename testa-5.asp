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
<title>초등 1학년용 05page</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="../../element/5-6/style.css" type="text/css">
<Script Language="JavaScript">
function send_form() {
  document.form1.submit();
}
function chk() {}
</Script>  
</head>

<body bgcolor="#FFFFFF" text="#000000" background="../../images/all-back.gif">
<form name="form1" method="get" action="testa_chk.asp" target="_top">
<input type="hidden" name="chkpage" value="5">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td>
      <table width="768" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td><img src="../../mun_img/element_bg_01.gif" width="769" height="56"></td>
        </tr>
        <tr> 
          <td background="../../mun_img/element_bg_02.gif">
            <table width="750" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td></td>
              </tr>
              <tr> 
                <td width="750"> 
     
                    <table width="500" border="0" cellspacing="0" align="center" bordercolor="#999999">
                      <tr> 
                        <td><p>&nbsp;</p>
                          <img src="../../images/yua_insung_endani.gif" width="500" height="238"></td>
                      </tr>
                      <tr> 
                        <td><a onfocus=this.blur()  href="JavaScript:send_form()"><img src="../../images/yua_insung_end_jigo.gif" width="500" height="75" border="0"></a></td>
                      </tr>
                    </table>
  
      
        <table width="740" border="0" align="center">
                      <tr>
                        <td height="25"> 
                       <p align="center"><a onfocus=this.blur()  href="testa-4.asp"><img src="../../mun_img/pre_ico.gif" border=0></a></p>
                        </td>
                      </tr>
                    </table>
       
 </td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td><img src="../../mun_img/element_bg_03.gif" width="769" height="15"></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</form>

</p>




</body>
</html>
