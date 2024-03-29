USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CBQos_Properties]    Script Date: 6/29/2019 5:46:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CBQos_Properties](
	[PROP_ID] [int] NOT NULL,
	[POLL_INTERVAL] [int] NOT NULL,
	[TIMEOUT] [int] NOT NULL,
 CONSTRAINT [CBQos_Properties_PK] PRIMARY KEY CLUSTERED 
(
	[PROP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
