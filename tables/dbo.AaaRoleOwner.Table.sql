USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaRoleOwner]    Script Date: 6/29/2019 5:45:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaRoleOwner](
	[ROLE_ID] [bigint] NOT NULL,
	[OWNERROLE_ID] [bigint] NOT NULL,
 CONSTRAINT [AaaRoleOwner_PK] PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1066609880]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1066609880] ON [dbo].[AaaRoleOwner]
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1294832137]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1294832137] ON [dbo].[AaaRoleOwner]
(
	[OWNERROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaRoleOwner]  WITH CHECK ADD  CONSTRAINT [AaaRoleOwner_FK] FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[AaaRole] ([ROLE_ID])
GO
ALTER TABLE [dbo].[AaaRoleOwner] CHECK CONSTRAINT [AaaRoleOwner_FK]
GO
ALTER TABLE [dbo].[AaaRoleOwner]  WITH CHECK ADD  CONSTRAINT [AaaRoleOwner_FK1] FOREIGN KEY([OWNERROLE_ID])
REFERENCES [dbo].[AaaRole] ([ROLE_ID])
GO
ALTER TABLE [dbo].[AaaRoleOwner] CHECK CONSTRAINT [AaaRoleOwner_FK1]
GO
