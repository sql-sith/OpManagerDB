USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HopAddress]    Script Date: 6/29/2019 5:48:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HopAddress](
	[HOP_ID] [bigint] NOT NULL,
	[IPADDRESS] [varchar](50) NOT NULL,
	[DISPLAYNAME] [varchar](250) NOT NULL,
 CONSTRAINT [HopAddress_PK] PRIMARY KEY CLUSTERED 
(
	[HOP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [HopAddress_UK0] UNIQUE NONCLUSTERED 
(
	[IPADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
