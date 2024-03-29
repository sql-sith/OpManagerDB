USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UserMACAssociation]    Script Date: 6/29/2019 5:52:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMACAssociation](
	[ID] [bigint] NOT NULL,
	[USERNAME] [varchar](500) NULL,
	[MACADDRESS] [varchar](100) NOT NULL,
 CONSTRAINT [UserMACAssociation_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UserMACAssociation_UK1] UNIQUE NONCLUSTERED 
(
	[MACADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
