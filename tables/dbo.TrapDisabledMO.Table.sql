USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TrapDisabledMO]    Script Date: 6/29/2019 5:52:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrapDisabledMO](
	[Name] [varchar](250) NOT NULL,
	[Type] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
