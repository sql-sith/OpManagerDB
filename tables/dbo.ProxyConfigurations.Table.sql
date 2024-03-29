USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProxyConfigurations]    Script Date: 6/29/2019 5:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProxyConfigurations](
	[PCID] [bigint] NOT NULL,
	[SERVER] [bigint] NOT NULL,
	[RESOURCES] [nvarchar](255) NOT NULL,
 CONSTRAINT [ProxyConfigurations_PK] PRIMARY KEY CLUSTERED 
(
	[PCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
