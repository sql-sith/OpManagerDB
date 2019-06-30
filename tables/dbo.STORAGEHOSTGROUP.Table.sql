USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STORAGEHOSTGROUP]    Script Date: 6/29/2019 5:51:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STORAGEHOSTGROUP](
	[ID] [bigint] NOT NULL,
	[RAID_ID] [bigint] NOT NULL,
	[HOSTGROUP_NAME] [varchar](250) NOT NULL,
	[TOTALUSEDSPACE] [varchar](250) NULL,
	[ADDITIONAL_DATA] [text] NULL,
 CONSTRAINT [STORAGEHOSTGROUP_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[HOSTGROUP_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [STORAGEHOSTGROUP_UK0] UNIQUE NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_1479246601]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1479246601] ON [dbo].[STORAGEHOSTGROUP]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STORAGEHOSTGROUP]  WITH CHECK ADD  CONSTRAINT [STORAGEHOSTGROUP_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[STORAGEHOSTGROUP] CHECK CONSTRAINT [STORAGEHOSTGROUP_FK1]
GO
