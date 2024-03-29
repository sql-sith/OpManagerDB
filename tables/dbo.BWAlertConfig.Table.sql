USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BWAlertConfig]    Script Date: 6/29/2019 5:46:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BWAlertConfig](
	[NAME] [varchar](50) NOT NULL,
	[SENDERNAME] [varchar](50) NULL,
	[TOADDRESS] [varchar](1500) NULL,
	[ALERTOPTIONS] [int] NOT NULL,
	[MAILOPTION] [int] NOT NULL,
 CONSTRAINT [BWAlertConfig_PK] PRIMARY KEY CLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BWAlertConfig] ADD  DEFAULT ('3') FOR [ALERTOPTIONS]
GO
ALTER TABLE [dbo].[BWAlertConfig] ADD  DEFAULT ('0') FOR [MAILOPTION]
GO
