CREATE TABLE Companies(
	id int identity(1,1) primary key,
	name nvarchar(max),
	phone nvarchar(100),
	city nvarchar(100),
	street_and_number nvarchar(100),
	mail nvarchar(100),
	site_in_Internet nvarchar(max)
);