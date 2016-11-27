select* from flogindb1

create proc spreg1
@UserName nvarchar (50),
@Password nvarchar (50)

as
Begin
	Declare @Count int
	Declare @ReturenCode int

	Select @Count = COUNT(UserName1)
	from tlogindb where UserName1 = @UserName
	if @Count > 0
	Begin
		Set @ReturenCode = -1
	End
	Else
	Begin
		Set @ReturenCode = 1 
		Insert into tlogindb values
		(@UserName, @Password)
	End
	Select @ReturenCode as ReturnCode
End