USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ArecaRaidSet]    Script Date: 6/29/2019 5:46:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArecaRaidSet](
	[DEVICE_ID] [bigint] NOT NULL,
	[RS_INDEX] [int] NOT NULL,
	[RS_NAME] [varchar](250) NULL,
	[RS_MEMDISKS] [int] NULL,
	[RS_STATE] [varchar](250) NULL,
	[RS_TOTCAPACITY] [varchar](250) NULL,
	[RS_FREECAPACITY] [varchar](250) NULL,
	[RS_MEMCAPACITY] [varchar](250) NULL,
	[RS_MEMCHANNELS] [varchar](250) NULL,
 CONSTRAINT [ArecaRaidSet_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[RS_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_199499475]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_199499475] ON [dbo].[ArecaRaidSet]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArecaRaidSet]  WITH CHECK ADD  CONSTRAINT [ArecaRaidSet_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[ArecaRaid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[ArecaRaidSet] CHECK CONSTRAINT [ArecaRaidSet_FK1]
GO
