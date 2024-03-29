USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InteractionSpec]    Script Date: 6/29/2019 5:48:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InteractionSpec](
	[InteractionID] [varchar](150) NOT NULL,
	[Protocol] [varchar](25) NOT NULL,
	[Timeout] [int] NULL,
 CONSTRAINT [ISPEC_KEY] PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
