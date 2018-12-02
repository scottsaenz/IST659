CREATE TABLE Schedule
(
    ScheduleID INT PRIMARY KEY IDENTITY(1,1)
    , DateID INT NOT NULL
    , AwayTeamID INT NOT NULL
    , HomeTeamID INT NOT NULL
    , TrueHomeFlag BIT NOT NULL DEFAULT (0)
    , CONSTRAINT FK_Schedule_DateID FOREIGN KEY (DateID) REFERENCES dbo.DateDim (DateID)
    , CONSTRAINT FK_Schedule_AwayTeamID FOREIGN KEY (AwayTeamID) REFERENCES dbo.Team (TeamID)
    , CONSTRAINT FK_Schedule_HomeTeamID FOREIGN KEY (HomeTeamID) REFERENCES dbo.Team (TeamID)
)