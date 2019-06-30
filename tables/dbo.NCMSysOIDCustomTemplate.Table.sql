USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMSysOIDCustomTemplate]    Script Date: 6/29/2019 5:49:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMSysOIDCustomTemplate](
	[NCMSYSOIDCUSTOMTEMPLATE_ID] [int] NOT NULL,
	[DEVICECUSTOMTEMPLATE_ID] [int] NOT NULL,
	[SYSOID] [varchar](100) NOT NULL,
 CONSTRAINT [NCMSysOIDCustomTemplate_PK] PRIMARY KEY CLUSTERED 
(
	[NCMSYSOIDCUSTOMTEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_588755149]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_588755149] ON [dbo].[NCMSysOIDCustomTemplate]
(
	[DEVICECUSTOMTEMPLATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_588755150]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_588755150] ON [dbo].[NCMSysOIDCustomTemplate]
(
	[SYSOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMSysOIDCustomTemplate]  WITH CHECK ADD  CONSTRAINT [NCMSysOIDCustomTemplate_FK1] FOREIGN KEY([DEVICECUSTOMTEMPLATE_ID])
REFERENCES [dbo].[NCMDeviceCustomTemplate] ([DEVICECUSTOMTEMPLATE_ID])
GO
ALTER TABLE [dbo].[NCMSysOIDCustomTemplate] CHECK CONSTRAINT [NCMSysOIDCustomTemplate_FK1]
GO
ALTER TABLE [dbo].[NCMSysOIDCustomTemplate]  WITH CHECK ADD  CONSTRAINT [NCMSysOIDCustomTemplate_FK2] FOREIGN KEY([SYSOID])
REFERENCES [dbo].[NCMDeviceSysOID] ([SYSOID])
GO
ALTER TABLE [dbo].[NCMSysOIDCustomTemplate] CHECK CONSTRAINT [NCMSysOIDCustomTemplate_FK2]
GO
