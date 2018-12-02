CREATE TABLE PlayerTeamBridge
(
    PlayerTeamBridgeID INT PRIMARY KEY IDENTITY(1,1)
    , PlayerID INT NOT NULL
    , TeamID INT NOT NULL
    , StartDateID INT NOT NULL
    , EndDateID INT NOT NULL

, CONSTRAINT FK_PlayerTeamBridge_PlayerID FOREIGN KEY (PlayerID) REFERENCES dbo.Player (PlayerID)
, CONSTRAINT FK_PlayerTeamBridge_TeamID FOREIGN KEY (TeamID) REFERENCES dbo.Team (TeamID)
)