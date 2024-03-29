USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Collector_Server_Info]    Script Date: 6/29/2019 5:46:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collector_Server_Info](
	[ID] [int] NOT NULL,
	[COLLECTOR_ID] [int] NOT NULL,
	[COLLECTOR_IP] [varchar](255) NOT NULL,
	[IS_HTTP] [bit] NOT NULL,
	[WEB_PORT] [int] NOT NULL,
	[FAIL_OVER_INFO] [int] NOT NULL,
	[HAS_PROXY] [bit] NOT NULL,
 CONSTRAINT [Collector_Server_Info_ID_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_571237132]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_571237132] ON [dbo].[Collector_Server_Info]
(
	[COLLECTOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Collector_Server_Info] ADD  DEFAULT ((0)) FOR [IS_HTTP]
GO
ALTER TABLE [dbo].[Collector_Server_Info] ADD  DEFAULT ('0') FOR [WEB_PORT]
GO
ALTER TABLE [dbo].[Collector_Server_Info] ADD  DEFAULT ('0') FOR [FAIL_OVER_INFO]
GO
ALTER TABLE [dbo].[Collector_Server_Info] ADD  DEFAULT ((0)) FOR [HAS_PROXY]
GO
ALTER TABLE [dbo].[Collector_Server_Info]  WITH CHECK ADD  CONSTRAINT [Collector_Server_Info_FK] FOREIGN KEY([COLLECTOR_ID])
REFERENCES [dbo].[Collector_Properties] ([COLLECTOR_ID])
GO
ALTER TABLE [dbo].[Collector_Server_Info] CHECK CONSTRAINT [Collector_Server_Info_FK]
GO
