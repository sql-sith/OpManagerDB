USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InstallationDetails]    Script Date: 6/29/2019 5:48:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstallationDetails](
	[ID] [bigint] NOT NULL,
	[PROPNAME] [varchar](50) NOT NULL,
	[PROPVAL] [varchar](50) NOT NULL,
 CONSTRAINT [InstallationDetails_PK] PRIMARY KEY CLUSTERED 
(
	[PROPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
