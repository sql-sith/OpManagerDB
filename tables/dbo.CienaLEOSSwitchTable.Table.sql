USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CienaLEOSSwitchTable]    Script Date: 6/29/2019 5:46:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CienaLEOSSwitchTable](
	[RESOURCEID] [bigint] NOT NULL,
	[APPLICATIONBUILD] [varchar](50) NOT NULL,
	[RUNNINGKERNEL] [varchar](50) NOT NULL,
	[RUNNINGMIBVERSION] [varchar](50) NOT NULL,
 CONSTRAINT [CienaLEOSSwitchTable_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__136585064]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__136585064] ON [dbo].[CienaLEOSSwitchTable]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CienaLEOSSwitchTable] ADD  DEFAULT ('Not Available') FOR [APPLICATIONBUILD]
GO
ALTER TABLE [dbo].[CienaLEOSSwitchTable] ADD  DEFAULT ('Not Available') FOR [RUNNINGKERNEL]
GO
ALTER TABLE [dbo].[CienaLEOSSwitchTable] ADD  DEFAULT ('Not Available') FOR [RUNNINGMIBVERSION]
GO
ALTER TABLE [dbo].[CienaLEOSSwitchTable]  WITH CHECK ADD  CONSTRAINT [CienaLEOSSwitchTable_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CienaLEOSSwitchTable] CHECK CONSTRAINT [CienaLEOSSwitchTable_FK1]
GO
