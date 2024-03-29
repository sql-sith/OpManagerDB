USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IpslaThresholdVariables]    Script Date: 6/29/2019 5:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IpslaThresholdVariables](
	[ID] [int] NOT NULL,
	[THRESHOLDVAR] [varchar](20) NOT NULL,
	[DISPLAYTEXT] [varchar](40) NOT NULL,
	[UNIT] [varchar](15) NOT NULL,
 CONSTRAINT [IpslaThresholdVariables_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
