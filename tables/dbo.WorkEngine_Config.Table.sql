USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WorkEngine_Config]    Script Date: 6/29/2019 5:53:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkEngine_Config](
	[MODULE_ID] [bigint] NOT NULL,
	[MODULE_NAME] [varchar](100) NOT NULL,
	[IS_POINTER_CHASING_ENABLED] [bit] NULL,
 CONSTRAINT [WorkEngine_Config_PK] PRIMARY KEY CLUSTERED 
(
	[MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1518808911]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1518808911] ON [dbo].[WorkEngine_Config]
(
	[MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkEngine_Config] ADD  DEFAULT ((0)) FOR [IS_POINTER_CHASING_ENABLED]
GO
ALTER TABLE [dbo].[WorkEngine_Config]  WITH CHECK ADD  CONSTRAINT [WorkEngineConfig_FK] FOREIGN KEY([MODULE_ID])
REFERENCES [dbo].[Module] ([MODULE_ID])
GO
ALTER TABLE [dbo].[WorkEngine_Config] CHECK CONSTRAINT [WorkEngineConfig_FK]
GO
