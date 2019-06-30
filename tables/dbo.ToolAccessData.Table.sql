USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ToolAccessData]    Script Date: 6/29/2019 5:52:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ToolAccessData](
	[TOOL_ID] [varchar](50) NOT NULL,
	[USER_NAME] [varchar](100) NOT NULL,
	[ACCESS_COUNT] [int] NOT NULL,
 CONSTRAINT [ToolAccessData_PK] PRIMARY KEY CLUSTERED 
(
	[TOOL_ID] ASC,
	[USER_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1148979027]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1148979027] ON [dbo].[ToolAccessData]
(
	[TOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1148979028]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1148979028] ON [dbo].[ToolAccessData]
(
	[USER_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ToolAccessData]  WITH CHECK ADD  CONSTRAINT [ToolAccessData_FK1] FOREIGN KEY([TOOL_ID])
REFERENCES [dbo].[Tool] ([TOOL_ID])
GO
ALTER TABLE [dbo].[ToolAccessData] CHECK CONSTRAINT [ToolAccessData_FK1]
GO
ALTER TABLE [dbo].[ToolAccessData]  WITH CHECK ADD  CONSTRAINT [ToolAccessData_FK2] FOREIGN KEY([USER_NAME])
REFERENCES [dbo].[OpUser] ([NAME])
GO
ALTER TABLE [dbo].[ToolAccessData] CHECK CONSTRAINT [ToolAccessData_FK2]
GO
