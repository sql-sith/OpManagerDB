USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMSchDownloadDeviceGroup]    Script Date: 6/29/2019 5:49:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMSchDownloadDeviceGroup](
	[INSTANCE_ID] [bigint] NOT NULL,
	[DEVICE_GROUP_ID] [bigint] NOT NULL,
 CONSTRAINT [NCMSchDownloadDeviceGroup_PK] PRIMARY KEY CLUSTERED 
(
	[INSTANCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_855810830]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_855810830] ON [dbo].[NCMSchDownloadDeviceGroup]
(
	[INSTANCE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_855810831]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_855810831] ON [dbo].[NCMSchDownloadDeviceGroup]
(
	[DEVICE_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMSchDownloadDeviceGroup]  WITH CHECK ADD  CONSTRAINT [NCMSchDownloadDeviceGroup_FK1] FOREIGN KEY([INSTANCE_ID])
REFERENCES [dbo].[Task_Input] ([INSTANCE_ID])
GO
ALTER TABLE [dbo].[NCMSchDownloadDeviceGroup] CHECK CONSTRAINT [NCMSchDownloadDeviceGroup_FK1]
GO
ALTER TABLE [dbo].[NCMSchDownloadDeviceGroup]  WITH CHECK ADD  CONSTRAINT [NCMSchDownloadDeviceGroup_FK2] FOREIGN KEY([DEVICE_GROUP_ID])
REFERENCES [dbo].[NCMDeviceGroup] ([DEVICE_GROUP_ID])
GO
ALTER TABLE [dbo].[NCMSchDownloadDeviceGroup] CHECK CONSTRAINT [NCMSchDownloadDeviceGroup_FK2]
GO
