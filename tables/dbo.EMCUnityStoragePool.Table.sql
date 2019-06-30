USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EMCUnityStoragePool]    Script Date: 6/29/2019 5:47:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMCUnityStoragePool](
	[DEVICE_ID] [bigint] NOT NULL,
	[RAID_ID] [bigint] NOT NULL,
	[POOL_NAME] [varchar](1000) NULL,
	[POOL_ID] [varchar](100) NULL,
	[NO_OF_DRIVES_IN_POOL] [int] NULL,
	[RAID_LEVEL] [varchar](100) NULL,
	[STRIPE_LENGTH] [varchar](100) NULL,
	[TOTAL_SPACE] [float] NULL,
	[REMAINING_SPACE] [float] NULL,
 CONSTRAINT [EMCUnityStoragePool_PK1] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2083638774]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2083638774] ON [dbo].[EMCUnityStoragePool]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMCUnityStoragePool]  WITH CHECK ADD  CONSTRAINT [EMCUnityStoragePool_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[EMCUnityStoragePool] CHECK CONSTRAINT [EMCUnityStoragePool_FK1]
GO
