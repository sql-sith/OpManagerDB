USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PureStorageHardware]    Script Date: 6/29/2019 5:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PureStorageHardware](
	[RAID_ID] [bigint] NOT NULL,
	[HARDWARE_MO_ID] [bigint] NOT NULL,
	[HW_NAME] [varchar](250) NULL,
	[HW_SLOT] [varchar](250) NULL,
	[HW_INDEX] [varchar](250) NULL,
	[HW_TYPE] [varchar](250) NULL,
	[HW_HANDLE] [varchar](250) NULL,
	[HW_PARENT] [varchar](250) NULL,
 CONSTRAINT [PureStorageHardware_PK] PRIMARY KEY CLUSTERED 
(
	[HARDWARE_MO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1104446744]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1104446744] ON [dbo].[PureStorageHardware]
(
	[HARDWARE_MO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PureStorageHardware]  WITH CHECK ADD  CONSTRAINT [PureStorageHardware_FK1] FOREIGN KEY([HARDWARE_MO_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[PureStorageHardware] CHECK CONSTRAINT [PureStorageHardware_FK1]
GO
