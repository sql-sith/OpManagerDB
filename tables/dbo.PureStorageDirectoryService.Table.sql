USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PureStorageDirectoryService]    Script Date: 6/29/2019 5:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PureStorageDirectoryService](
	[RAID_ID] [bigint] NOT NULL,
	[DS_MO_ID] [bigint] NOT NULL,
	[DS_URI] [varchar](250) NULL,
	[DS_BASE_DN] [varchar](250) NULL,
	[DS_BIND_USER] [varchar](250) NULL,
	[DS_CHECK_PEER] [varchar](250) NULL,
 CONSTRAINT [PureStorageDirectoryService_PK] PRIMARY KEY CLUSTERED 
(
	[DS_MO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1404229560]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1404229560] ON [dbo].[PureStorageDirectoryService]
(
	[DS_MO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PureStorageDirectoryService]  WITH CHECK ADD  CONSTRAINT [PureStorageDirectoryService_FK1] FOREIGN KEY([DS_MO_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[PureStorageDirectoryService] CHECK CONSTRAINT [PureStorageDirectoryService_FK1]
GO
