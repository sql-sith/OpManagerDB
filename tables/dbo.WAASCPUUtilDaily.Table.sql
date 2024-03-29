USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WAASCPUUtilDaily]    Script Date: 6/29/2019 5:53:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WAASCPUUtilDaily](
	[ID] [int] NOT NULL,
	[DEVICE_ID] [int] NOT NULL,
	[UTILIZATION] [varchar](100) NOT NULL,
	[FREQUENCY] [bigint] NOT NULL,
	[START_TIME] [datetime] NOT NULL,
	[END_TIME] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Index [WAASCPUUtilDaily_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WAASCPUUtilDaily_IDX0] ON [dbo].[WAASCPUUtilDaily]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [WAASCPUUtilDaily_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [WAASCPUUtilDaily_IDX1] ON [dbo].[WAASCPUUtilDaily]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WAASCPUUtilDaily] ADD  DEFAULT (getdate()) FOR [START_TIME]
GO
ALTER TABLE [dbo].[WAASCPUUtilDaily] ADD  DEFAULT ('0000-00-00 00:00:00') FOR [END_TIME]
GO
