
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center"> 
      <table bgcolor=white border=1 bordercolordark=white bordercolorlight=black 
cellpadding=0 cellspacing=0 width="640">
              <tbody> 
              <tr> 
                <td bgcolor=CFC8FE width=70 height="27"> 
                  <p align=center><font size="2">회원코드</font></p>
                </td>
                <td width=90 height="27"> 
                  <p><font size=2><%=rs0("p_id")%></font></p>
                </td>
                <td bgcolor=CFC8FE width=70 height="27"> 
                  <p align=center><font size=2>검 사 일</font></p>
                </td>
                <td width=100 height="27"> 
                  <p><font size=2><%=rs0("p_startdate")%></font></p>
                </td>
                <td rowspan=3 width=230> 
                  
            <p align=center>지능</p>
                </td>
                <td width=80 height="27" bgcolor="CFC8FE"> 
                  <p align=center><font size=2>확 &nbsp;&nbsp;인</font></p>
                </td>
              </tr>
              <tr> 
                <td bgcolor=CFC8FE width=70 height="21"> 
                  <p align=center><font size=2>성 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;명</font></p>
                </td>
                <td width=90 height="21"> 
                  <p><font size=2><%=rs0("p_name")%></font></p>
                </td>
                <td bgcolor=CFC8FE width=70 height="21"> 
                  <p align=center><font size=2>소 &nbsp;&nbsp;&nbsp;&nbsp;속</font></p>
                </td>
                <td width=100 height="21"> 
                  <p><font size=2>적성검사</font></p>
                </td>
                <td rowspan=2 width=80> 
                  <p align=center><img src="../../images/stamp_img.gif" width="46" height="44"></p>
                </td>
              </tr>
              <tr> 
                <td bgcolor=CFC8FE width=70> 
                  <p align=center><font size=2>학년(나이)</font></p>
                </td>
                <td width=90> 
                  <p><font size=2><%select case rs0("p_age")%><%case "01"%>3~4세<%case "02"%>5~6세<%case "03"%>7~8세<%case else%><%=rs0("p_age")%><%end select%> </font></p>
                </td>
                <td bgcolor=CFC8FE width=70> 
                  <p align=center><font size=2>전화번호</font></p>
                </td>
                <td width=100> 
                  <p><font size=2>02-123-1234</font></p>
                </td>
              </tr>
              </tbody>
            </table>
          
      <div align="left">
        <table width="640" border="0" cellspacing="0" cellpadding="0" align="center">
          <tr>
            <td>
              <div align="center"><img src="../../images/no16035_edu_t.gif" width="484" height="25"></div>
            </td>
          </tr>
        </table>
        <table bgcolor=white border=1 bordercolordark=white bordercolorlight=black 
cellpadding=0 cellspacing=0 width="640" align="center">
          <tr> 
            <td rowspan="2" width="139"> 
              <div align="center">적 응 적 성<br>
                계 열 순 위</div>
            </td>
            <td width="162"> 
              <div align="center">적응 제1적성</div>
            </td>
            <td width="163"> 
              <div align="center">적응 제2적성</div>
            </td>
            <td width="166"> 
              <div align="center">적응 제3적성</div>
            </td>
          </tr>
          <tr> 
            <td width="162"> 
              <div align="center">미술계열 (326)</div>
            </td>
            <td width="163"> 
              <div align="center">0</div>
            </td>
            <td width="166"> 
              <div align="center">0</div>
            </td>
          </tr>
        </table>
        <br>
      </div>
      <div align="left"><img src="../../images/blink.gif" width="15" height="10"> 
        <table bgcolor=white border=1 bordercolordark=white bordercolorlight=black 
