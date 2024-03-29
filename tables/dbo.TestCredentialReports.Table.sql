USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TestCredentialReports]    Script Date: 6/29/2019 5:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCredentialReports](
	[ID] [bigint] NOT NULL,
	[PROFILEID] [bigint] NOT NULL,
	[DEVICENAME] [varchar](250) NOT NULL,
	[DISPLAYNAME] [varchar](250) NOT NULL,
	[PROTOCOL] [varchar](50) NOT NULL,
	[RESULT] [varchar](50) NOT NULL,
	[REASON] [varchar](500) NULL,
	[TIME] [bigint] NOT NULL,
 CONSTRAINT [TestCredentialReports_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2078677213]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2078677213] ON [dbo].[TestCredentialReports]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TestCredentialReports]  WITH CHECK ADD  CONSTRAINT [TestCredentialReports_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[TestCredentialProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[TestCredentialReports] CHECK CONSTRAINT [TestCredentialReports_FK1]
GO
