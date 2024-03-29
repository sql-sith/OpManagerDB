USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPMSA2312StoragePool]    Script Date: 6/29/2019 5:48:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPMSA2312StoragePool](
	[DEVICE_ID] [bigint] NOT NULL,
	[POOL_ID] [varchar](250) NOT NULL,
	[NUMBER_OF_SPARES] [int] NOT NULL,
	[OPERATIONAL_STATUS] [varchar](250) NOT NULL,
	[OWNER] [varchar](250) NOT NULL,
	[RAID_LEVEL] [varchar](250) NOT NULL,
	[REMAINING_MANAGED_SPACE] [varchar](250) NOT NULL,
	[TOTAL_MANAGED_SPACE] [varchar](250) NOT NULL,
 CONSTRAINT [HPMSA2312StoragePool_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[POOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__290697137]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__290697137] ON [dbo].[HPMSA2312StoragePool]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPMSA2312StoragePool]  WITH CHECK ADD  CONSTRAINT [HPMSA2312StoragePool_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPMSA2312StoragePool] CHECK CONSTRAINT [HPMSA2312StoragePool_FK1]
GO
