USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TopoNotificationEventBuffer]    Script Date: 6/29/2019 5:52:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopoNotificationEventBuffer](
	[ID] [bigint] NOT NULL,
	[OBJECT] [varbinary](max) NOT NULL,
 CONSTRAINT [TopoNotificationEventBuffer_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
