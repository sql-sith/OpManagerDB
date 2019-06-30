USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportDefaultRange]    Script Date: 6/29/2019 5:50:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportDefaultRange](
	[REPORTID] [bigint] NOT NULL,
	[RANGETYPE] [int] NOT NULL,
	[RANGEVALUE] [int] NOT NULL,
 CONSTRAINT [ReportDefaultRange_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1245924803]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1245924803] ON [dbo].[ReportDefaultRange]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportDefaultRange] ADD  DEFAULT ('0') FOR [RANGEVALUE]
GO
ALTER TABLE [dbo].[ReportDefaultRange]  WITH CHECK ADD  CONSTRAINT [ReportDefaultRange_FK1] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[ReportDefaultRange] CHECK CONSTRAINT [ReportDefaultRange_FK1]
GO
