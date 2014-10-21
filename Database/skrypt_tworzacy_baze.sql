

CREATE TABLE dbo.Categories(
	id int identity(1,1) primary key,
	name nvarchar(max)
);

INSERT INTO Categories(name) VALUES ('Biuro i firma') --1
INSERT INTO Categories(name) VALUES ('Bi¿uteria i zegarki')
INSERT INTO Categories(name) VALUES ('Delikatesy') --3
INSERT INTO Categories(name) VALUES ('Dla dziecka')
INSERT INTO Categories(name) VALUES ('Dom i wnêtrze') --5
INSERT INTO Categories(name) VALUES ('Filmy')
INSERT INTO Categories(name) VALUES ('Fotografia') --7
INSERT INTO Categories(name) VALUES ('Gry')
INSERT INTO Categories(name) VALUES ('Hobby') --9
INSERT INTO Categories(name) VALUES ('Komputery')
INSERT INTO Categories(name) VALUES ('Ksiêgarnia') --11
INSERT INTO Categories(name) VALUES ('Moda')
INSERT INTO Categories(name) VALUES ('Motoryzacja') --13
INSERT INTO Categories(name) VALUES ('Muzyka')
INSERT INTO Categories(name) VALUES ('Ogród') --15
INSERT INTO Categories(name) VALUES ('Sport i rekreacja')
INSERT INTO Categories(name) VALUES ('Sprzêt AGD')
INSERT INTO Categories(name) VALUES ('Sprzêt RTV')
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
'Interesuj¹cy przez swój œwie¿y, kokosowy smak i zapach. Doskona³y do przygotowywania egzotycznych dañ. \nSk³adniki: olej z mi¹¿szu kokosa \nProdukt pochodz¹cy z upraw ekologicznych, objêty certyfikatem kontroli ECOCERT F-32600 \nInformacja alergiczna: Nie rafinowany'
)
INSERT INTO Products(name, category_id, producer_id, product_information)
VALUES ('Nikon D 3200 czarny + 18-105 mm VR',7,2,
'Przywo³aj swoje wspomnienia dziêki wspania³emu i ³atwemu w obs³udze aparatowi D3200. \nTa wyposa¿ona w matrycê CMOS o rozdzielczoœci 24,2 mln pikseli oraz zaawansowany mechanizm przetwarzania zdjêæ EXPEED 3 firmy Nikon lustrzanka jednoobiektywowa umo¿liwia wykonywanie doskona³ych zdjêæ i nagrywanie filmów D-Movie w rozdzielczoœci Full HD. \nTryb podrêcznika firmy Nikon u³atwia rozpoczêcie fotografowania, prezentuj¹c instrukcje pozwalaj¹ce w kilku prostych krokach osi¹gn¹æ zdumiewaj¹ce rezultaty. Przyk³adowe zdjêcia i instrukcje dadz¹ Ci pewnoœæ, ¿e wykonujesz zdjêcia i filmy o wysokiej jakoœci zgodnie ze swoimi zamierzeniami. \nD3200, fantastyczny aparat pozwalaj¹cy uchwyciæ bogactwo szczegó³ów otaczaj¹cego œwiata, umo¿liwia nawet bezpoœrednie przesy³anie zdjêæ i filmów do telefonu komórkowego z systemem Android*, co pozwala na ich b³yskawiczne udostêpnianie.'
)
INSERT INTO Products(name, category_id, producer_id, product_information)
VALUES ('Lenovo Yoga B6000 16Gb 3G (59-388132)',10,3,
'Tablet Yoga 8 zosta³ zaprojektowany z myœl¹ o wygodzie u¿ytkowania. Dobrze wywa¿ona komora baterii i chowana podstawka pozwalaj¹ na pracê w trzech komfortowych trybach: po³ó¿, postaw i trzymaj w d³oni . W trybie „trzymaj w d³oni” œrodek ciê¿koœci urz¹dzenia koncentruje siê w d³oni. Dziêki temu czytanie czy przegl¹danie internetu na tablecie jest jeszcze wygodniejsze. Ustawienie tabletu w trybie „po³ó¿” umo¿liwia komfortowe pisanie i granie. Aby cieszyæ siê filmami, muzyk¹ lub wideokonferencjami, najlepiej roz³o¿yæ podstawkê i u¿ywaæ tabletu Yoga trybie „postaw”.'
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
VALUES ('Oœrodek Wczasowy U Marcin - Oœrodek Wczasowy "U MARCINA" Walkowiak Marcin','Wieleñ Zaobrzñski','Wczasowa 40','509838565','marcin_walkowiak@hotmail.com','www.domkiumarcina.pl')


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
'Profesjonalny Sklep Fotograficzny PROCLUB serdecznie zaprasza do udzia³u w dwudniowych warsztatach fotograficznych',
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (1,1,'Projekt Graficzny (Projekt - Ulotki A6)',
'Profesjonalny Sklep Fotograficzny PROCLUB serdecznie zaprasza do udzia³u w dwudniowych warsztatach fotograficznych \nDo wyboru: projekt ulotki, wizytówki lub banera statycznego \nPo zakupie otrzymaj¹ Pañstwo projekt z mo¿liwoœci¹ wniesienia dowolnych korekt - tak, a¿ efekt koñcowy bêdzie zadowalaj¹cy. \nProjekty s¹ archiwizowane na potrzeby pó¿niejszego druku. \nProjekty wykonujemy z powierzonych materia³ów, w przypadku ich braku sk³adamy propozycje kupna zdjêæ z naszego banku zdjêæ ( ceny ustalamy indywidulanie ). \nPliki Ÿród³owe pozostaj¹ w³asnoœci¹ drukarni, po zatwierdzeniu projektu przesy³amy drog¹ e-mail koñcowy plik w formacie pdf ( projekt wraz ze spadami i bezpiecznymi marginesami, przygotowany na potrzeby druku offsetowego). \nIstnieje mozliwoœæ wykupienia pliku ¿ród³owego wraz z prawami autorskimi - w tym wypadku prosimy o kontakt.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (1,2,'Wytwarzanie oprogramowania (Java)',
'Projektujemy i realizujemy systemy informatyczne oparte na jêzyku Java. Produkujemy zaawansowane portale transakcyjne obs³uguj¹ce p³atnoœci kartami kredytowymi, obs³ugê kolejek danych, asynchroniczn¹ komunikacjê, rozwi¹zania frontowe i backendowe. Systemy wdra¿amy w sposób kompleksowy od projektowania i implementacji po uruchamianie systemów w wybranych centrach kolokacji jak Amazon AWS czy ATM. Œwiadczmy us³ugi serwisu w³asnych realizacji jak i systemów zewnêtrznych dostawców. Zapewniamy obs³ugê i utrzymanie warstwy serwerów i pamiêci masowych. Nasi programiœci posiadaj¹ certyfikacje Oracle Certified Professional.\n\nWspieramy nastêpuj¹ce technologie: \nJava EE \nJava Spring / Hibernate \nJava Swing \n\nZapraszamy do przesy³ania zapytañ ofertowych.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (15,3,'OGRÓD - od projektu po wykonanie! KOMPLEKSOWO',
'W naszej ofercie zajdziecie Pañstwo \n\n* SYSTEMY AUTOMATYCZNEGO NAWADNIANIA \nOd projektu po monta¿. \nProwadzimy tak¿e pe³en serwis instalacji nawadniaj¹cych \n\n* PROJEKTOWANIE ORAZ ZAK£ADANIE OGRODÓW
\nZapewnimy Pañstwu szybk¹ i w pe³ni profesjonaln¹ realizacjê. \nNasze prace obejmuj¹ wszystkie etapy powstawania ogrodu. \n\n* TRAWNIKI \nWykonujemy trawniki zarówno z siewu, jaki i  z rolki.
\nZajmujemy siê ich pielêgnacj¹, regeneracj¹, wykonujemy tak¿e wertykulacjê i aeracjê. \n\n* PIELÊGNACJA ZIELENI \nMo¿emy zaoferowaæ sta³¹ pielêgnacjê, jak i prace sezonowe. \nZajmiemy siê Pañstwa ogrodem tak, aby zawsze wygl¹da³ piêknie i zadbanie.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (16,4,'Sp³ywy Kajakowe Konwaliowym Szlakiem Kajak Wieleñ',
'Organizujemy sp³ywy kajakowe: \n   • jednodniowe \n   • wielodniowe \n   • studenckie \n   • firmowe \n   • rodzinne 
\n\n\nWypo¿yczaj¹c u nas kajaki mo¿ecie Pañstwo przep³yn¹æ Konwaliowy Szlak Kajakowy jeden z najpiêkniejszych szlaków kajakowych w Polsce wytyczony na terenie Przemêckiego Parku Krajobrazowego. Osobliwoœci¹ Wyspy Konwaliowej, œcis³ego rezerwatu przyrody jest wystêpowanie tu unikatowej ró¿owej odmiany konwalii, niespotykanej w ¿adnym innym miejscu w Polsce.'
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
VALUES (5,'Jestem zadowolona z tego oleju. wczeœniej wypisywa³am z innych sklepów internetowych. tu skusi³a mnie cena. produkt ten jest rzeczywiœcie bardzo dobry jako lekarstwo, kosmetyk oraz jako produkt spo¿ywczy.',
'14-03-2014 00:00:00', 1, 35.50, 1)

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (5,'Bardzo dobre w³aœciwoœci od¿ywcze. Wspania³y do smarowania pieczywa zamiast mas³a.',
'09-09-2014 00:00:00',2, 38.85, 2)

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (5,'Mam go ju¿ miesi¹c i jestem zadowolony to kolejny mój aparat i kolejna z rzêdu lustrzanka, prosta w obs³udze, funkcjonalna, dobrze odwzorowuj¹ca kolory i stan rzeczywisty, przyjemna zabawa, polecam dokupienie lampy zewnêtrznej zupe³nie inna bajka :-)',
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