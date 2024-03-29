USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DeviceToEventLogRuleMap]    Script Date: 6/29/2019 5:47:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceToEventLogRuleMap](
	[deviceName] [varchar](150) NOT NULL,
	[ruleID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[deviceName] ASC,
	[ruleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
