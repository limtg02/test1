<META HTTP-EQUIV="REFRESH" CONTENT="30">
<%
remain=2100 '시간정의 sec:  3600=1hour
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
response.write "입력된시간" & rtime & "<br>"
response.write "현재시간" & ctime & "<br>"
response.write "남은시간" & (rtime-ctime) & "<br>"
remaintime=int((rtime-ctime)/60)
%>
<%if remaintime<0 then%>
<form name="form1" method="get" action="testa_chk.asp" target="_top">
<input type="hidden" name="chkpage" value="11">
</form>
   <Script Language="JavaScript">
   alert("지능검사시간이 초과되었습니다.\n\n 답안지를 제출합니다.");
  document.form1.submit();
   </script>
	<script language=vbscript>
	sub window_onload
	defaultstatus = "지능검사시간이 초과되었습니다."
	end sub
	</script>
	<%session("timechk")=time()%>
<%else%>
	<%if remaintime=0 then%>
	<script language=vbscript>
	sub window_onload
	defaultstatus = "지능검사 남은시간 : 1분 미만입니다."
	end sub
	</script>
	<%else%>
	<script language=vbscript>
	sub window_onload
	defaultstatus = "지능검사 남은시간 : <%=remaintime%>분 "
	end sub
	</script>
	<%end if%>
<%end if%>