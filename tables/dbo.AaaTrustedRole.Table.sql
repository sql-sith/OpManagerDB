USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaTrustedRole]    Script Date: 6/29/2019 5:45:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaTrustedRole](
	[SERVICE_ID] [bigint] NOT NULL,
	[TRUSTED_ROLE_ID] [bigint] NOT NULL,
	[UNAUTH_ROLE_ID] [bigint] NULL,
 CONSTRAINT [AaaTrustedRole_PK] PRIMARY KEY CLUSTERED 
(
	[SERVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [AaaTrustedRole_UK0] UNIQUE NONCLUSTERED 
(
	[TRUSTED_ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [AaaTrustedRole_UK1]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [AaaTrustedRole_UK1] ON [dbo].[AaaTrustedRole]
(
	[UNAUTH_ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_812611705]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_812611705] ON [dbo].[AaaTrustedRole]
(
	[UNAUTH_ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_812611706]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_812611706] ON [dbo].[AaaTrustedRole]
(
	[TRUSTED_ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_857497272]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_857497272] ON [dbo].[AaaTrustedRole]
(
	[SERVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaTrustedRole]  WITH CHECK ADD  CONSTRAINT [AaaTrustedRole_FK] FOREIGN KEY([SERVICE_ID])
REFERENCES [dbo].[AaaService] ([SERVICE_ID])
GO
ALTER TABLE [dbo].[AaaTrustedRole] CHECK CONSTRAINT [AaaTrustedRole_FK]
GO
ALTER TABLE [dbo].[AaaTrustedRole]  WITH CHECK ADD  CONSTRAINT [AaaTrustedRole_FK1] FOREIGN KEY([UNAUTH_ROLE_ID])
REFERENCES [dbo].[AaaRole] ([ROLE_ID])
GO
ALTER TABLE [dbo].[AaaTrustedRole] CHECK CONSTRAINT [AaaTrustedRole_FK1]
GO
ALTER TABLE [dbo].[AaaTrustedRole]  WITH CHECK ADD  CONSTRAINT [AaaTrustedRole_FK2] FOREIGN KEY([TRUSTED_ROLE_ID])
REFERENCES [dbo].[AaaRole] ([ROLE_ID])
GO
ALTER TABLE [dbo].[AaaTrustedRole] CHECK CONSTRAINT [AaaTrustedRole_FK2]
GO
