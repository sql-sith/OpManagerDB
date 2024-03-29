USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LightningWWN]    Script Date: 6/29/2019 5:48:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightningWWN](
	[DEVICE_ID] [bigint] NOT NULL,
	[LUN_WWN_SLNO] [int] NOT NULL,
	[LUN_WWN_PORTID] [int] NOT NULL,
	[WWN_NAME] [varchar](250) NULL,
	[WWN_ID] [int] NULL,
	[WWN_NICK_NAME] [varchar](250) NULL,
 CONSTRAINT [LightningWWN_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[LUN_WWN_SLNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1423066065]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1423066065] ON [dbo].[LightningWWN]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LightningWWN]  WITH CHECK ADD  CONSTRAINT [LightningWWN_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[LightningWWN] CHECK CONSTRAINT [LightningWWN_FK1]
GO
