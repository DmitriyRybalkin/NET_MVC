USE [master]
GO

/****** Object:  Database [UploadingDB]    Script Date: 03/26/2014 13:51:31 ******/
CREATE DATABASE [UploadingDB] ON  PRIMARY 
( NAME = N'UploadingDB', FILENAME = N'D:\MSSQL10_50\MSSQL\DATA\UploadingDB.mdf' , SIZE = 40960KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'UploadingDB_log', FILENAME = N'D:\MSSQL10_50\MSSQL\DATA\UploadingDB_log.ldf' , SIZE = 112384KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [UploadingDB] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UploadingDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [UploadingDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [UploadingDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [UploadingDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [UploadingDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [UploadingDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [UploadingDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [UploadingDB] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [UploadingDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [UploadingDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [UploadingDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [UploadingDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [UploadingDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [UploadingDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [UploadingDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [UploadingDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [UploadingDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [UploadingDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [UploadingDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [UploadingDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [UploadingDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [UploadingDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [UploadingDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [UploadingDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [UploadingDB] SET  READ_WRITE 
GO

ALTER DATABASE [UploadingDB] SET RECOVERY FULL 
GO

ALTER DATABASE [UploadingDB] SET  MULTI_USER 
GO

ALTER DATABASE [UploadingDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [UploadingDB] SET DB_CHAINING OFF 
GO




USE [UploadingDB]
GO
/****** Object:  Schema [Test]    Script Date: 03/26/2014 13:50:56 ******/
CREATE SCHEMA [Test] AUTHORIZATION [dbo]
GO
/****** Object:  Table [Test].[PRIMARY_TABLE]    Script Date: 03/26/2014 13:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Test].[PRIMARY_TABLE](
	[RNN] [nvarchar](12) NOT NULL,
	[IIN_BIN] [nvarchar](12) NULL,
	[TAXPAYER_TYPE] [tinyint] NULL,
	[RESIDENCY_TYPE] [tinyint] NULL,
	[ORGANIZATION_PERSISTANCY] [tinyint] NULL,
	[IB_TYPE] [tinyint] NULL,
	[IB_NAME] [nvarchar](500) NULL,
	[INDIVIDUAL_NAME] [nvarchar](100) NULL,
	[LAST_RESIGN_DATE] [datetime] NULL,
	[RESIGN_REASON] [tinyint] NULL,
	[INDIVIDUAL_TYPE] [tinyint] NULL,
	[DORMANT_TAXPAYER_TYPE] [tinyint] NULL,
	[TAXPAYER_COMPANY_TYPE] [int] NULL,
	[TAXPAYER_NAME_BY_LOCATION] [nvarchar](100) NULL,
 CONSTRAINT [PK_PRIMARY_TABLE] PRIMARY KEY CLUSTERED 
(
	[RNN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Test].[PRIMARY_LOAD]    Script Date: 03/26/2014 13:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Test].[PRIMARY_LOAD](
	[RNN] [nvarchar](12) NOT NULL,
	[IIN_BIN] [nvarchar](12) NULL,
	[TAXPAYER_TYPE] [tinyint] NULL,
	[RESIDENCY_TYPE] [tinyint] NULL,
	[ORGANIZATION_PERSISTANCY] [tinyint] NULL,
	[IB_TYPE] [tinyint] NULL,
	[IB_NAME] [nvarchar](500) NULL,
	[INDIVIDUAL_NAME] [nvarchar](100) NULL,
	[LAST_RESIGN_DATE] [datetime] NULL,
	[RESIGN_REASON] [tinyint] NULL,
	[INDIVIDUAL_TYPE] [tinyint] NULL,
	[DORMANT_TAXPAYER_TYPE] [tinyint] NULL,
	[TAXPAYER_COMPANY_TYPE] [int] NULL,
	[TAXPAYER_NAME_BY_LOCATION] [nvarchar](100) NULL,
 CONSTRAINT [PK_PRIMARY_LOAD] PRIMARY KEY CLUSTERED 
(
	[RNN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Test].[DAILY_LOAD]    Script Date: 03/26/2014 13:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Test].[DAILY_LOAD](
	[RNN] [nvarchar](12) NOT NULL,
	[IIN_BIN] [nvarchar](12) NULL,
	[TAXPAYER_TYPE] [tinyint] NULL,
	[RESIDENCY_TYPE] [tinyint] NULL,
	[ORGANIZATION_PERSISTANCY] [tinyint] NULL,
	[IB_TYPE] [tinyint] NULL,
	[IB_NAME] [nvarchar](500) NULL,
	[INDIVIDUAL_NAME] [nvarchar](100) NULL,
	[LAST_RESIGN_DATE] [datetime] NULL,
	[RESIGN_REASON] [tinyint] NULL,
	[INDIVIDUAL_TYPE] [tinyint] NULL,
	[DORMANT_TAXPAYER_TYPE] [tinyint] NULL,
	[TAXPAYER_COMPANY_TYPE] [int] NULL,
	[TAXPAYER_NAME_BY_LOCATION] [nvarchar](100) NULL,
	[RECORD_PROCESSING_TYPE] [tinyint] NULL,
 CONSTRAINT [PK_DAILY_LOAD] PRIMARY KEY CLUSTERED 
(
	[RNN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [Test].[sp_GetDailyLoadRecords]    Script Date: 03/26/2014 13:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Test].[sp_GetDailyLoadRecords]
	@RNN nvarchar(12) = NULL
	,@ErrCode nvarchar(3) OUTPUT
	,@SysCode nvarchar(10) OUTPUT
	,@ErrDesc nvarchar(500) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;


	BEGIN TRY

		DECLARE @MethodName nvarchar(256)
		DECLARE @FileName varchar(255)
		DECLARE @SQLStatement nvarchar(max)
		
		SET @ErrCode = '000'
		SET @ErrDesc = ''
		SET @SysCode = 'DB'
		SET @MethodName = OBJECT_SCHEMA_NAME (@@PROCID) + '.' + OBJECT_NAME(@@PROCID)

		SET @SQLStatement = 
		'SELECT [RNN]
				  ,[IIN_BIN]
				  ,[TAXPAYER_TYPE]
				  ,[RESIDENCY_TYPE]
				  ,[ORGANIZATION_PERSISTANCY]
				  ,[IB_TYPE]
				  ,[IB_NAME]
				  ,[INDIVIDUAL_NAME]
				  ,[LAST_RESIGN_DATE]
				  ,[RESIGN_REASON]
				  ,[INDIVIDUAL_TYPE]
				  ,[DORMANT_TAXPAYER_TYPE]
				  ,[TAXPAYER_COMPANY_TYPE]
				  ,[TAXPAYER_NAME_BY_LOCATION]
				  ,[RECORD_PROCESSING_TYPE]
		FROM [Test].[DAILY_LOAD]
			WHERE RNN IS NOT NULL'
		
		IF @RNN IS NOT NULL
		BEGIN
		
			SET @SQLStatement = @SQLStatement + ' AND RNN = ''' + @RNN + ''''
			
		END
        
		EXEC (@SQLStatement)
		
	END TRY
	BEGIN CATCH
		SET @ErrCode='998' 
		SET @ErrDesc = @MethodName + ' (ErrNo: '  + CAST(ERROR_NUMBER() AS nvarchar(10)) 
			+ ', LineNo: ' + CAST(ERROR_LINE () as nvarchar(10))
			+ ') :' + ERROR_MESSAGE()
		
	END CATCH

	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Test].[sp_GetPrimaryLoadRecords]    Script Date: 03/26/2014 13:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Test].[sp_GetPrimaryLoadRecords]
	@RNN nvarchar(12) = NULL
	,@ErrCode nvarchar(3) OUTPUT
	,@SysCode nvarchar(10) OUTPUT
	,@ErrDesc nvarchar(500) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;


	BEGIN TRY

		DECLARE @MethodName nvarchar(256)
		DECLARE @FileName varchar(255)
		DECLARE @SQLStatement nvarchar(max)
		
		SET @ErrCode = '000'
		SET @ErrDesc = ''
		SET @SysCode = 'DB'
		SET @MethodName = OBJECT_SCHEMA_NAME (@@PROCID) + '.' + OBJECT_NAME(@@PROCID)

		SET @SQLStatement = 
		'SELECT [RNN]
			  ,[IIN_BIN]
			  ,[TAXPAYER_TYPE]
			  ,[RESIDENCY_TYPE]
			  ,[ORGANIZATION_PERSISTANCY]
			  ,[IB_TYPE]
			  ,[IB_NAME]
			  ,[INDIVIDUAL_NAME]
			  ,[LAST_RESIGN_DATE]
			  ,[RESIGN_REASON]
			  ,[INDIVIDUAL_TYPE]
			  ,[DORMANT_TAXPAYER_TYPE]
			  ,[TAXPAYER_COMPANY_TYPE]
			  ,[TAXPAYER_NAME_BY_LOCATION]
		FROM [Test].[PRIMARY_LOAD]
		WHERE RNN IS NOT NULL'
		
		IF @RNN IS NOT NULL
		BEGIN
		
			SET @SQLStatement = @SQLStatement + ' AND RNN = ''' + @RNN + ''''
			
		END
        
		EXEC (@SQLStatement)
		
	END TRY
	BEGIN CATCH
		SET @ErrCode='998' 
		SET @ErrDesc = @MethodName + ' (ErrNo: '  + CAST(ERROR_NUMBER() AS nvarchar(10)) 
			+ ', LineNo: ' + CAST(ERROR_LINE () as nvarchar(10))
			+ ') :' + ERROR_MESSAGE()
		
	END CATCH

	SET NOCOUNT OFF;
END
GO
/****** Object:  Table [Test].[SYS_PARAMETERS]    Script Date: 03/26/2014 13:50:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Test].[SYS_PARAMETERS](
	[PARAMETER_NAME] [nvarchar](50) NOT NULL,
	[PARAMETER_VALUE] [nvarchar](255) NULL,
	[PARAMETER_DESCRIPTION] [nvarchar](100) NULL,
 CONSTRAINT [PK_SYS_PARAMETERS] PRIMARY KEY CLUSTERED 
(
	[PARAMETER_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [Test].[sp_LoadPrimaryFile]    Script Date: 03/26/2014 13:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Test].[sp_LoadPrimaryFile]
	@ErrCode nvarchar(3) OUTPUT
	,@SysCode nvarchar(10) OUTPUT
	,@ErrDesc nvarchar(500) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;


	BEGIN TRY

		DECLARE @MethodName nvarchar(256)
		DECLARE @FileName varchar(255)
		DECLARE @SQLStatement nvarchar(max)
			
		SET @ErrCode = '000'
		SET @ErrDesc = ''
		SET @SysCode = 'DB'
		SET @MethodName = OBJECT_SCHEMA_NAME (@@PROCID) + '.' + OBJECT_NAME(@@PROCID)
		
		SET @FileName = ''
		
		SELECT @FileName = LTRIM(RTRIM(PARAMETER_VALUE)) FROM Test.SYS_PARAMETERS
		WHERE PARAMETER_NAME = 'PRIMARY_FILE_NAME'
		
		TRUNCATE TABLE Test.PRIMARY_LOAD
		
		SET @SQLStatement = 'BULK INSERT Test.PRIMARY_LOAD FROM ''' + @FileName +
								''' WITH (
											FIELDTERMINATOR=''|'',
											ROWTERMINATOR=''\n'',
											DATAFILETYPE=''char'',
											CODEPAGE=''ACP''
										)'
		EXEC (@SQLStatement)
		
		INSERT INTO Test.PRIMARY_TABLE
		(	RNN
           ,IIN_BIN
           ,TAXPAYER_TYPE
           ,RESIDENCY_TYPE
           ,ORGANIZATION_PERSISTANCY
           ,IB_TYPE
           ,IB_NAME
           ,INDIVIDUAL_NAME
           ,LAST_RESIGN_DATE
           ,RESIGN_REASON
           ,INDIVIDUAL_TYPE
           ,DORMANT_TAXPAYER_TYPE
           ,TAXPAYER_COMPANY_TYPE
           ,TAXPAYER_NAME_BY_LOCATION)
		SELECT DISTINCT
			RNN
           ,IIN_BIN
           ,TAXPAYER_TYPE
           ,RESIDENCY_TYPE
           ,ORGANIZATION_PERSISTANCY
           ,IB_TYPE
           ,IB_NAME
           ,INDIVIDUAL_NAME
           ,LAST_RESIGN_DATE
           ,RESIGN_REASON
           ,INDIVIDUAL_TYPE
           ,DORMANT_TAXPAYER_TYPE
           ,TAXPAYER_COMPANY_TYPE
           ,TAXPAYER_NAME_BY_LOCATION
        FROM Test.PRIMARY_LOAD
        WHERE RNN NOT IN (SELECT RNN FROM Test.PRIMARY_TABLE)
        
		
	END TRY
	BEGIN CATCH
		SET @ErrCode='998' 
		SET @ErrDesc = @MethodName + ' (ErrNo: '  + CAST(ERROR_NUMBER() AS nvarchar(10)) 
			+ ', LineNo: ' + CAST(ERROR_LINE () as nvarchar(10))
			+ ') :' + ERROR_MESSAGE()
		
	END CATCH

	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Test].[sp_LoadDailyFile]    Script Date: 03/26/2014 13:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Test].[sp_LoadDailyFile]
	@ErrCode nvarchar(3) OUTPUT
	,@SysCode nvarchar(10) OUTPUT
	,@ErrDesc nvarchar(500) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;


	BEGIN TRY

		DECLARE @MethodName nvarchar(256)
		DECLARE @FileName varchar(255)
		DECLARE @SQLStatement nvarchar(max)
		
		SET @ErrCode = '000'
		SET @ErrDesc = ''
		SET @SysCode = 'DB'
		SET @MethodName = OBJECT_SCHEMA_NAME (@@PROCID) + '.' + OBJECT_NAME(@@PROCID)

		SET @FileName = ''
		
		SELECT @FileName = LTRIM(RTRIM(PARAMETER_VALUE)) FROM Test.SYS_PARAMETERS
		WHERE PARAMETER_NAME = 'DAILY_FILE_NAME'
		
		TRUNCATE TABLE Test.DAILY_LOAD
		
		SET @SQLStatement = 'BULK INSERT Test.DAILY_LOAD FROM ''' + @FileName +
								''' WITH (
											FIELDTERMINATOR=''|'',
											ROWTERMINATOR=''\n'',
											DATAFILETYPE=''char'',
											CODEPAGE=''ACP''
										)'
		EXEC (@SQLStatement)
		
		
		INSERT INTO Test.PRIMARY_TABLE
		(	RNN
           ,IIN_BIN
           ,TAXPAYER_TYPE
           ,RESIDENCY_TYPE
           ,ORGANIZATION_PERSISTANCY
           ,IB_TYPE
           ,IB_NAME
           ,INDIVIDUAL_NAME
           ,LAST_RESIGN_DATE
           ,RESIGN_REASON
           ,INDIVIDUAL_TYPE
           ,DORMANT_TAXPAYER_TYPE
           ,TAXPAYER_COMPANY_TYPE
           ,TAXPAYER_NAME_BY_LOCATION)
		SELECT DISTINCT
			RNN
           ,IIN_BIN
           ,TAXPAYER_TYPE
           ,RESIDENCY_TYPE
           ,ORGANIZATION_PERSISTANCY
           ,IB_TYPE
           ,IB_NAME
           ,INDIVIDUAL_NAME
           ,LAST_RESIGN_DATE
           ,RESIGN_REASON
           ,INDIVIDUAL_TYPE
           ,DORMANT_TAXPAYER_TYPE
           ,TAXPAYER_COMPANY_TYPE
           ,TAXPAYER_NAME_BY_LOCATION
        FROM Test.DAILY_LOAD
        WHERE RECORD_PROCESSING_TYPE = 2 
				AND RNN NOT IN (SELECT RNN FROM Test.PRIMARY_TABLE)

        UPDATE PT 
			SET PT.IIN_BIN = DL.IIN_BIN
			   ,PT.TAXPAYER_TYPE = DL.TAXPAYER_TYPE
			   ,PT.RESIDENCY_TYPE = DL.RESIDENCY_TYPE
			   ,PT.ORGANIZATION_PERSISTANCY = DL.ORGANIZATION_PERSISTANCY
			   ,PT.IB_TYPE = DL.IB_TYPE
			   ,PT.IB_NAME = DL.IB_NAME
			   ,PT.INDIVIDUAL_NAME = DL.INDIVIDUAL_NAME
			   ,PT.LAST_RESIGN_DATE = DL.LAST_RESIGN_DATE
			   ,PT.RESIGN_REASON = DL.RESIGN_REASON
			   ,PT.INDIVIDUAL_TYPE = DL.INDIVIDUAL_TYPE
			   ,PT.DORMANT_TAXPAYER_TYPE = DL.DORMANT_TAXPAYER_TYPE
			   ,PT.TAXPAYER_COMPANY_TYPE = DL.TAXPAYER_COMPANY_TYPE
			   ,PT.TAXPAYER_NAME_BY_LOCATION = DL.TAXPAYER_NAME_BY_LOCATION
        FROM Test.PRIMARY_TABLE PT
			INNER JOIN Test.DAILY_LOAD DL
				ON PT.RNN = DL.RNN
		WHERE DL.RECORD_PROCESSING_TYPE = 1
		
		DELETE FROM Test.PRIMARY_TABLE
		WHERE RNN IN (SELECT RNN FROM Test.DAILY_LOAD
						WHERE RECORD_PROCESSING_TYPE = 3)
        
		
	END TRY
	BEGIN CATCH
		SET @ErrCode='998' 
		SET @ErrDesc = @MethodName + ' (ErrNo: '  + CAST(ERROR_NUMBER() AS nvarchar(10)) 
			+ ', LineNo: ' + CAST(ERROR_LINE () as nvarchar(10))
			+ ') :' + ERROR_MESSAGE()
		
	END CATCH

	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Test].[sp_GetPrimaryFileName]    Script Date: 03/26/2014 13:50:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Test].[sp_GetPrimaryFileName]
	@ErrCode nvarchar(3) OUTPUT
	,@SysCode nvarchar(10) OUTPUT
	,@ErrDesc nvarchar(500) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;


	BEGIN TRY

		DECLARE @MethodName nvarchar(256)
		DECLARE @FileName varchar(255)
		DECLARE @SQLStatement nvarchar(max)
		
		SET @ErrCode = '000'
		SET @ErrDesc = ''
		SET @SysCode = 'DB'
		SET @MethodName = OBJECT_SCHEMA_NAME (@@PROCID) + '.' + OBJECT_NAME(@@PROCID)

		SELECT PARAMETER_VALUE
		FROM Test.SYS_PARAMETERS
		WHERE PARAMETER_NAME = 'PRIMARY_FILE_NAME'
		
	END TRY
	BEGIN CATCH
		SET @ErrCode='998' 
		SET @ErrDesc = @MethodName + ' (ErrNo: '  + CAST(ERROR_NUMBER() AS nvarchar(10)) 
			+ ', LineNo: ' + CAST(ERROR_LINE () as nvarchar(10))
			+ ') :' + ERROR_MESSAGE()
		
	END CATCH

	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [Test].[sp_GetDailyFileName]    Script Date: 03/26/2014 13:50:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [Test].[sp_GetDailyFileName]
	@ErrCode nvarchar(3) OUTPUT
	,@SysCode nvarchar(10) OUTPUT
	,@ErrDesc nvarchar(500) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;


	BEGIN TRY

		DECLARE @MethodName nvarchar(256)
		DECLARE @FileName varchar(255)
		DECLARE @SQLStatement nvarchar(max)
		
		SET @ErrCode = '000'
		SET @ErrDesc = ''
		SET @SysCode = 'DB'
		SET @MethodName = OBJECT_SCHEMA_NAME (@@PROCID) + '.' + OBJECT_NAME(@@PROCID)

		SELECT PARAMETER_VALUE
		FROM Test.SYS_PARAMETERS
		WHERE PARAMETER_NAME = 'DAILY_FILE_NAME'
		
	END TRY
	BEGIN CATCH
		SET @ErrCode='998' 
		SET @ErrDesc = @MethodName + ' (ErrNo: '  + CAST(ERROR_NUMBER() AS nvarchar(10)) 
			+ ', LineNo: ' + CAST(ERROR_LINE () as nvarchar(10))
			+ ') :' + ERROR_MESSAGE()
		
	END CATCH

	SET NOCOUNT OFF;
END
GO

				INSERT INTO Test.SYS_PARAMETERS
				(PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_DESCRIPTION)
				SELECT 'DAILY_FILE_NAME', 'D:\Files\inis_daily.txt', 'Path to file for daily load'
				
				INSERT INTO Test.SYS_PARAMETERS
				(PARAMETER_NAME, PARAMETER_VALUE, PARAMETER_DESCRIPTION)
				SELECT 'PRIMARY_FILE_NAME',	'D:\Files\inis_primary.txt', 'Path to file for primary load'
