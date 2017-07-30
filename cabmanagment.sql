use CabHireProject;

ALTER TABLE drive
ADD DriverType varchar(20);

alter proc sp_CreateUserTable1
@userNameTable varchar(20)
as
DECLARE @SQLString NVARCHAR(MAX)
begin
SET @SQLString = 'CREATE TABLE '+@userNameTable +  ' (SerialNo int identity primary key , FirstName varchar(20), LastName varchar(20),UserName varchar(10), EmailId varchar(50), PhoneNo varchar(50), StartingLoc varchar(30), Destinatin varchar(30), DriverBooked varchar(30), CabNoBooked varchar(30),Typeofcab varchar(30),EielId varchar(30),);'
EXEC (@SQLString)
end 

execute sp_CreateUserTable1 'hiii'
select * from CabDatabase_Admin

insert into RegistrationData values 
('Ayush','Kumar','aykum','ayushkumar@gmail.com','ayush','Male',16,'March',1996,'9416468895');
select 
* from RegistrationData;


create proc sp_emailValidation
@emailval varchar(50),
@valresult varchar(5) out
as
begin
  select @valresult = count(*) from RegistrationData where EmailId=@emailval and ;
end

declare @output varchar(5)
execute sp_emailValidation 'ayus@gmail.com', @output output
print @output




alter Proc sp_registration
@FirstName varchar(20),
@LastName varchar(20),
@Username varchar(10),
@EmailId varchar(50),
@pass varchar(30),
@gender varchar(10),
@DOBday int,
@DOBmounth varchar(20),
@DOByear int,
@PhoneNo varchar(50)
as
Begin
   insert into RegistrationData values( @FirstName,@LastName,@Username,@EmailId,@pass,@gender,@DOBday,@DOBmounth,@DOByear,@PhoneNo);
End 


create table RegistrationData5 (CustmID int identity primary key, FirstName varchar(20), LastName varchar(20),UserName varchar(10), EmailId varchar(50), Pass varchar(30), Gender varchar(10), DOBday int, DOBmounth varchar(20),DOByear int, PhoneNo varchar(50) );


create proc sp_CreateUserTable1
@userNameTable varchar(10)
as
DECLARE @SQLString NVARCHAR(MAX)
begin
SET @SQLString = 'CREATE TABLE ' + @userNameTable +  '(CustmID int identity primary key, FirstName varchar(20), LastName varchar(20),UserName varchar(10), EmailId varchar(50), Pass varchar(30), Gender varchar(10), DOBday int, DOBmounth varchar(20),DOByear int, PhoneNo varchar(50));'
EXEC (@SQLString)
end 

execute sp_CreateUserTable1 'aman'

ALTER proc sp_ValidationEmailUsername
@emailval varchar(50),
@usernameval varchar(10),
@valresult varchar(5) out
as
begin
  select @valresult = count(*) from RegistrationData where ( Username = @usernameval or @usernameval is null) or (EmailId=@emailval or @emailval is null )  ;
end

---
declare @output varchar(5)
execute sp_ValidationEmailUsername'nishu@gmail.com','nkmr', @output output
print @output

-----
select * from RegistrationData


create proc sp_ValidateUserIdPassword
@emailID varchar(50) or null,
@password varchar(30),
@validationResult varchar(5) out
as
begin
    select @validationResult = count(*) from RegistrationData where EmailId = @emailID  and Pass =@password;
	end

declare @output varchar(5)
execute sp_ValidateUserIdPassword 'ayushkumar@gmail.com','ayush', @output output
print @output


alter proc sp_ValidateUserIdPassword2
@emailID varchar(50),
@password varchar(30),
@validationResult varchar(5) out
as
begin
    select @validationResult = count(*) from RegistrationData where ( EmailId = @emailID or @emailID is null or UserName = @emailID or @emailID is null ) and Pass =@password;
	end

	declare @output varchar(5)
execute sp_ValidateUserIdPassword2 'ayushkumar@gmail.com','ayush', @output output
print @output

alter table CabDatabase_Admin (DriverName varchar(30),CabNum varchar(10), EielID varchar(20), Starting varchar(30), Destin varchar (30), Typeofcab varchar(20), EmailID varchar(50),ContactNum varchar(20) )

ALTER TABLE rkumar
ADD SerialNo int identity primary key 

