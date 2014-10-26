CREATE TABLE [dbo].[Services]
(
	id int identity(1,1) primary key,
	average_price float,
	name nvarchar(max),
	service_information nvarchar(max),
	category_id int,	
	company_id int,
	CONSTRAINT Serv_id_category_key FOREIGN KEY (category_id) REFERENCES Categories(id),
	CONSTRAINT Serv_id_company_key FOREIGN KEY (company_id) REFERENCES Companies(id)
);