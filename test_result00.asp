<%@language=vbscript%>
<%'on error resume next%>
<!--#include virtual="/include/DBOpen.inc"-->
<!--#include virtual="/include/request1.asp"-->

<%
select case mode
case "danche"
mydb="dan_element_a"
myupdb="dan_member"
case "gein"
mydb="element_a"
myupdb="membership"
case "com"
mydb="com_element_a"
myupdb="com_member2"
end select

if session("sys_no")<>"" then
sys_no=session("sys_no")
end if
if session("Lev")="C" then
mydb="dan_element_a"
myupdb="dan_member"
end if

if session("Lev")="D" then
mydb="element_a"
myupdb="member_mst"
end if
if session("Lev")="E" then
mydb="com_element_a"
myupdb="com_member2"
end if
set rs0=server.createobject("ADODB.recordset")
SQL0="select * from "&mydb&" where sys_no="&sys_no&" "
response.write(SQL0)
rs0.open(SQL0), dbcon, 1, 1
%>
<!--#include virtual="/include/scoreCAL_element/quest_ele_in.inc"-->
<!--#include virtual="/include/scoreCAL_element/quest_ele_ji.inc"-->

<!-- 인성부분 점수산정-->
<!--#include virtual="/include/scoreCAL_element/knmyun_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/chek_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/hyup_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/jaju_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/jun_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/jido_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/gam_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/jip_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/jung_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/chk_sex_ele_insung.inc"-->
<!-- 지능부분 점수산정-->
<!--#include virtual="/include/scoreCAL_element/sago_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/suri_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/ung_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/tam_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/non_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/pan_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/chang_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/ihae_ele.inc"-->
<!--#include virtual="/include/scoreCAL_element/chk_sex_ele_jinung.inc"-->
<!-- 적성부분 점수산정-->
<!--#include virtual="/include/scoreCAL_element/juk_ele_score.inc"-->
<!--평가등급 정의(공통)-->
<!--#include virtual="/include/scoreCAL/scorechk-insung.inc"-->
<!--#include virtual="/include/scoreCAL/scorechk-jinung.inc"-->
<!--응답신뢰도/종합평균 점수산정-->
<!--#include virtual="/include/scoreCAL_element/trust_ele_chk.inc"-->
<% aveinsung=formatnumber(avejum, 2)%>
<% avejinung=formatnumber(avejinung, 2)%>
<%SQL0="update "&mydb&" set in_1='"&knmyunscore&"', in_2='"&chekscore&"', in_3='"&hyupscore&"', in_4='"&jajuscore&"', in_5='"&junscore&"', in_6='"&jidoscore&"', in_7='"&jipscore&"', in_8='"&jungscore&"', in_9='"&gamscore&"', in_cal='"&aveinsung&"', ji_1='"&panscore&"', ji_2='"&tamscore&"', ji_3='"&suriscore&"', ji_4='"&changscore&"', ji_5='"&sagoscore&"', ji_6='"&ungscore&"', ji_7='"&ihaescore&"', ji_8='"&nonscore&"', ji_cal='"&avejinung&"', juk_1='"&juksun_1_con&"', juk_2='"&juksun_2_con&"', juk_3='"&juksun_3_con&"', trust='"&trustchk&"'  where sys_no="&sys_no&" "
dbcon.execute(SQL0)
dbcon.close
%>

<form name="send_form1" method="post" action="test_result01.asp">
</form>
   <Script Language="JavaScript">
   document.send_form1.submit();
   </script>
