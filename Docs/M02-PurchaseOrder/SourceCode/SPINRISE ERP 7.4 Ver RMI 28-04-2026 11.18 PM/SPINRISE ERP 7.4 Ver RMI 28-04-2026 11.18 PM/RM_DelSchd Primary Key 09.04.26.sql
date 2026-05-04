
alter table RM_DELSCHED alter column Divcode varchar(2) not null
alter table RM_DELSCHED alter column CONTNO varchar(10) not null
alter table RM_DELSCHED alter column CONTDATE [datetime] not null
alter table RM_DELSCHED alter column DELDATE [datetime] not null
alter table RM_DELSCHED alter column varcode varchar(10) not null

alter table RM_DELSCHED  add Primary Key(Divcode,CONTNO,CONTDATE,DELDATE,varcode)
