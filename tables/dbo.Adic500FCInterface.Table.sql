USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Adic500FCInterface]    Script Date: 6/29/2019 5:45:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adic500FCInterface](
	[DEVICE_ID] [bigint] NOT NULL,
	[LIBRARY_ID] [bigint] NOT NULL,
	[LOOP_ID] [int] NOT NULL,
	[LOOP_MODE] [varchar](250) NOT NULL,
	[PORT_FV] [varchar](250) NOT NULL,
	[FRAME_SIZE] [int] NOT NULL,
	[PARENT_DRIVE] [varchar](250) NOT NULL,
	[PARENT_PARTITION] [varchar](250) NOT NULL,
 CONSTRAINT [Adic500FCInterface_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1194297326]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1194297326] ON [dbo].[Adic500FCInterface]
(
	[LIBRARY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1194297327]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1194297327] ON [dbo].[Adic500FCInterface]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adic500FCInterface]  WITH CHECK ADD  CONSTRAINT [Adic500FCInterface_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[Adic500FCInterface] CHECK CONSTRAINT [Adic500FCInterface_FK1]
GO
ALTER TABLE [dbo].[Adic500FCInterface]  WITH CHECK ADD  CONSTRAINT [Adic500FCInterface_FK2] FOREIGN KEY([LIBRARY_ID])
REFERENCES [dbo].[Adic500TapeLibrary] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[Adic500FCInterface] CHECK CONSTRAINT [Adic500FCInterface_FK2]
GO
