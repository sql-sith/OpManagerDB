USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaOrgUser]    Script Date: 6/29/2019 5:45:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaOrgUser](
	[ORG_ID] [bigint] NOT NULL,
	[USER_ID] [bigint] NOT NULL,
	[TYPE] [varchar](30) NOT NULL,
 CONSTRAINT [AaaOrgUser_PK] PRIMARY KEY CLUSTERED 
(
	[ORG_ID] ASC,
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__99469892]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__99469892] ON [dbo].[AaaOrgUser]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__99469893]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__99469893] ON [dbo].[AaaOrgUser]
(
	[ORG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaOrgUser] ADD  DEFAULT ('CONSULTANT') FOR [TYPE]
GO
ALTER TABLE [dbo].[AaaOrgUser]  WITH CHECK ADD  CONSTRAINT [AaaOrgUser_FK1] FOREIGN KEY([ORG_ID])
REFERENCES [dbo].[AaaOrganization] ([ORG_ID])
GO
ALTER TABLE [dbo].[AaaOrgUser] CHECK CONSTRAINT [AaaOrgUser_FK1]
GO
ALTER TABLE [dbo].[AaaOrgUser]  WITH CHECK ADD  CONSTRAINT [AaaOrgUser_FK2] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[AaaUser] ([USER_ID])
GO
ALTER TABLE [dbo].[AaaOrgUser] CHECK CONSTRAINT [AaaOrgUser_FK2]
GO
