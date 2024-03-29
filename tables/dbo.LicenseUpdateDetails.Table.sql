USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LicenseUpdateDetails]    Script Date: 6/29/2019 5:48:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LicenseUpdateDetails](
	[ID] [bigint] NOT NULL,
	[PROBEID] [varchar](200) NOT NULL,
	[LICENSEFILENAME] [varchar](250) NOT NULL,
 CONSTRAINT [LicenseUpdateDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
