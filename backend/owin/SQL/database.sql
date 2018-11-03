USE [master]
GO
/****** Object:  Database [WebApiAndSPA]    Script Date: 3/11/2018 8:58:03 PM ******/
CREATE DATABASE [WebApiAndSPA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebApiAndSPA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\WebApiAndSPA.mdf' , SIZE = 204800KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebApiAndSPA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\WebApiAndSPA_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WebApiAndSPA] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebApiAndSPA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebApiAndSPA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebApiAndSPA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebApiAndSPA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebApiAndSPA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebApiAndSPA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET RECOVERY FULL 
GO
ALTER DATABASE [WebApiAndSPA] SET  MULTI_USER 
GO
ALTER DATABASE [WebApiAndSPA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebApiAndSPA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebApiAndSPA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebApiAndSPA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebApiAndSPA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebApiAndSPA] SET QUERY_STORE = OFF
GO
USE [WebApiAndSPA]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [WebApiAndSPA]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/11/2018 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/11/2018 8:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](255) NULL,
	[ClaimValue] [nvarchar](255) NULL,
	[UserId] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/11/2018 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](255) NOT NULL,
	[LoginProvider] [nvarchar](255) NULL,
	[ProviderKey] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/11/2018 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[RoleId] [nvarchar](255) NOT NULL,
	[UserId] [nvarchar](255) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/11/2018 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](255) NOT NULL,
	[AccessFailedCount] [int] NULL,
	[Email] [nvarchar](255) NULL,
	[EmailConfirmed] [bit] NULL,
	[LockoutEnabled] [bit] NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[PasswordHash] [nvarchar](255) NULL,
	[PhoneNumber] [nvarchar](255) NULL,
	[PhoneNumberConfirmed] [bit] NULL,
	[TwoFactorEnabled] [bit] NULL,
	[UserName] [nvarchar](255) NOT NULL,
	[SecurityStamp] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConfigSetting]    Script Date: 3/11/2018 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigSetting](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ConfigKey] [nvarchar](256) NOT NULL,
	[ConfigValue] [nvarchar](512) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogHttpRecord]    Script Date: 3/11/2018 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogHttpRecord](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Level] [nvarchar](255) NOT NULL,
	[TrackingId] [nvarchar](255) NULL,
	[CalledOn] [datetime2](7) NOT NULL,
	[CallerAddress] [nvarchar](255) NOT NULL,
	[RequestIdentity] [nvarchar](256) NOT NULL,
	[Verb] [nvarchar](50) NOT NULL,
	[RequestUri] [nvarchar](1024) NOT NULL,
	[RequestHeaders] [ntext] NOT NULL,
	[Request] [ntext] NOT NULL,
	[StatusCode] [int] NULL,
	[ReasonPhrase] [nvarchar](255) NULL,
	[ResponseHeaders] [ntext] NULL,
	[Response] [ntext] NULL,
	[CallDuration] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogMessageRecord]    Script Date: 3/11/2018 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogMessageRecord](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[LogTimestamp] [datetime2](7) NOT NULL,
	[Level] [nvarchar](255) NOT NULL,
	[Logger] [nvarchar](256) NOT NULL,
	[Message] [ntext] NOT NULL,
	[StackTrace] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 3/11/2018 8:58:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Password] [nvarchar](512) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FKE3450235526E4265] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FKE3450235526E4265]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FKF4F7D992EA778823] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FKF4F7D992EA778823]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK6B768E3C526E4265] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK6B768E3C526E4265]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FKEF896DAEEA778823] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FKEF896DAEEA778823]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK86803B282B87AB2A] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK86803B282B87AB2A]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK86803B28EA778823] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK86803B28EA778823]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FKFAADC1EF526E4265] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FKFAADC1EF526E4265]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FKFAADC1EF92E2FD93] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FKFAADC1EF92E2FD93]
GO
USE [master]
GO
ALTER DATABASE [WebApiAndSPA] SET  READ_WRITE 
GO
