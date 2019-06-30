USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiscoveryTaskInput]    Script Date: 6/29/2019 5:47:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscoveryTaskInput](
	[NETWORKNAME] [varchar](250) NULL,
	[NENAME] [varchar](250) NULL,
	[NETWORKDISCOVERYMODE] [varchar](25) NOT NULL,
	[INSTANCEID] [bigint] NOT NULL,
	[ADDRESSID] [bigint] NOT NULL,
 CONSTRAINT [DiscoveryTaskInput_PK] PRIMARY KEY CLUSTERED 
(
	[INSTANCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1301412252]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1301412252] ON [dbo].[DiscoveryTaskInput]
(
	[ADDRESSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1301412253]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1301412253] ON [dbo].[DiscoveryTaskInput]
(
	[INSTANCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__1301412254]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1301412254] ON [dbo].[DiscoveryTaskInput]
(
	[NETWORKNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_297415860]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_297415860] ON [dbo].[DiscoveryTaskInput]
(
	[NENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiscoveryTaskInput]  WITH CHECK ADD  CONSTRAINT [DiscoveryTaskInput_FK1] FOREIGN KEY([NETWORKNAME])
REFERENCES [dbo].[NetworkConfiguration] ([NAME])
GO
ALTER TABLE [dbo].[DiscoveryTaskInput] CHECK CONSTRAINT [DiscoveryTaskInput_FK1]
GO
ALTER TABLE [dbo].[DiscoveryTaskInput]  WITH CHECK ADD  CONSTRAINT [DiscoveryTaskInput_FK1_NE] FOREIGN KEY([NENAME])
REFERENCES [dbo].[NetworkElementConfiguration] ([NAME])
GO
ALTER TABLE [dbo].[DiscoveryTaskInput] CHECK CONSTRAINT [DiscoveryTaskInput_FK1_NE]
GO
ALTER TABLE [dbo].[DiscoveryTaskInput]  WITH CHECK ADD  CONSTRAINT [DiscoveryTaskInput_FK2] FOREIGN KEY([INSTANCEID])
REFERENCES [dbo].[Task_Input] ([INSTANCE_ID])
GO
ALTER TABLE [dbo].[DiscoveryTaskInput] CHECK CONSTRAINT [DiscoveryTaskInput_FK2]
GO
ALTER TABLE [dbo].[DiscoveryTaskInput]  WITH CHECK ADD  CONSTRAINT [DiscoveryTaskInput_FK3] FOREIGN KEY([ADDRESSID])
REFERENCES [dbo].[AddressConfiguration] ([ADDRESSID])
GO
ALTER TABLE [dbo].[DiscoveryTaskInput] CHECK CONSTRAINT [DiscoveryTaskInput_FK3]
GO
