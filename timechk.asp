<html>

<head>
<META http-equiv="content-type" content="text/html; charset=EUC-KR">

<title>Counts down then "Pop-ups"</title>

<form name="send_form1" method="post" action="testa-6.asp" target="_top">
</form>
   <Script Language="JavaScript">
function display()
{
        rtime=etime-ctime;
        if (rtime>60)
                m=parseInt(rtime/60);
        else
                m=0;

        s=parseInt(rtime-m*60);
        if(s<10)
                s="0"+s
        window.status="Time Remaining :  "+m+":"+s
        window.setTimeout("checktime()",1000)
}

function settimes()
{
       
        var time= new Date();
        hours= time.getHours();
        mins= time.getMinutes();
        secs= time.getSeconds();
        etime=hours*120+mins*60+secs;
        etime+=5;  
        /*
         
(120 = 2
        mins * 60 secs/min)
        */
        
        checktime();
}

function checktime()
{
        var time= new Date();
        hours= time.getHours();
        mins= time.getMinutes();
        secs= time.getSeconds();
        ctime=hours*120+mins*60+secs
        if(ctime>=etime)
                expired();
        else
                display();
}

function expired()
{    
   alert("인성검사 시간이 초과 되었습니다. \n \n  지능검사로 이동합니다.");
   document.send_form1.submit();
}
   </script>

</head>

<body bgcolor="#FFFFFF" onload="settimes()">
남은시간 :  00:00 초
</body>
</html>

