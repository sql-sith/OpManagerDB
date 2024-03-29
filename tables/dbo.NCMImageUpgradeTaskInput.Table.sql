USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMImageUpgradeTaskInput]    Script Date: 6/29/2019 5:49:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMImageUpgradeTaskInput](
	[INSTANCEID] [bigint] NOT NULL,
	[RESOURCEID] [bigint] NOT NULL,
	[ITERATION] [int] NOT NULL,
 CONSTRAINT [NCMImageUpgradeTaskInput_PK] PRIMARY KEY CLUSTERED 
(
	[INSTANCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1112442630]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1112442630] ON [dbo].[NCMImageUpgradeTaskInput]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1112442631]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1112442631] ON [dbo].[NCMImageUpgradeTaskInput]
(
	[INSTANCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMImageUpgradeTaskInput] ADD  DEFAULT ('1') FOR [ITERATION]
GO
ALTER TABLE [dbo].[NCMImageUpgradeTaskInput]  WITH CHECK ADD  CONSTRAINT [NCMImageUpgradeTaskInput_FK1] FOREIGN KEY([INSTANCEID])
REFERENCES [dbo].[Task_Input] ([INSTANCE_ID])
GO
ALTER TABLE [dbo].[NCMImageUpgradeTaskInput] CHECK CONSTRAINT [NCMImageUpgradeTaskInput_FK1]
GO
ALTER TABLE [dbo].[NCMImageUpgradeTaskInput]  WITH CHECK ADD  CONSTRAINT [NCMImageUpgradeTaskInput_FK2] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMDevices] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMImageUpgradeTaskInput] CHECK CONSTRAINT [NCMImageUpgradeTaskInput_FK2]
GO
