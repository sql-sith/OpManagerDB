USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCredentialValueDef]    Script Date: 6/29/2019 5:49:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCredentialValueDef](
	[DEFINITIONID] [bigint] NOT NULL,
	[CREDENTIALGROUPID] [bigint] NOT NULL,
	[CREDENTIALNAME] [varchar](50) NOT NULL,
 CONSTRAINT [NCMCredentialValueDef_PK] PRIMARY KEY CLUSTERED 
(
	[DEFINITIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [NCMCredentialValueDef_UNQ1] UNIQUE NONCLUSTERED 
(
	[CREDENTIALGROUPID] ASC,
	[CREDENTIALNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_540802928]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_540802928] ON [dbo].[NCMCredentialValueDef]
(
	[CREDENTIALGROUPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMCredentialValueDef]  WITH CHECK ADD  CONSTRAINT [NCMCredentialValueDef_FK1] FOREIGN KEY([CREDENTIALGROUPID])
REFERENCES [dbo].[NCMCredentialGroup] ([CREDENTIALGROUPID])
GO
ALTER TABLE [dbo].[NCMCredentialValueDef] CHECK CONSTRAINT [NCMCredentialValueDef_FK1]
GO
