USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LightningCHIP]    Script Date: 6/29/2019 5:48:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightningCHIP](
	[DEVICE_ID] [bigint] NOT NULL,
	[CHP_SLNO] [int] NOT NULL,
	[CHP_CLUSTER_NO] [int] NOT NULL,
	[CHA_NO] [int] NOT NULL,
	[CHP_NO] [int] NOT NULL,
	[CHP_NAME] [varchar](250) NULL,
 CONSTRAINT [LightningCHIP_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[CHP_SLNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_84995651]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_84995651] ON [dbo].[LightningCHIP]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LightningCHIP]  WITH CHECK ADD  CONSTRAINT [LightningCHIP_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[LightningCHIP] CHECK CONSTRAINT [LightningCHIP_FK1]
GO
