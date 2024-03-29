USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CustomerInfo]    Script Date: 6/29/2019 5:46:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerInfo](
	[CUSTOMERID] [bigint] NOT NULL,
	[CUSTOMERNAME] [varchar](50) NOT NULL,
	[ORGANISATION] [varchar](100) NULL,
	[CONTACTPERSON] [varchar](50) NULL,
	[CONTACTEMAIL] [varchar](100) NULL,
 CONSTRAINT [CustomerInfo_PK] PRIMARY KEY CLUSTERED 
(
	[CUSTOMERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [CustomerInfo_UK0] UNIQUE NONCLUSTERED 
(
	[CUSTOMERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
