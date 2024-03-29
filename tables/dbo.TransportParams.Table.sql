USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TransportParams]    Script Date: 6/29/2019 5:52:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransportParams](
	[TransportParamsID] [varchar](150) NOT NULL,
	[TransportProtocol] [varchar](25) NOT NULL,
 CONSTRAINT [TRANSPARAMS_KEY] PRIMARY KEY CLUSTERED 
(
	[TransportParamsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
