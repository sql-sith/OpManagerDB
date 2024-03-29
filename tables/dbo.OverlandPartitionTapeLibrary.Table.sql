USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OverlandPartitionTapeLibrary]    Script Date: 6/29/2019 5:50:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OverlandPartitionTapeLibrary](
	[DEVICE_ID] [bigint] NOT NULL,
	[LIBRARY_INDEX] [int] NOT NULL,
	[LIBRARY_STATE] [varchar](250) NOT NULL,
	[CHANGER_STATE] [varchar](500) NOT NULL,
	[SCSIID] [int] NULL,
	[LIBRARY_CONFIG] [varchar](250) NULL,
 CONSTRAINT [OverlandPartitionTapeLibrary_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[LIBRARY_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__143266885]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__143266885] ON [dbo].[OverlandPartitionTapeLibrary]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OverlandPartitionTapeLibrary]  WITH CHECK ADD  CONSTRAINT [OverlandPartitionTapeLibrary_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[OverlandPartitionTapeLibrary] CHECK CONSTRAINT [OverlandPartitionTapeLibrary_FK1]
GO
