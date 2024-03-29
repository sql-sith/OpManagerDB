USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DefaultEchoSettingsTemplate]    Script Date: 6/29/2019 5:47:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultEchoSettingsTemplate](
	[ID] [int] NOT NULL,
	[ECHOPAYLOAD] [int] NOT NULL,
	[POLL_INTERVAL] [int] NOT NULL,
	[TIMEOUT] [int] NOT NULL,
	[TYPE_OF_SERVICE] [int] NOT NULL,
	[ENABLE_PATH_ECHO] [varchar](10) NOT NULL,
 CONSTRAINT [DefaultEchoSettingsTemplate_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DefaultEchoSettingsTemplate] ADD  DEFAULT ('true') FOR [ENABLE_PATH_ECHO]
GO
