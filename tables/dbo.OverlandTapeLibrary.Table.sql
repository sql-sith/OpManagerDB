USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OverlandTapeLibrary]    Script Date: 6/29/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OverlandTapeLibrary](
	[DEVICE_ID] [bigint] NOT NULL,
	[NO_OF_MODULES] [int] NULL,
	[CATRIDGE_STORAGE_SLOTS] [int] NULL,
	[MAIL_SLOTS] [int] NULL,
	[ERROR_MESSAGE] [varchar](250) NULL,
	[ERROR_CODE] [int] NULL,
 CONSTRAINT [OverlandTapeLibrary_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1123734233]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1123734233] ON [dbo].[OverlandTapeLibrary]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OverlandTapeLibrary]  WITH CHECK ADD  CONSTRAINT [OverlandTapeLibrary_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[OverlandTapeLibrary] CHECK CONSTRAINT [OverlandTapeLibrary_FK1]
GO
