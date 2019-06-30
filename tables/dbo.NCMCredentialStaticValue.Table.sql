USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCredentialStaticValue]    Script Date: 6/29/2019 5:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCredentialStaticValue](
	[CREDENTIALID] [bigint] NOT NULL,
	[CREDENTIALVALUE] [varbinary](max) NULL,
 CONSTRAINT [NCMCredentialStaticValue_PK1] PRIMARY KEY CLUSTERED 
(
	[CREDENTIALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__955542079]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__955542079] ON [dbo].[NCMCredentialStaticValue]
(
	[CREDENTIALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMCredentialStaticValue]  WITH CHECK ADD  CONSTRAINT [NCMCredentialStaticValue_FK1] FOREIGN KEY([CREDENTIALID])
REFERENCES [dbo].[NCMCredentialValue] ([CREDENTIALID])
GO
ALTER TABLE [dbo].[NCMCredentialStaticValue] CHECK CONSTRAINT [NCMCredentialStaticValue_FK1]
GO
