USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPTLPhysicalTape]    Script Date: 6/29/2019 5:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPTLPhysicalTape](
	[TAPE_SL_NO] [bigint] NOT NULL,
	[DEVICE_ID] [bigint] NOT NULL,
	[TAPE_NO] [bigint] NOT NULL,
	[TAPE_TAG] [varchar](250) NULL,
	[CAPACITY] [bigint] NULL,
	[MEDIATYPE] [varchar](250) NULL,
	[MEDIA_DESC] [varchar](250) NULL,
	[CLEANERMEDIA] [varchar](250) NULL,
	[DUALSIDED] [varchar](250) NULL,
	[LABELS] [varchar](250) NULL,
	[REMOVABLE] [varchar](250) NULL,
	[REPLACABLE] [varchar](250) NULL,
	[HOT_SWAP] [varchar](250) NULL,
 CONSTRAINT [HPTLPhysicalTape_PK] PRIMARY KEY CLUSTERED 
(
	[TAPE_SL_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2123249914]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2123249914] ON [dbo].[HPTLPhysicalTape]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPTLPhysicalTape]  WITH CHECK ADD  CONSTRAINT [HPTLPhysicalTape_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPTLPhysicalTape] CHECK CONSTRAINT [HPTLPhysicalTape_FK1]
GO
