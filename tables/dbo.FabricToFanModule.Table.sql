USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FabricToFanModule]    Script Date: 6/29/2019 5:47:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FabricToFanModule](
	[FABRIC_ID] [bigint] NOT NULL,
	[FAN_MODULE_ID] [bigint] NOT NULL,
 CONSTRAINT [FabrciToFanModule_PK] PRIMARY KEY CLUSTERED 
(
	[FABRIC_ID] ASC,
	[FAN_MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1779136276]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1779136276] ON [dbo].[FabricToFanModule]
(
	[FAN_MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__750128155]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__750128155] ON [dbo].[FabricToFanModule]
(
	[FABRIC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FabricToFanModule]  WITH CHECK ADD  CONSTRAINT [FabricToFanModule_FK] FOREIGN KEY([FABRIC_ID])
REFERENCES [dbo].[FabricInterConnect] ([FABRIC_ID])
GO
ALTER TABLE [dbo].[FabricToFanModule] CHECK CONSTRAINT [FabricToFanModule_FK]
GO
ALTER TABLE [dbo].[FabricToFanModule]  WITH CHECK ADD  CONSTRAINT [FabricToFanModule_FK1] FOREIGN KEY([FAN_MODULE_ID])
REFERENCES [dbo].[UCSFanModule] ([FAN_MODULE_ID])
GO
ALTER TABLE [dbo].[FabricToFanModule] CHECK CONSTRAINT [FabricToFanModule_FK1]
GO