cellpadding=0 cellspacing=0 width="640" align="center">
          <tr> 
            <td colspan="2"> 
              <div align="center"><font size="2">系列適性</font></div>
            </td>
            <td width="40"> 
              <div align="center"><font size="2">기준점수</font></div>
            </td>
            <td width="40"> 
              <div align="center"><font size="2">받은점수</font></div>
            </td>
            <td width="40"> 
              <div align="center"><font size="2">적응순위</font></div>
            </td>
            <td> 
              <div align="center"><font size="2">관 련 학 과 </font></div>
            </td>
          </tr>
          <tr> 
            <td rowspan="7" width="20"> 
              <div align="center"><font size="2">인<br>
                성<br>
                계</font><br>
                <img src="../../images/jinro_munkwa_t_img.gif" width="15" height="46"> 
              </div>
            </td>
            <td width="120"> 
              <div align="center"><font size="2">경 상 계 열 </font></div>
            </td>
            <td width="40"> 
              <div align="center">118</div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>경영, 경제, 행정, 통계, 수학, 무역, 경영정보, 회계, 금융, 세무 등</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">법 정 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>법학, 정치외교, 정치학, 공법학, 사법학, 산업재산권학 등</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">어 문 계 열 </font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>영문, 중문, 서문, 독문, 노문, 불문, 일문, 외국어, 관광영어과, 관광일어과, 아랍어과, 아프리카어과, 체코어과 
              등 </td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">문 학 계 열 </font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>국문, 학국사, 언어, 문예창작 등</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">교 육 계 열 </font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>국어교육, 역사교육, 서양사, 영어교육, 교육학, 지리교육, 수학교육, 불어교육 등</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">사회과학계열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>사회학, 신문방송학, 언론정보학등 </td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">종 교 계 열 </font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>철학, 심리, 신학, 인간복지, 재활선굑, 선교영어, 아동복지, 종교학 등</td>
          </tr>
          <tr bgcolor="#000000"> 
            <td colspan="6"><img src="../../images/blink.gif" width="10" height="1"></td>
          </tr>
          <tr> 
            <td rowspan="7" width="20"> 
              <div align="center"><font size="2">자<br>
                연<br>
                계<br>
                </font><img src="../../images/jinro_ikwa_t.gif" width="15" height="40"></div>
            </td>
            <td width="120"> 
              <div align="center"><font size="2">공 학 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">의 학 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">자연과학계열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">약 학 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">농·수산계열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">가 정 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">교 육 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="6"> 
              <div align="center"><font size="2"></font></div>
            </td>
          </tr>
          <tr> 
            <td rowspan="4" width="20"> 
              <div align="center"><font size="2">예<br>
                능<br>
                계</font></div>
            </td>
            <td width="120"> 
              <div align="center"><font size="2">예 능 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> <font size="2">예 술 계 열</font></td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">미 술 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">음 악 계 열</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td colspan="6"> 
              <div align="center"><font size="2"></font></div>
            </td>
          </tr>
          <tr> 
            <td rowspan="3"> 
              <div align="center"><font size="2">체<br>
                육<br>
                계</font></div>
            </td>
            <td width="120"> 
              <div align="center"><font size="2">사 회 체 육</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">이 론 체 육</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
          <tr> 
            <td width="120"> 
              <div align="center"><font size="2">행 동 체 육</font></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td width="40"> 
              <div align="center"></div>
            </td>
            <td>&nbsp;</td>
          </tr>
        </table>
        <br>
      </div>
      <div align="center"><img src="../../images/blink.gif" width="10" height="8"><br>
        <img src="../../images/jinung_haesul_memo.gif" width="640" height="69"> <br>
        <img src="../../images/blink.gif" width="10" height="10"> 
        <table bgcolor=white border=1 bordercolordark=white bordercolorlight=black 
