USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TargetType]    Script Date: 6/29/2019 5:52:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TargetType](
	[TARGETTYPE_ID] [int] NOT NULL,
	[TARGETTYPE] [varchar](50) NOT NULL,
 CONSTRAINT [TargetType_PK] PRIMARY KEY CLUSTERED 
(
	[TARGETTYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