insert into CabDatabase_Admin values ('amioni','DDSBK1459','EIL-1884','Sector15','Sector18','EileXL','abons@gmail.com','8486382365','ROAD ROAMERS')
delete from CabDatabase_Admin where DriverName = 'oni'
select * from 
 CabDatabase_Admin

alter proc sp_CabDataAddition
@driverName varchar(30),
@cabNum varchar(10), 
@eielID varchar(20),
@starting varchar(30), 
@destin varchar (30),
@typeofcab varchar(20), 
@emailID varchar(50),
@contactNum varchar(20) 
as

begin
insert into CabDatabase_Admin values(@driverName,@cabNum,@eielID,@starting,@destin,@typeofcab,@emailID,@contactNum,'EIEL VERIFIED');
end

alter proc sp_CabDataDeletion
@eielIdOrCabnum varchar(50),
@delresult varchar(5) out
as
begin

 select @delresult= COUNT(*) from CabDatabase_Admin where (EielID=@eielIdOrCabnum or @eielIdOrCabnum is null) or(CabNum=@eielIdOrCabnum or @eielIdOrCabnum is null);
 delete from CabDatabase_Admin where (EielID=@eielIdOrCabnum or @eielIdOrCabnum is null ) or (CabNum =@eielIdOrCabnum or @eielIdOrCabnum is null);
 end

 	declare @output varchar(5)
execute sp_CabDataDeletion 'DL5SBK1559', @output output
print @output

delete from CabDatabase_Admin where Starting = 'Source';

create proc sp_CabDataUpdateSearch
@eielIdOrCabnum varchar(20),
@outsource varchar(30) out,
@outdestination varchar(30) out
as
begin 
select @outsource = Starting from CabDatabase_Admin where (EielID = @eielIdOrCabnum or @eielIdOrCabnum is null) or (CabNum= @eielIdOrCabnum or @eielIdOrCabnum is null) ;
select @outdestination = Destin from CabDatabase_Admin where (EielID = @eielIdOrCabnum or @eielIdOrCabnum is null) or (CabNum= @eielIdOrCabnum or @eielIdOrCabnum is null) ;
end

 	declare @output varchar(30)
	declare @output2 varchar(30)
execute sp_CabDataUpdateSearch 'DL5SBK1509', @output output ,@output2 output;
print @output
print @output2

create proc sp_CabDataUpdateByAdmin
@cabtoupdate varchar(10),
@newsource varchar(30),
@newdestination varchar(30),
@updateresult varchar(5) out
as
begin
update CabDatabase_Admin set Starting = @newsource , Destin= @newdestination where (EielID = @cabtoupdate or @cabtoupdate is null) or (CabNum= @cabtoupdate or @cabtoupdate is null);
select  @updateresult= count(*) from CabDatabase_Admin where (EielID = @cabtoupdate or @cabtoupdate is null) or (CabNum= @cabtoupdate or @cabtoupdate is null);
end

 	declare @output varchar(5)
execute sp_CabDataUpdateByAdmin 'DL5SBK1509','Sector15','Sector18', @output output ;
print @output

----------------------------------------------create trigers---------------------------------------------------------------------------------------

create table CabDatabase_Admin_AuditTable ( DriverName varchar(30),CabNum varchar(10), EielID varchar(20), Starting varchar(30), Destin varchar (30), Typeofcab varchar(20), EmailID varchar(50),ContactNum varchar(20) , UpdatedOn varchar(30), ActionPerf varchar(20))

create trigger tr_CabDatabase_Admin_forInsert
on CabDatabase_Admin
for insert
as
begin
declare @driverName varchar(30)
declare @cabNum varchar(10)
declare @eielID varchar(20)
declare @starting varchar(30) 
declare @destin varchar (30)
declare @typeofcab varchar(20) 
declare @emailID varchar(50)
declare @contactNum varchar(20) 

select @driverName = DriverName from inserted
select @cabNum = CabNum from inserted
select @eielID =  EielID from inserted
select @starting =  Starting from inserted
select @destin =  Destin from inserted
select @typeofcab =  Typeofcab from inserted
select @emailID =  EmailID from inserted
select @contactNum =  ContactNum from inserted


