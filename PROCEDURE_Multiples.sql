/* 5.Write a procedure which display 20 multiples for all the numbers between 2 given numbers. */

CREATE PROCEDURE Multiples @startNum NUMERIC, @endNum NUMERIC
AS
BEGIN
    DECLARE @i NUMERIC , @result NUMERIC, @j NUMERIC
    SET @i = @startNum
    WHILE (@i <= @endNum)
    BEGIN
        SET @j = 1
        WHILE (@j <= 20)
        BEGIN
           -- RETURN @j 
			--RETURN @i 
			SET @result = @i * @j 
			PRINT @result
            SET @j = @j + 1
        END
        PRINT '------------------'
        SET @i = @i + 1
    END
END

EXEC Multiples @startNum = 2, @endNum = 4



