USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BenchmarkUploadDetails]    Script Date: 6/29/2019 5:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BenchmarkUploadDetails](
	[PROPERTY] [varchar](20) NOT NULL,
	[STATUS] [varchar](20) NOT NULL,
 CONSTRAINT [BenchmarkUploadDetails_PK] PRIMARY KEY CLUSTERED 
(
	[PROPERTY] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
