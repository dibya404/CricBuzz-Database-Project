

CREATE TABLE Batsman
(
BatsmanId int IDENTITY(1,1) PRIMARY KEY,
TeamId int not null foreign key references Team(TeamID),  
Name varchar(50) not null,
Dob date not null,
Debutdate date not null,
Height varchar(50) not null,
Style varchar(50) not null,
)
CREATE TABLE Bowler
(
BowlerId int IDENTITY(1,1) PRIMARY KEY,
TeamId int not null foreign key references Team(TeamID),  
Name varchar(50) not null,
Dob date not null,
Debutdate date not null,
Height varchar(50) not null,
Style varchar(50) not null,
)


CREATE TABLE AllRounder
(
ARid int IDENTITY(1,1) PRIMARY KEY,
TeamID int not null Foreign key references Team(TeamID),
BatsmanId int not null Foreign key references Batsman(BatsmanId),
BowlerId int not null Foreign key references Bowler(BowlerId),

)

CREATE TABLE SCORECARD
(
SCId int IDENTITY(1,1) PRIMARY KEY,
MatchId int not null Foreign key references Matches(MatchId),
TeamID int not null Foreign key references Team(TeamID),
BatsmanId int not null Foreign key references Batsman(BatsmanId),
Runs_Scored int null,
Ball_faced int null,
Sixers int null,
Fours int null,
BowlerId int not null Foreign key references Bowler(BowlerId),
Balls_bowled int null,
Runs_given int null,
Wickets_taken int null,

)
SELECT * FROM Team

SELECT * FROM Bowler

SELECT * FROM Batsman

SELECT * FROM AllRounder

SELECT * FROM Coach

SELECT * FROM Matches

SELECT * FROM SCORECARD


INSERT INTO SCORECARD(MatchId,TeamID,BatsmanId,Runs_Scored,Ball_faced,Sixers,
Fours,BowlerId,Balls_bowled,Runs_given,Wickets_taken)
VALUES(3,6,78,73,51,2,8,78,null,null,null),
(3,6,81,58,47,1,6,122,null,null,null),
(3,6,77,null,null,null,null,77,null,null,null),
(3,6,78,null,null,null,null,78,null,null,null),
(3,6,85,null,null,null,null,85,null,null,null),
(3,6,82,null,null,null,null,82,18,21,1),
(3,6,80,null,null,null,null,80,12,14,1),
(3,6,83,null,null,null,null,83,12,5,1),
(3,6,89,null,null,null,null,89,42,29,3),
(3,6,88,null,null,null,null,88,38,22,3),
(3,6,87,null,null,null,null,87,54,44,1)