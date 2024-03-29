USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FASyslogCollectors]    Script Date: 6/29/2019 5:47:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FASyslogCollectors](
	[SYSLOGCOLLECTOR_ID] [bigint] NOT NULL,
	[DSERVER_ID] [bigint] NOT NULL,
	[PORT] [bigint] NOT NULL,
	[SYSLOGSERVERNAME] [nvarchar](50) NULL,
	[STATUS] [nvarchar](10) NOT NULL,
 CONSTRAINT [FASyslogCollectors_PK] PRIMARY KEY CLUSTERED 
(
	[SYSLOGCOLLECTOR_ID] ASC,
	[DSERVER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [FASyslogCollectors_UK0] UNIQUE NONCLUSTERED 
(
	[SYSLOGCOLLECTOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [FASyslogCollectors_UK1] UNIQUE NONCLUSTERED 
(
	[PORT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_510216524]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_510216524] ON [dbo].[FASyslogCollectors]
(
	[DSERVER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FASyslogCollectors] ADD  DEFAULT ('UP') FOR [STATUS]
GO
ALTER TABLE [dbo].[FASyslogCollectors]  WITH CHECK ADD  CONSTRAINT [FASyslogCollectors_FK] FOREIGN KEY([DSERVER_ID])
REFERENCES [dbo].[DServers] ([DSERVER_ID])
GO
ALTER TABLE [dbo].[FASyslogCollectors] CHECK CONSTRAINT [FASyslogCollectors_FK]
GO
