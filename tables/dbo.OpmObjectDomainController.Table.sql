USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OpmObjectDomainController]    Script Date: 6/29/2019 5:50:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpmObjectDomainController](
	[DEVICENAME] [varchar](250) NOT NULL,
	[DOMAINCONTROLLERNAME] [varchar](250) NOT NULL,
 CONSTRAINT [OpmObjectDomainController_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
