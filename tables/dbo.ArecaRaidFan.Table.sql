USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ArecaRaidFan]    Script Date: 6/29/2019 5:46:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArecaRaidFan](
	[DEVICE_ID] [bigint] NOT NULL,
	[FAN_INDEX] [int] NOT NULL,
	[FAN_SPEED] [varchar](250) NULL,
 CONSTRAINT [ArecaRaidFan_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[FAN_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1426795780]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1426795780] ON [dbo].[ArecaRaidFan]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArecaRaidFan]  WITH CHECK ADD  CONSTRAINT [ArecaRaidFan_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[ArecaRaid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[ArecaRaidFan] CHECK CONSTRAINT [ArecaRaidFan_FK1]
GO
