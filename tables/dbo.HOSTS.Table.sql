USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HOSTS]    Script Date: 6/29/2019 5:48:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOSTS](
	[HOSTNAMES] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[HOSTNAMES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
