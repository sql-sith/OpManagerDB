USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GlobalAlertToIPAManger]    Script Date: 6/29/2019 5:47:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalAlertToIPAManger](
	[GLOBALID] [bigint] NOT NULL,
	[ALERTID] [bigint] NOT NULL,
 CONSTRAINT [GlobalAlertToIPAManger_PK] PRIMARY KEY CLUSTERED 
(
	[GLOBALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1779912301]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1779912301] ON [dbo].[GlobalAlertToIPAManger]
(
	[GLOBALID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1779912302]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1779912302] ON [dbo].[GlobalAlertToIPAManger]
(
	[ALERTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GlobalAlertToIPAManger]  WITH CHECK ADD  CONSTRAINT [GlobalAlertToIPAManger_FK1] FOREIGN KEY([GLOBALID])
REFERENCES [dbo].[GlobalAlertView] ([ID])
GO
ALTER TABLE [dbo].[GlobalAlertToIPAManger] CHECK CONSTRAINT [GlobalAlertToIPAManger_FK1]
GO
ALTER TABLE [dbo].[GlobalAlertToIPAManger]  WITH CHECK ADD  CONSTRAINT [GlobalAlertToIPAManger_FK2] FOREIGN KEY([ALERTID])
REFERENCES [dbo].[IPAddressManagerAlerts] ([ALERTID])
GO
ALTER TABLE [dbo].[GlobalAlertToIPAManger] CHECK CONSTRAINT [GlobalAlertToIPAManger_FK2]
GO
