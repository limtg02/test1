<%@language=vbscript%>
<!--#include virtual="/include/DBOpen.inc"-->
<!--#include virtual="/include/request2.asp"-->
<%

mydb="element_a"
myupdb="member_mst"



 select case chkpage

case 1
chkpage=2
if test01="" then
test01=0
end if
if test02="" then
test02=0
end if
if test03="" then
test03=0
end if
if test04="" then
test04=0
end if
if test05="" then
test05=0
end if
if test06="" then
test06=0
end if
if test07="" then
test07=0
end if
if test08="" then
test08=0
end if
if test09="" then
test09=0
end if
if test10="" then
test10=0
end if
if test11="" then
test11=0
end if
if test12="" then
test12=0
end if
if test13="" then
test13=0
end if
if test14="" then
test14=0
end if
if test15="" then
test15=0
end if
if test16="" then
test16=0
end if
if test17="" then
test17=0
end if
if test18="" then
test18=0
end if
if test19="" then
test19=0
end if

SQL0="update "&mydb&" set chkpage='"&chkpage&"', test01='"&test01&"', test02='"&test02&"', test03='"&test03&"', test04='"&test04&"', test05='"&test05&"', test06='"&test06&"', test07='"&test07&"', test08='"&test08&"', test09='"&test09&"', test10='"&test10&"', test11='"&test11&"', test12='"&test12&"', test13='"&test13&"', test14='"&test14&"', test15='"&test15&"', test16='"&test16&"', test17='"&test17&"', test18='"&test18&"', test19='"&test19&"', testchk='미검사(02)' where sys_no = '"&session("sys_no")&"' "
SQL1="update "&myupdb&" set testchk='미검사(02)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "

case 2
chkpage=3
if test20="" then
test20=0
end if
if test21="" then
test21=0
end if
if test22="" then
test22=0
end if
if test23="" then
test23=0
end if
if test24="" then
test24=0
end if
if test25="" then
test25=0
end if
if test26="" then
test26=0
end if
if test27="" then
test27=0
end if
if test28="" then
test28=0
end if
if test29="" then
test29=0
end if
if test30="" then
test30=0
end if
if test31="" then
test31=0
end if
if test32="" then
test32=0
end if
if test33="" then
test33=0
end if
if test34="" then
test34=0
end if
if test35="" then
test35=0
end if
if test36="" then
test36=0
end if
if test37="" then
test37=0
end if
if test38="" then
test38=0
end if
SQL0="update "&mydb&" set chkpage='"&chkpage&"', test20='"&test20&"', test21='"&test21&"', test22='"&test22&"', test23='"&test23&"', test24='"&test24&"', test25='"&test25&"', test26='"&test26&"', test27='"&test27&"', test28='"&test28&"', test29='"&test29&"', test30='"&test30&"', test31='"&test31&"', test32='"&test32&"', test33='"&test33&"', test34='"&test34&"', test35='"&test35&"', test36='"&test36&"', test37='"&test37&"', test38='"&test38&"',  testchk='미검사(03)' where sys_no = '"&session("sys_no")&"' "
SQL1="update "&myupdb&" set testchk='미검사(03)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "

case 3
chkpage=4
if test39="" then
test39=0
end if
if test40="" then
test40=0
end if
if test41="" then
test41=0
end if
if test42="" then
test42=0
end if
if test43="" then
test43=0
end if
if test44="" then
test44=0
end if
SQL0="update "&mydb&" set chkpage='"&chkpage&"', test39='"&test39&"', test40='"&test40&"', test41='"&test41&"', test42='"&test42&"', test43='"&test43&"', test44='"&test44&"', testchk='미검사(04)' where sys_no = '"&session("sys_no")&"' "
SQL1="update "&myupdb&" set testchk='미검사(04)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "

case 4
chkpage=5
if test45="" then
test45=0
end if
if test46="" then
test46=0
end if
if test47="" then
test47=0
end if
if test48="" then
test48=0
end if
if test49="" then
test49=0
end if
if test50="" then
test50=0
end if
if test51="" then
test51=0
end if
if test52="" then
test52=0
end if
if test53="" then
test53=0
end if
if test54="" then
test54=0
end if
if test55="" then
test55=0
end if
if test56="" then
test56=0
end if
if test57="" then
test57=0
end if
if test58="" then
test58=0
end if
if test59="" then
test59=0
end if
if test60="" then
test60=0
end if
if test61="" then
test61=0
end if
if test62="" then
test62=0
end if
if test63="" then
test63=0
end if
if test64="" then
test64=0
end if
SQL0="update "&mydb&" set chkpage='"&chkpage&"', test45='"&test45&"', test46='"&test46&"', test47='"&test47&"', test48='"&test48&"', test49='"&test49&"', test50='"&test50&"', test51='"&test51&"', test52='"&test52&"', test53='"&test53&"', test54='"&test54&"', test55='"&test55&"', test56='"&test56&"', test57='"&test57&"', test58='"&test58&"', test59='"&test59&"', test60='"&test60&"', test61='"&test61&"', test62='"&test62&"', test63='"&test63&"', test64='"&test64&"', testchk='미검사(05)' where sys_no = '"&session("sys_no")&"' "
SQL1="update "&myupdb&" set testchk='미검사(05)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "

