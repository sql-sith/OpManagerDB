USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RelatedTools]    Script Date: 6/29/2019 5:50:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RelatedTools](
	[PARENT_TOOL_ID] [varchar](50) NOT NULL,
	[TOOL_ID] [varchar](50) NOT NULL,
	[GROUP_ID] [varchar](50) NOT NULL,
	[VIEW_ORDER] [int] NOT NULL,
 CONSTRAINT [RelatedTools_PK] PRIMARY KEY CLUSTERED 
(
	[PARENT_TOOL_ID] ASC,
	[TOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [RelatedTools_UK1] UNIQUE NONCLUSTERED 
(
	[PARENT_TOOL_ID] ASC,
	[VIEW_ORDER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1688267741]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1688267741] ON [dbo].[RelatedTools]
(
	[PARENT_TOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1688267742]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1688267742] ON [dbo].[RelatedTools]
(
	[GROUP_ID] ASC,
	[TOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RelatedTools]  WITH CHECK ADD  CONSTRAINT [RelatedTools_FK1] FOREIGN KEY([PARENT_TOOL_ID])
REFERENCES [dbo].[Tool] ([TOOL_ID])
GO
ALTER TABLE [dbo].[RelatedTools] CHECK CONSTRAINT [RelatedTools_FK1]
GO
ALTER TABLE [dbo].[RelatedTools]  WITH CHECK ADD  CONSTRAINT [RelatedTools_FK2] FOREIGN KEY([GROUP_ID], [TOOL_ID])
REFERENCES [dbo].[ToolToGroup] ([GROUP_ID], [TOOL_ID])
GO
ALTER TABLE [dbo].[RelatedTools] CHECK CONSTRAINT [RelatedTools_FK2]
GO
