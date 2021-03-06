USE [master]
GO
/****** Object:  Database [Tourist_agency]    Script Date: 29.03.2022 10:07:35 ******/
CREATE DATABASE [Tourist_agency]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tourist_agency', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.TRIAESQLEXPRESS\MSSQL\DATA\Tourist_agency.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tourist_agency_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.TRIAESQLEXPRESS\MSSQL\DATA\Tourist_agency_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Tourist_agency] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tourist_agency].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tourist_agency] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tourist_agency] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tourist_agency] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tourist_agency] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tourist_agency] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tourist_agency] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Tourist_agency] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tourist_agency] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tourist_agency] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tourist_agency] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tourist_agency] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tourist_agency] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tourist_agency] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tourist_agency] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tourist_agency] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Tourist_agency] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tourist_agency] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tourist_agency] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tourist_agency] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tourist_agency] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tourist_agency] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tourist_agency] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tourist_agency] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Tourist_agency] SET  MULTI_USER 
GO
ALTER DATABASE [Tourist_agency] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tourist_agency] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tourist_agency] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tourist_agency] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tourist_agency] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Tourist_agency] SET QUERY_STORE = OFF
GO
USE [Tourist_agency]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 29.03.2022 10:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id_client] [int] IDENTITY(1,1) NOT NULL,
	[name_client] [varchar](100) NOT NULL,
	[surname_client] [varchar](100) NOT NULL,
	[lastname_clients] [varchar](100) NOT NULL,
	[phone_client] [varchar](12) NOT NULL,
	[email_client] [varchar](255) NOT NULL,
	[id_tour] [int] NOT NULL,
 CONSTRAINT [PK__Clients__6EC2B6C0D0637670] PRIMARY KEY CLUSTERED 
(
	[id_client] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 29.03.2022 10:07:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[id_contract] [int] NOT NULL,
	[id_employee] [int] NOT NULL,
	[date_contract] [date] NOT NULL,
	[number_contract] [int] NOT NULL,
	[id_tour] [int] NOT NULL,
	[content_contract] [varchar](2048) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_contract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 29.03.2022 10:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[id_employee] [int] NOT NULL,
	[name_employee] [varchar](100) NOT NULL,
	[surname_employee] [varchar](100) NOT NULL,
	[lastname_employee] [varchar](100) NOT NULL,
	[id_position] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logging]    Script Date: 29.03.2022 10:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logging](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_] [datetime2](7) NOT NULL,
	[caption] [varchar](1024) NOT NULL,
 CONSTRAINT [PK__Logging__3213E83FC265D2FD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 29.03.2022 10:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[id_payment] [int] NOT NULL,
	[date_payments] [date] NOT NULL,
	[type_payment] [varchar](255) NOT NULL,
	[price_payment] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_payment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 29.03.2022 10:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[id_position] [int] NOT NULL,
	[name_positions] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[id_position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tour]    Script Date: 29.03.2022 10:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour](
	[id_tour] [int] NOT NULL,
	[id_transport] [int] NOT NULL,
	[name_tour] [varchar](255) NOT NULL,
	[id_payment] [int] NOT NULL,
	[date_start_tour] [date] NOT NULL,
	[date_end_tour] [date] NOT NULL,
	[id_contract] [int] NOT NULL,
	[price] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Transport]    Script Date: 29.03.2022 10:07:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transport](
	[id_transport] [int] NOT NULL,
	[name_transport] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_transport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Tour] FOREIGN KEY([id_tour])
REFERENCES [dbo].[Tour] ([id_tour])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Tour]
GO
ALTER TABLE [dbo].[Contract]  WITH CHECK ADD  CONSTRAINT [FK_Contract_Employee] FOREIGN KEY([id_employee])
REFERENCES [dbo].[Employee] ([id_employee])
GO
ALTER TABLE [dbo].[Contract] CHECK CONSTRAINT [FK_Contract_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Positions] FOREIGN KEY([id_position])
REFERENCES [dbo].[Positions] ([id_position])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Positions]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Contract] FOREIGN KEY([id_contract])
REFERENCES [dbo].[Contract] ([id_contract])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_Contract]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Payment] FOREIGN KEY([id_payment])
REFERENCES [dbo].[Payment] ([id_payment])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_Payment]
GO
ALTER TABLE [dbo].[Tour]  WITH CHECK ADD  CONSTRAINT [FK_Tour_Transport] FOREIGN KEY([id_transport])
REFERENCES [dbo].[Transport] ([id_transport])
GO
ALTER TABLE [dbo].[Tour] CHECK CONSTRAINT [FK_Tour_Transport]
GO
USE [master]
GO
ALTER DATABASE [Tourist_agency] SET  READ_WRITE 
GO
