<META HTTP-EQUIV="REFRESH" CONTENT="30">
<%
remain=2100 '�ð����� sec:  3600=1hour
start=session("timechk")

if len(start)=10 then
rhour=int(mid(start,3,2))
rmin=int(mid(start,6,2))
rsec=int(mid(start,9,2))
else
rhour=int(mid(start,4,2))
rmin=int(mid(start,7,2))
rsec=int(mid(start,10,2))
end if
rtime=int((rhour*3600)+(rmin*60)+rsec+remain)
%>

<% 
chkstart=time()
if len(chkstart)=10 then
chour=int(mid(chkstart,3,2))
cmin=int(mid(chkstart,6,2))
csec=int(mid(chkstart,9,2))
else
chour=int(mid(chkstart,4,2))
cmin=int(mid(chkstart,7,2))
csec=int(mid(chkstart,10,2))
end if

if rhour=12 and chour=1 then
chour=13
end if

ctime=int((chour*3600)+(cmin*60)+csec)



response.write time()
response.write "�ԷµȽð�" & rtime & "<br>"
response.write "����ð�" & ctime & "<br>"
response.write "�����ð�" & (rtime-ctime) & "<br>"
remaintime=int((rtime-ctime)/60)
%>
<%if remaintime<0 then%>
<form name="form1" method="get" action="testa_chk.asp" target="_top">
<input type="hidden" name="chkpage" value="11">
</form>
   <Script Language="JavaScript">
   alert("���ɰ˻�ð��� �ʰ��Ǿ����ϴ�.\n\n ������� �����մϴ�.");
  document.form1.submit();
   </script>
	<script language=vbscript>
	sub window_onload
	defaultstatus = "���ɰ˻�ð��� �ʰ��Ǿ����ϴ�."
	end sub
	</script>
	<%session("timechk")=time()%>
<%else%>
	<%if remaintime=0 then%>
	<script language=vbscript>
	sub window_onload
	defaultstatus = "���ɰ˻� �����ð� : 1�� �̸��Դϴ�."
	end sub
	</script>
	<%else%>
	<script language=vbscript>
	sub window_onload
	defaultstatus = "���ɰ˻� �����ð� : <%=remaintime%>�� "
	end sub
	</script>
	<%end if%>
<%end if%>