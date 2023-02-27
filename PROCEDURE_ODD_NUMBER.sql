/* 2.Write a procedure which displays all odd numbers below 100 */

CREATE PROCEDURE ODD_NUMBER @NUMBER NUMERIC
AS
BEGIN
DECLARE @N NUMERIC
SET @N = 1
	WHILE(@N <= @NUMBER)
	BEGIN
		PRINT (@N)
		SET @N = @N+2
	END

END




EXEC  ODD_NUMBER @NUMBER = 100