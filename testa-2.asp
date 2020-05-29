<%@language=vbscript%>
<%if session("p_id")="" then%>
   <Script Language="JavaScript">
   alert("로그인 시간을 초과하였거나 이 페이지를 볼 권한이 없습니다.");
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
<title>초등 1학년용 02page</title>
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
                        <td><font color="#CC3333">1-64번까지의 문항을 잘 읽어 본 후 '그렇다'라고 
                          생각되면 ①, '아니다'라고 생각되면 ②에 체크하세요! </font></td>
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
                          <div align="center">문 제</div>
                        </td>
                        <td width="140" height="30" bgcolor="CBEABE"> 
                          <div align="center">선택</div>
                        </td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">20</div>
                        </td>
                        <td width="550"> 계획대로 되지 않으면 짜증이 난다. </td>
                        <td width="140">① 
                          <input type="radio" name="test20" value="01" <%if rs0("test20")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test20[0].checked=true'>예</a> ② 
                          <input type="radio" name="test20" value="02" <%if rs0("test20")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test20[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">21</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 친구한테 화를 잘 낸다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test21" value="01" <%if rs0("test21")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test21[0].checked=true'>예</a> ② 
                          <input type="radio" name="test21" value="02" <%if rs0("test21")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test21[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">22</div>
                        </td>
                        <td width="550"> 나는 친구를 미워하지 않는다. </td>
                        <td width="140">① 
                          <input type="radio" name="test22" value="01" <%if rs0("test22")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test22[0].checked=true'>예</a> ② 
                          <input type="radio" name="test22" value="02" <%if rs0("test22")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test22[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">23</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 친구의 나쁜 점을 다른 친구에게 말할 
                          때가 있다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test23" value="01" <%if rs0("test23")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test23[0].checked=true'>예</a> ② 
                          <input type="radio" name="test23" value="02" <%if rs0("test23")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test23[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">24</div>
                        </td>
                        <td width="550"> 나보다 못한 친구가 상을 받으면 기분이 나쁘다. </td>
                        <td width="140">① 
                          <input type="radio" name="test24" value="01" <%if rs0("test24")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test24[0].checked=true'>예</a> ② 
                          <input type="radio" name="test24" value="02" <%if rs0("test24")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test24[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">25</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 친구가 미워질 때가 가끔 있다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test25" value="01" <%if rs0("test25")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test25[0].checked=true'>예</a> ② 
                          <input type="radio" name="test25" value="02" <%if rs0("test25")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test25[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">26</div>
                        </td>
                        <td width="550"> 친구가 좋은 일을 하면 친구에게 칭찬을 한다. </td>
                        <td width="140">① 
                          <input type="radio" name="test26" value="01" <%if rs0("test26")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test26[0].checked=true'>예</a> ② 
                          <input type="radio" name="test26" value="02" <%if rs0("test26")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test26[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">27</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 
                          <p> 친구가 잘되는 것을 보면 질투하고 미워한다. </p>
                          </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test27" value="01" <%if rs0("test27")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test27[0].checked=true'>예</a> ② 
                          <input type="radio" name="test27" value="02" <%if rs0("test27")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test27[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">28</div>
                        </td>
                        <td width="550"> 
                          <p>
                            나를 미워하는 친구가 있다. 
                          </p>
                          </td>
                        <td width="140">① 
                          <input type="radio" name="test28" value="01" <%if rs0("test28")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test28[0].checked=true'>예</a> ② 
                          <input type="radio" name="test28" value="02" <%if rs0("test28")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test28[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">29</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 공부만 하기 시작하면 친구와 놀고 싶은 
                          생각만 든다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test29" value="01" <%if rs0("test29")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test29[0].checked=true'>예</a> ② 
                          <input type="radio" name="test29" value="02" <%if rs0("test29")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test29[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">30</div>
                        </td>
                        <td width="550"> 나는 예습과 복습을 꾸준히 한다. </td>
                        <td width="140">① 
                          <input type="radio" name="test30" value="01" <%if rs0("test30")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test30[0].checked=true'>예</a> ② 
                          <input type="radio" name="test30" value="02" <%if rs0("test30")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test30[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">31</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 공부는 하지 않고 그저 시험 점수만 
                          높게 받으려고 생각한다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test31" value="01" <%if rs0("test31")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test31[0].checked=true'>예</a> ② 
                          <input type="radio" name="test31" value="02" <%if rs0("test31")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test31[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">32</div>
                        </td>
                        <td width="550"> 나는 공부 시간에 옆 친구와 장난을 잘 친다. </td>
                        <td width="140">① 
                          <input type="radio" name="test32" value="01" <%if rs0("test32")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test32[0].checked=true'>예</a> ② 
                          <input type="radio" name="test32" value="02" <%if rs0("test32")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test32[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">33</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 공부하기 싫을 때가 많다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test33" value="01" <%if rs0("test33")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test33[0].checked=true'>예</a> ② 
                          <input type="radio" name="test33" value="02" <%if rs0("test34")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test33[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">34</div>
                        </td>
                        <td width="550"> 나는 공부를 열심히 하고 싶다. </td>
                        <td width="140">① 
                          <input type="radio" name="test34" value="01" <%if rs0("test34")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test34[0].checked=true'>예</a> ② 
                          <input type="radio" name="test34" value="02" <%if rs0("test34")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test34[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">35</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 나는 수업 시간에 선생님의 설명을 열심히 
                          잘 듣는다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test35" value="01" <%if rs0("test35")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test35[0].checked=true'>예</a> ② 
                          <input type="radio" name="test35" value="02" <%if rs0("test35")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test35[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">36</div>
                        </td>
                        <td width="550"> 공부를 해도 성적이 잘 오르지 않는다. </td>
                        <td width="140">① 
                          <input type="radio" name="test36" value="01" <%if rs0("test36")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test36[0].checked=true'>예</a> ② 
                          <input type="radio" name="test36" value="02" <%if rs0("test36")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test36[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30" bgcolor="CBEABE"> 
                          <div align="center">37</div>
                        </td>
                        <td width="550" bgcolor="CBEABE"> 여러 가지 하고 싶은 것이 많아 한 
                          가지 것에 집중하지 못한다. </td>
                        <td width="140" bgcolor="CBEABE">① 
                          <input type="radio" name="test37" value="01" <%if rs0("test37")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test37[0].checked=true'>예</a> ② 
                          <input type="radio" name="test37" value="02" <%if rs0("test37")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test37[1].checked=true'>아니오</a></td>
                      </tr>
                      <tr> 
                        <td width="50" height="30"> 
                          <div align="center">38</div>
                        </td>
                        <td width="550"> 공부하는 도중에 하품이 잘 나온다. </td>
                        <td width="140">① 
                          <input type="radio" name="test38" value="01" <%if rs0("test38")=01 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test38[0].checked=true'>예</a> ② 
                          <input type="radio" name="test38" value="02" <%if rs0("test38")=02 then%> checked <%end if%>>
                          <a onfocus=this.blur() href=javascript:chk(); onClick='form1.test38[1].checked=true'>아니오</a></td>
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

