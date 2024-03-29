USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CienaSAOSSwitchTable]    Script Date: 6/29/2019 5:46:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CienaSAOSSwitchTable](
	[RESOURCEID] [bigint] NOT NULL,
	[APPLICATIONBUILD] [varchar](50) NOT NULL,
	[RUNNINGKERNEL] [varchar](50) NOT NULL,
	[RUNNINGMIBVERSION] [varchar](50) NOT NULL,
 CONSTRAINT [CienaSAOSSwitchTable_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2059598749]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2059598749] ON [dbo].[CienaSAOSSwitchTable]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CienaSAOSSwitchTable] ADD  DEFAULT ('Not Available') FOR [APPLICATIONBUILD]
GO
ALTER TABLE [dbo].[CienaSAOSSwitchTable] ADD  DEFAULT ('Not Available') FOR [RUNNINGKERNEL]
GO
ALTER TABLE [dbo].[CienaSAOSSwitchTable] ADD  DEFAULT ('Not Available') FOR [RUNNINGMIBVERSION]
GO
ALTER TABLE [dbo].[CienaSAOSSwitchTable]  WITH CHECK ADD  CONSTRAINT [CienaSAOSSwitchTable_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CienaSAOSSwitchTable] CHECK CONSTRAINT [CienaSAOSSwitchTable_FK1]
GO