insert into CabDatabase_Admin_AuditTable values (@driverName,@cabNum,@eielID,@starting,@destin,@typeofcab,@emailID,@contactNum,GETDATE(),'ADDED')	
end

select*from CabDatabase_Admin_AuditTable

create trigger tr_CabDatabase_Admin_forDelete
on CabDatabase_Admin
for delete
as
begin
declare @driverName varchar(30)
declare @cabNum varchar(10)
declare @eielID varchar(20)
declare @starting varchar(30) 
declare @destin varchar (30)
declare @typeofcab varchar(20) 
declare @emailID varchar(50)
declare @contactNum varchar(20) 

select @driverName = DriverName from deleted
select @cabNum = CabNum from deleted
select @eielID =  EielID from deleted
select @starting =  Starting from deleted
select @destin =  Destin from deleted
select @typeofcab =  Typeofcab from deleted
select @emailID =  EmailID from deleted
select @contactNum =  ContactNum from deleted


insert into CabDatabase_Admin_AuditTable values (@driverName,@cabNum,@eielID,@starting,@destin,@typeofcab,@emailID,@contactNum,GETDATE(),'DELETED')	
end

select*from CabDatabase_Admin_AuditTable

delete from CabDatabase_Admin where DriverName= 'Prashan';



create trigger tr_CabDatabase_Admin_forUpdate
on CabDatabase_Admin
for update
as
begin

declare @driverName varchar(30)
declare @cabNum varchar(10)
declare @eielID varchar(20)
declare @starting varchar(30) 
declare @destin varchar (30)
declare @typeofcab varchar(20) 
declare @emailID varchar(50)
declare @contactNum varchar(20)
declare @OldStarting varchar(30) 
declare @OldDestin varchar (30) 

select @driverName = DriverName from inserted
select @cabNum = CabNum from inserted
select @eielID =  EielID from inserted
select @starting =  Starting from inserted
select @destin =  Destin from inserted
select @typeofcab =  Typeofcab from inserted
select @emailID =  EmailID from inserted
select @contactNum =  ContactNum from inserted


select @OldStarting =  Starting from deleted
select @OlDdestin =  Destin from deleted
		
		if(@starting<>@OldStarting)
			insert into CabDatabase_Admin_AuditTable values (@driverName,@cabNum,@eielID,@starting,@destin,@typeofcab,@emailID,@contactNum,GETDATE(),'UPDATED')	
		if(@destin <> @OlDdestin)
			insert into CabDatabase_Admin_AuditTable values (@driverName,@cabNum,@eielID,@starting,@destin,@typeofcab,@emailID,@contactNum,GETDATE(),'UPDATED')	
end



insert into CabDatabase_Admin values ('khain','ALDSBK1539','EIL-2100','Sector16','Sector16','EileXL','khain@gmail.com','5226502365')

execute sp_CabDataAddition 'khain','ALDSBK1539','EIL-2100','Sector16','Sector16','EileXL','khain@gmail.com','5226502365'

select * from CabDatabase_Admin

update CabDatabase_Admin set Destin ='Sector16', Starting = 'Sector18' where DriverName ='Prashan'


------------------------------------------create trigers--------------------------------------------------------------------------------------------

alter proc sp_SearchUserForAdmin
@tablename varchar(20),
@result varchar(20) out

begin
SELECT @result= (name) FROM sys.Tables where name =@tablename
end


create proc sp_SearchDriversForAdmin
@Cabno varchar(20),
@result varchar(20) out
as
begin
SELECT @result= (CabNo) FROM DriverRegistrationData where CabNo =@Cabno
end



declare @output varchar(10)
execute sp_SearchDriversForAdmin 'zz5SB5655',@output out
print @output


select * from DriverRegistrationData
--------------------------------------------------USER CONTROLS AND SP(S)----------------------------------------------------------------------

alter proc sp_FetchCabDetailAcUser
@yourloc varchar(30),
@yourdestin varchar(30),
@result varchar(5) output,
@result1 varchar(5) output
as
declare @tempEileID varchar(10)
declare @tempDestin varchar(30)
declare @LoopCounter int
declare @MaxEmployeeId int
SELECT @LoopCounter = min(SerialNo) , @MaxEmployeeId = max(SerialNo) FROM CabDatabase_Admin

begin

