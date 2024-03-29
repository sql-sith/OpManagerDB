USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SANNetAppAPICredentialMap]    Script Date: 6/29/2019 5:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANNetAppAPICredentialMap](
	[MOID] [bigint] NOT NULL,
	[CREDENTIALID] [bigint] NULL,
 CONSTRAINT [SANNetAppAPICredentialMap_PK] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_621409436]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_621409436] ON [dbo].[SANNetAppAPICredentialMap]
(
	[CREDENTIALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_621409437]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_621409437] ON [dbo].[SANNetAppAPICredentialMap]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SANNetAppAPICredentialMap]  WITH CHECK ADD  CONSTRAINT [SANNetAppAPICredentialMap_FK1] FOREIGN KEY([CREDENTIALID])
REFERENCES [dbo].[CredentialManager] ([CREDENTIALID])
GO
ALTER TABLE [dbo].[SANNetAppAPICredentialMap] CHECK CONSTRAINT [SANNetAppAPICredentialMap_FK1]
GO
ALTER TABLE [dbo].[SANNetAppAPICredentialMap]  WITH CHECK ADD  CONSTRAINT [SANNetAppAPICredentialMap_FK2] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[SANNetAppAPICredentialMap] CHECK CONSTRAINT [SANNetAppAPICredentialMap_FK2]
GO
