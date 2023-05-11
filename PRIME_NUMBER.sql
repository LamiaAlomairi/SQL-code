/* 3.Write a procedure which display whether a number is prime or not */

CREATE PROCEDURE Prime @number NUMERIC
AS
BEGIN
    DECLARE @Prime_Number NUMERIC, @i NUMERIC
	SET @Prime_Number = 1
	SET @i = 2
    WHILE @i <= (@number / 2)
    BEGIN
        IF ((@number % @i) = 0)
        BEGIN
            SET @Prime_Number = 0
            BREAK
        END
        SET @i = @i + 1
    END

    IF @Prime_Number = 1
    BEGIN
		PRINT @number
        PRINT 'is a prime number.'
    END
    ELSE
    BEGIN
		PRINT @number
        PRINT 'is not a prime number.'
    END
END



EXEC Prime @number = 4


