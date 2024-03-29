USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VulnerablePortDetails]    Script Date: 6/29/2019 5:53:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VulnerablePortDetails](
	[PORT_ID] [bigint] NOT NULL,
	[SERVICENAME] [nvarchar](100) NOT NULL,
	[PROTOCOL] [nvarchar](50) NOT NULL,
	[PORT] [bigint] NOT NULL,
	[CVE_ID] [nvarchar](250) NOT NULL,
 CONSTRAINT [VulnerablePortDetails_PK] PRIMARY KEY CLUSTERED 
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
