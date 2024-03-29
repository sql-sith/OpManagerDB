USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaAuthorizedRole]    Script Date: 6/29/2019 5:45:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaAuthorizedRole](
	[ACCOUNT_ID] [bigint] NOT NULL,
	[ROLE_ID] [bigint] NOT NULL,
 CONSTRAINT [AaaAuthorizedRole_PK] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC,
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__458393217]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__458393217] ON [dbo].[AaaAuthorizedRole]
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1647781106]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1647781106] ON [dbo].[AaaAuthorizedRole]
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaAuthorizedRole]  WITH CHECK ADD  CONSTRAINT [AaaAuthorizedRole_FK] FOREIGN KEY([ACCOUNT_ID])
REFERENCES [dbo].[AaaAccount] ([ACCOUNT_ID])
GO
ALTER TABLE [dbo].[AaaAuthorizedRole] CHECK CONSTRAINT [AaaAuthorizedRole_FK]
GO
ALTER TABLE [dbo].[AaaAuthorizedRole]  WITH CHECK ADD  CONSTRAINT [AaaAuthorizedRole_FK1] FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[AaaRole] ([ROLE_ID])
GO
ALTER TABLE [dbo].[AaaAuthorizedRole] CHECK CONSTRAINT [AaaAuthorizedRole_FK1]
GO
