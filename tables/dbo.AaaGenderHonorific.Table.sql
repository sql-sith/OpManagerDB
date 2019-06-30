USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaGenderHonorific]    Script Date: 6/29/2019 5:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaGenderHonorific](
	[GH_ID] [bigint] NOT NULL,
	[GENDER] [varchar](10) NOT NULL,
	[HONORIFIC] [varchar](20) NOT NULL,
 CONSTRAINT [AaaGenderHonorific_PK] PRIMARY KEY CLUSTERED 
(
	[GH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
