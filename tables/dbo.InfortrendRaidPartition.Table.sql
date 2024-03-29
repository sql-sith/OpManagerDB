USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRaidPartition]    Script Date: 6/29/2019 5:48:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRaidPartition](
	[DEVICE_ID] [bigint] NOT NULL,
	[PARTITION_INDEX] [int] NOT NULL,
	[PARTITION_LD_LV_ID] [int] NOT NULL,
	[PARTITION_SIZE] [varchar](250) NULL,
 CONSTRAINT [InfortrendRaidPartition_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[PARTITION_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1746906132]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1746906132] ON [dbo].[InfortrendRaidPartition]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRaidPartition]  WITH CHECK ADD  CONSTRAINT [InfortrendRaidPartition_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRaidPartition] CHECK CONSTRAINT [InfortrendRaidPartition_FK1]
GO
