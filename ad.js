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
        etime+=1500;  
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
alert('�μ��˻��� ������ �ð��� ��� ����ϼ̽��ϴ�.\n\n���ɰ˻�� �Ѿ�ϴ�.')
  document.form1.submit();
}
