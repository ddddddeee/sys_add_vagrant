DROP TABLE IF EXISTS Operation;
DROP TABLE IF EXISTS Deposit;
DROP TABLE IF EXISTS Withdraw;
DROP TABLE IF EXISTS Transfer;
DROP TABLE IF EXISTS Account;

CREATE TABLE Account (
  ACC_No VARCHAR(20) NOT NULL,
  ACC_Name VARCHAR(50) NOT NULL,
  ACC_Surname VARCHAR(50) NOT NULL,
  DateOp DateTime NOT NULL,
  Balance FLOAT NOT NULL,
  PRIMARY KEY (ACC_No)
)Engine=InnoDB;

CREATE TABLE Deposit
(
    Tran_No     INT NOT NULL AUTO_Increment,
    ACC_No      VARCHAR(10) NOT NULL,
    DateOp      DATETIME NOT NULL,
    Amount      FLOAT NOT NULL,
    PRIMARY KEY(Tran_No),
    FOREIGN KEY(ACC_No) REFERENCES Account(ACC_No)
) Engine=InnoDB;

CREATE TABLE Withdraw
(
    Tran_No     INT NOT NULL AUTO_Increment,
    ACC_No      VARCHAR(10) NOT NULL,
    DateOp      DATETIME NOT NULL,
    Amount      FLOAT NOT NULL,
    PRIMARY KEY(Tran_No),
    FOREIGN KEY(ACC_No) REFERENCES Account(ACC_No)
) Engine=InnoDB;

CREATE TABLE  Transfer
(
	Tran_No		INT  NOT NULL AUTO_Increment,
	ACC_No_Source	VARCHAR(10) NOT NULL,
	ACC_No_Dest	VARCHAR(10) ,
	DateOp		DATETIME NOT NULL,
	Amount		FLOAT NOT NULL,
	PRIMARY KEY(Tran_No),
	FOREIGN KEY(ACC_No_Source) REFERENCES Account(ACC_No),
	FOREIGN KEY(ACC_No_Dest) REFERENCES Account(ACC_No)
) Engine=InnoDB;

CREATE TABLE  Operation
(
	Tran_No		INT  NOT NULL AUTO_Increment,
	ACC_No_Source	VARCHAR(10) NOT NULL,
	ACC_No_Dest	VARCHAR(10) ,
	TypeOp		VARCHAR(10) NOT NULL,
	DateOp		DATETIME NOT NULL,
	Amount		FLOAT NOT NULL,
	PRIMARY KEY(Tran_No),
	FOREIGN KEY(ACC_No_Source) REFERENCES Account(ACC_No),
	FOREIGN KEY(ACC_No_Dest) REFERENCES Account(ACC_No)
) Engine=InnoDB;


INSERT INTO Account(ACC_No,ACC_Name,ACC_Surname,DateOp,Balance) VALUES('ACC001','Wittawas','Kanprapun',NOW(),1536);
INSERT INTO Account(ACC_No,ACC_Name,ACC_Surname,DateOp,Balance) VALUES('ACC002','Kanjana','Panupan',NOW(),4322);
INSERT INTO Account(ACC_No,ACC_Name,ACC_Surname,DateOp,Balance) VALUES('ACC003','Prapun','Vitchaya',NOW(),20192);
INSERT INTO Account(ACC_No,ACC_Name,ACC_Surname,DateOp,Balance) VALUES('ACC004','Benya','Ngamprakai',NOW(),2294);
INSERT INTO Account(ACC_No,ACC_Name,ACC_Surname,DateOp,Balance) VALUES('ACC005','Panuwat','Wannapanit',NOW(),5682);

