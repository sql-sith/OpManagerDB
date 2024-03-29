USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiscoveryIgnoreRules]    Script Date: 6/29/2019 5:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscoveryIgnoreRules](
	[ID] [bigint] NOT NULL,
	[PROFILEID] [bigint] NOT NULL,
	[TYPE] [varchar](100) NULL,
	[RULECONDITION] [varchar](100) NULL,
	[VALUE] [text] NULL,
 CONSTRAINT [DiscoveryIgnoreRules_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
