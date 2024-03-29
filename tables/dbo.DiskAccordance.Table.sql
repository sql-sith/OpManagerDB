USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiskAccordance]    Script Date: 6/29/2019 5:47:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiskAccordance](
	[DISK_ID] [bigint] NOT NULL,
	[MODE] [varchar](250) NULL,
	[LAST_ERROR_TIME] [varchar](250) NULL,
 CONSTRAINT [DiskAccordance_PK] PRIMARY KEY CLUSTERED 
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__941958407]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__941958407] ON [dbo].[DiskAccordance]
(
	[DISK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiskAccordance]  WITH CHECK ADD  CONSTRAINT [DiskAccordance_FK1] FOREIGN KEY([DISK_ID])
REFERENCES [dbo].[SANDiskDrive] ([DISK_ID])
GO
ALTER TABLE [dbo].[DiskAccordance] CHECK CONSTRAINT [DiskAccordance_FK1]
GO
