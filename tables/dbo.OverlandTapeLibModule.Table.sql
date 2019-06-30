USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OverlandTapeLibModule]    Script Date: 6/29/2019 5:50:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OverlandTapeLibModule](
	[LIBRARY_ID] [bigint] NOT NULL,
	[MODULE_INDEX] [int] NOT NULL,
	[MODULE_TYPE] [varchar](250) NOT NULL,
	[MODULE_STATE] [varchar](250) NOT NULL,
	[MODULE_CONFIG] [varchar](250) NOT NULL,
	[MODULE_FWREV] [varchar](250) NULL,
	[NO_OF_BINS] [int] NULL,
	[NO_OF_DRIVES] [int] NULL,
	[NO_OF_MAILSLOTS] [int] NULL,
 CONSTRAINT [OverlandTapeLibModule_PK] PRIMARY KEY CLUSTERED 
(
	[MODULE_INDEX] ASC,
	[LIBRARY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__208462083]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__208462083] ON [dbo].[OverlandTapeLibModule]
(
	[LIBRARY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OverlandTapeLibModule]  WITH CHECK ADD  CONSTRAINT [OverlandTapeLibModule_FK1] FOREIGN KEY([LIBRARY_ID])
REFERENCES [dbo].[OverlandTapeLibrary] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[OverlandTapeLibModule] CHECK CONSTRAINT [OverlandTapeLibModule_FK1]
GO
