USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SystemSettings]    Script Date: 6/29/2019 5:52:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemSettings](
	[PROPNAME] [varchar](50) NOT NULL,
	[PROPVAL] [varchar](50) NOT NULL,
 CONSTRAINT [SystemSettings_PK] PRIMARY KEY CLUSTERED 
(
	[PROPNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
