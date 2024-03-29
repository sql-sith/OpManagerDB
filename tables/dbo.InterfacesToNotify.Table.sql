USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InterfacesToNotify]    Script Date: 6/29/2019 5:48:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterfacesToNotify](
	[name] [varchar](100) NOT NULL,
	[notify] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
