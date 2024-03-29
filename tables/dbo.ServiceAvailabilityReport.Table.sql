USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ServiceAvailabilityReport]    Script Date: 6/29/2019 5:51:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceAvailabilityReport](
	[REPORTID] [bigint] NOT NULL,
	[SERVICE] [varchar](100) NOT NULL,
 CONSTRAINT [ServiceAvailabilityReport_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1709364017]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1709364017] ON [dbo].[ServiceAvailabilityReport]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServiceAvailabilityReport]  WITH CHECK ADD  CONSTRAINT [ServiceAvailabilityReport_FK1] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[ServiceAvailabilityReport] CHECK CONSTRAINT [ServiceAvailabilityReport_FK1]
GO
