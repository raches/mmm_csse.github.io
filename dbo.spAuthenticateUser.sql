CREATE Procedure spAuthenticateUser
@UserName nvarchar(50),
@Password nvarchar(50)
as
Begin
	Declare @Count int

	Select @Count = COUNT(UserName) From logindb
	where [UserName] = @UserName and [Password] = @Password

	if(@Count >= 1)
	Begin
		Select 1 as ReturnCode
	End
	Else
	Begin
		Select -1 as ReturnCode
	End
End