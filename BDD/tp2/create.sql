DROP SCHEMA Boutique CASCADE;

CREATE SCHEMA Boutique

Create table Articles (
	aid Integer,
	anom varchar(50) NOT NULL,
	acoul varchar(50) NOT NULL,
	PRIMARY KEY (aid)
)


Create table Fournisseurs (
	fid Integer,
	fnom varchar(50) NOT NULL,
	fad varchar(100) NOT NULL,
	PRIMARY KEY (fid)
)

Create table Catalogue (
	fid Integer NOT NULL,
	aid Integer NOT NULL,
	prix decimal(6,2) NOT NULL,
	CHECK (prix >= 0),
	PRIMARY KEY (fid,aid),
	FOREIGN KEY (fid) REFERENCES Fournisseurs (fid)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (aid) REFERENCES Articles (aid)
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
