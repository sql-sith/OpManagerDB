USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Live_Report_Mo]    Script Date: 6/29/2019 5:48:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Live_Report_Mo](
	[RID] [bigint] NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[DURATION] [int] NULL,
	[BYTES_INBOUND] [bigint] NULL,
	[BYTES_OUTBOUND] [bigint] NULL,
	[TOTAL_BYTES] [bigint] NULL,
	[BPS_IN] [bigint] NULL,
	[BPS_OUT] [bigint] NULL,
	[BPS] [bigint] NULL,
	[IF_IND] [bigint] NOT NULL,
 CONSTRAINT [Live_Report_Mo_PK1] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[HOUR] ASC,
	[IF_IND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1906974567]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1906974567] ON [dbo].[Live_Report_Mo]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Live_Report_Mo]  WITH CHECK ADD  CONSTRAINT [Live_Report_Mo_FK1] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[Live_Report_Mo] CHECK CONSTRAINT [Live_Report_Mo_FK1]
GO