select @result = COUNT(*) from CabDatabase_Admin where Starting = @yourloc
create table #temptable (EielId_Temp varchar(20) , Destin_Temp varchar(30) );
while ( @LoopCounter <= @MaxEmployeeId )
begin
	select @tempEileID = EielID from CabDatabase_Admin where SerialNo = @LoopCounter  and Starting = @yourloc
	select @tempDestin = Destin from CabDatabase_Admin where SerialNo = @LoopCounter and Starting = @yourloc

	insert into #temptable values (@tempEileID,@tempDestin)

	
	set @LoopCounter = @LoopCounter+1
end
;
WITH #temptableCTE AS
(
   SELECT *, ROW_NUMBER()OVER(PARTITION BY EielId_Temp ORDER BY EielId_Temp) AS RowNumber
   FROM #temptable
)
DELETE FROM #temptableCTE WHERE RowNumber > 1


    --select * from #temptable
	select @result1 = COUNT(*) from #temptable where Destin_Temp = @yourdestin
end



select DriverName, CabNum,Typeofcab,EmailID,ContactNum from CabDatabase_Admin

declare @resut varchar(5)
declare @resut1 varchar(5)
execute sp_FetchCabDetailAcUser'Sector15','Sector18',@resut out,@resut1 out
print @resut
print @resut1

select * from CabDatabase_Admin 

alter proc sp_BookTheCab_DelfromDB_AddInUserDB2
@CabNOtoBook varchar(20),
@username varchar(20),
@result varchar(20) out
as
DECLARE @SQLString VARCHAR(MAX)
--DECLARE @custmid int
DECLARE @firstname VARCHAR(MAX)
DECLARE @lastnmae VARCHAR(MAX)
DECLARE @userid VARCHAR(MAX)
DECLARE @email VARCHAR(MAX)
DECLARE @phoneno VARCHAR(MAX)
DECLARE @startloc VARCHAR(MAX)
DECLARE @destin VARCHAR(MAX)
DECLARE @driverbooked VARCHAR(MAX)
DECLARE @cabnobooked VARCHAR(MAX)
DECLARE @typeofcab VARCHAR(MAX)
DECLARE @eileId VARCHAR(MAX)

select * from RegistrationData

begin
-- (EielID = @cabtoupdate or @cabtoupdate is null) or (CabNum= @cabtoupdate or @cabtoupdate is null);
--select @custmid = (CustmId) from RegistrationData where UserName = @username;
select @firstname = (FirstName) from RegistrationData where ( UserName = @username or @username is null) or (EmailID= @username or @username is null);
select @lastnmae = (LastName) from RegistrationData where  ( UserName = @username or @username is null) or (EmailID= @username or @username is null);
select @userid = (UserName) from RegistrationData where  ( UserName = @username or @username is null) or (EmailID= @username or @username is null);
select @email = (EmailId) from CabDatabase_Admin where CabNum = @CabNOtoBook;
select @phoneno = (ContactNum) from CabDatabase_Admin where CabNum = @CabNOtoBook;;
select @startloc = (Starting) from CabDatabase_Admin where CabNum = @CabNOtoBook;
select @destin = (Destin) from CabDatabase_Admin where CabNum = @CabNOtoBook;
select @driverbooked = (DriverName) from CabDatabase_Admin where CabNum = @CabNOtoBook;
select @cabnobooked = (CabNum) from CabDatabase_Admin where CabNum = @CabNOtoBook;
select @typeofcab = (Typeofcab) from CabDatabase_Admin where CabNum = @CabNOtoBook;
select @eileId = (EielID) from CabDatabase_Admin where CabNum = @CabNOtoBook;

set @SQLString = 'insert into '+ @userid+ ' values('+ CHAR(39) + @firstname +CHAR(39)+','+CHAR(39)+@lastnmae+CHAR(39)+','+CHAR(39)+@userid+CHAR(39)+','+CHAR(39)+@email+CHAR(39)+','+CHAR(39)+@phoneno+CHAR(39)+','+CHAR(39)+@startloc+CHAR(39)+','+CHAR(39)+@destin+CHAR(39)+','+CHAR(39)+@driverbooked+CHAR(39)+','+CHAR(39)+@cabnobooked+CHAR(39)+','+CHAR(39)+@typeofcab+CHAR(39)+','+CHAR(39)+@eileId+CHAR(39)+');'

