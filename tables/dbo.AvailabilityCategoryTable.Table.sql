USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AvailabilityCategoryTable]    Script Date: 6/29/2019 5:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvailabilityCategoryTable](
	[ID] [int] NOT NULL,
	[MIN_VALUE] [int] NOT NULL,
	[MAX_VALUE] [int] NOT NULL,
	[LABEL] [varchar](20) NOT NULL,
 CONSTRAINT [AvailabilityCategoryTable_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
