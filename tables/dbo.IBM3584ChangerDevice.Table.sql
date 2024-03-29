USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBM3584ChangerDevice]    Script Date: 6/29/2019 5:48:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBM3584ChangerDevice](
	[DEVICE_ID] [bigint] NOT NULL,
	[CHANGERDEV_INDEX] [int] NOT NULL,
	[CHANGERDEV_ID] [varchar](250) NULL,
	[MEDIAFLIP_SUPPORT] [varchar](250) NULL,
	[CHANGERDEV_NAME] [varchar](250) NULL,
	[CHANGERDEV_CAPTION] [varchar](250) NULL,
	[CHANGERDEV_DESCRIPTION] [varchar](250) NULL,
	[CHANGERDEV_AVAILABILITY] [varchar](250) NULL,
	[CHANGERDEV_OPERSTATUS] [varchar](250) NULL,
	[CHANGERDEV_STORAGEMEDIALOC] [int] NULL,
 CONSTRAINT [IBM3584ChangerDevice_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[CHANGERDEV_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__194293119]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__194293119] ON [dbo].[IBM3584ChangerDevice]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBM3584ChangerDevice]  WITH CHECK ADD  CONSTRAINT [IBM3584ChangerDevice_PK_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBM3584ChangerDevice] CHECK CONSTRAINT [IBM3584ChangerDevice_PK_FK1]
GO
