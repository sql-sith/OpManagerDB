USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaServicePasswordRule]    Script Date: 6/29/2019 5:45:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaServicePasswordRule](
	[SERVICE_ID] [bigint] NOT NULL,
	[PASSWDRULE_ID] [bigint] NOT NULL,
 CONSTRAINT [AaaServicePasswordRule_PK] PRIMARY KEY CLUSTERED 
(
	[SERVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__340488327]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__340488327] ON [dbo].[AaaServicePasswordRule]
(
	[PASSWDRULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__340488328]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__340488328] ON [dbo].[AaaServicePasswordRule]
(
	[SERVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaServicePasswordRule]  WITH CHECK ADD  CONSTRAINT [AaaServicePasswordRule_FK1] FOREIGN KEY([SERVICE_ID])
REFERENCES [dbo].[AaaService] ([SERVICE_ID])
GO
ALTER TABLE [dbo].[AaaServicePasswordRule] CHECK CONSTRAINT [AaaServicePasswordRule_FK1]
GO
ALTER TABLE [dbo].[AaaServicePasswordRule]  WITH CHECK ADD  CONSTRAINT [AaaServicePasswordRule_FK2] FOREIGN KEY([PASSWDRULE_ID])
REFERENCES [dbo].[AaaPasswordRule] ([PASSWDRULE_ID])
GO
ALTER TABLE [dbo].[AaaServicePasswordRule] CHECK CONSTRAINT [AaaServicePasswordRule_FK2]
GO
