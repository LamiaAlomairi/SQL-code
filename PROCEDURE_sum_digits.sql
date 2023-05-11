/* 7.Write a procedure to display the sum of individual digits of given number. */

CREATE PROCEDURE sum_digits @num INT
AS
BEGIN
    DECLARE @digit INT
    DECLARE @sum INT = 0
    WHILE (@num > 0)
    BEGIN
        SET @digit = @num % 10
        SET @sum = @sum + @digit
        SET @num = @num / 10
    END
    RETURN @sum
END




DECLARE @VALUE INT
EXEC @VALUE = sum_digits
    @num = 23

SELECT 'Sum of Digits' = @VALUE
GO