cellpadding=0 cellspacing=0 width="640">
          <tr bgcolor="CFC8FE"> 
            <td colspan="2" height="30"> 
              <div align="center"><b><font size="2">지 적 능 력 검 사 (知 能) 개 인 분 석 
                해 설 </font></b></div>
            </td>
          </tr>
          <tr> 
            <td width="40" bgcolor="4BBCC0"> 
              <div align="center"><font size="2" color="#006600">장점</font></div>
            </td>
            <td bgcolor="ECF6FC" height="120" valign="top"> 
              <p><font size="2">&nbsp;<%=haesul_01%> <%=haesul_02%></font> </p>
            </td>
          </tr>
          <tr> 
            <td width="40" bgcolor="4BBCC0"> 
              <div align="center"><font size="2" color="#FF0000">단점</font></div>
            </td>
            <td bgcolor="ECF6FC" height="120" valign="top"><font size="2">&nbsp;<%=haesul_03%> 
              <%=haesul_04%></font></td>
          </tr>
          <tr> 
            <td width="40" bgcolor="4BBCC0"> 
              <div align="center"><font size="2">종합</font></div>
            </td>
            <td bgcolor="ECF6FC" height="60" valign="top"><font size="2">&nbsp;인성면에서 
              <%chkno1=0 
				if knmyunscore>69 and knmyunscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%if chekscore>69 and chekscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%if hyupscore>69 and hyupscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%if jajuscore>69 and jajuscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%if junscore>69 and junscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%if jidoscore>69 and jidoscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%if jipscore>69 and jipscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%if jungscore>69 and jungscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%if gamscore>69 and gamscore < 80 then
				 chkno1=chkno1+1
				 end if%>
              <%chkno = 0 
				if knmyunscore>79 then
				chkno=chkno+1%>
              근면성 
              <%end if%>
              <%if chekscore>79 then
				 chkno=chkno+1%>
              책임감 
              <%end if%>
              <%if hyupscore>79 then
				 chkno=chkno+1%>
              협동성 
              <%end if%>
              <%if jajuscore>79 then
				 chkno=chkno+1%>
              자주성 
              <%end if%>
              <%if junscore>79 then
				 chkno=chkno+1%>
              준법성 
              <%end if%>
              <%if jidoscore>79 then
				 chkno=chkno+1%>
              지도성 
              <%end if%>
              <%if jipscore>79 then
				 chkno=chkno+1%>
              집중력 
              <%end if%>
              <%if jungscore>79 then
				 chkno=chkno+1
				 q=1%>
              정서상태 
              <%end if%>
              <%if gamscore>79 then
				 chkno=chkno+1
				 q=2%>
              감정상태
              <%end if%>
              <%if chkno1>0 and chkno>0 then%>
              <%if q=1 or q=2 then%>
              는
              <%else%>
              은
              <%end if%>
              우수하고 
              <%else%>
              <%if chkno1=0 then%>
              <%if q=1 or q=2 then%>
              는
              <%else%>
              은
              <%end if%>
              우수하나, 
              <%end if%>
              <%end if%>
              <%if knmyunscore>69 and knmyunscore < 80 then%>
              근면성 
              <%end if%>
              <%if chekscore>69 and chekscore < 80 then%>
              책임감 
              <%end if%>
              <%if hyupscore>69 and hyupscore < 80 then%>
              협동성 
              <%end if%>
              <%if jajuscore>69 and jajuscore < 80 then%>
              자주성 
              <%end if%>
              <%if junscore>69 and junscore < 80 then%>
              준법성 
              <%end if%>
              <%if jidoscore>69 and jidoscore < 80 then%>
              지도성 
              <%end if%>
              <%if jipscore>69 and jipscore < 80 then%>
              집중력 
              <%end if%>
              <%if jungscore>69 and jungscore < 80 then
				q=3%>
              정서상태 
              <%end if%>
              <%if gamscore>69 and gamscore < 80 then
				q=4%>
              감정상태
              <%end if%>
              <%if chkno1>0 then%>
              <%if q=3 or q=4 then%>
              는
              <%else%>
              은
              <%end if%>
              양호하나, 
              <%end if%>
              <%=haesul_05%> <br>
              </font></td>
          </tr>
        </table>
      </div>
    </td>
  </tr>
</table>
</body>
</html>
