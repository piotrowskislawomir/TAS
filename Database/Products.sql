CREATE TABLE Products(
	id int identity(1,1) primary key,	
	name nvarchar(max),
	category_id int,
	producer_id int,
	shop_location nvarchar(max), --1 produkt w roznych sklepach mozna kupic ?????
	average_price float,	--1 produkt rozne ceny moze miec
	product_information nvarchar(max), --opis
	picture nvarchar(max),
	CONSTRAINT Product_id_category_key FOREIGN KEY (category_id) REFERENCES Categories(id),
	CONSTRAINT Product_id_producer_key FOREIGN KEY (producer_id) REFERENCES Producers(id)
);
