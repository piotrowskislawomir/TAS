
CREATE TABLE Rankings(
	id int identity(1,1) primary key,
	product_id int,
	service_id int,
	number_of_ratings int,
	average_rate float,
	CONSTRAINT Rank_id_product_key FOREIGN KEY (product_id) REFERENCES [Services](id),
	CONSTRAINT Rank_id_service_key FOREIGN KEY (service_id) REFERENCES Products(id)
);