USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConsentStatus]    Script Date: 6/29/2019 5:46:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConsentStatus](
	[CONSENTSTATUSID] [bigint] NOT NULL,
	[CONSENTID] [bigint] NOT NULL,
	[USERID] [bigint] NOT NULL,
	[USERNAME] [varchar](255) NOT NULL,
	[STATUS] [varchar](255) NOT NULL,
	[CONSENTPRIVACYLEVEL] [int] NOT NULL,
	[REMEMBERTHIS] [bit] NOT NULL,
 CONSTRAINT [ConsentStatus_PK1] PRIMARY KEY CLUSTERED 
(
	[CONSENTSTATUSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1659095513]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1659095513] ON [dbo].[ConsentStatus]
(
	[CONSENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConsentStatus]  WITH CHECK ADD  CONSTRAINT [ConsentStatus_FK1] FOREIGN KEY([CONSENTID])
REFERENCES [dbo].[Consent] ([CONSENTID])
GO
ALTER TABLE [dbo].[ConsentStatus] CHECK CONSTRAINT [ConsentStatus_FK1]
GO
