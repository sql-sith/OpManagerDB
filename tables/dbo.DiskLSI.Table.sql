USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiskLSI]    Script Date: 6/29/2019 5:47:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiskLSI](
	[DISK_ID] [bigint] NOT NULL,
	[MODE] [varchar](250) NULL,
	[DRIVE_PATH_REDUNDANCY] [varchar](250) NULL,
 CONSTRAINT [DiskLSI_PK] PRIMARY KEY CLUSTERED 
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_182928786]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_182928786] ON [dbo].[DiskLSI]
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiskLSI]  WITH CHECK ADD  CONSTRAINT [DiskLSI_FK1] FOREIGN KEY([DISK_ID])
REFERENCES [dbo].[SANDiskDrive] ([DISK_ID])
GO
ALTER TABLE [dbo].[DiskLSI] CHECK CONSTRAINT [DiskLSI_FK1]
GO