case 5
chkpage=6
session("timechk")=time()
response.redirect "testa-"&chkpage&".asp?sys_no="&sys_no&""
response.end

case 6
chkpage=7
if test_01="" then
test_01=0
end if
if test_02="" then
test_02=0
end if
if test_03="" then
test_03=0
end if
if test_04="" then
test_04=0
end if
if test_05="" then
test_05=0
end if

SQL0="update "&mydb&" set chkpage='"&chkpage&"', test_01='"&test_01&"', test_02='"&test_02&"', test_03='"&test_03&"', test_04='"&test_04&"', test_05='"&test_05&"', testchk='미검사(06)' where sys_no = '"&session("sys_no")&"'  "
SQL1="update "&myupdb&" set testchk='미검사(06)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "


case 7
chkpage=8
if test_06="" then
test_06=0
end if
if test_07="" then
test_07=0
end if
if test_08="" then
test_08=0
end if
if test_09="" then
test_09=0
end if
if test_10="" then
test_10=0
end if

SQL0="update "&mydb&" set chkpage='"&chkpage&"', test_06='"&test_06&"', test_07='"&test_07&"', test_08='"&test_08&"', test_09='"&test_09&"', test_10='"&test_10&"', testchk='미검사(07)' where sys_no = '"&session("sys_no")&"'  "
SQL1="update "&myupdb&" set testchk='미검사(07)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "

case 8
chkpage=9
if test_11="" then
test_11=0
end if
if test_12="" then
test_12=0
end if
if test_13="" then
test_13=0
end if
if test_14="" then
test_14=0
end if
if test_15="" then
test_15=0
end if

SQL0="update "&mydb&" set chkpage='"&chkpage&"', test_11='"&test_11&"', test_12='"&test_12&"', test_13='"&test_13&"', test_14='"&test_14&"', test_15='"&test_15&"', testchk='미검사(08)' where sys_no = '"&session("sys_no")&"'  "
SQL1="update "&myupdb&" set testchk='미검사(08)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "

case 9
chkpage=10
if test_16="" then
test_16=0
end if
if test_17="" then
test_17=0
end if
if test_18="" then
test_18=0
end if
if test_19="" then
test_19=0
end if
if test_20="" then
test_20=0
end if

SQL0="update "&mydb&" set chkpage='"&chkpage&"', test_16='"&test_16&"', test_17='"&test_17&"', test_18='"&test_18&"', test_19='"&test_19&"', test_20='"&test_20&"', testchk='미검사(09)' where sys_no = '"&session("sys_no")&"'  "
SQL1="update "&myupdb&" set testchk='미검사(09)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "

case 10
chkpage=11
if test_21="" then
test_21=0
end if
if test_22="" then
test_22=0
end if
if test_23="" then
test_23=0
end if
if test_24="" then
test_24=0
end if
if test_25="" then
test_25=0
end if
if test_26="" then
test_26=0
end if
SQL0="update "&mydb&" set chkpage='"&chkpage&"', test_21='"&test_21&"', test_22='"&test_22&"', test_23='"&test_23&"', test_24='"&test_24&"', test_25='"&test_25&"', test_26='"&test_26&"', testchk='미검사(10)' where sys_no = '"&session("sys_no")&"'  "
SQL1="update "&myupdb&" set testchk='미검사(10)', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "

case 11
chkpage=12
if test_27="" then
test_27=0
end if
if test_28="" then
test_28=0
end if
if test_29="" then
test_29=0
end if
if test_30="" then
test_30=0
end if

SQL0="update "&mydb&" set chkpage='"&chkpage&"', testchk='검사완료', p_startdate='"&date&"', test_27='"&test_27&"', test_28='"&test_28&"', test_29='"&test_29&"', test_30='"&test_30&"' where sys_no like '"&session("sys_no")&"'  "
SQL1="update "&myupdb&" set testchk='검사완료', indate='"&date&"' where sys_no = '"&session("sys_no")&"' "
end select

dbcon.execute(SQL0)
dbcon.execute(SQL1)
if chkpage=12 then
	response.redirect "test_result00.asp"

else
response.redirect "testa-"&chkpage&".asp"
end if



dbcon.close
%>      

