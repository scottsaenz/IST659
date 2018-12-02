CREATE TABLE DateDim
(
    DateID INT Primary Key
    , [Date] DATE NOT NULL
    , SeasonYear INT NOT NULL
    , SeasonWeek INT NOT NULL
    , SeasonWeekStartDate Date NOT NULL
    , SeasonWeekEndDate Date NOT NULL
)