EXEC (@SQLString)
delete from CabDatabase_Admin where CabNum = @CabNOtoBook;

select @result = count(*) from CabDatabase_Admin where @eileId = (EielID);
end 
 


 declare @resulr varchar(10)
execute sp_BookTheCab_DelfromDB_AddInUserDB2 'BR1M0073','rkumar',@resulr out
print @resulr


select * from CabDatabase_Admin

DELETE TOP (1)
FROM   rkumar



-----------------------------alter proc sp_FetchCabDetailAcUser------*VERY INPORTANT*------------------

create proc sp_FetchCabDetailAcUser_NewLogic
@yourloc varchar(30),
@yourdestin varchar(30),
@result varchar(5) output,
@result1 varchar(5) output
as
declare @tempEileID varchar(10)
declare @tempDestin varchar(30)
declare @LoopCounter int
declare @MaxEmployeeId int
SELECT @LoopCounter = min(SerialNo) , @MaxEmployeeId = max(SerialNo) FROM CabDatabase_Admin

begin

select @result = COUNT(*) from CabDatabase_Admin where Starting = @yourloc
create table #temptable (EielId_Temp varchar(20) , Destin_Temp varchar(30) );
while ( @LoopCounter <= @MaxEmployeeId )
begin
	select @tempEileID = EielID from CabDatabase_Admin where SerialNo = @LoopCounter  and Starting = @yourloc
	select @tempDestin = Destin from CabDatabase_Admin where SerialNo = @LoopCounter and Starting = @yourloc

	insert into #temptable values (@tempEileID,@tempDestin)

	
	set @LoopCounter = @LoopCounter+1
end
;
WITH #temptableCTE AS
(
   SELECT *, ROW_NUMBER()OVER(PARTITION BY EielId_Temp ORDER BY EielId_Temp) AS RowNumber
   FROM #temptable
)
DELETE FROM #temptableCTE WHERE RowNumber > 1


    --select * from #temptable
	select @result1 = COUNT(*) from #temptable where Destin_Temp = @yourdestin
end


declare @resut varchar(5)
declare @resut1 varchar(5)
execute sp_FetchCabDetailAcUser'Sector15','Sector15',@resut out,@resut1 out
print @resut
print @resut1

select * from CabDatabase_Admin


create proc sp_CanclelCabFromUserDB

@cancelcabSno varchar(20),
@usertablename varchar(20),
@result varchar(20) output
as
DECLARE @QUERY_STRING1 VARCHAR(MAX)
DECLARE @QUERY_STRING2 VARCHAR(MAX)
DECLARE @QUERY_STRING3 VARCHAR(MAX)

begin

SET @QUERY_STRING1 =
'INSERT INTO CabDatabase_Admin (DriverName, CabNum, EielID, Starting,Destin,Typeofcab,EmailId,ContactNum)
SELECT DriverBooked , CabNoBooked, EielId,StartingLoc,Destinatin,Typeofcab,EmailId,PhoneNo
FROM '+@usertablename+
' WHERE SerialNo = '+CHAR(39)+@cancelcabSno+CHAR(39)
SET @QUERY_STRING2 =
'delete '+@usertablename+' where SerialNo = '+CHAR(39)+@cancelcabSno+CHAR(39)

--SET @QUERY_STRING3 =
--'Select @result1 = count(SerialNo) from '+@usertablename+' where SerialNo = '+CHAR(39)+@cancelcabSno+CHAR(39)

EXEC (@QUERY_STRING1)
EXEC (@QUERY_STRING2)
EXEC (@QUERY_STRING3)
set @result = 1

end

drop proc sp_CanclelCabFromUserDB

declare @result varchar(10) 
execute sp_CanclelCabFromUserDB '22','amnrjn',@result out
print @result


select * from CabDatabase_Admin
SELECT* from amnrjn


create proc sp_toStoreUserNameFromSesson
@emailIDorUsername varchar (30),
@forsesson varchar (20) output
as
begin
	select @forsesson = UserName from RegistrationData where ( EmailId = @emailIDorUsername or @emailIDorUsername is null or UserName = @emailIDorUsername or @emailIDorUsername is null )
	
end	

declare @result  varchar(10)
execute sp_toStoreUserNameFromSesson 'rkumar@gmail.com',@result out
print @result

select * from rkumar

