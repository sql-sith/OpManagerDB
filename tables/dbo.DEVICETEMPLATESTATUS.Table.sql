USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DEVICETEMPLATESTATUS]    Script Date: 6/29/2019 5:47:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEVICETEMPLATESTATUS](
	[STATUS] [bigint] NOT NULL,
 CONSTRAINT [DEVICETEMPLATESTATUS_PK] PRIMARY KEY CLUSTERED 
(
	[STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
