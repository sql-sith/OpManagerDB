USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaAccount]    Script Date: 6/29/2019 5:45:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaAccount](
	[ACCOUNT_ID] [bigint] NOT NULL,
	[LOGIN_ID] [bigint] NOT NULL,
	[SERVICE_ID] [bigint] NOT NULL,
	[ACCOUNTPROFILE_ID] [bigint] NOT NULL,
	[CREATEDTIME] [bigint] NOT NULL,
 CONSTRAINT [AaaAccount_PK] PRIMARY KEY CLUSTERED 
(
	[ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AaaAccount_UK] UNIQUE NONCLUSTERED 
(
	[LOGIN_ID] ASC,
	[SERVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_978576409]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_978576409] ON [dbo].[AaaAccount]
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_978576410]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_978576410] ON [dbo].[AaaAccount]
(
	[SERVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_978576411]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_978576411] ON [dbo].[AaaAccount]
(
	[ACCOUNTPROFILE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaAccount]  WITH CHECK ADD  CONSTRAINT [AaaAccount_FK1] FOREIGN KEY([LOGIN_ID])
REFERENCES [dbo].[AaaLogin] ([LOGIN_ID])
GO
ALTER TABLE [dbo].[AaaAccount] CHECK CONSTRAINT [AaaAccount_FK1]
GO
ALTER TABLE [dbo].[AaaAccount]  WITH CHECK ADD  CONSTRAINT [AaaAccount_FK2] FOREIGN KEY([SERVICE_ID])
REFERENCES [dbo].[AaaService] ([SERVICE_ID])
GO
ALTER TABLE [dbo].[AaaAccount] CHECK CONSTRAINT [AaaAccount_FK2]
GO
ALTER TABLE [dbo].[AaaAccount]  WITH CHECK ADD  CONSTRAINT [AaaAccount_FK3] FOREIGN KEY([ACCOUNTPROFILE_ID])
REFERENCES [dbo].[AaaAccAdminProfile] ([ACCOUNTPROFILE_ID])
GO
ALTER TABLE [dbo].[AaaAccount] CHECK CONSTRAINT [AaaAccount_FK3]
GO
