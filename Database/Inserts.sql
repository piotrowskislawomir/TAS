/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO Categories(name) VALUES ('Biuro i firma') --1
INSERT INTO Categories(name) VALUES ('Biżuteria i zegarki')
INSERT INTO Categories(name) VALUES ('Delikatesy') --3
INSERT INTO Categories(name) VALUES ('Dla dziecka')
INSERT INTO Categories(name) VALUES ('Dom i wnętrze') --5
INSERT INTO Categories(name) VALUES ('Filmy')
INSERT INTO Categories(name) VALUES ('Fotografia') --7
INSERT INTO Categories(name) VALUES ('Gry')
INSERT INTO Categories(name) VALUES ('Hobby') --9
INSERT INTO Categories(name) VALUES ('Komputery')
INSERT INTO Categories(name) VALUES ('Księgarnia') --11
INSERT INTO Categories(name) VALUES ('Moda')
INSERT INTO Categories(name) VALUES ('Motoryzacja') --13
INSERT INTO Categories(name) VALUES ('Muzyka')
INSERT INTO Categories(name) VALUES ('Ogród') --15
INSERT INTO Categories(name) VALUES ('Sport i rekreacja')
INSERT INTO Categories(name) VALUES ('Sprzęt AGD')
INSERT INTO Categories(name) VALUES ('Sprzęt RTV')
INSERT INTO Categories(name) VALUES ('Telefony i akcesoria')
INSERT INTO Categories(name) VALUES ('Uroda')
INSERT INTO Categories(name) VALUES ('Zdrowie')


INSERT INTO Producers(name) VALUES ('Bio Planeta')
INSERT INTO Producers(name) VALUES ('Nikon')
INSERT INTO Producers(name) VALUES ('Lenovo')
INSERT INTO Producers(name) VALUES ('Sanko')
INSERT INTO Producers(name) VALUES ('Samsung')
INSERT INTO Producers(name) VALUES ('Genius')


INSERT INTO Users VALUES ('alice92', 'asdghiuCJLSIYDF(75', 'alicja123@wp.pl','Alicja',5) 
INSERT INTO Users VALUES ('emilia', 'addghASuCJLSIYD)sf', 'emilka@wp.pl','Emi',5) 
INSERT INTO Users VALUES ('Andrzej_Kalisz', 'addghASuCJLSIYD)sf', 'andrew@wp.pl','Andrzej',5) 
INSERT INTO Users VALUES ('Maciej777', 'addghASuCJLSIYD)sf', 'maciek@wp.pl','Maciej',5) 



INSERT INTO Products(name, category_id, producer_id, product_information)
VALUES ('Bio Planet olej kokosowy extra virgin 400ml',3,1,
'Interesujący przez swój świeży, kokosowy smak i zapach. Doskonały do przygotowywania egzotycznych dań. \nSkładniki: olej z miąższu kokosa \nProdukt pochodzący z upraw ekologicznych, objęty certyfikatem kontroli ECOCERT F-32600 \nInformacja alergiczna: Nie rafinowany'
)
INSERT INTO Products(name, category_id, producer_id, product_information)
VALUES ('Nikon D 3200 czarny + 18-105 mm VR',7,2,
'Przywołaj swoje wspomnienia dzięki wspaniałemu i łatwemu w obsłudze aparatowi D3200. \nTa wyposażona w matrycę CMOS o rozdzielczości 24,2 mln pikseli oraz zaawansowany mechanizm przetwarzania zdjęć EXPEED 3 firmy Nikon lustrzanka jednoobiektywowa umożliwia wykonywanie doskonałych zdjęć i nagrywanie filmów D-Movie w rozdzielczości Full HD. \nTryb podręcznika firmy Nikon ułatwia rozpoczęcie fotografowania, prezentując instrukcje pozwalające w kilku prostych krokach osiągnąć zdumiewające rezultaty. Przykładowe zdjęcia i instrukcje dadzą Ci pewność, że wykonujesz zdjęcia i filmy o wysokiej jakości zgodnie ze swoimi zamierzeniami. \nD3200, fantastyczny aparat pozwalający uchwycić bogactwo szczegółów otaczającego świata, umożliwia nawet bezpośrednie przesyłanie zdjęć i filmów do telefonu komórkowego z systemem Android*, co pozwala na ich błyskawiczne udostępnianie.'
)
INSERT INTO Products(name, category_id, producer_id, product_information)
VALUES ('Lenovo Yoga B6000 16Gb 3G (59-388132)',10,3,
'Tablet Yoga 8 został zaprojektowany z myślą o wygodzie użytkowania. Dobrze wyważona komora baterii i chowana podstawka pozwalają na pracę w trzech komfortowych trybach: połóż, postaw i trzymaj w dłoni . W trybie „trzymaj w dłoni” środek ciężkości urządzenia koncentruje się w dłoni. Dzięki temu czytanie czy przeglądanie internetu na tablecie jest jeszcze wygodniejsze. Ustawienie tabletu w trybie „połóż” umożliwia komfortowe pisanie i granie. Aby cieszyć się filmami, muzyką lub wideokonferencjami, najlepiej rozłożyć podstawkę i używać tabletu Yoga trybie „postaw”.'
)




