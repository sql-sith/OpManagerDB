USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportConfigToDF]    Script Date: 6/29/2019 5:50:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportConfigToDF](
	[FILTERNAME] [nvarchar](200) NOT NULL,
	[REPORTID] [bigint] NOT NULL,
 CONSTRAINT [ReportConfigToDF_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC,
	[FILTERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__89592607]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__89592607] ON [dbo].[ReportConfigToDF]
(
	[FILTERNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__89592608]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__89592608] ON [dbo].[ReportConfigToDF]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportConfigToDF]  WITH CHECK ADD  CONSTRAINT [ReportConfigToDF_FK1] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportConfig] ([REPORTID])
GO
ALTER TABLE [dbo].[ReportConfigToDF] CHECK CONSTRAINT [ReportConfigToDF_FK1]
GO
ALTER TABLE [dbo].[ReportConfigToDF]  WITH CHECK ADD  CONSTRAINT [ReportConfigToDF_FK2] FOREIGN KEY([FILTERNAME])
REFERENCES [dbo].[Filters] ([FILTERNAME])
GO
ALTER TABLE [dbo].[ReportConfigToDF] CHECK CONSTRAINT [ReportConfigToDF_FK2]
GO
