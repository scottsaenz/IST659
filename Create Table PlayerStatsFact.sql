CREATE TABLE PlayerStatsFact
(
    PlayerID INT NOT NULL
    , ScheduleID INT NOT NULL
    , PassingYards INT NULL
    , PassingTouchdowns INT
    , Interceptions INT
    , SacksReceived INT
    , RushingYards INT
    , RushingTouchdowns INT
    , Receptions INT
    , ReceivingYards INT
    , ReceivingTouchdowns INT
    , ReturnYards INT
    , ReturnTouchdowns INT
    , FumblesLost INT
    , FumbleReturnTD INT
    , CONSTRAINT FK_PlayerStatsFact_PlayerID FOREIGN KEY (PlayerID) REFERENCES dbo.Player (PlayerID)
    , CONSTRAINT FK_PlayerStatsFact_ScheduleID FOREIGN KEY (ScheduleID) REFERENCES dbo.Schedule (ScheduleID) 
)