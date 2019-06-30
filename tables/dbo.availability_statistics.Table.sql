USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[availability_statistics]    Script Date: 6/29/2019 5:46:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[availability_statistics](
	[POLLID] [bigint] NULL,
	[INSTANCE] [varchar](100) NULL,
	[DOWNTIME] [bigint] NULL,
	[UPTIME] [bigint] NULL
) ON [PRIMARY]
GO
