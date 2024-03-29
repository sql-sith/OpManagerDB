USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NotificationFilters]    Script Date: 6/29/2019 5:49:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationFilters](
	[NF_ID] [bigint] NOT NULL,
	[FILTER_NAME] [nvarchar](60) NOT NULL,
	[NOTIFICATION_METHOD] [nvarchar](25) NULL,
	[HITS] [bigint] NULL,
	[CRITICALITY] [nvarchar](25) NULL,
	[OWNER_NAME] [nvarchar](40) NULL,
	[THRESHOLD] [int] NULL,
	[MULTIPLE] [bit] NULL,
	[MATCH_ALL] [bit] NULL,
	[PERIOD] [bigint] NULL,
	[ENABLED] [bit] NULL,
	[ADV_NOTIFIER] [nvarchar](40) NULL,
	[FILTER_TYPE] [nvarchar](25) NOT NULL,
 CONSTRAINT [NotificationFilters_PK] PRIMARY KEY CLUSTERED 
(
	[NF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [NotificationFilters_UK1] UNIQUE NONCLUSTERED 
(
	[FILTER_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NotificationFilters] ADD  DEFAULT ('0') FOR [HITS]
GO
ALTER TABLE [dbo].[NotificationFilters] ADD  DEFAULT ('-') FOR [OWNER_NAME]
GO
ALTER TABLE [dbo].[NotificationFilters] ADD  DEFAULT ('0') FOR [PERIOD]
GO
ALTER TABLE [dbo].[NotificationFilters] ADD  DEFAULT ('Alert') FOR [FILTER_TYPE]
GO
