USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VICredentialMap]    Script Date: 6/29/2019 5:52:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VICredentialMap](
	[MOID] [bigint] NOT NULL,
	[CREDENTIALID] [bigint] NULL,
 CONSTRAINT [VICredentialMap_PK] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_172251103]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_172251103] ON [dbo].[VICredentialMap]
(
	[CREDENTIALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_172251104]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_172251104] ON [dbo].[VICredentialMap]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VICredentialMap]  WITH CHECK ADD  CONSTRAINT [VICredentialMap_FK1] FOREIGN KEY([CREDENTIALID])
REFERENCES [dbo].[CredentialManager] ([CREDENTIALID])
GO
ALTER TABLE [dbo].[VICredentialMap] CHECK CONSTRAINT [VICredentialMap_FK1]
GO
ALTER TABLE [dbo].[VICredentialMap]  WITH CHECK ADD  CONSTRAINT [VICredentialMap_FK2] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[VICredentialMap] CHECK CONSTRAINT [VICredentialMap_FK2]
GO
