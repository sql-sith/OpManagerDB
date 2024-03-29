USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GlobalAlertConfigure]    Script Date: 6/29/2019 5:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalAlertConfigure](
	[ID] [bigint] NOT NULL,
	[TOOL_ID] [varchar](50) NOT NULL,
	[SEVERITY] [varchar](35) NOT NULL,
	[SOUND_OPTION] [int] NOT NULL,
	[SOUND] [varchar](500) NOT NULL,
 CONSTRAINT [GlobalAlertConfigure_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__829498278]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__829498278] ON [dbo].[GlobalAlertConfigure]
(
	[TOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GlobalAlertConfigure] ADD  DEFAULT ('Critical') FOR [SEVERITY]
GO
ALTER TABLE [dbo].[GlobalAlertConfigure] ADD  DEFAULT ('0') FOR [SOUND_OPTION]
GO
ALTER TABLE [dbo].[GlobalAlertConfigure]  WITH CHECK ADD  CONSTRAINT [GlobalAlertConfigure_FK1] FOREIGN KEY([TOOL_ID])
REFERENCES [dbo].[Tool] ([TOOL_ID])
GO
ALTER TABLE [dbo].[GlobalAlertConfigure] CHECK CONSTRAINT [GlobalAlertConfigure_FK1]
GO
