USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FWSimulator]    Script Date: 6/29/2019 5:47:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FWSimulator](
	[VENDOR_TYPE] [nvarchar](30) NOT NULL,
	[SRC_RANGE] [nvarchar](50) NULL,
	[STATUS] [bit] NOT NULL,
 CONSTRAINT [FWSimulator_PK] PRIMARY KEY CLUSTERED 
(
	[VENDOR_TYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
