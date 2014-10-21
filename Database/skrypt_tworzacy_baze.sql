

CREATE TABLE dbo.Categories(
	id int identity(1,1) primary key,
	name nvarchar(max)
);

INSERT INTO Categories(name) VALUES ('Biuro i firma') --1
INSERT INTO Categories(name) VALUES ('Bi�uteria i zegarki')
INSERT INTO Categories(name) VALUES ('Delikatesy') --3
INSERT INTO Categories(name) VALUES ('Dla dziecka')
INSERT INTO Categories(name) VALUES ('Dom i wn�trze') --5
INSERT INTO Categories(name) VALUES ('Filmy')
INSERT INTO Categories(name) VALUES ('Fotografia') --7
INSERT INTO Categories(name) VALUES ('Gry')
INSERT INTO Categories(name) VALUES ('Hobby') --9
INSERT INTO Categories(name) VALUES ('Komputery')
INSERT INTO Categories(name) VALUES ('Ksi�garnia') --11
INSERT INTO Categories(name) VALUES ('Moda')
INSERT INTO Categories(name) VALUES ('Motoryzacja') --13
INSERT INTO Categories(name) VALUES ('Muzyka')
INSERT INTO Categories(name) VALUES ('Ogr�d') --15
INSERT INTO Categories(name) VALUES ('Sport i rekreacja')
INSERT INTO Categories(name) VALUES ('Sprz�t AGD')
INSERT INTO Categories(name) VALUES ('Sprz�t RTV')
INSERT INTO Categories(name) VALUES ('Telefony i akcesoria')
INSERT INTO Categories(name) VALUES ('Uroda')
INSERT INTO Categories(name) VALUES ('Zdrowie')

CREATE TABLE Producers(
	id int identity(1,1) primary key,
	name nvarchar(max)
);

INSERT INTO Producers(name) VALUES ('Bio Planeta')
INSERT INTO Producers(name) VALUES ('Nikon')
INSERT INTO Producers(name) VALUES ('Lenovo')
INSERT INTO Producers(name) VALUES ('Sanko')
INSERT INTO Producers(name) VALUES ('Samsung')
INSERT INTO Producers(name) VALUES ('Genius')

CREATE TABLE Users(
	id int identity(1,1) primary key,
	nick nvarchar(100),
	[password] nvarchar(100),
	mail nvarchar(100),
	name nvarchar(100),
	[rank] float --??? o co z tym chodzilo
);

INSERT INTO Users VALUES ('alice92', 'asdghiuCJLSIYDF(75', 'alicja123@wp.pl','Alicja',5) 
INSERT INTO Users VALUES ('emilia', 'addghASuCJLSIYD)sf', 'emilka@wp.pl','Emi',5) 
INSERT INTO Users VALUES ('Andrzej_Kalisz', 'addghASuCJLSIYD)sf', 'andrew@wp.pl','Andrzej',5) 
INSERT INTO Users VALUES ('Maciej777', 'addghASuCJLSIYD)sf', 'maciek@wp.pl','Maciej',5) 


CREATE TABLE Products(
	id int identity(1,1) primary key,	
	name nvarchar(max),
	category_id int,
	producer_id int,
	shop_location nvarchar(max), --1 produkt w roznych sklepach mozna kupic ?????
	average_price float,	--1 produkt rozne ceny moze miec
	product_information nvarchar(max), --opis
	picture nvarchar(max),
	CONSTRAINT Id_category_key FOREIGN KEY (category_id) REFERENCES Categories(id),
	CONSTRAINT Id_producer_key FOREIGN KEY (producer_id) REFERENCES Producers(id)
);

