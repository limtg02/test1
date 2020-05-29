<%
gotest=rs0("test45")
chktest=split(gotest,",")
if len(rs0("test45"))=14 then
test45_a=chktest(0)
test45_b=ltrim(chktest(1))
test45_c=ltrim(chktest(2))
test45_d=ltrim(chktest(3))
select case test45_a
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
select case test45_b
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
select case test45_c
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
select case test45_d
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
end if
if len(rs0("test45"))=10 then
test45_a=chktest(0)
test45_b=ltrim(chktest(1))
test45_c=ltrim(chktest(2))
select case test45_a
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
select case test45_b
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
select case test45_c
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
end if
if len(rs0("test45"))=6 then
test45_a=chktest(0)
test45_b=ltrim(chktest(1))
select case test45_a
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
select case test45_b
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
end if
if len(rs0("test45"))=2 then
test45_a=gotest
select case test45_a
case "01"
test45_1="01"
case "02"
test45_2="02"
case "03"
test45_3="03"
case "04"
test45_4="04"
end select
end if
%>