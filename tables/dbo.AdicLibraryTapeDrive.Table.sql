USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AdicLibraryTapeDrive]    Script Date: 6/29/2019 5:45:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdicLibraryTapeDrive](
	[DEVICE_ID] [bigint] NOT NULL,
	[NEEDS_CLEANING] [varchar](250) NOT NULL,
	[AUTO_CLEANING] [varchar](50) NOT NULL,
	[DRIVE_STATUS] [varchar](250) NOT NULL,
	[COMPRESSION_ON] [varchar](250) NOT NULL,
	[WRITE_PROTECTED] [varchar](250) NOT NULL,
	[NUM_LOADS] [varchar](250) NOT NULL,
	[NUM_CLEANS] [varchar](250) NOT NULL,
	[POWER_STATUS] [varchar](250) NOT NULL,
	[READ_ERRORS] [varchar](250) NOT NULL,
	[WRITE_ERRORS] [varchar](250) NOT NULL,
	[MBYTES_READ] [varchar](250) NOT NULL,
	[MBYTES_WRITTEN] [varchar](250) NOT NULL,
	[ONLINE_STATUS] [varchar](250) NOT NULL,
	[RAS_STATUS] [varchar](250) NOT NULL,
	[HOURLY_MOUNTS] [varchar](250) NOT NULL,
 CONSTRAINT [ADICLIBRARYTAPEDRIVE_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__958764009]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__958764009] ON [dbo].[AdicLibraryTapeDrive]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdicLibraryTapeDrive]  WITH CHECK ADD  CONSTRAINT [ADICLIBRARYTAPEDRIVE_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[AdicLibraryTapeDrive] CHECK CONSTRAINT [ADICLIBRARYTAPEDRIVE_FK1]
GO
