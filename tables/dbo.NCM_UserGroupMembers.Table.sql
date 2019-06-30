USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCM_UserGroupMembers]    Script Date: 6/29/2019 5:49:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCM_UserGroupMembers](
	[USERGROUPID] [bigint] NOT NULL,
	[USERID] [bigint] NOT NULL,
 CONSTRAINT [NCM_UserGroupMembers_PK] PRIMARY KEY CLUSTERED 
(
	[USERGROUPID] ASC,
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1261363558]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1261363558] ON [dbo].[NCM_UserGroupMembers]
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1261363559]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1261363559] ON [dbo].[NCM_UserGroupMembers]
(
	[USERGROUPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCM_UserGroupMembers]  WITH CHECK ADD  CONSTRAINT [NCM_UserGroupMembers_FK1] FOREIGN KEY([USERGROUPID])
REFERENCES [dbo].[NCM_UserGroup] ([USERGROUPID])
GO
ALTER TABLE [dbo].[NCM_UserGroupMembers] CHECK CONSTRAINT [NCM_UserGroupMembers_FK1]
GO
ALTER TABLE [dbo].[NCM_UserGroupMembers]  WITH CHECK ADD  CONSTRAINT [NCM_UserGroupMembers_FK2] FOREIGN KEY([USERID])
REFERENCES [dbo].[AaaUser] ([USER_ID])
GO
ALTER TABLE [dbo].[NCM_UserGroupMembers] CHECK CONSTRAINT [NCM_UserGroupMembers_FK2]
GO
