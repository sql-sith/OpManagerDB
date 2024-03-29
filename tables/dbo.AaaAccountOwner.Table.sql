USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaAccountOwner]    Script Date: 6/29/2019 5:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaAccountOwner](
	[ACCOUNT_ID] [bigint] NOT NULL,
	[OWNERACCOUNT_ID] [bigint] NOT NULL,
 CONSTRAINT [AaaAccountOwner_PK] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1247855851]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1247855851] ON [dbo].[AaaAccountOwner]
(
	[OWNERACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1247855852]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1247855852] ON [dbo].[AaaAccountOwner]
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaAccountOwner]  WITH CHECK ADD  CONSTRAINT [AaaAccountOwner_FK1] FOREIGN KEY([ACCOUNT_ID])
REFERENCES [dbo].[AaaAccount] ([ACCOUNT_ID])
GO
ALTER TABLE [dbo].[AaaAccountOwner] CHECK CONSTRAINT [AaaAccountOwner_FK1]
GO
ALTER TABLE [dbo].[AaaAccountOwner]  WITH CHECK ADD  CONSTRAINT [AaaAccountOwner_FK2] FOREIGN KEY([OWNERACCOUNT_ID])
REFERENCES [dbo].[AaaAccount] ([ACCOUNT_ID])
GO
ALTER TABLE [dbo].[AaaAccountOwner] CHECK CONSTRAINT [AaaAccountOwner_FK2]
GO
