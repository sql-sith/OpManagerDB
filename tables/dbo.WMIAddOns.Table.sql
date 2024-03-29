USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[WMIAddOns]    Script Date: 6/29/2019 5:53:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WMIAddOns](
	[GRAPHID] [bigint] NOT NULL,
	[MONITORID] [bigint] NOT NULL,
	[ADDONTYPE] [int] NOT NULL,
 CONSTRAINT [WMIAddOns_PK1] PRIMARY KEY CLUSTERED 
(
	[GRAPHID] ASC,
	[ADDONTYPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1858450547]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1858450547] ON [dbo].[WMIAddOns]
(
	[GRAPHID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1858450548]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1858450548] ON [dbo].[WMIAddOns]
(
	[MONITORID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WMIAddOns] ADD  DEFAULT ('0') FOR [ADDONTYPE]
GO
ALTER TABLE [dbo].[WMIAddOns]  WITH CHECK ADD  CONSTRAINT [WMIAddOns_FK1] FOREIGN KEY([GRAPHID])
REFERENCES [dbo].[GRAPHDETAILS] ([GRAPHID])
GO
ALTER TABLE [dbo].[WMIAddOns] CHECK CONSTRAINT [WMIAddOns_FK1]
GO
ALTER TABLE [dbo].[WMIAddOns]  WITH CHECK ADD  CONSTRAINT [WMIAddOns_FK2] FOREIGN KEY([MONITORID])
REFERENCES [dbo].[MONITORDETAILS] ([MONITORID])
GO
ALTER TABLE [dbo].[WMIAddOns] CHECK CONSTRAINT [WMIAddOns_FK2]
GO
