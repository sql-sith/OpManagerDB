USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TestCredentialAddlnParams]    Script Date: 6/29/2019 5:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCredentialAddlnParams](
	[PROFILEID] [bigint] NOT NULL,
	[EMAIL] [varchar](250) NULL,
	[SUBJECT] [varchar](200) NULL,
	[MESSAGE] [varchar](2500) NULL,
 CONSTRAINT [TestCredentialAddlnParams_PK1] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__684872147]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__684872147] ON [dbo].[TestCredentialAddlnParams]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TestCredentialAddlnParams]  WITH CHECK ADD  CONSTRAINT [TestCredentialAddlnParams_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[TestCredentialProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[TestCredentialAddlnParams] CHECK CONSTRAINT [TestCredentialAddlnParams_FK1]
GO
