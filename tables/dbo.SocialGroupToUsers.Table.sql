USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SocialGroupToUsers]    Script Date: 6/29/2019 5:51:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialGroupToUsers](
	[ID] [bigint] NOT NULL,
	[GROUPID] [bigint] NOT NULL,
	[USERID] [bigint] NOT NULL,
 CONSTRAINT [SocialGroupToUsers_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1163510072]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1163510072] ON [dbo].[SocialGroupToUsers]
(
	[GROUPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SocialGroupToUsers]  WITH CHECK ADD  CONSTRAINT [SocialGroupToUsers_FK1] FOREIGN KEY([GROUPID])
REFERENCES [dbo].[SocialGroups] ([ID])
GO
ALTER TABLE [dbo].[SocialGroupToUsers] CHECK CONSTRAINT [SocialGroupToUsers_FK1]
GO
