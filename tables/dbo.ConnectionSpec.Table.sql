USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConnectionSpec]    Script Date: 6/29/2019 5:46:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConnectionSpec](
	[ConnectionID] [varchar](250) NOT NULL,
	[Protocol] [varchar](25) NOT NULL,
	[DedicatedConnection] [bit] NULL,
 CONSTRAINT [CONSPEC_KEY] PRIMARY KEY CLUSTERED 
(
	[ConnectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
