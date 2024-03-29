USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Live_Report_Month]    Script Date: 6/29/2019 5:48:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Live_Report_Month](
	[LRM_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RID] [bigint] NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[BPS_IN] [bigint] NULL,
	[BPS_OUT] [bigint] NULL,
	[BPS] [bigint] NULL,
	[IF_IND] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[LRM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Live_Report_Month_IDX1]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Live_Report_Month_IDX1] ON [dbo].[Live_Report_Month]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ((0)) FOR [DURATION]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ((0)) FOR [BYTES_INBOUND]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ((0)) FOR [BYTES_OUTBOUND]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ((0)) FOR [TOTAL_BYTES]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ((0)) FOR [BPS_IN]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ((0)) FOR [BPS_OUT]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ((0)) FOR [BPS]
GO
ALTER TABLE [dbo].[Live_Report_Month] ADD  DEFAULT ((0)) FOR [IF_IND]
GO
ALTER TABLE [dbo].[Live_Report_Month]  WITH CHECK ADD  CONSTRAINT [Live_Report_Month_FK1] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Live_Report_Month] CHECK CONSTRAINT [Live_Report_Month_FK1]
GO
