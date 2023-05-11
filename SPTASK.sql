/*   SPTASK   */
---- registration table ----
CREATE TABLE Registration(
AcNo INTEGER PRIMARY KEY,
FName VARCHAR(15) NOT NULL,
LName VARCHAR(15) NOT NULL,
DOB DATE,
RegDate DATE DEFAULT CURRENT_TIMESTAMP,
CivilID INTEGER NOT NULL,
Gender CHAR(1),
GSM INTEGER UNIQUE CONSTRAINT UQ_GSM_GSMIdx CHECK (LEN(GSM) = 8),
OpenBal INTEGER CHECK (OpenBal >= 50)
);

INSERT INTO Registration (AcNo, FName, LName, DOB, CivilID, Gender, GSM, OpenBal)
                  VALUES (01, 'MOHAMED', 'ALQASMI', '1991-04-01', '121314', 'M', 99888776, 55),
				         (02, 'FATEMA', 'ALGAFRI', '1999-12-05', '219865', 'F', 97766554, 100),
						 (03, 'ANAS', 'ALHADABI', '2005-09-29', '128765', 'M', 91827364, 75);

SELECT * FROM Registration;

---------------------------------------------------------------------------
CREATE PROCEDURE REGESTRATION(
	@ACNO INTEGER, 
	@FNAME VARCHAR(15), 
	@LNAME VARCHAR(15), 
	@DOB DATE, 
	@CIVILID INTEGER, 
	@GENDER CHAR(1), 
	@GMS INTEGER,
	@OPENBAL INTEGER
)
AS
BEGIN
	INSERT INTO Registration (AcNo,   FName,  LName,  DOB,  CivilID,  Gender,  GSM,  OpenBal)
	                  VALUES (@ACNO, @FNAME, @LNAME, @DOB, @CIVILID, @GENDER, @GMS, @OPENBAL)
	PRINT('RECORED INSERTED')
END

EXEC REGESTRATION 04, 'SUHA', 'ALSHUKAILI', '2008-03-21', '221345', 'F', 91919911, 5100
EXEC REGESTRATION 05, 'SSSS', 'AAAAA', '2008-03-21', '999999', 'F', 99999999, 100

---------------------------------------------------------------------------------
CREATE PROCEDURE UPDATE_REGISTRATION @OPENBAL INTEGER, @ACNO INTEGER
AS
BEGIN
    UPDATE Registration
    SET OpenBal = @OPENBAL
    WHERE AcNo = @ACNO;
END

EXEC UPDATE_REGISTRATION @ACNO = 3, @OPENBAL = 750
---------------------------------------------------------------------------------
CREATE PROCEDURE DELETE_RECORED_FROM_REGISTRATION @ACNO INTEGER
AS
BEGIN
    DELETE FROM Registration
    WHERE AcNo = @ACNO;
END

EXEC DELETE_RECORED_FROM_REGISTRATION @ACNO = 5

----------------------------------------------------------------------------------
---- Deposits table ----
CREATE TABLE Deposits(
DNo INTEGER PRIMARY KEY,
AcNo INTEGER FOREIGN KEY REFERENCES Registration(AcNo),
DDate DATE DEFAULT CURRENT_TIMESTAMP,
DAmount INTEGER NOT NULL,
DLocation VARCHAR(10) NOT NULL
);

INSERT INTO Deposits (DNo, AcNo, DAmount, DLocation)
              VALUES (001, 01, 1000, 'MUSCAT'),
				     (002, 03, 500, 'SOHAR'),
				     (003, 01, 240, 'RUSTAQ');
SELECT * FROM Deposits;
--------------------------------------------------------

CREATE PROCEDURE DEPOSITS9(
	@DNO INTEGER,
	@ACNO INTEGER, 
	@DAMOUNT INTEGER,
	@DLOCATION VARCHAR(10)
)
AS
BEGIN
	INSERT INTO Deposits (DNo, AcNo, DAmount, DLocation)
	              VALUES (@DNO, @ACNO, @DAMOUNT, @DLOCATION)
	PRINT('RECORED INSERTED')
END

EXEC DEPOSITS9 004, 01, 500, 'SWAIQ'
EXEC DEPOSITS9 005, 02, 670, 'SWAIQ'
--------------------------------------------------------------------------
CREATE PROCEDURE UPDATE_DEPOSITS @DLocation VARCHAR(10), @DNO INTEGER
AS
BEGIN
    UPDATE Deposits
    SET DLocation = @DLocation
    WHERE DNo = @DNO;
END

EXEC UPDATE_DEPOSITS @DNO = 4, @DLocation = 'MUSCAT'
---------------------------------------------------------------------
CREATE PROCEDURE DELETE_RECORED_FROM_DEPOSITS @DNO INTEGER
AS
BEGIN
    DELETE FROM Deposits
    WHERE DNo = @DNO;
END

EXEC DELETE_RECORED_FROM_DEPOSITS @DNO = 4
--------------------------------------------------------------------

---- Withdrawls table ----
CREATE TABLE Withdrawls(
WNo INTEGER PRIMARY KEY,
AcNo INTEGER FOREIGN KEY REFERENCES Registration(AcNo),
WDate DATE DEFAULT CURRENT_TIMESTAMP,
WAmount INTEGER NOT NULL,
WLocation VARCHAR(10) NOT NULL
);

INSERT INTO Withdrawls (WNo, AcNo, WAmount, WLocation)
                  VALUES (1, 02, 10, 'MUSSANA'),
				         (2, 02, 220, 'SWAIQ'),
						 (3, 01, 1020, 'EZKI');

SELECT * FROM Withdrawls;

-----------------------------------------------------------------------------
select * from Employeess;