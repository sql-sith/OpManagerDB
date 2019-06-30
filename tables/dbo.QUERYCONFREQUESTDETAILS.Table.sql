USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QUERYCONFREQUESTDETAILS]    Script Date: 6/29/2019 5:50:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUERYCONFREQUESTDETAILS](
	[AGENT_REQUEST_ID] [bigint] NOT NULL,
	[DOWNLOAD_URL] [varchar](250) NOT NULL,
	[IS_SNMP_QUERY_CONF] [bit] NOT NULL,
	[SNMP_AGENT_KEY] [bigint] NULL,
 CONSTRAINT [QUERYCONFDETAILS_PK1] PRIMARY KEY CLUSTERED 
(
	[AGENT_REQUEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [QUERYCONFREQUESTDETAILS_UK1] UNIQUE NONCLUSTERED 
(
	[DOWNLOAD_URL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__690581213]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__690581213] ON [dbo].[QUERYCONFREQUESTDETAILS]
(
	[AGENT_REQUEST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUERYCONFREQUESTDETAILS] ADD  DEFAULT ((0)) FOR [IS_SNMP_QUERY_CONF]
GO
ALTER TABLE [dbo].[QUERYCONFREQUESTDETAILS]  WITH CHECK ADD  CONSTRAINT [QUERYCONFDETAILS_FK1] FOREIGN KEY([AGENT_REQUEST_ID])
REFERENCES [dbo].[AGENTREQUESTDETAILS] ([AGENT_REQUEST_ID])
GO
ALTER TABLE [dbo].[QUERYCONFREQUESTDETAILS] CHECK CONSTRAINT [QUERYCONFDETAILS_FK1]
GO
