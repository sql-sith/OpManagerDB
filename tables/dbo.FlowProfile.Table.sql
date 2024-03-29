USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FlowProfile]    Script Date: 6/29/2019 5:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlowProfile](
	[ID] [int] NOT NULL,
	[PROFILE_NAME] [varchar](100) NOT NULL,
	[INITIATOR_IP] [varchar](100) NOT NULL,
	[SRC_IP] [varchar](25) NOT NULL,
	[DST_IP] [varchar](25) NOT NULL,
	[SRC_PORT] [varchar](25) NOT NULL,
	[DST_PORT] [varchar](25) NOT NULL,
	[IP_PROT] [varchar](25) NOT NULL,
 CONSTRAINT [FlowProfile_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