declare @result2 varchar(10)
  select @result2 = COUNT(*)from rkumar where EielId = 'EIL-875'
  PRINT @result2


--------------------------------------CREATING USER TABLE TRIGER----------------------------------------------------

SELECT * FROM rkumar

alter proc sp_CreateUserTable_Trigger1
@cretetable_triger varchar(30)
AS
BEGIN
DECLARE @SQLSTATEMENT_TOCREATETRIGGER_ADDED NVARCHAR(MAX)
DECLARE @SQLSTATEMENT_TOCREATETABLE NVARCHAR(MAX)
DECLARE @SQLSTATEMENT_TOCREATETRIGGER_DELETED NVARCHAR(MAX)

SET @SQLSTATEMENT_TOCREATETABLE = '
create table '+@cretetable_triger+'UserTgr ( UserName varchar(30), PhoneNo varchar (30), StartingLoc varchar(30), Destination varchar(50),DriverBooked varchar(20) , CabNoBooked varchar(30), Typeofcab varchar(20) , EielId varchar(10), UpdatedOn varchar(30), Status varchar(20))'

SET @SQLSTATEMENT_TOCREATETRIGGER_ADDED='

create trigger tr_'+@cretetable_triger+'_forInsert
on '+@cretetable_triger+'
for insert
as
begin
declare @UserName varchar(20)
declare @PhoneNo varchar (30)
declare @StartingLoc varchar (30)
declare @Destinatin varchar(30) 
declare @DriverBooked varchar(50)
declare @CabNoBooked varchar(20) 
declare @Typeofcab varchar(20) 
declare @EielId varchar(20) 
declare @UpdatedOn varchar(30) 
declare @ActionPerf varchar(20) 


select @UserName = UserName from inserted
select @PhoneNo = PhoneNo from inserted
select @StartingLoc =  StartingLoc from inserted
select @Destinatin =  Destinatin from inserted
select @DriverBooked =  DriverBooked from inserted
select @CabNoBooked =  CabNoBooked from inserted
select @Typeofcab =  Typeofcab from inserted
select @EielId =  EielId from inserted


insert into '+@cretetable_triger+'UserTgr values (@UserName,@PhoneNo,@StartingLoc,@Destinatin,@DriverBooked,@CabNoBooked,@Typeofcab,@EielId,GETDATE(),'+CHAR(39)+'BOOKED'+CHAR(39)+')	
end'

SET @SQLSTATEMENT_TOCREATETRIGGER_DELETED = '

create trigger tr_'+@cretetable_triger+'_forDelete
on '+@cretetable_triger+'
for delete
as
begin
declare @UserName varchar(20)
declare @PhoneNo varchar (30)
declare @StartingLoc varchar (30)
declare @Destinatin varchar(30) 
declare @DriverBooked varchar(50)
declare @CabNoBooked varchar(20) 
declare @Typeofcab varchar(20) 
declare @EielId varchar(20) 
declare @UpdatedOn varchar(30) 
declare @ActionPerf varchar(20) 


select @UserName = UserName from deleted
select @PhoneNo = PhoneNo from deleted
select @StartingLoc =  StartingLoc from deleted
select @Destinatin =  Destinatin from deleted
select @DriverBooked =  DriverBooked from deleted
select @CabNoBooked =  CabNoBooked from deleted
select @Typeofcab =  Typeofcab from deleted
select @EielId =  EielId from deleted


insert into '+@cretetable_triger+'UserTgr values (@UserName,@PhoneNo,@StartingLoc,@Destinatin,@DriverBooked,@CabNoBooked,@Typeofcab,@EielId,GETDATE(),'+CHAR(39)+'CANCELED'+CHAR(39)+')	
end'

EXEC(@SQLSTATEMENT_TOCREATETABLE)
EXEC(@SQLSTATEMENT_TOCREATETRIGGER_ADDED)
EXEC(@SQLSTATEMENT_TOCREATETRIGGER_DELETED)
END


execute sp_CreateUserTable_Trigger1'hiii'


select * from rkumar
select * from rkumarUserTgr

insert into rkumar values ('aman','kumar','rkumar','aman@gmail.com','8547965685','Sector18','Sector15','uokash','DLFD5046','EielXL','EIL-2221')
delete from hiii where UserName ='hiii'


----------------------------------Trigger for user table done ----------------------------------------------------------------




