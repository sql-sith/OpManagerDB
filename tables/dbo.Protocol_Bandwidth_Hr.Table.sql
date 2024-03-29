USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Protocol_Bandwidth_Hr]    Script Date: 6/29/2019 5:50:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Protocol_Bandwidth_Hr](
	[PBH_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RID] [bigint] NOT NULL,
	[PROTOCOL_ID] [bigint] NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[REQUEST_COUNT] [bigint] NOT NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[REAL_IN] [bigint] NULL,
	[REAL_OUT] [bigint] NULL,
	[APP_NAME] [nvarchar](96) NULL,
	[APP_CAT] [nvarchar](96) NULL,
	[CLOUD_NAME] [nvarchar](96) NULL,
	[CLOUD_CAT] [nvarchar](96) NULL,
PRIMARY KEY CLUSTERED 
(
	[PBH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Protocol_Bandwidth_Hr_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Protocol_Bandwidth_Hr_IDX1] ON [dbo].[Protocol_Bandwidth_Hr]
(
	[HOUR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Protocol_Bandwidth_Hr_IDX2]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Protocol_Bandwidth_Hr_IDX2] ON [dbo].[Protocol_Bandwidth_Hr]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Protocol_Bandwidth_Hr_IDX3]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Protocol_Bandwidth_Hr_IDX3] ON [dbo].[Protocol_Bandwidth_Hr]
(
	[PROTOCOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [RID]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [PROTOCOL_ID]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [REQUEST_COUNT]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [DURATION]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [REAL_IN]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT ('0') FOR [REAL_OUT]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT (NULL) FOR [APP_NAME]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT (NULL) FOR [APP_CAT]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT (NULL) FOR [CLOUD_NAME]
GO
ALTER TABLE [dbo].[Protocol_Bandwidth_Hr] ADD  DEFAULT (NULL) FOR [CLOUD_CAT]
GO
