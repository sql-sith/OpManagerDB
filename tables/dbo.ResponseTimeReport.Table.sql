USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ResponseTimeReport]    Script Date: 6/29/2019 5:51:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResponseTimeReport](
	[REPORTID] [bigint] NOT NULL,
	[INSTANCE] [varchar](100) NOT NULL,
 CONSTRAINT [ResponseTimeReport_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1558629393]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1558629393] ON [dbo].[ResponseTimeReport]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ResponseTimeReport]  WITH CHECK ADD  CONSTRAINT [ResponseTimeReport_FK1] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[ResponseTimeReport] CHECK CONSTRAINT [ResponseTimeReport_FK1]
GO
