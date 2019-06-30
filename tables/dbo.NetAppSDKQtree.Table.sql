USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NetAppSDKQtree]    Script Date: 6/29/2019 5:49:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NetAppSDKQtree](
	[RAID_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[ID] [varchar](160) NOT NULL,
	[VOLUME] [varchar](160) NOT NULL,
	[OPLOCKS_STATE] [varchar](250) NOT NULL,
	[SECURITY_STYLE] [varchar](250) NOT NULL,
	[STATUS] [varchar](250) NOT NULL,
	[OWINING_VFILER] [varchar](250) NOT NULL,
 CONSTRAINT [NetAppSDKQtree_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[ID] ASC,
	[VOLUME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1043849786]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1043849786] ON [dbo].[NetAppSDKQtree]
(
	[RAID_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NetAppSDKQtree]  WITH CHECK ADD  CONSTRAINT [NetAppSDKQtree_FK1] FOREIGN KEY([RAID_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[NetAppSDKQtree] CHECK CONSTRAINT [NetAppSDKQtree_FK1]
GO
