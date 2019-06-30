USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AppSMSInfo]    Script Date: 6/29/2019 5:46:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppSMSInfo](
	[ID] [bigint] NOT NULL,
	[RECIPIENT] [varchar](50) NOT NULL,
	[TEXT] [varchar](1000) NOT NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[SENT_DATE] [datetime] NULL,
	[STATUS] [int] NOT NULL,
	[ERRORS] [varchar](1000) NULL,
 CONSTRAINT [AppSMSInfo_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppSMSInfo] ADD  DEFAULT ('0') FOR [STATUS]
GO
