USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMClientScheduleStatus]    Script Date: 6/29/2019 5:49:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMClientScheduleStatus](
	[STATUS] [int] NOT NULL,
	[IMAGEICON] [varchar](200) NOT NULL,
 CONSTRAINT [NCMClientScheduleStatus_PK] PRIMARY KEY CLUSTERED 
(
	[STATUS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
