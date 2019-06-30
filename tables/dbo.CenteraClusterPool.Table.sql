USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CenteraClusterPool]    Script Date: 6/29/2019 5:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CenteraClusterPool](
	[RAID_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[QUOTA] [varchar](250) NULL,
	[USED_CAPACITY] [varchar](250) NULL,
	[FREE_CAPACITY] [varchar](250) NULL,
	[C_CLIPS] [varchar](250) NULL,
	[USER_FILES] [varchar](250) NULL,
 CONSTRAINT [CENTERA_POOL_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2057594300]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2057594300] ON [dbo].[CenteraClusterPool]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CenteraClusterPool]  WITH CHECK ADD  CONSTRAINT [CENTERA_POOL_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[CenteraClusterPool] CHECK CONSTRAINT [CENTERA_POOL_FK1]
GO
