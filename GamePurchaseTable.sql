-- Game purchase table
create table GamePurchase(
humanID int(10) Not Null,
GameID int(3) Not Null,
OrderDate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
constraint Order_PK Primary Key(humanID,GameID),
constraint Human_FK Foreign Key(humanID)
					references Human(humanID),
constraint Games_FK Foreign Key(GameID)
					references Games(gameID)               
);