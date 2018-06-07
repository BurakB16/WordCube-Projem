
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 06/07/2018 05:20:47
-- Generated from EDMX file: C:\Users\Burak\Desktop\Projem\Proje\Proje\Models\FormDataBase.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [FormDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Kullanıcılar]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Kullanıcılar];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Kullanıcılar'
CREATE TABLE [dbo].[Kullanıcılar] (
    [UserID] int IDENTITY(1,1) NOT NULL,
    [ad] nvarchar(50)  NOT NULL,
    [soyad] nvarchar(50)  NOT NULL,
    [mail] nvarchar(50)  NOT NULL,
    [kadi] nvarchar(50)  NOT NULL,
    [ksifre] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UserID] in table 'Kullanıcılar'
ALTER TABLE [dbo].[Kullanıcılar]
ADD CONSTRAINT [PK_Kullanıcılar]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------