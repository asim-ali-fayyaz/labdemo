USE [master]
GO
/****** Object:  Database [Paseparda]    Script Date: 06/04/2022 12:15:32 pm ******/
CREATE DATABASE [Paseparda]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Paseparda', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Paseparda.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Paseparda_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Paseparda_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Paseparda] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Paseparda].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Paseparda] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Paseparda] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Paseparda] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Paseparda] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Paseparda] SET ARITHABORT OFF 
GO
ALTER DATABASE [Paseparda] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Paseparda] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Paseparda] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Paseparda] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Paseparda] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Paseparda] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Paseparda] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Paseparda] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Paseparda] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Paseparda] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Paseparda] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Paseparda] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Paseparda] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Paseparda] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Paseparda] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Paseparda] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Paseparda] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Paseparda] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Paseparda] SET  MULTI_USER 
GO
ALTER DATABASE [Paseparda] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Paseparda] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Paseparda] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Paseparda] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Paseparda] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Paseparda] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Paseparda] SET QUERY_STORE = OFF
GO
USE [Paseparda]
GO
/****** Object:  Table [dbo].[ImagesDetails]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImagesDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[postDate] [datetime] NULL,
	[coordinate] [nvarchar](50) NULL,
 CONSTRAINT [PK_ImagesDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LatestNews]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LatestNews](
	[sr] [int] IDENTITY(1,1) NOT NULL,
	[lid] [nvarchar](50) NOT NULL,
	[newstitle] [nvarchar](80) NULL,
	[newsdetails] [nvarchar](max) NULL,
	[datatime] [datetime] NULL,
	[imgurl] [nvarchar](max) NULL,
	[thumnail] [nvarchar](max) NULL,
	[isactive] [bit] NULL,
 CONSTRAINT [PK_LatestNews] PRIMARY KEY CLUSTERED 
(
	[sr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsDetails]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pagetitle] [nvarchar](50) NULL,
	[coordinate] [nvarchar](50) NULL,
	[newsdetails] [nvarchar](max) NULL,
	[newsHeading] [nvarchar](100) NULL,
 CONSTRAINT [PK_NewsDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsPaperPages]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsPaperPages](
	[npid] [int] IDENTITY(1,1) NOT NULL,
	[pagetitle] [nvarchar](50) NULL,
	[pageimagedata] [varbinary](max) NULL,
	[pageimageUrl] [nvarchar](max) NULL,
	[imageThumnailUrl] [nvarchar](max) NULL,
	[date] [nvarchar](20) NULL,
	[isactive] [bit] NULL,
	[currentdatetime] [date] NULL,
 CONSTRAINT [PK_NewsPaperPages] PRIMARY KEY CLUSTERED 
(
	[npid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteLatesNewsById]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_DeleteLatesNewsById] 
@nid nvarchar(15)
AS
BEGIN
delete LatestNews where lid=@nid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteNewsPaperPage]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Sp_DeleteNewsPaperPage]
@npid int
as

begin

delete from NewsPaperPages 
where 
npid=@npid 
end


--select * from NewsPaperPages
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllLatesNews]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetAllLatesNews] 
AS
BEGIN
select lid,newstitle,thumnail,datatime from LatestNews order by sr desc
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAllNewsPaperAdmin]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetAllNewsPaperAdmin] 

 
AS
BEGIN
		select top(8) npid, pagetitle,imageThumnailUrl from NewsPaperPages
		order by pagetitle desc
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetLatesNewsDetailById]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_GetLatesNewsDetailById]
@nid nvarchar(15)
as
begin
	select ln.newstitle, 
	ln.newsdetails, 
	ln.datatime,
	ln.imgurl 
	from LatestNews as ln
	where ln.lid=@nid
end
GO
/****** Object:  StoredProcedure [dbo].[SP_GetNewsImageCoordinates]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetNewsImageCoordinates] 
 @pagetitle nvarchar(50)
 
AS
declare @d date=getdate()
BEGIN
--select pagetitle,pageimageUrl from NewsPaperPages where pagetitle=@pagetitle
select pagetitle,coordinate from NewsDetails where pagetitle=(CONVERT(varchar(10),YEAR(@d))+CONVERT(varchar(10),MONTH(@d))+convert(varchar(10),DAY(@d))+@pagetitle)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetNewsPageimages]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetNewsPageimages]
@pageid varchar(50)=Null

AS
BEGIN
declare  @d date=GETDATE()
if @pageid is not null
	begin
		select npp.npid,npp.pagetitle,npp.pageimageUrl
		from NewsPaperPages as npp where pagetitle=
	    (CONVERT(varchar(10),YEAR(@d))+
		CONVERT(varchar(10),MONTH(@d))+
		convert(varchar(10),DAY(@d))+
		@pageid) 
		And npp.date=CONVERT(VARCHAR(10), getdate(), 111)
	end
else if @pageid is null
	begin
	select npp.npid,npp.pagetitle,npp.pageimageUrl 
		from NewsPaperPages as npp where pagetitle=
	    (CONVERT(varchar(10),YEAR(@d))+
		CONVERT(varchar(10),MONTH(@d))+
		convert(varchar(10),DAY(@d))+'1')
		And npp.date=CONVERT(VARCHAR(10), getdate(), 111)
	end
END

--truncate table NewsPaperPages
--select * from NewsPaperPages
--select CONVERT(VARCHAR(10), getdate(), 111)
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTopFourLatesNews]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_GetTopFourLatesNews] 
AS
BEGIN
select top(4)lid,newstitle,thumnail from LatestNews order by sr desc
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Magazine_Create]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_Magazine_Create] 
AS
BEGIN
insert into MagazineDetails(dataofpublish, isactive)
values
(CONVERT(VARCHAR(10), getdate(), 111), 'True')  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MagazinePages_Create]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_MagazinePages_Create] 
@magazineid int, 
@pageurl nvarchar(255), 
@title nvarchar(100), 
@writerid int
AS
BEGIN
insert into MagazinePagesDetails(magazineid, pageurl, title, writerid)
values
(@magazineid, @pageurl, @title, @writerid)  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_NewsPageimageByPageNo]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_NewsPageimageByPageNo] 
 @pagetitle nvarchar(50)
 
AS
BEGIN
select pageimageUrl from NewsPaperPages where pagetitle=@pagetitle
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ReadNewsDetailsById]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ReadNewsDetailsById] 
 @pagetitle varchar(50),
 @coordinate nvarchar(20)
 
AS
BEGIN

select newsHeading,newsdetails,img.ImageUrl from NewsDetails 
left join ImagesDetails as img
on 
img.coordinate=NewsDetails.coordinate

where pagetitle=@pagetitle and NewsDetails.coordinate=@coordinate

END
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveLatesNews]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SaveLatesNews] 
 @newstitle nvarchar(80), 
 @newsdetails nvarchar(Max), 
 @imgurl nvarchar(Max), 
 @thumnail nvarchar(Max)
AS
BEGIN
declare @ran nvarchar(50)=(select LEFT(SUBSTRING (RTRIM(RAND()) + SUBSTRING(RTRIM(RAND()),3,11), 3,11),6))

insert into LatestNews(lid, newstitle, newsdetails, datatime, imgurl, thumnail, isactive)
values
(@ran, @newstitle, @newsdetails, GETDATE(), @imgurl, @thumnail,'True')  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveNewsDetail]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SaveNewsDetail] 
 @pagetitle nvarchar(50), 
 @coordinate nvarchar(Max),
 @NewsHeading nvarchar(100),
 @NewsDetails nvarchar(MAX),
 @ImageUrl nvarchar(MAX)=NUll
AS
BEGIN
insert into NewsDetails
(pagetitle, coordinate,newsHeading, newsdetails)
values
(@pagetitle,@coordinate,@NewsHeading, @NewsDetails) 
if(@ImageUrl is not null)
begin
	insert into dbo.ImagesDetails(ImageUrl, postDate, coordinate)
	values(@ImageUrl,GETDATE(),@coordinate) 
end
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveNewsPageInfo]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_SaveNewsPageInfo] 
 @pagetitle nvarchar(50) ,
  --@pageimagedata varbinary(Max), 
 @pageimageUrl nvarchar(Max)
 --@imageThumnailUrl nvarchar(MAX)

AS
BEGIN
insert into NewsPaperPages
(pagetitle,pageimageUrl,[date],isactive,currentdatetime)
values
(@pagetitle,@pageimageUrl,CONVERT(VARCHAR(10), getdate(), 111),'True',GETDATE())  
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SavewriterInfo]    Script Date: 06/04/2022 12:15:33 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_SavewriterInfo] 
 @englishname varchar(50), 
 @urduname nvarchar(50), 
 @email varchar(100), 
 @phone varchar(20), 
 @imageurl nvarchar(200)
AS
BEGIN
insert into WriterInformation
(englishname, urduname, email, phone, imageurl)
values
(@englishname, @urduname, @email, @phone, @imageurl)  
END
GO
USE [master]
GO
ALTER DATABASE [Paseparda] SET  READ_WRITE 
GO
