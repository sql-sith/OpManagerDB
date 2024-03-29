USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EnterpriseType]    Script Date: 6/29/2019 5:47:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EnterpriseType](
	[OID] [varchar](30) NOT NULL,
	[TYPE] [varchar](150) NOT NULL,
 CONSTRAINT [EnterpriseType_PK] PRIMARY KEY CLUSTERED 
(
	[OID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EnterpriseType] ADD  DEFAULT ('Others') FOR [TYPE]
GO
