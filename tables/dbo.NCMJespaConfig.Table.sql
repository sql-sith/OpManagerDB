USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMJespaConfig]    Script Date: 6/29/2019 5:49:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMJespaConfig](
	[CONFIG_ID] [bigint] NOT NULL,
	[CONFIG_KEY] [varchar](50) NOT NULL,
	[CONFIG_VALUE] [varbinary](max) NOT NULL,
 CONSTRAINT [NCMJespaConfig_PK] PRIMARY KEY CLUSTERED 
(
	[CONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
