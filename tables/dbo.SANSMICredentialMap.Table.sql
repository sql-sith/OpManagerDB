USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SANSMICredentialMap]    Script Date: 6/29/2019 5:51:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANSMICredentialMap](
	[MOID] [bigint] NOT NULL,
	[CREDENTIALID] [bigint] NULL,
 CONSTRAINT [SANSMICredentialMap_PK] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__178042716]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__178042716] ON [dbo].[SANSMICredentialMap]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__178042717]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__178042717] ON [dbo].[SANSMICredentialMap]
(
	[CREDENTIALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SANSMICredentialMap]  WITH CHECK ADD  CONSTRAINT [SANSMICredentialMap_FK1] FOREIGN KEY([CREDENTIALID])
REFERENCES [dbo].[CredentialManager] ([CREDENTIALID])
GO
ALTER TABLE [dbo].[SANSMICredentialMap] CHECK CONSTRAINT [SANSMICredentialMap_FK1]
GO
ALTER TABLE [dbo].[SANSMICredentialMap]  WITH CHECK ADD  CONSTRAINT [SANSMICredentialMap_FK2] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[SANSMICredentialMap] CHECK CONSTRAINT [SANSMICredentialMap_FK2]
GO
