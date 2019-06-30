USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SANCLICredentialDetails]    Script Date: 6/29/2019 5:51:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANCLICredentialDetails](
	[CREDENTIALID] [bigint] NOT NULL,
	[USERNAME] [varchar](50) NULL,
	[PASSWORD] [varchar](50) NULL,
	[PROMPT] [varchar](5) NULL,
	[TIMEOUT] [int] NOT NULL,
 CONSTRAINT [SANCLICredentialDetails_PK] PRIMARY KEY CLUSTERED 
(
	[CREDENTIALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__459636487]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__459636487] ON [dbo].[SANCLICredentialDetails]
(
	[CREDENTIALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SANCLICredentialDetails] ADD  DEFAULT ('10') FOR [TIMEOUT]
GO
ALTER TABLE [dbo].[SANCLICredentialDetails]  WITH CHECK ADD  CONSTRAINT [SANCLICredentialDetails_FK] FOREIGN KEY([CREDENTIALID])
REFERENCES [dbo].[CredentialManager] ([CREDENTIALID])
GO
ALTER TABLE [dbo].[SANCLICredentialDetails] CHECK CONSTRAINT [SANCLICredentialDetails_FK]
GO
