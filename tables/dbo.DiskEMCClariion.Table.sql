USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiskEMCClariion]    Script Date: 6/29/2019 5:47:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiskEMCClariion](
	[DISK_ID] [bigint] NOT NULL,
	[NO_OF_LUNS] [varchar](250) NULL,
	[HARD_READ_ERRORS] [varchar](250) NULL,
	[HARD_WRITE_ERRORS] [varchar](250) NULL,
	[SOFT_READ_ERRORS] [varchar](250) NULL,
	[SOFT_WRITE_ERRORS] [varchar](250) NULL,
	[DISK_KEY] [varchar](250) NULL,
 CONSTRAINT [DiskEMCClariion_PK] PRIMARY KEY CLUSTERED 
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__717807612]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__717807612] ON [dbo].[DiskEMCClariion]
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiskEMCClariion]  WITH CHECK ADD  CONSTRAINT [DiskEMCClariion_FK1] FOREIGN KEY([DISK_ID])
REFERENCES [dbo].[SANDiskDrive] ([DISK_ID])
GO
ALTER TABLE [dbo].[DiskEMCClariion] CHECK CONSTRAINT [DiskEMCClariion_FK1]
GO
