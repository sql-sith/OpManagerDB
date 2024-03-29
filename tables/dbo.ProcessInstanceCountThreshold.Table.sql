USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProcessInstanceCountThreshold]    Script Date: 6/29/2019 5:50:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessInstanceCountThreshold](
	[ID] [bigint] NOT NULL,
	[THRESHOLDVALUE] [int] NOT NULL,
	[REARMVALUE] [int] NULL,
	[FAILURETHRESHOLD] [int] NOT NULL,
	[SEVERITY] [int] NOT NULL,
	[THRESHOLDCONDITION] [varchar](10) NOT NULL,
 CONSTRAINT [ProcessInstanceCountThreshold_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1274082268]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1274082268] ON [dbo].[ProcessInstanceCountThreshold]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProcessInstanceCountThreshold] ADD  DEFAULT ('3') FOR [SEVERITY]
GO
ALTER TABLE [dbo].[ProcessInstanceCountThreshold]  WITH CHECK ADD  CONSTRAINT [ProcessInstanceCountThreshold_FK] FOREIGN KEY([ID])
REFERENCES [dbo].[ProcessDetails] ([ID])
GO
ALTER TABLE [dbo].[ProcessInstanceCountThreshold] CHECK CONSTRAINT [ProcessInstanceCountThreshold_FK]
GO
