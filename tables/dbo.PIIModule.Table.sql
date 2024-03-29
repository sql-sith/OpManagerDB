USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PIIModule]    Script Date: 6/29/2019 5:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PIIModule](
	[MODULE_ID] [bigint] NOT NULL,
	[MODULE_NAME] [varchar](150) NOT NULL,
	[MODULE_DISPLAYNAME] [varchar](250) NOT NULL,
	[HANDLER_ID] [bigint] NOT NULL,
 CONSTRAINT [PIIModule_PK] PRIMARY KEY CLUSTERED 
(
	[MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [PIIModule_UK0] UNIQUE NONCLUSTERED 
(
	[MODULE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1925829961]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1925829961] ON [dbo].[PIIModule]
(
	[HANDLER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PIIModule]  WITH CHECK ADD  CONSTRAINT [PIIModule_FK1] FOREIGN KEY([HANDLER_ID])
REFERENCES [dbo].[PIIDataSource] ([ID])
GO
ALTER TABLE [dbo].[PIIModule] CHECK CONSTRAINT [PIIModule_FK1]
GO
