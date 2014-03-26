USE [master]
GO

/****** Object:  Database [AllegriniLuca]    Script Date: 3/26/2014 2:09:21 PM ******/
CREATE DATABASE [AllegriniLuca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AllegriniLuca', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLSERVER2012\MSSQL\DATA\AllegriniLuca.mdf' , SIZE = 102400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AllegriniLuca_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLSERVER2012\MSSQL\DATA\AllegriniLuca_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [AllegriniLuca] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AllegriniLuca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [AllegriniLuca] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [AllegriniLuca] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [AllegriniLuca] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [AllegriniLuca] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [AllegriniLuca] SET ARITHABORT OFF 
GO

ALTER DATABASE [AllegriniLuca] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [AllegriniLuca] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [AllegriniLuca] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [AllegriniLuca] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [AllegriniLuca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [AllegriniLuca] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [AllegriniLuca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [AllegriniLuca] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [AllegriniLuca] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [AllegriniLuca] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [AllegriniLuca] SET  DISABLE_BROKER 
GO

ALTER DATABASE [AllegriniLuca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [AllegriniLuca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [AllegriniLuca] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [AllegriniLuca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [AllegriniLuca] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [AllegriniLuca] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [AllegriniLuca] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [AllegriniLuca] SET RECOVERY FULL 
GO

ALTER DATABASE [AllegriniLuca] SET  MULTI_USER 
GO

ALTER DATABASE [AllegriniLuca] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [AllegriniLuca] SET DB_CHAINING OFF 
GO

ALTER DATABASE [AllegriniLuca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [AllegriniLuca] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [AllegriniLuca] SET  READ_WRITE 
GO
