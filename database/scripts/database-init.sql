create schema dict
go

create table dict.FigureSeries
(
    Id          int not null
        constraint PK_FigureSeries
            primary key,
    Name        nvarchar(50),
    Description nvarchar(100)
)
go

INSERT INTO dict.FigureSeries (Id, Name, Description) VALUES (1, N'Star Wars', N'Star Wars');


create table dict.FigureSize
(
    Id          int not null
        constraint PK_FigureSize
            primary key,
    Name        nvarchar(50),
    Description nvarchar(100)
)
go

INSERT INTO dict.FigureSize (Id, Name, Description) VALUES (1, N'Regular', N'Regular');
INSERT INTO dict.FigureSize (Id, Name, Description) VALUES (2, N'Big in box', N'Big in box');
INSERT INTO dict.FigureSize (Id, Name, Description) VALUES (3, N'Super size', N'Super size');
INSERT INTO dict.FigureSize (Id, Name, Description) VALUES (4, N'Jumbo', N'Jumbo');
INSERT INTO dict.FigureSize (Id, Name, Description) VALUES (5, N'Mega', N'Mega');



create table dict.FigureType
(
    Id          int not null
        constraint PK_FigureType
            primary key,
    Name        nvarchar(50),
    Description nvarchar(100)
)
go

INSERT INTO dict.FigureType (Id, Name, Description) VALUES (1, N'Regular', N'Regular');
INSERT INTO dict.FigureType (Id, Name, Description) VALUES (2, N'Keychain', N'Keychain');
INSERT INTO dict.FigureType (Id, Name, Description) VALUES (3, N'Deluxe', N'Deluxe');
INSERT INTO dict.FigureType (Id, Name, Description) VALUES (4, N'Die-Cast', N'Die-Cast');
INSERT INTO dict.FigureType (Id, Name, Description) VALUES (5, N'Cover', N'Cover');
INSERT INTO dict.FigureType (Id, Name, Description) VALUES (6, N'Rides', N'Rides');
INSERT INTO dict.FigureType (Id, Name, Description) VALUES (7, N'Moment', N'Moment');


create table dict.FigureVariant
(
    Id          int not null
        constraint PK_FigureVariant
            primary key,
    Name        nvarchar(50),
    Description nvarchar(100)
)
go

INSERT INTO dict.FigureVariant (Id, Name, Description) VALUES (1, N'Metallic', N'Metallic');
INSERT INTO dict.FigureVariant (Id, Name, Description) VALUES (2, N'Flocked', N'Flocked');
INSERT INTO dict.FigureVariant (Id, Name, Description) VALUES (3, N'GITD', N'GITD');
INSERT INTO dict.FigureVariant (Id, Name, Description) VALUES (4, N'Blacklight', N'Blacklight');
INSERT INTO dict.FigureVariant (Id, Name, Description) VALUES (5, N'Chrome', N'Chrome');
INSERT INTO dict.FigureVariant (Id, Name, Description) VALUES (6, N'Diamond', N'Diamond');
INSERT INTO dict.FigureVariant (Id, Name, Description) VALUES (7, N'Chase', N'Chase');



create table Figure
(
    Id               varchar(32)  not null
        constraint PK_Figure
            primary key,
    Name             nvarchar(50) not null,
    VariantId        int          not null
        constraint FK_Figure_FigureType
            references dict.FigureVariant,
    SeriesId         int          not null
        constraint FK_Figure_FigureSeries
            references dict.FigureSeries,
    IsSpecialEdition bit          not null,
    SizeId           int          not null
        constraint FK_Figure_FigureSize
            references dict.FigureSize,
    TypeId           int
)
go

