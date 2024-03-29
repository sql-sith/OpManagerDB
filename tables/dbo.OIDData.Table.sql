USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OIDData]    Script Date: 6/29/2019 5:49:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OIDData](
	[OID] [varchar](150) NOT NULL,
	[TYPE] [varchar](300) NOT NULL,
	[BASE_TYPE] [varchar](255) NOT NULL,
 CONSTRAINT [OIDData_PK] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OIDData] ADD  DEFAULT ('Others') FOR [BASE_TYPE]
GO
