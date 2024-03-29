USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SMPPSettings]    Script Date: 6/29/2019 5:51:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMPPSettings](
	[SMPP_ID] [bigint] NOT NULL,
	[SMPPSERVER] [varchar](200) NOT NULL,
	[PORT] [bigint] NOT NULL,
	[USERNAME] [varchar](200) NOT NULL,
	[PASSWORD] [varbinary](max) NOT NULL,
	[SOURCE_ADDRESS] [varchar](200) NOT NULL,
	[SOURCE_TON] [int] NOT NULL,
	[SOURCE_NPI] [int] NOT NULL,
	[DESTINATION_TON] [int] NOT NULL,
	[DESTINATION_NPI] [int] NOT NULL,
 CONSTRAINT [SMPPSettings_PK1] PRIMARY KEY CLUSTERED 
(
	[SMPP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SMPPSettings] ADD  DEFAULT ('0') FOR [SOURCE_TON]
GO
ALTER TABLE [dbo].[SMPPSettings] ADD  DEFAULT ('0') FOR [SOURCE_NPI]
GO
ALTER TABLE [dbo].[SMPPSettings] ADD  DEFAULT ('0') FOR [DESTINATION_TON]
GO
ALTER TABLE [dbo].[SMPPSettings] ADD  DEFAULT ('0') FOR [DESTINATION_NPI]
GO
