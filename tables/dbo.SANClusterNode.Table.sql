USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SANClusterNode]    Script Date: 6/29/2019 5:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANClusterNode](
	[DEVICE_ID] [bigint] NOT NULL,
	[NODE_ID] [bigint] NOT NULL,
	[NAME] [varchar](500) NOT NULL,
	[LNN] [varchar](500) NULL,
	[TYPE] [varchar](500) NULL,
	[READONLY] [varchar](500) NULL,
	[IP] [varchar](500) NOT NULL,
	[OWNERNAME] [varchar](500) NULL,
	[TOTAL_CAPACITY] [varchar](500) NOT NULL,
	[USED_CAPACITY] [varchar](500) NOT NULL,
	[FREE_CAPACITY] [varchar](500) NOT NULL,
	[IS_MASTER] [varchar](500) NULL,
	[IS_IN_CLUSTER] [varchar](500) NULL,
	[NODE_HEALTH] [varchar](500) NULL,
 CONSTRAINT [SANClusterNode_PK] PRIMARY KEY CLUSTERED 
(
	[NODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1534064777]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1534064777] ON [dbo].[SANClusterNode]
(
	[NODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1534064778]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1534064778] ON [dbo].[SANClusterNode]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SANClusterNode]  WITH CHECK ADD  CONSTRAINT [SANClusterNode_FK1] FOREIGN KEY([NODE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SANClusterNode] CHECK CONSTRAINT [SANClusterNode_FK1]
GO
ALTER TABLE [dbo].[SANClusterNode]  WITH CHECK ADD  CONSTRAINT [SANClusterNode_FK2] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SANClusterNode] CHECK CONSTRAINT [SANClusterNode_FK2]
GO
