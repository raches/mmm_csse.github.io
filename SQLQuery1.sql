CREATE Procedure spAuthenticateUser1
@UserName nvarchar(50),
@Password nvarchar(50)
as
Begin
	Declare @Count int

	Select @Count = COUNT(UserName1) From tlogindb
	where [UserName1] = @UserName and [Password1] = @Password

	if(@Count >= 1)
	Begin
		Select 1 as ReturnCode
	End
	Else
	Begin
		Select -1 as ReturnCode
	End
End