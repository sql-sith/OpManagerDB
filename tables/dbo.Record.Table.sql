USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Record]    Script Date: 6/29/2019 5:50:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Record](
	[RecordID] [varchar](250) NOT NULL,
	[Type] [varchar](25) NOT NULL,
	[Protocol] [varchar](25) NOT NULL,
 CONSTRAINT [RECORD_KEY] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
