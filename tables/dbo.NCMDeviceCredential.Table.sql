USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMDeviceCredential]    Script Date: 6/29/2019 5:49:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMDeviceCredential](
	[DEVICETEMPLATEID] [bigint] NOT NULL,
	[PROTOCOLID] [bigint] NOT NULL,
	[CREDENTIALGROUPID] [bigint] NOT NULL,
 CONSTRAINT [NCMDeviceCredential_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICETEMPLATEID] ASC,
	[PROTOCOLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1316694669]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1316694669] ON [dbo].[NCMDeviceCredential]
(
	[CREDENTIALGROUPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1316694670]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1316694670] ON [dbo].[NCMDeviceCredential]
(
	[DEVICETEMPLATEID] ASC,
	[PROTOCOLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMDeviceCredential]  WITH CHECK ADD  CONSTRAINT [NCMDeviceCredential_FK1] FOREIGN KEY([DEVICETEMPLATEID], [PROTOCOLID])
REFERENCES [dbo].[NCMSupportedProtocol] ([DEVICETEMPLATEID], [PROTOCOLID])
GO
ALTER TABLE [dbo].[NCMDeviceCredential] CHECK CONSTRAINT [NCMDeviceCredential_FK1]
GO
ALTER TABLE [dbo].[NCMDeviceCredential]  WITH CHECK ADD  CONSTRAINT [NCMDeviceCredential_FK2] FOREIGN KEY([CREDENTIALGROUPID])
REFERENCES [dbo].[NCMCredentialGroup] ([CREDENTIALGROUPID])
GO
ALTER TABLE [dbo].[NCMDeviceCredential] CHECK CONSTRAINT [NCMDeviceCredential_FK2]
GO
