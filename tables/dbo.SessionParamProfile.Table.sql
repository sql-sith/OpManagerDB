USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SessionParamProfile]    Script Date: 6/29/2019 5:51:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SessionParamProfile](
	[ID] [int] NOT NULL,
	[PROFILE_NAME] [varchar](100) NOT NULL,
	[INITIATOR_IP] [varchar](100) NOT NULL,
	[RES_TIMEOUT] [varchar](25) NOT NULL,
	[FREQUENCY] [varchar](25) NOT NULL,
	[INAC_TIMEOUT] [varchar](25) NOT NULL,
	[HISTORY] [varchar](25) NOT NULL,
	[REACT_TIME] [varchar](25) NOT NULL,
 CONSTRAINT [SessionParamProfile_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
