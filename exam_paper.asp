<!--#include virtual="/include/request1.asp"-->
<%if session("p_id")="" then%>
<form name="send_form1" method="post" action="index.asp">
</form>
   <Script Language="JavaScript">
   alert("로그인 시간을 초과하였거나 이 페이지를 볼 권한이 없습니다.");
   document.send_form1.submit();
   </script>
<%end if%>
<html>
<head>
<title>초등학교 검사실시 방법안내</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link rel="stylesheet" href="../../styles1.css" type="text/css">
</head>

<body bgcolor="#FFFFFF" text="#000000" background="../../images/all-back.gif">
<table width="768" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="#FFFFFF">
  <tr> 
    <td>
      <div align="center"><br>
        <img src="images/exam_paper_title.gif" width="768" height="123"></div>
    </td>
  </tr>
  <tr> 
    <td height="20">&nbsp;</td>
  </tr>
  <tr> 
    <td> 
      <table width="768" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
          <td background="images/exam_paper_sub01.gif">
            <table width="750" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>
                <td>어린이의 자질을 올바르게 파악하여 능동적으로 대처합니다. 합리적이고 과학적인 방법으로 잠재능력을 개발합니다. 
                  행동발달의 장애요인 제거 및 교정밥법을 제시하고, 친구와의 관계를 개선합니다. 행동발달 파악으로 인격 형성에 
                  대한 만족도를 향상시키고, 어린이의 잠재능력 개발을 유도하기 위한 효과적인 교육지침자료로 활용합니다. </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <br>
      <table width="768" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td> 
            <table width="768" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td background="images/exam_quest_t.gif" height="29">&nbsp;<b><img src="images/blit_orange.gif" width="9" height="9"> 
                  일반적인 주의사항</b></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td> <br>
            <table width="740" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td bgcolor="FECE00"><b><img src="../../images/icn02.gif" width="13" height="13"> 
                  인성검사 주의점</b></td>
              </tr>
              <tr> 
                <td bgcolor="FFFEF0">(1) 인성검사는 시험이 아니므로 몸과 마음을 편안하게 가지고 검사에 임해야 
                  합니다. <br>
                  (2) 인성검사는 64문항으로 구성되어 있으니 확인하여 주시기 바랍니다.<br>
                  (3) 인성 검사는 정답과 오답이 없으므로 각 문항을 읽으면서 생각나는 대로 즉시 응답해 주시기 바랍니다.<br>
                  (4) 응답시의 감정이나 상태보다는 평상시 학생의 행동이나 생각을 진지하고 솔직하게 응답해야 합니다.<br>
                  (5) 20분 시간 제한이 있으므로 너무 깊이 생각하지 말고 신속하게 해야 합니다.</td>
              </tr>
              <tr> 
                <td bgcolor="FECE00"><b><img src="../../images/icn02.gif" width="13" height="13"> 
                  지능검사 주의점</b></td>
              </tr>
              <tr>
                <td bgcolor="FFFEF0">(1) 지능검사는 학생 개인이 지니고 있는 현재 능력에 대한 I.Q를 파악하여 
                  학습 향상 개발에 객관적인 참고 자료로 활용하기 위하여 실시하는 것입니다.<br>
                  (2) 지능검사 문제는 30문제로 구성되어 있으니 확인하여 주시기 바랍니다.<br>
                  (3) 문제를 잘 읽어 본 후 각 문제의 ① ~ ③번 중 가장 정확한 답이라고 생각하는 번호를 선택합니다.<br>
                  <font color="#FF0000">(4) 계산은 별도의 용지를 이용하는 것이 가능합니다. 계산기는 사용하지 
                  마세요!</font></td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td> 
            <table width="768" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td background="images/exam_quest_t.gif" height="29">&nbsp;<b><img src="images/blit_orange.gif" width="9" height="9"> 
                  검사 실시방법 및 시간</b></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td><br>
            <table width="740" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td bgcolor="FFFEF0">(1) 문제의 번호와 답안 번호가 틀리지 않도록 해야 합니다.<br>
                  (2) 다음화면으로 넘어가고자 하실 때에는 화면 하단에 있는 <font color="#FF0000">'다음'</font> 
                  이라는 글자를 클릭해주십시오. <br>
                  <font color="#FF0000">(3) 각 유형마다 시간 제한이 있으므로 신속 정확하게 푸시기 바랍니다.<font color="#0000FF"> 
                  제한 시간내에 못 푸신 문제가 있더라도 자동으로 검사가 종료됩니다. 이점 유의해 주세요!</font></font><br>
                  <table width="300" border=1 bordercolordark=white bordercolorlight=black 
