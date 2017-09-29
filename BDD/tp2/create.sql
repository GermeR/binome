Create table Article (

	idArticle Integer,
	nameArticle varchar(50) NOT NULL,
	colorArticle varchar(50) NOT NULL,
	PRIMARY_KEY (idArticle)
);


Create table Fournisseurs (
	
	idFournisseurs Integer,
	nameFournisseurs varchar(50) NOT NULL,
	adresseFournisseurs varchar(100) NOT NULL,
	PRIMARY_KEY (idFournisseurs),
);

Create table Catalogue (

	idFournisseurs Integer NOT NULL,
	idArticle Integer NOT NULL,
	prix double NOT NULL,
	PRIMARY KEY (idFournisseurs,idArticle),
	FOREIGN KEY (idFournisseurs) REFERENCES Fournisseurs (idFournisseurs)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (idArticle) REFERENCES Article (idArticle)
	ON DELETE CASCADE
	ON UPDATE CASCADE;
);