INSERT INTO Products(name, category_id, producer_id, product_information)
VALUES ('Bio Planet olej kokosowy extra virgin 400ml',3,1,
'Interesuj�cy przez sw�j �wie�y, kokosowy smak i zapach. Doskona�y do przygotowywania egzotycznych da�. \nSk�adniki: olej z mi��szu kokosa \nProdukt pochodz�cy z upraw ekologicznych, obj�ty certyfikatem kontroli ECOCERT F-32600 \nInformacja alergiczna: Nie rafinowany'
)
INSERT INTO Products(name, category_id, producer_id, product_information)
VALUES ('Nikon D 3200 czarny + 18-105 mm VR',7,2,
'Przywo�aj swoje wspomnienia dzi�ki wspania�emu i �atwemu w obs�udze aparatowi D3200. \nTa wyposa�ona w matryc� CMOS o rozdzielczo�ci 24,2 mln pikseli oraz zaawansowany mechanizm przetwarzania zdj�� EXPEED 3 firmy Nikon lustrzanka jednoobiektywowa umo�liwia wykonywanie doskona�ych zdj�� i nagrywanie film�w D-Movie w rozdzielczo�ci Full HD. \nTryb podr�cznika firmy Nikon u�atwia rozpocz�cie fotografowania, prezentuj�c instrukcje pozwalaj�ce w kilku prostych krokach osi�gn�� zdumiewaj�ce rezultaty. Przyk�adowe zdj�cia i instrukcje dadz� Ci pewno��, �e wykonujesz zdj�cia i filmy o wysokiej jako�ci zgodnie ze swoimi zamierzeniami. \nD3200, fantastyczny aparat pozwalaj�cy uchwyci� bogactwo szczeg��w otaczaj�cego �wiata, umo�liwia nawet bezpo�rednie przesy�anie zdj�� i film�w do telefonu kom�rkowego z systemem Android*, co pozwala na ich b�yskawiczne udost�pnianie.'
)
INSERT INTO Products(name, category_id, producer_id, product_information)
VALUES ('Lenovo Yoga B6000 16Gb 3G (59-388132)',10,3,
'Tablet Yoga 8 zosta� zaprojektowany z my�l� o wygodzie u�ytkowania. Dobrze wywa�ona komora baterii i chowana podstawka pozwalaj� na prac� w trzech komfortowych trybach: po��, postaw i trzymaj w d�oni . W trybie �trzymaj w d�oni� �rodek ci�ko�ci urz�dzenia koncentruje si� w d�oni. Dzi�ki temu czytanie czy przegl�danie internetu na tablecie jest jeszcze wygodniejsze. Ustawienie tabletu w trybie �po�� umo�liwia komfortowe pisanie i granie. Aby cieszy� si� filmami, muzyk� lub wideokonferencjami, najlepiej roz�o�y� podstawk� i u�ywa� tabletu Yoga trybie �postaw�.'
)


CREATE TABLE Companies(
	id int identity(1,1) primary key,
	name nvarchar(max),
	phone nvarchar(100),
	city nvarchar(100),
	street_and_number nvarchar(100),
	mail nvarchar(100),
	site_in_Internet nvarchar(max)
);

INSERT INTO Companies(name)
VALUES ('Proclub')
INSERT INTO Companies(name)
VALUES ('Human Device Sp. z o.o.')
INSERT INTO Companies(name,city,street_and_number,phone, mail, site_in_Internet)
VALUES ('YOKO - Studio Zieleni Wojciech Kafel','Warszawa','Minerska 29','795945815','yoko@yokoogrody.pl','www.yokoogrody.pl')
INSERT INTO Companies(name,city,street_and_number,phone, mail, site_in_Internet)
VALUES ('O�rodek Wczasowy U Marcin - O�rodek Wczasowy "U MARCINA" Walkowiak Marcin','Wiele� Zaobrz�ski','Wczasowa 40','509838565','marcin_walkowiak@hotmail.com','www.domkiumarcina.pl')


