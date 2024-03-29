USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CenteraNode]    Script Date: 6/29/2019 5:46:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CenteraNode](
	[RAID_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[ROLE] [varchar](250) NULL,
	[STATUS] [varchar](250) NULL,
	[ADMIN_STATE] [varchar](250) NULL,
	[COMPLIANCE] [varchar](250) NULL,
	[CUBE] [varchar](250) NULL,
	[TOTAL_CAPACITY] [varchar](250) NULL,
	[FREE_CAPACITY] [varchar](250) NULL,
	[ETHERNET_STATUS] [varchar](250) NULL,
	[PROBLEMS] [varchar](250) NULL,
 CONSTRAINT [CENTERA_NODE_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1749411678]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1749411678] ON [dbo].[CenteraNode]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CenteraNode]  WITH CHECK ADD  CONSTRAINT [CENTERA_NODE_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[CenteraNode] CHECK CONSTRAINT [CENTERA_NODE_FK1]
GO
