USE [master]
GO
/****** Object:  Database [project01]    Script Date: 1/3/2016 3:39:07 PM ******/
CREATE DATABASE [project01]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'project01', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\project01.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'project01_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\project01_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [project01] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [project01].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [project01] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [project01] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [project01] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [project01] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [project01] SET ARITHABORT OFF 
GO
ALTER DATABASE [project01] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [project01] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [project01] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [project01] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [project01] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [project01] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [project01] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [project01] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [project01] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [project01] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [project01] SET  ENABLE_BROKER 
GO
ALTER DATABASE [project01] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [project01] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [project01] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [project01] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [project01] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [project01] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [project01] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [project01] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [project01] SET  MULTI_USER 
GO
ALTER DATABASE [project01] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [project01] SET DB_CHAINING OFF 
GO
ALTER DATABASE [project01] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [project01] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [project01]
GO
/****** Object:  Table [dbo].[AvailableSeat]    Script Date: 1/3/2016 3:39:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AvailableSeat](
	[SeatId] [int] IDENTITY(1,1) NOT NULL,
	[SeatNo] [varchar](10) NULL,
	[Time] [varchar](10) NULL,
	[Ticket_Price] [int] NULL,
	[Type] [varchar](50) NULL,
 CONSTRAINT [PK_AvailableSeat] PRIMARY KEY CLUSTERED 
(
	[SeatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BusCustomerInfo]    Script Date: 1/3/2016 3:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BusCustomerInfo](
	[Bus_Name] [varchar](50) NOT NULL,
	[Customer_Name] [varchar](50) NULL,
	[Contact_Number] [varchar](50) NULL,
	[Source] [varchar](50) NULL,
	[Destination] [varchar](50) NULL,
	[Seat] [varchar](20) NULL,
	[Price] [varchar](20) NULL,
	[Time] [varchar](20) NULL,
	[Payment] [varchar](10) NULL,
	[Type] [varchar](50) NULL,
	[Journey_Date] [varchar](50) NULL,
	[Return_Date] [varchar](50) NULL,
	[Serial] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_BusCustomerInfo] PRIMARY KEY CLUSTERED 
(
	[Serial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarInfo]    Script Date: 1/3/2016 3:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarInfo](
	[Car_ID] [int] IDENTITY(20001,1) NOT NULL,
	[Type] [varchar](10) NULL,
	[Name] [varchar](50) NULL,
	[Model] [varchar](50) NULL,
	[Colour] [varchar](10) NULL,
	[Available] [varchar](10) NULL,
	[Rent] [varchar](50) NULL,
 CONSTRAINT [PK_CarInfo] PRIMARY KEY CLUSTERED 
(
	[Car_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarRentCustomerInfo]    Script Date: 1/3/2016 3:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CarRentCustomerInfo](
	[Customer_ID] [int] NOT NULL,
	[Customer_Name] [varchar](50) NULL,
	[Customer_Contact_No] [varchar](50) NULL,
	[Car_ID] [int] NULL,
	[Rent_Date] [varchar](50) NULL,
	[Submission_Time] [varchar](50) NULL,
	[Car_Name] [varchar](50) NULL,
	[Price] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Signup]    Script Date: 1/3/2016 3:39:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Signup](
	[User_ID] [int] IDENTITY(101,1) NOT NULL,
	[First_Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NULL,
	[User_Name] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Email] [varchar](max) NULL,
	[Contact_No] [varchar](50) NULL,
	[National_ID] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Role] [varchar](10) NULL,
	[Gender] [varchar](10) NULL,
 CONSTRAINT [PK_Signup] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AvailableSeat] ON 

INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (1, N'A1', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (2, N'A2', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (3, N'B1', N'8:00 am', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (4, N'B2', N'8:00 am', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (5, N'A3', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (6, N'A4', N'10:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (7, N'C1', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (8, N'C2', N'8:00 am', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (9, N'C3', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (10, N'C4', N'10:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (11, N'B3', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (12, N'B4', N'7:00 pm', 550, N'Economy Class ')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (13, N'D1', N'10:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (14, N'D2', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (15, N'D3', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (16, N'D4', N'8:00 am', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (17, N'E1', N'8:00 am', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (18, N'E2', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (19, N'E3', N'10:00 pn', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (20, N'E4', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (21, N'F1', N'10:00 pm', 550, N'Economy Class ')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (22, N'F2', N'8:00 am', 550, N'Economy Class ')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (23, N'F3', N'8:00 am', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (24, N'F4', N'8:00 am', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (25, N'G1', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (26, N'G2', N'10:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (27, N'G3', N'10:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (28, N'G4', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (29, N'H1', N'10:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (30, N'H2', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (31, N'H3', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (32, N'H4', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (33, N'I1', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (34, N'I2', N'7:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (35, N'I3', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (36, N'I4', N'2:00 pm', 900, N'AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (37, N'J1', N'	2:00 pm', 900, N'	AC-Business Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (38, N'J2', N'8:00 am', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (39, N'J3', N'10:00 pm', 550, N'Economy Class')
INSERT [dbo].[AvailableSeat] ([SeatId], [SeatNo], [Time], [Ticket_Price], [Type]) VALUES (40, N'J4', N'10:00 pm', 550, N'Economy Class')
SET IDENTITY_INSERT [dbo].[AvailableSeat] OFF
SET IDENTITY_INSERT [dbo].[BusCustomerInfo] ON 

INSERT [dbo].[BusCustomerInfo] ([Bus_Name], [Customer_Name], [Contact_Number], [Source], [Destination], [Seat], [Price], [Time], [Payment], [Type], [Journey_Date], [Return_Date], [Serial]) VALUES (N'		DIPJOL Poribohon', N'PORAG', N'01741337720', N'DHAKA(Gabtoli)', N'DINAJPUR', N'F3', N'550', N'8:00 am', N'uCash', N'Economy Class', N'01-02-2016', N'01-02-2016', 1)
INSERT [dbo].[BusCustomerInfo] ([Bus_Name], [Customer_Name], [Contact_Number], [Source], [Destination], [Seat], [Price], [Time], [Payment], [Type], [Journey_Date], [Return_Date], [Serial]) VALUES (N'		SP GOLDEN LINE', N'parves', N'01823023212', N'DHAKA(Kallanpur)', N'SATKHIRA', N'B2', N'550', N'8:00 am', N'Visa Card', N'Economy Class', N'01-04-2016', N'01-04-2016', 2)
INSERT [dbo].[BusCustomerInfo] ([Bus_Name], [Customer_Name], [Contact_Number], [Source], [Destination], [Seat], [Price], [Time], [Payment], [Type], [Journey_Date], [Return_Date], [Serial]) VALUES (N'           SEARCH BUSES', N'gdsf', N'21213', N'RANGPUR', N'SAVAR', N'E1', N'550', N'8:00 am', N'Visa Card', N'Economy Class', N'01-05-2016', N'01-05-2016', 3)
SET IDENTITY_INSERT [dbo].[BusCustomerInfo] OFF
SET IDENTITY_INSERT [dbo].[CarInfo] ON 

INSERT [dbo].[CarInfo] ([Car_ID], [Type], [Name], [Model], [Colour], [Available], [Rent]) VALUES (20017, N'CAR', N'Allion X', N'Toyota-2012', N'Black', N'Yes', N'16000/=')
INSERT [dbo].[CarInfo] ([Car_ID], [Type], [Name], [Model], [Colour], [Available], [Rent]) VALUES (20019, N'MicroBus', N'Noah', N'NC-2010', N'Black', N'Yes', N'11000/=')
INSERT [dbo].[CarInfo] ([Car_ID], [Type], [Name], [Model], [Colour], [Available], [Rent]) VALUES (20021, N'MicroBus', N'HiACE', N'H-2015', N'Gray', N'Yes', N'12000/=')
INSERT [dbo].[CarInfo] ([Car_ID], [Type], [Name], [Model], [Colour], [Available], [Rent]) VALUES (20022, N'MicroBus', N'Frod', N'Toyota-2014s', N'Red', N'Yes', N'13500/=')
INSERT [dbo].[CarInfo] ([Car_ID], [Type], [Name], [Model], [Colour], [Available], [Rent]) VALUES (20023, N'CAR', N'G.Corolla', N'GT-c2011', N'Brown', N'Yes', N'13500/=')
INSERT [dbo].[CarInfo] ([Car_ID], [Type], [Name], [Model], [Colour], [Available], [Rent]) VALUES (20024, N'CAR', N'X.Solution', N'X-2000', N'Blue', N'Yes', N'11000/=')
INSERT [dbo].[CarInfo] ([Car_ID], [Type], [Name], [Model], [Colour], [Available], [Rent]) VALUES (20025, N'MicroBus', N'Noah', N'H-2013', N'Red', N'Yes', N'12000/=')
SET IDENTITY_INSERT [dbo].[CarInfo] OFF
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (36, N'Shila', N'235656898013', 20006, N'01/01/2016', N'', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20003, N'12/30/2015', N'8:00 PM', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (52, N'Shila', N'235656898013', 20006, N'02/01/2016', N'', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (36, N'Shila', N'235656898013', 20006, N'01/01/2016', N'', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (36, N'Shila', N'235656898013', 20006, N'01/15/2016', N'', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (65, N'kina', N'1565542', 20001, N'12/31/2015', N'', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (0, N'', N'', 0, N'12/28/2015', N'', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (0, N'', N'', 0, N'12/28/2015', N'', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (0, N'', N'', 0, N'01/01/2016', N'', NULL, NULL)
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (102, N'anandita', N'01556988974', 20001, N'01/03/2016', N'8:00 Pm', N'XCorolla', N'11000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (102, N'anandita', N'015569854520', 20016, N'01/02/2016', N'7:00 pm', N'xyz', N'5555/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (102, N'anandita', N'01556988974', 20006, N'01/03/2016', N'8:00 Pm', N'HiAce', N'13000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (102, N'anandita', N'015599856848', 20011, N'01/02/2016', N'8:00 am', N'Noha', N'12000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20003, N'12/30/2015', N'8:00 PM', N'Noha', N'12000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20003, N'12/30/2015', N'8:00 PM', N'Corolla Axid', N'14000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20011, N'12/30/2015', N'8:00 PM', N'Noha', N'12000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20009, N'12/30/2015', N'8:00 PM', N'Maruti Suzuki', N'9000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20018, N'12/30/2015', N'8:00 PM', N'HiAce', N'8000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20012, N'12/30/2015', N'8:00 PM', N'Corolla Axid', N'14000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20012, N'12/30/2015', N'8:00 PM', N'Corolla Axid', N'14000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20010, N'12/30/2015', N'8:00 PM', N'Noah', N'12000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20010, N'12/30/2015', N'8:00 PM', N'Noah', N'12000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20010, N'12/30/2015', N'8:00 PM', N'Noah', N'12000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20007, N'12/30/2015', N'8:00 PM', N'Ford', N'14000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20006, N'12/30/2015', N'8:00 PM', N'HiAce', N'13000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20006, N'12/30/2015', N'8:00 PM', N'HiAce', N'13000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20008, N'12/30/2015', N'8:00 PM', N'Corolla X. Solution', N'10000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20004, N'12/30/2015', N'8:00 PM', N'Corolla Axid', N'14000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (2, N'Sakib', N'01823023212', 20016, N'12/30/2015', N'8:00 PM', N'xyz', N'5555/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (96, N'kjkjkh', N'65456465', 20013, N'01/03/2016', N'7:00 pm', N'XCorolla', N'14000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (5656, N'sir', N'656546', 20014, N'01/03/2016', N'8:00 am', N'FPrimio', N'13000/=')
INSERT [dbo].[CarRentCustomerInfo] ([Customer_ID], [Customer_Name], [Customer_Contact_No], [Car_ID], [Rent_Date], [Submission_Time], [Car_Name], [Price]) VALUES (54, N'hghjghjf', N'84654654', 20015, N'01/06/2016', N'8:00 pm', N'XCorolla', N'15000/=')
SET IDENTITY_INSERT [dbo].[Signup] ON 

INSERT [dbo].[Signup] ([User_ID], [First_Name], [Last_Name], [User_Name], [Password], [Email], [Contact_No], [National_ID], [Address], [Role], [Gender]) VALUES (101, N'Nazmus', N'Sakib', N'parves', N'parves007', N'nazmussakib.parves.cse@gmail.com', N'01943497525', N'1993000011112222', N'Mirpru-10, Dhaka-1216', N'Admin', N'Male')
INSERT [dbo].[Signup] ([User_ID], [First_Name], [Last_Name], [User_Name], [Password], [Email], [Contact_No], [National_ID], [Address], [Role], [Gender]) VALUES (102, N'Anandita', N'Roy', N'anandita', N'ananditaroy123', N'roy.anandita@yahoo.com', N'01556236598', N'1987566598897447', N'Khulna, Bangladesh', N'Customer', N'		Female')
INSERT [dbo].[Signup] ([User_ID], [First_Name], [Last_Name], [User_Name], [Password], [Email], [Contact_No], [National_ID], [Address], [Role], [Gender]) VALUES (103, N'Md.', N'Saifuzzaman', N'saif', N'sir111', N'saif@aiub.edu', N'01700000000', N'1983000000000000', N'AIUB, Dhaka,Bangladesh', N'User		', N'		Male')
INSERT [dbo].[Signup] ([User_ID], [First_Name], [Last_Name], [User_Name], [Password], [Email], [Contact_No], [National_ID], [Address], [Role], [Gender]) VALUES (104, N'Faisal', N'Porag', N'Porag', N'porag000', N'faisalporag@gmail.com', N'01741337720', N'1993111122223333', N'Khilkhet,Dhaka', N'Customer', N'Male')
SET IDENTITY_INSERT [dbo].[Signup] OFF
USE [master]
GO
ALTER DATABASE [project01] SET  READ_WRITE 
GO
