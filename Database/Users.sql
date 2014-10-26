CREATE TABLE Users(
	id int identity(1,1) primary key,
	nick nvarchar(100),
	[password] nvarchar(100),
	mail nvarchar(100),
	name nvarchar(100),
	[rank] float --??? o co z tym chodzilo
);