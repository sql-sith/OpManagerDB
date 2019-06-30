USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SANStorageAPICredentialMap]    Script Date: 6/29/2019 5:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANStorageAPICredentialMap](
	[MOID] [bigint] NOT NULL,
	[CREDENTIALID] [bigint] NULL,
 CONSTRAINT [SANStorageAPICredentialMap_PK] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1202291347]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1202291347] ON [dbo].[SANStorageAPICredentialMap]
(
	[CREDENTIALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1202291348]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1202291348] ON [dbo].[SANStorageAPICredentialMap]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SANStorageAPICredentialMap]  WITH CHECK ADD  CONSTRAINT [SANStorageAPICredentialMap_FK1] FOREIGN KEY([CREDENTIALID])
REFERENCES [dbo].[CredentialManager] ([CREDENTIALID])
GO
ALTER TABLE [dbo].[SANStorageAPICredentialMap] CHECK CONSTRAINT [SANStorageAPICredentialMap_FK1]
GO
ALTER TABLE [dbo].[SANStorageAPICredentialMap]  WITH CHECK ADD  CONSTRAINT [SANStorageAPICredentialMap_FK2] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[SANStorageAPICredentialMap] CHECK CONSTRAINT [SANStorageAPICredentialMap_FK2]
GO
