CREATE TABLE Player
(
    PlayerID INT PRIMARY KEY IDENTITY(1,1)
    , FirstName VARCHAR(50) NOT NULL
    , MiddleInitial CHAR(1) NULL
    , LastName VARCHAR(50) NOT NULL
    , Position VARCHAR(25) NOT NULL
    , PositionAbv VARCHAR(3) NOT NULL
    , College VARCHAR(75)
    , FirstYearInLeague VARCHAR(75) NOT NULL
    , Birthdate DATE 

)

