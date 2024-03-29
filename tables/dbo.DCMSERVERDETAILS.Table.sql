USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DCMSERVERDETAILS]    Script Date: 6/29/2019 5:47:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DCMSERVERDETAILS](
	[ID] [bigint] NOT NULL,
	[PROTOCOL] [varchar](10) NOT NULL,
	[HOST] [varchar](50) NOT NULL,
	[PORT] [int] NOT NULL,
	[WSDLPATH] [varchar](50) NOT NULL,
 CONSTRAINT [DCMSERVERDETAILS_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [DCMSERVERDETAILS_UK0] UNIQUE NONCLUSTERED 
(
	[HOST] ASC,
	[PORT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
