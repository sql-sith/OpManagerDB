USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CollectorBackUpConfig]    Script Date: 6/29/2019 5:46:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectorBackUpConfig](
	[ID] [bigint] NOT NULL,
	[TABLE_NAME] [varchar](250) NOT NULL,
	[SENT_ID] [bigint] NOT NULL,
 CONSTRAINT [CollectorBackUpConfig_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
