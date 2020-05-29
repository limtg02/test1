<%
gotest1=rs0("test36")
chktest1=split(gotest1,",")
if len(rs0("test36"))=10 then
test36_a=chktest1(0)
test36_b=ltrim(chktest1(1))
test36_c=ltrim(chktest1(2))
select case test36_a
case "01"
test36_1="01"
case "02"
test36_2="02"
case "03"
test36_3="03"
end select
select case test36_b
case "01"
test36_1="01"
case "02"
test36_2="02"
case "03"
test36_3="03"
end select
select case test36_c
case "01"
test36_1="01"
case "02"
test36_2="02"
case "03"
test36_3="03"
end select
end if
if len(rs0("test36"))=6 then
test36_a=chktest1(0)
test36_b=ltrim(chktest1(1))
select case test36_a
case "01"
test36_1="01"
case "02"
test36_2="02"
case "03"
test36_3="03"
end select
select case test36_b
case "01"
test36_1="01"
case "02"
test36_2="02"
case "03"
test36_3="03"
end select
end if
if len(rs0("test36"))=2 then
test36_a=gotest1
select case test36_a
case "01"
test36_1="01"
case "02"
test36_2="02"
case "03"
test36_3="03"
end select
end if

gotest2=rs0("test39")
chktest2=split(gotest2,",")
if len(rs0("test39"))=6 then
test39_a=chktest2(0)
test39_b=ltrim(chktest2(1))
select case test39_a
case "01"
test39_1="01"
case "02"
test39_2="02"
end select
select case test39_b
case "01"
test39_1="01"
case "02"
test39_2="02"
end select
end if
if len(rs0("test39"))=2 then
test39_a=gotest2
select case test39_a
case "01"
test39_1="01"
case "02"
test39_2="02"
end select
end if

gotest3=rs0("test41")
chktest3=split(gotest3,",")
if len(rs0("test41"))=18 then
test41_a=chktest3(0)
test41_b=ltrim(chktest3(1))
test41_c=ltrim(chktest3(2))
test41_d=ltrim(chktest3(3))
test41_e=ltrim(chktest3(4))
select case test41_a
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_b
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_c
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_d
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_e
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
end if
if len(rs0("test41"))=14 then
test41_a=chktest3(0)
test41_b=ltrim(chktest3(1))
test41_c=ltrim(chktest3(2))
test41_d=ltrim(chktest3(3))
select case test41_a
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_b
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_c
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_d
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
end if
if len(rs0("test41"))=10 then
test41_a=chktest3(0)
test41_b=ltrim(chktest3(1))
test41_c=ltrim(chktest3(2))
select case test41_a
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_b
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_c
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
end if
if len(rs0("test41"))=6 then
test41_a=chktest3(0)
test41_b=ltrim(chktest3(1))
select case test41_a
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
select case test41_b
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
end if
if len(rs0("test41"))=2 then
test41_a=gotest3
select case test41_a
case "01"
test41_1="01"
case "02"
test41_2="02"
case "03"
test41_3="03"
case "04"
test41_4="04"
case "05"
test41_5="05"
end select
end if
%>