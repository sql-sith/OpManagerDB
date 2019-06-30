USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SPMSummary]    Script Date: 6/29/2019 5:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPMSummary](
	[CONFIG_ID] [bigint] NOT NULL,
	[USED] [int] NOT NULL,
	[AVAILABLE] [int] NOT NULL,
	[TRANSIENT] [int] NOT NULL,
	[TOTAL] [int] NOT NULL,
	[VLAN_COUNT] [int] NOT NULL,
	[PORTUSAGE] [real] NOT NULL,
	[EXCLUDEPORTCNT] [int] NOT NULL,
 CONSTRAINT [SPMSummary_PK] PRIMARY KEY CLUSTERED 
(
	[CONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_815624259]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_815624259] ON [dbo].[SPMSummary]
(
	[CONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SPMSummary] ADD  DEFAULT ('0') FOR [USED]
GO
ALTER TABLE [dbo].[SPMSummary] ADD  DEFAULT ('0') FOR [AVAILABLE]
GO
ALTER TABLE [dbo].[SPMSummary] ADD  DEFAULT ('0') FOR [TRANSIENT]
GO
ALTER TABLE [dbo].[SPMSummary] ADD  DEFAULT ('0') FOR [TOTAL]
GO
ALTER TABLE [dbo].[SPMSummary] ADD  DEFAULT ('0') FOR [VLAN_COUNT]
GO
ALTER TABLE [dbo].[SPMSummary] ADD  DEFAULT ('0.0') FOR [PORTUSAGE]
GO
ALTER TABLE [dbo].[SPMSummary] ADD  DEFAULT ('0') FOR [EXCLUDEPORTCNT]
GO
ALTER TABLE [dbo].[SPMSummary]  WITH CHECK ADD  CONSTRAINT [SPMSummary_FK1] FOREIGN KEY([CONFIG_ID])
REFERENCES [dbo].[SPMInputConfig] ([CONFIG_ID])
GO
ALTER TABLE [dbo].[SPMSummary] CHECK CONSTRAINT [SPMSummary_FK1]
GO
