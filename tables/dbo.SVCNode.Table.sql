USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SVCNode]    Script Date: 6/29/2019 5:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SVCNode](
	[DEVICE_ID] [bigint] NOT NULL,
	[IOGROUP_NAME] [varchar](250) NOT NULL,
	[NODE_FAILOVER] [varchar](250) NOT NULL,
	[UPS_SERIALNUMBER] [varchar](250) NOT NULL,
	[UPS_UNIQUEID] [varchar](250) NOT NULL,
	[IS_CONFIG_NODE] [varchar](250) NOT NULL,
	[ISCSI_NAME] [varchar](250) NOT NULL,
	[ISCSI_ALIAS] [varchar](250) NOT NULL,
	[FAILOVER_ISCSI_NAME] [varchar](250) NOT NULL,
	[FAILOVER_ISCSI_ALIAS] [varchar](250) NOT NULL,
	[IOGROUP_ID] [varchar](250) NOT NULL,
	[PARTNER_NODE_NAME] [varchar](250) NOT NULL,
	[PARTNER_NODE_ID] [varchar](250) NOT NULL,
 CONSTRAINT [SVCNode_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1804239535]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1804239535] ON [dbo].[SVCNode]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVCNode]  WITH CHECK ADD  CONSTRAINT [SVCNode_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SVCNode] CHECK CONSTRAINT [SVCNode_FK1]
GO
