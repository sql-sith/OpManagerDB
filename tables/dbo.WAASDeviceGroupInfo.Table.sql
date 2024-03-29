USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WAASDeviceGroupInfo]    Script Date: 6/29/2019 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WAASDeviceGroupInfo](
	[ID] [int] NOT NULL,
	[GROUP_ID] [bigint] NOT NULL,
	[GROUP_NAME] [varchar](100) NOT NULL,
	[GROUP_DESC] [varchar](255) NOT NULL,
	[GROUP_TYPE] [varchar](100) NOT NULL,
 CONSTRAINT [WAASDeviceGroupInfo_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
