USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UserTrafficHourly]    Script Date: 6/29/2019 5:52:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTrafficHourly](
	[ID] [bigint] NOT NULL,
	[USERID] [int] NOT NULL,
	[UPLOAD_OCTETS] [bigint] NOT NULL,
	[MIN_UPLOAD_OCTETS] [bigint] NOT NULL,
	[MAX_UPLOAD_OCTETS] [bigint] NOT NULL,
	[DOWNLOAD_OCTETS] [bigint] NOT NULL,
	[MIN_DOWNLOAD_OCTETS] [bigint] NOT NULL,
	[MAX_DOWNLOAD_OCTETS] [bigint] NOT NULL,
	[COLLECTION_TIME] [datetime] NOT NULL,
 CONSTRAINT [UserTrafficHourly_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [UserTrafficHourly_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [UserTrafficHourly_IDX0] ON [dbo].[UserTrafficHourly]
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
