USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMProtocolCombination]    Script Date: 6/29/2019 5:49:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMProtocolCombination](
	[DEVICEPROTOCOLID] [bigint] NOT NULL,
	[DEVICETEMPLATEID] [bigint] NOT NULL,
	[MANAGEMENTPROTOCOLID] [bigint] NOT NULL,
	[TRANSFERPROTOCOLID] [bigint] NOT NULL,
	[DISPLAYNAME] [varchar](20) NOT NULL,
 CONSTRAINT [NCMProtocolCombination_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICEPROTOCOLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [NCMProtocolCombination_UNQ1] UNIQUE NONCLUSTERED 
(
	[DEVICETEMPLATEID] ASC,
	[MANAGEMENTPROTOCOLID] ASC,
	[TRANSFERPROTOCOLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2135616652]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2135616652] ON [dbo].[NCMProtocolCombination]
(
	[DEVICETEMPLATEID] ASC,
	[MANAGEMENTPROTOCOLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2135616653]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2135616653] ON [dbo].[NCMProtocolCombination]
(
	[DEVICETEMPLATEID] ASC,
	[TRANSFERPROTOCOLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMProtocolCombination]  WITH CHECK ADD  CONSTRAINT [NCMProtocolCombination_FK1] FOREIGN KEY([DEVICETEMPLATEID], [MANAGEMENTPROTOCOLID])
REFERENCES [dbo].[NCMSupportedProtocol] ([DEVICETEMPLATEID], [PROTOCOLID])
GO
ALTER TABLE [dbo].[NCMProtocolCombination] CHECK CONSTRAINT [NCMProtocolCombination_FK1]
GO
ALTER TABLE [dbo].[NCMProtocolCombination]  WITH CHECK ADD  CONSTRAINT [NCMProtocolCombination_FK2] FOREIGN KEY([DEVICETEMPLATEID], [TRANSFERPROTOCOLID])
REFERENCES [dbo].[NCMSupportedProtocol] ([DEVICETEMPLATEID], [PROTOCOLID])
GO
ALTER TABLE [dbo].[NCMProtocolCombination] CHECK CONSTRAINT [NCMProtocolCombination_FK2]
GO
