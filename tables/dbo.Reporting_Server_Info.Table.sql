USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Reporting_Server_Info]    Script Date: 6/29/2019 5:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reporting_Server_Info](
	[ID] [int] NOT NULL,
	[SERVER_IP] [varchar](255) NOT NULL,
	[HTTPS_PORT] [int] NOT NULL,
	[FAIL_OVER_INFO] [int] NOT NULL,
 CONSTRAINT [Reporting_Server_Info_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Reporting_Server_Info] ADD  DEFAULT ('443') FOR [HTTPS_PORT]
GO
ALTER TABLE [dbo].[Reporting_Server_Info] ADD  DEFAULT ('0') FOR [FAIL_OVER_INFO]
GO
