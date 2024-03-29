USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IndexConfigurations]    Script Date: 6/29/2019 5:48:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexConfigurations](
	[CONF_NAME] [nvarchar](100) NOT NULL,
	[CONF_VALUE] [nvarchar](100) NULL,
 CONSTRAINT [IndexConfigurations_PK] PRIMARY KEY CLUSTERED 
(
	[CONF_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
