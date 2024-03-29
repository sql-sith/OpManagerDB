USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DefaultIntfDiscoveryFilter]    Script Date: 6/29/2019 5:47:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultIntfDiscoveryFilter](
	[ID] [bigint] NOT NULL,
	[TYPEIDS] [text] NULL,
	[ADMINSTATUS] [varchar](50) NULL,
	[OPERSTATUS] [varchar](50) NULL,
	[DISCOVERY] [bit] NOT NULL,
 CONSTRAINT [DefaultIntfDiscoveryFilter_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
