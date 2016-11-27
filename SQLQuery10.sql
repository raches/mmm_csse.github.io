select * from logindb

create proc spreg
@UserName nvarchar (50),
@Password nvarchar (50)

as
Begin
	Declare @Count int
	Declare @ReturenCode int

	Select @Count = COUNT(UserName)
	from logindb where UserName = @UserName
	if @Count > 0
	Begin
		Set @ReturenCode = -1
	End
	Else
	Begin
		Set @ReturenCode = 1 
		Insert into logindb values
		(@UserName, @Password)
	End
	Select @ReturenCode as ReturnCode
End
			
