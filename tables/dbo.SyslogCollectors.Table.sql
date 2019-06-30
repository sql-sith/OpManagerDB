USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SyslogCollectors]    Script Date: 6/29/2019 5:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SyslogCollectors](
	[SYSLOGCOLLECTOR_ID] [bigint] NOT NULL,
	[PORT] [bigint] NOT NULL,
	[SYSLOGSERVERNAME] [varchar](50) NULL,
	[STATUS] [varchar](10) NOT NULL,
 CONSTRAINT [SyslogCollectors_PK] PRIMARY KEY CLUSTERED 
(
	[SYSLOGCOLLECTOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SyslogCollectors] ADD  DEFAULT ('514') FOR [PORT]
GO
ALTER TABLE [dbo].[SyslogCollectors] ADD  DEFAULT ('NULL') FOR [SYSLOGSERVERNAME]
GO
ALTER TABLE [dbo].[SyslogCollectors] ADD  DEFAULT ('UP') FOR [STATUS]
GO
