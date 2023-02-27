/* 6.Write a procedure to display the reverse of a given number. */

CREATE PROCEDURE ReverseNumber @number INT
AS
BEGIN
    DECLARE @reverse INT = 0;
    DECLARE @digit INT;

    WHILE (@number > 0)
    BEGIN
        SET @digit = @number % 10;
        SET @reverse = @reverse * 10 + @digit;
        SET @number = @number / 10;
    END

    RETURN @reverse
END




DECLARE @VALUE INT
EXEC @VALUE = ReverseNumber
    @number = 23

SELECT 'Reverse Number' = @VALUE
GO