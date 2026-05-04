Create table Rm_baleisstmp
(
lotno smallint null,
lotdate datetime null,
varcode varchar(10) null,
baleno decimal(5,0) null,
baleweight decimal(18,3) null,
Transflag varchar(1) null,
divcode varchar(2) null,

)

alter table rm_param 
add PortSelection varchar(2) null

