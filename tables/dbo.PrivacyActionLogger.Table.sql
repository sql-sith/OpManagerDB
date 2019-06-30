USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PrivacyActionLogger]    Script Date: 6/29/2019 5:50:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrivacyActionLogger](
	[ACTIONLOGGERID] [bigint] NOT NULL,
	[CONSENTID] [bigint] NOT NULL,
	[USERID] [bigint] NOT NULL,
	[USERNAME] [varchar](255) NOT NULL,
	[STATUS] [varchar](255) NOT NULL,
	[LASTMODIFIEDTIME] [bigint] NOT NULL,
	[CONSENTPRIVACYLEVEL] [int] NOT NULL,
	[REMEMBERTHIS] [bit] NOT NULL,
 CONSTRAINT [PrivacyActionLogger_PK1] PRIMARY KEY CLUSTERED 
(
	[ACTIONLOGGERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_831695675]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_831695675] ON [dbo].[PrivacyActionLogger]
(
	[CONSENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PrivacyActionLogger]  WITH CHECK ADD  CONSTRAINT [PrivacyActionLogger_FK1] FOREIGN KEY([CONSENTID])
REFERENCES [dbo].[Consent] ([CONSENTID])
GO
ALTER TABLE [dbo].[PrivacyActionLogger] CHECK CONSTRAINT [PrivacyActionLogger_FK1]
GO
