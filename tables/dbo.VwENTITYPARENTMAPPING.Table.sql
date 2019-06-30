USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwENTITYPARENTMAPPING]    Script Date: 6/29/2019 5:53:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwENTITYPARENTMAPPING](
	[ENTITY_ID] [bigint] NOT NULL,
	[PARENT_ID] [bigint] NOT NULL,
 CONSTRAINT [VwENTITYPARENTMAPPING_PK] PRIMARY KEY CLUSTERED 
(
	[ENTITY_ID] ASC,
	[PARENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwENTITYPARENTMAPPING_UK0] UNIQUE NONCLUSTERED 
(
	[ENTITY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_460391565]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_460391565] ON [dbo].[VwENTITYPARENTMAPPING]
(
	[ENTITY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_460391566]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_460391566] ON [dbo].[VwENTITYPARENTMAPPING]
(
	[PARENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwENTITYPARENTMAPPING]  WITH CHECK ADD  CONSTRAINT [VwENTITYPARENTMAPPING_FK1] FOREIGN KEY([ENTITY_ID])
REFERENCES [dbo].[VwENTITYMOMAPPING] ([ENTITY_ID])
GO
ALTER TABLE [dbo].[VwENTITYPARENTMAPPING] CHECK CONSTRAINT [VwENTITYPARENTMAPPING_FK1]
GO
ALTER TABLE [dbo].[VwENTITYPARENTMAPPING]  WITH CHECK ADD  CONSTRAINT [VwENTITYPARENTMAPPING_FK2] FOREIGN KEY([PARENT_ID])
REFERENCES [dbo].[VwENTITYMOMAPPING] ([ENTITY_ID])
GO
ALTER TABLE [dbo].[VwENTITYPARENTMAPPING] CHECK CONSTRAINT [VwENTITYPARENTMAPPING_FK2]
GO