---------------------- store procedure to copy BOOKED CABS from user db to main db below--------------------

select*from RegistrationData

alter proc sp_AutoCabRemovalFromUserDBtoCabDBfor30MIn1
as
declare @QUERY_STRING_DIASBLE_TRIGGER NVARCHAR(MAX)
declare @CustmID_Temp int
declare @UserName_Temp NVARCHAR(MAX)
declare @LoopCounter int
declare @MaxCustomId int
SELECT @LoopCounter = min(CustmID) , @MaxCustomId = max(CustmID) FROM RegistrationData

BEGIN

--create table #temptable (UserName_Temp varchar(30),CustmID_Temp varchar(30));
while ( @LoopCounter <= @MaxCustomId )
begin
	select @UserName_Temp = UserName from RegistrationData where CustmID = @LoopCounter 
	select @CustmID_Temp = CustmID from RegistrationData where CustmID = @LoopCounter

	--insert into #temptable values (@UserName_Temp,@CustmID_Temp)
	SET @QUERY_STRING_DIASBLE_TRIGGER = '
	--ALTER TABLE table_name DISABLE TRIGGER tr_name
	alter table '+@UserName_Temp+' DISABLE TRIGGER tr_'+@UserName_Temp+'_forDelete
	INSERT INTO CabDatabase_Admin (DriverName, CabNum, EielID, Starting,Destin,Typeofcab,EmailId,ContactNum)
	SELECT DriverBooked , CabNoBooked, EielId,Destinatin,StartingLoc,Typeofcab,EmailId,PhoneNo
	FROM '+@UserName_Temp+'
	
	alter table '+@UserName_Temp+' ENABLE TRIGGER tr_'+@UserName_Temp+'_forDelete'

	EXEC(@QUERY_STRING_DIASBLE_TRIGGER)


	set @LoopCounter = @LoopCounter+1
	end

END

execute sp_AutoCabRemovalFromUserDBtoCabDBfor30MIn1


---------------------- store procedure to copy BOOKED CABS from user db to main db above--------------------




select * from rkumar


select * from CabDatabase_Admin

create proc sp_timecheck
as
begin
select*from RegistrationData
end

select concat('LHPL', id) as id, name from so;
-----------------------------------------------------------------------------------------------------------------------------------------------------

create table DriverRegistrationData_EIElGEN ( EielID int identity primary key ,username varchar(30))

create table DriverRegistrationData (FirstName varchar(20), LastName varchar(20),Username varchar(10), EmailId varchar(50), Pass varchar(30), Gender varchar(10), DOBday int, DOBmounth varchar(20),DOByear int, PhoneNo varchar(20) );

select * from DriverRegistrationData

alter Proc sp_DriverRegistrationData
@FirstName varchar(20),
@LastName varchar(20),
@Username varchar(10),
@EmailId varchar(50),
@pass varchar(30),
@gender varchar(10),
@DOBday int,
@DOBmounth varchar(20),
@DOByear int,
@PhoneNo varchar(50),
@cabNumber varchar(20),
@cabType varchar(20)
as
Begin
   insert into DriverRegistrationData values (@FirstName,@LastName,@Username,@EmailId,@pass,@gender,@DOBday,@DOBmounth,@DOByear,@PhoneNo,@cabNumber,@cabType)
End 


execute sp_DriverRegistrationData 'newraman','kumar','newrkmr','rkmr@ryh.com','7845','Male',06,'May',1996,'5487621302','zz5SB5655','EielXL'
execute sp_DriverRegistrationData 'chanan','kumyadaar','chkmr','chanan@ryh.com','44120','Male',06,'May',1996,'5487621302','PB-5S-BLK-5655'
execute sp_DriverRegistrationData 'dhubham','yadav','syadv','sydv@ryh.com','844420','Male',06,'May',1996,'5487621302','HR-5S-BLK-5655'

ALTER TABLE DriverRegistrationData
ADD CabNo varchar(20);

select 
* from CabDatabase_Admin;


alter proc sp_Driver_ValidationEmailUsername
@emailval varchar(50),
@usernameval varchar(10),
@valresult varchar(5) out
as
begin
  select @valresult = count(*) from DriverRegistrationData where (EmailId=@emailval or @emailval is null )or ( Username = @usernameval or @usernameval is null) ;
