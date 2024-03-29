USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaPostalAddress]    Script Date: 6/29/2019 5:45:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaPostalAddress](
	[POSTALADDR_ID] [bigint] NOT NULL,
	[DOOR_NO] [varchar](10) NULL,
	[STREET] [varchar](50) NULL,
	[LOCATION] [varchar](50) NULL,
	[LANDMARK] [varchar](50) NULL,
	[CITY] [varchar](50) NULL,
	[POSTALCODE] [varchar](20) NULL,
	[STATE] [varchar](50) NULL,
	[COUNTRY] [varchar](50) NULL,
 CONSTRAINT [AaaPostalAddress_PK] PRIMARY KEY CLUSTERED 
(
	[POSTALADDR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
