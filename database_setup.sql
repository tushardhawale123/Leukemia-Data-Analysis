USE [master]
GO
/****** Object:  Database [Biased_leukemia]    Script Date: 14-03-2025 23:41:59 ******/
CREATE DATABASE [Biased_leukemia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Biased_leukemia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER_TUSH\MSSQL\DATA\Biased_leukemia.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Biased_leukemia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER_TUSH\MSSQL\DATA\Biased_leukemia_log.ldf' , SIZE = 270336KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Biased_leukemia] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biased_leukemia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biased_leukemia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biased_leukemia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biased_leukemia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biased_leukemia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biased_leukemia] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biased_leukemia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Biased_leukemia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biased_leukemia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biased_leukemia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biased_leukemia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biased_leukemia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biased_leukemia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biased_leukemia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biased_leukemia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biased_leukemia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Biased_leukemia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biased_leukemia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biased_leukemia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biased_leukemia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biased_leukemia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biased_leukemia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biased_leukemia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biased_leukemia] SET RECOVERY FULL 
GO
ALTER DATABASE [Biased_leukemia] SET  MULTI_USER 
GO
ALTER DATABASE [Biased_leukemia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biased_leukemia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biased_leukemia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biased_leukemia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Biased_leukemia] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Biased_leukemia] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Biased_leukemia', N'ON'
GO
ALTER DATABASE [Biased_leukemia] SET QUERY_STORE = ON
GO
ALTER DATABASE [Biased_leukemia] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Biased_leukemia]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 14-03-2025 23:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Country_ID] [int] IDENTITY(1,1) NOT NULL,
	[Country_Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Country_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Country_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leukemia_dataset]    Script Date: 14-03-2025 23:41:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leukemia_dataset](
	[Patient_ID] [int] NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[WBC_Count] [int] NOT NULL,
	[RBC_Count] [decimal](18, 2) NOT NULL,
	[Platelet_Count] [int] NOT NULL,
	[Hemoglobin_Level] [decimal](18, 2) NOT NULL,
	[Bone_Marrow_Blasts] [int] NOT NULL,
	[Genetic_Mutation] [char](10) NOT NULL,
	[Family_History] [char](10) NOT NULL,
	[BMI] [decimal](18, 2) NOT NULL,
	[Ethnicity] [nvarchar](50) NOT NULL,
	[Socioeconomic_Status] [nvarchar](50) NOT NULL,
	[Urban_Rural] [nvarchar](50) NOT NULL,
	[Leukemia_Status] [nvarchar](50) NOT NULL,
	[Smoking_Status_Bit] [bit] NULL,
	[Genetic_Mutation_Bit] [bit] NULL,
	[Family_History_Bit] [bit] NULL,
	[Alcohol_Consumption_Bit] [bit] NULL,
	[Radiation_Exposure_Bit] [bit] NULL,
	[Infection_History_Bit] [bit] NULL,
	[Chronic_Illness_Bit] [bit] NULL,
	[Immune_Disorders_Bit] [bit] NULL,
	[Country_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [idx_age]    Script Date: 14-03-2025 23:41:59 ******/
CREATE NONCLUSTERED INDEX [idx_age] ON [dbo].[leukemia_dataset]
(
	[Age] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [idx_leukemia_status]    Script Date: 14-03-2025 23:41:59 ******/
CREATE NONCLUSTERED INDEX [idx_leukemia_status] ON [dbo].[leukemia_dataset]
(
	[Leukemia_Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [idx_wbc_count]    Script Date: 14-03-2025 23:41:59 ******/
CREATE NONCLUSTERED INDEX [idx_wbc_count] ON [dbo].[leukemia_dataset]
(
	[WBC_Count] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Biased_leukemia] SET  READ_WRITE 
GO
