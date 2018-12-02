CREATE TABLE Team
(
    TeamID INT IDENTITY(1,1) Primary Key
    , CITY VARCHAR(50) NOT NULL
    , Name VARCHAR(50) NOT NULL
    , Shorthand CHAR(3) NOT NULL
)
GO