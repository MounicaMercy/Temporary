create procedure proc_insert(@name varchar(50))
as begin
insert into UserDetails(Name) values (@name)
end
exec proc_insert 'user'

alter procedure proc_insertpatient(@patientname varchar(50),@status varchar(50),@datetime datetime)
as begin
insert into Patient(PatientName,Status,TodaysDate) values (@patientname,@status,@datetime)
end
exec proc_insertpatient 'MONA','Joined'

create procedure  proc_DeleteCuredUser(@status varchar(50),@patientname varchar(50))
as begin
delete from Patient where PatientName=@patientname and Status=@status
end
create procedure proc_UpdateUserStatus(@patientname varchar(50))
as begin
update Patient set Status='Cured' where PatientName=@patientname
end