USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IpslaUserPreference]    Script Date: 6/29/2019 5:48:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IpslaUserPreference](
	[NAME] [varchar](100) NOT NULL,
	[VALUE] [varchar](250) NOT NULL,
 CONSTRAINT [IpslaUserPreference_PK] PRIMARY KEY CLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