cellpadding=0 cellspacing=0>
                    <tr bgcolor="4BBCC0"> 
                      <td width="150"> 
                        <div align="center">인성 소요시간(문항)</div>
                      </td>
                      <td width="150"> 
                        <div align="center">지능 소요시간(문항)</div>
                      </td>
                    </tr>
                    <tr bgcolor="DAECFA"> 
                      <td> 
                        <div align="center">25분 (64문항)</div>
                      </td>
                      <td> 
                        <div align="center">35분 (30문항)</div>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <br>
          </td>
        </tr>
        <tr> 
          <td> 
            <table width="768" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td background="images/exam_quest_t.gif" height="29">&nbsp;<b><img src="images/blit_orange.gif" width="9" height="9"> 
                  답안지 기재 방법</b></td>
              </tr>
            </table>
          </td>
        </tr>
        <tr> 
          <td><br>
            <table width="740" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr> 
                <td bgcolor="FFFEF0">(1) 인성검사는 문제의 내용을 잘 읽은 후 '예라고 생각되면 ①번에, '아니오'라고 
                  생각되면 ②번에 체크하세요! <br>
                  (2) 지능검사도 마찬가지로 ① ~ ③번 중 가장 정확한 답이라고 생각하는 번호를 선택합니다.</td>
              </tr>
            </table>
            <br>
            ※ 예, 정답이 2번이라고 지적했을 때 </td>
        </tr>
        <tr> 
          <td> 
            <table width="450" border="1" cellspacing="0" cellpadding="0" bordercolor="#CCCCCC">
              <tr bgcolor="#FFFFFF"> 
                <td width="100"> 
                  <div align="center"><b>문제번호</b></div>
                </td>
                <td width="350"> 
                  <div align="center"><b>답안지 번호 </b></div>
                </td>
              </tr>
              <tr> 
                <td width="100" bgcolor="#FFFFFF"> 
                  <div align="center">1</div>
                </td>
                <td width="350" align="center" bgcolor="#FFFFFF"> 
                  <table width="300" border=1 bordercolordark=white bordercolorlight=black 
cellpadding=0 cellspacing=0>
                    <tr> 
                      <td width="75"> 
                        <div align="center"> 
                          <input type="radio" name="test01" value="01">
                        </div>
                      </td>
                      <td width="75"> 
                        <div align="center"> 
                          <input type="radio" name="test01" value="01" checked>
                        </div>
                      </td>
                      <td width="75"> 
                        <div align="center"> 
                          <input type="radio" name="test01" value="01">
                        </div>
                      </td>
                    </tr>
                    <tr> 
                      <td width="75"><img src="images/sample_no1_img.gif" width="75" height="50"></td>
                      <td width="75"><img src="images/sample_no2_img.gif" width="75" height="50"></td>
                      <td width="75"><img src="images/sample_no3_img.gif" width="75" height="50"></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      <br>
      <table width="768" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr> 
          <td> 
            <div align="center"><img src="images/start_button.gif" width="156" height="53" usemap="#Map" border="0"></div>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<map name="Map">
  <area shape="rect" coords="8,2,152,51" href="insert.asp">
</map>
</body>
</html>
