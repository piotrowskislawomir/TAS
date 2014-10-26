CREATE TABLE Subscription(
	id int identity(1,1) primary key,
	mail nvarchar(100),
	[user_id] int,
	category_id int,
	CONSTRAINT Subs_id_user_key FOREIGN KEY ([user_id]) REFERENCES Users(id),
	CONSTRAINT Subs_id_category_key FOREIGN KEY (category_id) REFERENCES Users(id)
);