USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMUserDeviceGroupInfo]    Script Date: 6/29/2019 5:49:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMUserDeviceGroupInfo](
	[LOGIN_ID] [bigint] NOT NULL,
	[DEVICE_GROUP_ID] [bigint] NOT NULL,
	[DEVICE_GROUP_IDS] [varchar](100) NULL,
 CONSTRAINT [NCMUserDeviceGroupInfo_PK] PRIMARY KEY CLUSTERED 
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1758798910]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1758798910] ON [dbo].[NCMUserDeviceGroupInfo]
(
	[DEVICE_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1758798911]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1758798911] ON [dbo].[NCMUserDeviceGroupInfo]
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMUserDeviceGroupInfo]  WITH CHECK ADD  CONSTRAINT [NCMUserDeviceGroupInfo_FK1] FOREIGN KEY([LOGIN_ID])
REFERENCES [dbo].[AaaLogin] ([LOGIN_ID])
GO
ALTER TABLE [dbo].[NCMUserDeviceGroupInfo] CHECK CONSTRAINT [NCMUserDeviceGroupInfo_FK1]
GO
ALTER TABLE [dbo].[NCMUserDeviceGroupInfo]  WITH CHECK ADD  CONSTRAINT [NCMUserDeviceGroupInfo_FK2] FOREIGN KEY([DEVICE_GROUP_ID])
REFERENCES [dbo].[NCMDeviceGroup] ([DEVICE_GROUP_ID])
GO
ALTER TABLE [dbo].[NCMUserDeviceGroupInfo] CHECK CONSTRAINT [NCMUserDeviceGroupInfo_FK2]
GO
