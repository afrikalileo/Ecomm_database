create table UserEcom
(
ID int Primary Key IDENTITY(1,1),
UserEcomName nvarchar(MAX),
UserEcomSurName nvarchar(MAX),
UserEcomEmail nvarchar(MAX),
EnrolledDate date,
OrderEcomID int,
)

create table ProductEcom
(
ID int Primary Key IDENTITY(1,1),
ProductEcomName nvarchar(MAX),
ProductEcomMaterials nvarchar(MAX),
ProductEcomColours nvarchar(max),
PriceProduct money,
ProductWeight decimal,
CategoryID int,
)

create table CategoryEcom
(
ID int Primary Key IDENTITY(1,1),
CategoryEcomName nvarchar(MAX),
SubandUpCatID int,
)

create table SubandUpCatID 
(
ID int Primary Key IDENTITY(1,1),
SubandUpCatIDName nvarchar(MAX),
)

create table FavList
(
ID int Primary Key IDENTITY(1,1),
ProductEcomID int,
UserEcomID int,
)

create table OrderEcom
(
ID int Primary Key IDENTITY(1,1),
OrderFrequency int,
TotalPrice Money,
ShippingAddress nvarchar(MAX)
)

create table OrderProduct
(
ID int Primary Key IDENTITY(1,1),
ProductID int,
OrderEcom int,
)

create table City
(
ID int Primary Key IDENTITY(1,1),
CityName nvarchar(MAX),
DistrictID int,
)

create table Disrict 
(
ID int Primary Key IDENTITY(1,1),
DistrictName nvarchar(MAX),
)