INSERT INTO Companies(name)
VALUES ('Proclub')
INSERT INTO Companies(name)
VALUES ('Human Device Sp. z o.o.')
INSERT INTO Companies(name,city,street_and_number,phone, mail, site_in_Internet)
VALUES ('YOKO - Studio Zieleni Wojciech Kafel','Warszawa','Minerska 29','795945815','yoko@yokoogrody.pl','www.yokoogrody.pl')
INSERT INTO Companies(name,city,street_and_number,phone, mail, site_in_Internet)
VALUES ('Ośrodek Wczasowy U Marcin - Ośrodek Wczasowy "U MARCINA" Walkowiak Marcin','Wieleń Zaobrzński','Wczasowa 40','509838565','marcin_walkowiak@hotmail.com','www.domkiumarcina.pl')




INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (7,1,'Proclub Warsztaty fotografii otworkowej',
'Profesjonalny Sklep Fotograficzny PROCLUB serdecznie zaprasza do udziału w dwudniowych warsztatach fotograficznych'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (1,1,'Projekt Graficzny (Projekt - Ulotki A6)',
'Profesjonalny Sklep Fotograficzny PROCLUB serdecznie zaprasza do udziału w dwudniowych warsztatach fotograficznych \nDo wyboru: projekt ulotki, wizytówki lub banera statycznego \nPo zakupie otrzymają Państwo projekt z możliwością wniesienia dowolnych korekt - tak, aż efekt końcowy będzie zadowalający. \nProjekty są archiwizowane na potrzeby póżniejszego druku. \nProjekty wykonujemy z powierzonych materiałów, w przypadku ich braku składamy propozycje kupna zdjęć z naszego banku zdjęć ( ceny ustalamy indywidulanie ). \nPliki źródłowe pozostają własnością drukarni, po zatwierdzeniu projektu przesyłamy drogą e-mail końcowy plik w formacie pdf ( projekt wraz ze spadami i bezpiecznymi marginesami, przygotowany na potrzeby druku offsetowego). \nIstnieje mozliwość wykupienia pliku żródłowego wraz z prawami autorskimi - w tym wypadku prosimy o kontakt.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (1,2,'Wytwarzanie oprogramowania (Java)',
'Projektujemy i realizujemy systemy informatyczne oparte na języku Java. Produkujemy zaawansowane portale transakcyjne obsługujące płatności kartami kredytowymi, obsługę kolejek danych, asynchroniczną komunikację, rozwiązania frontowe i backendowe. Systemy wdrażamy w sposób kompleksowy od projektowania i implementacji po uruchamianie systemów w wybranych centrach kolokacji jak Amazon AWS czy ATM. Świadczmy usługi serwisu własnych realizacji jak i systemów zewnętrznych dostawców. Zapewniamy obsługę i utrzymanie warstwy serwerów i pamięci masowych. Nasi programiści posiadają certyfikacje Oracle Certified Professional.\n\nWspieramy następujące technologie: \nJava EE \nJava Spring / Hibernate \nJava Swing \n\nZapraszamy do przesyłania zapytań ofertowych.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (15,3,'OGRÓD - od projektu po wykonanie! KOMPLEKSOWO',
'W naszej ofercie zajdziecie Państwo \n\n* SYSTEMY AUTOMATYCZNEGO NAWADNIANIA \nOd projektu po montaż. \nProwadzimy także pełen serwis instalacji nawadniających \n\n* PROJEKTOWANIE ORAZ ZAKŁADANIE OGRODÓW
\nZapewnimy Państwu szybką i w pełni profesjonalną realizację. \nNasze prace obejmują wszystkie etapy powstawania ogrodu. \n\n* TRAWNIKI \nWykonujemy trawniki zarówno z siewu, jaki i  z rolki.
\nZajmujemy się ich pielęgnacją, regeneracją, wykonujemy także wertykulację i aerację. \n\n* PIELĘGNACJA ZIELENI \nMożemy zaoferować stałą pielęgnację, jak i prace sezonowe. \nZajmiemy się Państwa ogrodem tak, aby zawsze wyglądał pięknie i zadbanie.'
)

INSERT INTO [Services](category_id, company_id, name, service_information)
VALUES (16,4,'Spływy Kajakowe Konwaliowym Szlakiem Kajak Wieleń',
'Organizujemy spływy kajakowe: \n   • jednodniowe \n   • wielodniowe \n   • studenckie \n   • firmowe \n   • rodzinne 
\n\n\nWypożyczając u nas kajaki możecie Państwo przepłynąć Konwaliowy Szlak Kajakowy jeden z najpiękniejszych szlaków kajakowych w Polsce wytyczony na terenie Przemęckiego Parku Krajobrazowego. Osobliwością Wyspy Konwaliowej, ścisłego rezerwatu przyrody jest występowanie tu unikatowej różowej odmiany konwalii, niespotykanej w żadnym innym miejscu w Polsce.'
)





INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (5,'Jestem zadowolona z tego oleju. wcześniej wypisywałam z innych sklepów internetowych. tu skusiła mnie cena. produkt ten jest rzeczywiście bardzo dobry jako lekarstwo, kosmetyk oraz jako produkt spożywczy.',
'14-03-2014 00:00:00', 1, 35.50, 1)

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (5,'Bardzo dobre właściwości odżywcze. Wspaniały do smarowania pieczywa zamiast masła.',
'09-09-2014 00:00:00',2, 38.85, 2)

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (5,'Mam go już miesiąc i jestem zadowolony to kolejny mój aparat i kolejna z rzędu lustrzanka, prosta w obsłudze, funkcjonalna, dobrze odwzorowująca kolory i stan rzeczywisty, przyjemna zabawa, polecam dokupienie lampy zewnętrznej zupełnie inna bajka :-)',
'10-12-2013 00:00:00', 3, 1889.00, 3)

INSERT INTO Opinions(rate, opinion_description, opinion_date, product_id, product_price, [user_id])
VALUES (4,'Bardzo wydajny a zarazem super jakosc moze bateria troszke 2/10 ale idzie wytrzymac',
'01-10-2014 00:00:00', 4, 749.00, 3)





INSERT INTO Rankings(product_id,number_of_ratings, average_rate) VALUES (1,2,5)
INSERT INTO Rankings(product_id,number_of_ratings, average_rate) VALUES (2,1,5)
INSERT INTO Rankings(product_id,number_of_ratings, average_rate) VALUES (3,1,4)

INSERT INTO Rankings(service_id,number_of_ratings, average_rate) VALUES (1,0,0)
INSERT INTO Rankings(service_id,number_of_ratings, average_rate) VALUES (2,0,0)





INSERT INTO Subscription([user_id], category_id) VALUES (1,4)
INSERT INTO Subscription([user_id], category_id) VALUES (2,7)
INSERT INTO Subscription([user_id], category_id) VALUES (3,10)