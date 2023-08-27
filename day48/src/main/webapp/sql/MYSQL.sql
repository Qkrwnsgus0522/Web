CREATE TABLE MEMBER(
	MID VARCHAR(10) PRIMARY KEY,
	MPW VARCHAR(10) NOT NULL,
	NAME VARCHAR(10) NOT NULL
);

CREATE TABLE BOARD(
	BID INT PRIMARY KEY AUTO_INCREMENT,
	MID VARCHAR(10) NOT NULL, -- FK
	CONTENT VARCHAR(30) NOT NULL,
	FAVCNT INT DEFAULT 0,
	REPLYCNT INT DEFAULT 0,
	DATE DATETIME NOT NULL
);

CREATE TABLE REPLY(
	RID INT PRIMARY KEY AUTO_INCREMENT,
	BID INT NOT NULL, -- FK
	MID VARCHAR(10) NOT NULL, -- FK
	DATE DATETIME NOT NULL,
	RCONTENT VARCHAR(30) NOT NULL,
	FOREIGN KEY(BID) REFERENCES BOARD(BID) ON DELETE CASCADE
);