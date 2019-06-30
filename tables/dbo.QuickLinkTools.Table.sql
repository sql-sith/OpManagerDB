USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QuickLinkTools]    Script Date: 6/29/2019 5:50:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuickLinkTools](
	[TOOL_ID] [varchar](50) NOT NULL,
	[GROUP_ID] [varchar](50) NOT NULL,
	[VIEW_ORDER] [int] NOT NULL,
 CONSTRAINT [QuickLinkTools_PK] PRIMARY KEY CLUSTERED 
(
	[TOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_664599553]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_664599553] ON [dbo].[QuickLinkTools]
(
	[GROUP_ID] ASC,
	[TOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QuickLinkTools]  WITH CHECK ADD  CONSTRAINT [QuickLinkTools_FK1] FOREIGN KEY([GROUP_ID], [TOOL_ID])
REFERENCES [dbo].[ToolToGroup] ([GROUP_ID], [TOOL_ID])
GO
ALTER TABLE [dbo].[QuickLinkTools] CHECK CONSTRAINT [QuickLinkTools_FK1]
GO
