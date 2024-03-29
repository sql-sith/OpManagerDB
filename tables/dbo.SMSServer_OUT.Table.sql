USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SMSServer_OUT]    Script Date: 6/29/2019 5:51:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSServer_OUT](
	[ID] [bigint] NOT NULL,
	[TYPE] [varchar](1) NOT NULL,
	[RECIPIENT] [varchar](16) NOT NULL,
	[TEXT] [varchar](1000) NOT NULL,
	[WAP_URL] [varchar](1000) NOT NULL,
	[WAP_EXPIRY_DATE] [datetime] NULL,
	[WAP_SIGNAL] [varchar](1) NULL,
	[CREATE_DATE] [datetime] NOT NULL,
	[ORIGINATOR] [varchar](16) NOT NULL,
	[ENCODING] [varchar](1) NOT NULL,
	[STATUS_REPORT] [int] NOT NULL,
	[FLASH_SMS] [int] NOT NULL,
	[SRC_PORT] [int] NOT NULL,
	[DST_PORT] [int] NOT NULL,
	[SENT_DATE] [datetime] NULL,
	[REF_NO] [varchar](64) NULL,
	[PRIORITY] [int] NOT NULL,
	[STATUS] [varchar](1) NOT NULL,
	[ERRORS] [int] NOT NULL,
	[GATEWAY_ID] [varchar](64) NOT NULL,
 CONSTRAINT [SMSServer_OUT_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
