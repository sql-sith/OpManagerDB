USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBMSVCVirtualDisk]    Script Date: 6/29/2019 5:48:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBMSVCVirtualDisk](
	[DEVICE_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[ID] [varchar](250) NULL,
	[MDISK_GROUP_ID] [varchar](250) NULL,
	[MDISK_GROUP_NAME] [varchar](250) NULL,
	[IO_GROUP_ID] [varchar](250) NULL,
	[IO_GROUP_NAME] [varchar](250) NULL,
	[TYPE] [varchar](250) NULL,
	[PREFERRED_NODE_ID] [varchar](250) NULL,
	[REAL_CAPACITY] [varchar](250) NULL,
 CONSTRAINT [IBMSVCVirtualDisk_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1412850776]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1412850776] ON [dbo].[IBMSVCVirtualDisk]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBMSVCVirtualDisk]  WITH CHECK ADD  CONSTRAINT [IBMSVCVirtualDisk_FK] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBMSVCVirtualDisk] CHECK CONSTRAINT [IBMSVCVirtualDisk_FK]
GO