CREATE TABLE [Services](
	id int identity(1,1) primary key,
	average_price float,
	name nvarchar(max),
	service_information nvarchar(max),
	category_id int,	
	company_id int,
	CONSTRAINT Id_category_key FOREIGN KEY (category_id) REFERENCES Categories(id),
	CONSTRAINT Id_company_key FOREIGN KEY (company_id) REFERENCES Companies(id)
);

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (7,1,'Proclub Warsztaty fotografii otworkowej',
'Profesjonalny Sklep Fotograficzny PROCLUB serdecznie zaprasza do udzia�u w dwudniowych warsztatach fotograficznych',
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (1,1,'Projekt Graficzny (Projekt - Ulotki A6)',
'Profesjonalny Sklep Fotograficzny PROCLUB serdecznie zaprasza do udzia�u w dwudniowych warsztatach fotograficznych \nDo wyboru: projekt ulotki, wizyt�wki lub banera statycznego \nPo zakupie otrzymaj� Pa�stwo projekt z mo�liwo�ci� wniesienia dowolnych korekt - tak, a� efekt ko�cowy b�dzie zadowalaj�cy. \nProjekty s� archiwizowane na potrzeby p�niejszego druku. \nProjekty wykonujemy z powierzonych materia��w, w przypadku ich braku sk�adamy propozycje kupna zdj�� z naszego banku zdj�� ( ceny ustalamy indywidulanie ). \nPliki �r�d�owe pozostaj� w�asno�ci� drukarni, po zatwierdzeniu projektu przesy�amy drog� e-mail ko�cowy plik w formacie pdf ( projekt wraz ze spadami i bezpiecznymi marginesami, przygotowany na potrzeby druku offsetowego). \nIstnieje mozliwo�� wykupienia pliku �r�d�owego wraz z prawami autorskimi - w tym wypadku prosimy o kontakt.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (1,2,'Wytwarzanie oprogramowania (Java)',
'Projektujemy i realizujemy systemy informatyczne oparte na j�zyku Java. Produkujemy zaawansowane portale transakcyjne obs�uguj�ce p�atno�ci kartami kredytowymi, obs�ug� kolejek danych, asynchroniczn� komunikacj�, rozwi�zania frontowe i backendowe. Systemy wdra�amy w spos�b kompleksowy od projektowania i implementacji po uruchamianie system�w w wybranych centrach kolokacji jak Amazon AWS czy ATM. �wiadczmy us�ugi serwisu w�asnych realizacji jak i system�w zewn�trznych dostawc�w. Zapewniamy obs�ug� i utrzymanie warstwy serwer�w i pami�ci masowych. Nasi programi�ci posiadaj� certyfikacje Oracle Certified Professional.\n\nWspieramy nast�puj�ce technologie: \nJava EE \nJava Spring / Hibernate \nJava Swing \n\nZapraszamy do przesy�ania zapyta� ofertowych.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (15,3,'OGR�D - od projektu po wykonanie! KOMPLEKSOWO',
'W naszej ofercie zajdziecie Pa�stwo \n\n* SYSTEMY AUTOMATYCZNEGO NAWADNIANIA \nOd projektu po monta�. \nProwadzimy tak�e pe�en serwis instalacji nawadniaj�cych \n\n* PROJEKTOWANIE ORAZ ZAK�ADANIE OGROD�W
\nZapewnimy Pa�stwu szybk� i w pe�ni profesjonaln� realizacj�. \nNasze prace obejmuj� wszystkie etapy powstawania ogrodu. \n\n* TRAWNIKI \nWykonujemy trawniki zar�wno z siewu, jaki i  z rolki.
\nZajmujemy si� ich piel�gnacj�, regeneracj�, wykonujemy tak�e wertykulacj� i aeracj�. \n\n* PIEL�GNACJA ZIELENI \nMo�emy zaoferowa� sta�� piel�gnacj�, jak i prace sezonowe. \nZajmiemy si� Pa�stwa ogrodem tak, aby zawsze wygl�da� pi�knie i zadbanie.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (16,4,'Sp�ywy Kajakowe Konwaliowym Szlakiem Kajak Wiele�',
'Organizujemy sp�ywy kajakowe: \n   � jednodniowe \n   � wielodniowe \n   � studenckie \n   � firmowe \n   � rodzinne 
\n\n\nWypo�yczaj�c u nas kajaki mo�ecie Pa�stwo przep�yn�� Konwaliowy Szlak Kajakowy jeden z najpi�kniejszych szlak�w kajakowych w Polsce wytyczony na terenie Przem�ckiego Parku Krajobrazowego. Osobliwo�ci� Wyspy Konwaliowej, �cis�ego rezerwatu przyrody jest wyst�powanie tu unikatowej r�owej odmiany konwalii, niespotykanej w �adnym innym miejscu w Polsce.'
)

CREATE TABLE Opinions(
	id int identity(1,1) primary key,
	rate int,
	opinion_description nvarchar(max),
	opinion_date date,
	product_id int,
	product_price float,
	service_id int,
	[user_id] int,
	CONSTRAINT Id_product_key FOREIGN KEY (product_id) REFERENCES [Services](id),
	CONSTRAINT Id_service_key FOREIGN KEY (service_id) REFERENCES Products(id),
	CONSTRAINT Id_user_key FOREIGN KEY ([user_id]) REFERENCES Users(id)
);

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (5,'Jestem zadowolona z tego oleju. wcze�niej wypisywa�am z innych sklep�w internetowych. tu skusi�a mnie cena. produkt ten jest rzeczywi�cie bardzo dobry jako lekarstwo, kosmetyk oraz jako produkt spo�ywczy.',
'14-03-2014 00:00:00', 1, 35.50, 1)

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (5,'Bardzo dobre w�a�ciwo�ci od�ywcze. Wspania�y do smarowania pieczywa zamiast mas�a.',
'09-09-2014 00:00:00',2, 38.85, 2)

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (5,'Mam go ju� miesi�c i jestem zadowolony to kolejny m�j aparat i kolejna z rz�du lustrzanka, prosta w obs�udze, funkcjonalna, dobrze odwzorowuj�ca kolory i stan rzeczywisty, przyjemna zabawa, polecam dokupienie lampy zewn�trznej zupe�nie inna bajka :-)',
'10-12-2013 00:00:00', 3, 1889.00, 3)

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (4,'Bardzo wydajny a zarazem super jakosc moze bateria troszke 2/10 ale idzie wytrzymac',
'01-10-2014 00:00:00', 4, 749.00, 3)


CREATE TABLE Rankings(
	id int identity(1,1) primary key,
	product_id int,
	service_id int,
	number_of_ratings int,
	average_rate float,
	CONSTRAINT Id_product_key FOREIGN KEY (product_id) REFERENCES [Services](id),
	CONSTRAINT Id_service_key FOREIGN KEY (service_id) REFERENCES Products(id)
);

INSERT INTO Rankings(product_id,number_of_ratings, average_rate) VALUES (1,2,5)
INSERT INTO Rankings(product_id,number_of_ratings, average_rate) VALUES (2,1,5)
INSERT INTO Rankings(product_id,number_of_ratings, average_rate) VALUES (3,1,4)

INSERT INTO Rankings(service_id,number_of_ratings, average_rate) VALUES (1,0,0)
INSERT INTO Rankings(service_id,number_of_ratings, average_rate) VALUES (2,0,0)


CREATE TABLE Subscription(
	id int identity(1,1) primary key,
	mail nvarchar(100),
	[user_id] int,
	category_id int,
	CONSTRAINT Id_user_key FOREIGN KEY ([user_id]) REFERENCES Users(id),
	CONSTRAINT Id_category_key FOREIGN KEY (category_id) REFERENCES Users(id)
);

INSERT INTO Subscription([user_id], category_id) VALUES (1,4)
INSERT INTO Subscription([user_id], category_id) VALUES (2,7)
INSERT INTO Subscription([user_id], category_id) VALUES (3,10)