end

declare @result vARCHAR(5)
execute sp_Driver_ValidationEmailUsername 'ahbs@gaga.com','ahahq',@result out
print @result



create proc sp_Driver_ValidateUserIdPassword
@emailID varchar(50),
@password varchar(30),
@validationResult varchar(5) out
as
begin
    select @validationResult = count(*) from DriverRegistrationData where ( EmailId = @emailID or @emailID is null or UserName = @emailID or @emailID is null ) and Pass =@password;
	end

declare @output varchar(5)
execute sp_Driver_ValidateUserIdPassword 'amsri@gmail.com','snsn', @output output
print @output



alter proc sp_Driver_toStoreUserNameFromSesson
@emailIDorUsername varchar (30),
@forsessonCabNo varchar (20) output,
@forsessonUserName varchar (20) output,
@forsessonEmailId varchar (50) output,
@forsessonCarType varchar (50) output
as
begin
	select @forsessonCabNo = CabNo from DriverRegistrationData where ( EmailId = @emailIDorUsername or @emailIDorUsername is null or UserName = @emailIDorUsername or @emailIDorUsername is null )
	select @forsessonUserName = Username from DriverRegistrationData where ( EmailId = @emailIDorUsername or @emailIDorUsername is null or UserName = @emailIDorUsername or @emailIDorUsername is null )
	select @forsessonEmailId = EmailId from DriverRegistrationData where ( EmailId = @emailIDorUsername or @emailIDorUsername is null or UserName = @emailIDorUsername or @emailIDorUsername is null )
	select @forsessonCarType = CarType from DriverRegistrationData where ( EmailId = @emailIDorUsername or @emailIDorUsername is null or UserName = @emailIDorUsername or @emailIDorUsername is null )
	
end	

declare @result  varchar(50)
declare @result1  varchar(50)
declare @result2  varchar(50)
declare @result3  varchar(50)
execute sp_Driver_toStoreUserNameFromSesson 'newrkmr',@result out,@result1 out,@result2 out,@result3 out
print @result print @result1 print @result2 print @result3


create proc sp_ByDriver_CabDataAddition
@driverName varchar(30),
@cabNum varchar(10), 
@eielID varchar(20),
@starting varchar(30), 
@destin varchar (30),
@typeofcab varchar(20), 
@emailID varchar(50),
@contactNum varchar(20) 
as

begin
insert into CabDatabase_Admin values(@driverName,@cabNum,@eielID,@starting,@destin,@typeofcab,@emailID,@contactNum,'ROAD ROAMERS');
end

select @cabNum,Starting,Destin,UpdatedOn,ActionPerf from CabDatabase_Admin_AuditTable where  

select * from DriverRegistrationData


create proc sp_GetCabNoOnDriverId
@driverusername varchar(20),
@driverCabNo varchar(20) output

as
begin
	select @driverCabNo = CabNo from DriverRegistrationData where Username=  @driverusername
end

declare @result varchar(10)
execute sp_GetCabNoOnDriverId 'amsri', @result out
print @result

select CabNum,Starting,Destin,UpdatedOn,ActionPerf from CabDatabase_Admin_AuditTable where CabNum ='DLDSBK1559'


create proc sp_Driver_CabDataRemove
@Cabnum varchar(50),
@result varchar(5) out
as
begin
	ALTER TABLE CabDatabase_Admin DISABLE TRIGGER tr_CabDatabase_Admin_forDelete
	delete from CabDatabase_Admin where CabNum = @Cabnum
	select @result= COUNT(*) from CabDatabase_Admin where CabNum = @Cabnum
	ALTER TABLE CabDatabase_Admin ENABLE TRIGGER tr_CabDatabase_Admin_forDelete
end

declare @result varchar(10)
execute sp_Driver_CabDataRemove 'BR-5S-BLK-', @result out
print @result

SELECT * FROM CabDatabase_Admin

SELECT * FROM RegistrationData

select * from DriverRegistrationData

select * from amnrjn


delete from DriverRegistrationData w	here CabNo ='zz5SB5655'

Alter table CabDatabase_Admin ALTER Column CabNum nvarchar(30)



ALTER TABLE DriverRegistrationData
ADD CarType varchar(10);

DELETE TOP (6)
FROM   DriverRegistrationData