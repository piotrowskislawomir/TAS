
CREATE TABLE Opinions(
	id int identity(1,1) primary key,
	rate int,
	opinion_description nvarchar(max),
	opinion_date date,
	product_id int,
	product_price float,
	service_id int,
	[user_id] int,
	CONSTRAINT Op_id_product_key FOREIGN KEY (product_id) REFERENCES [Services](id),
	CONSTRAINT Op_id_service_key FOREIGN KEY (service_id) REFERENCES Products(id),
	CONSTRAINT Op_id_user_key FOREIGN KEY ([user_id]) REFERENCES Users(id)
);