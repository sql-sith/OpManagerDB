USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OPMFDBTable]    Script Date: 6/29/2019 5:50:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPMFDBTable](
	[VLAN_ID] [bigint] NOT NULL,
	[MACADDRESS] [varchar](17) NOT NULL,
 CONSTRAINT [OPMFDBTable_PK] PRIMARY KEY CLUSTERED 
(
	[VLAN_ID] ASC,
	[MACADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1331715645]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1331715645] ON [dbo].[OPMFDBTable]
(
	[VLAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OPMFDBTable]  WITH CHECK ADD  CONSTRAINT [OPMFDBTable_FK1] FOREIGN KEY([VLAN_ID])
REFERENCES [dbo].[OPMSPMVlan] ([ID])
GO
ALTER TABLE [dbo].[OPMFDBTable] CHECK CONSTRAINT [OPMFDBTable_FK1]
GO
