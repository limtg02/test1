<%@language=vbscript%>
<!--#include virtual="/include/DBOpen.inc"-->
<!--#include virtual="/include/request1.asp"-->
<%session("timechk")=time()%>
<%
if session("Lev")="D" then
p_sosok="개인회원"
end if
if sys_no<>"" then
session("sys_no")=sys_no
end if%>
<%if session("Lev")="E" then
set rs0 = server.createobject("ADODB.recordset")
SQL0="select p_id, chkpage, testchk from com_element_a where sys_no="&session("sys_no")&" "
rs0.open(SQL0), dbcon, 1, 1
	if rs0("chkpage")=0 then
	chkpage=1
	SQL2="update com_element_a set chkpage='"&chkpage&"' where sys_no="&session("sys_no")&" "
	dbcon.execute(SQL2)
	response.redirect "exam_paper.asp"
	response.end
	else
	chkpage=rtrim(rs0("chkpage"))
	testchk=rtrim(rs0("testchk"))
	end if
	SQL3="update com_element_a set chkpage='"&chkpage&"' where sys_no="&session("sys_no")&" "
	dbcon.execute(SQL3)
	if testchk = "검사완료" then
	response.redirect "test_result02.asp"
	else%>
<!--#include virtual="/include/connectchk.asp"-->
		<%if chkpage<5 and chkpage>0 then
		chkpage=1
		response.redirect "testa-"&chkpage&".asp"
		else
		chkpage=6
		response.redirect "testa-"&chkpage&".asp"
		end if
	end if

response.end
end if

if session("Lev")="C" then
set rs0 = server.createobject("ADODB.recordset")
SQL0="select p_id, chkpage, testchk from dan_element_a where sys_no="&session("sys_no")&" "
rs0.open(SQL0), dbcon, 1, 1
	if rs0("chkpage")=0 then
	chkpage=1
	SQL2="update dan_element_a set chkpage='"&chkpage&"' where sys_no="&session("sys_no")&" "
	dbcon.execute(SQL2)
	response.redirect "exam_paper.asp"
	response.end
	else
	chkpage=rtrim(rs0("chkpage"))
	testchk=rtrim(rs0("testchk"))
	end if
	SQL3="update dan_element_a set chkpage='"&chkpage&"' where sys_no="&session("sys_no")&" "
	dbcon.execute(SQL3)
	if testchk ="검사완료" then
	response.redirect "test_result02.asp"
	else%>
<!--#include virtual="/include/connectchk.asp"-->
		<%if chkpage<5 and chkpage>0 then
		chkpage=1
		response.redirect "testa-"&chkpage&".asp"
		else
		chkpage=6
		response.redirect "testa-"&chkpage&".asp"
		end if
	end if
else

set rs0 = server.createobject("ADODB.recordset")
SQL0="select p_id, chkpage, testchk from element_a where sys_no="&session("sys_no")&" "
rs0.open(SQL0), dbcon, 1, 1
end if

if session("Lev")="D" then
'재입력 확인
if clng(rs0.recordcount)>0 then
chkpage=rtrim(rs0("chkpage"))
testchk=rtrim(rs0("chkpage"))
	if chkpage=0 then
	chkpage=1
	end if	
	if testchk="검사완료" then
		response.redirect "test_result02.asp"
	else%>
<!--#include virtual="/include/connectchk.asp"-->
		<%if chkpage<5 and chkpage>0 then
		chkpage=1
		response.redirect "testa-"&chkpage&".asp"
		else
		chkpage=6
		response.redirect "testa-"&chkpage&".asp"
		end if
	end if
else

%>
<%'최초값 입력하기
SQL1="insert into element_a ("
SQL1=SQL1&"sys_no, p_name, p_id, p_uhyung, p_sex, p_sosok, p_startdate, p_email, testchk, test01, test02, test03, test04, test05, test06, test07, test08, test09, test10, test11, test12, test13, test14, test15, test16, test17, test18, test19, test20, test21, test22, test23, test24, test25, test26, test27, test28, test29, test30, test31, test32, test33, test34, test35, test36, test37, test38, test39, test40, test41, test42, test43, test44, test45, test46, test47, test48, test49, test50, test51, test52, test53, test54, test55, test56, test57, test58, test59, test60, test61, test62, test63, test64, test_01, test_02, test_03, test_04, test_05, test_06, test_07, test_08, test_09, test_10, test_11, test_12, test_13, test_14, test_15, test_16, test_17, test_18, test_19, test_20, test_21, test_22, test_23, test_24, test_25, test_26, test_27, test_28, test_29, test_30, chkpage) values ("
SQL1=SQL1&" '"&session("sys_no")&"', '"&session("p_name")&"', '"&session("p_id")&"', '"&p_uhyung&"', '"&p_sex&"', '"&p_sosok&"', '"&date&"', '"&p_email&"', '미검사(0)', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0')"
dbcon.execute(SQL1)
SQL2="update member_mst set p_uhyung='"&p_uhyung&"' where sys_no="&session("sys_no")&" "
dbcon.execute(SQL2)
response.redirect "exam_paper.asp"
end if

else

end if
dbcon.close
%>