USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TimeTable]    Script Date: 6/29/2019 5:52:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeTable](
	[TIME] [int] NOT NULL,
 CONSTRAINT [TimeTable_PK] PRIMARY KEY CLUSTERED 
(
	[TIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
