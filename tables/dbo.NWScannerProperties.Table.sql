USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NWScannerProperties]    Script Date: 6/29/2019 5:49:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NWScannerProperties](
	[PROPERTIE_ID] [bigint] NOT NULL,
	[USER_ID] [bigint] NOT NULL,
	[PingEnabled] [bit] NULL,
	[SNMPEnabled] [bit] NULL,
	[DNSEnabled] [bit] NULL,
	[MACEnabled] [bit] NULL,
	[LastScanTime] [varchar](100) NULL,
 CONSTRAINT [NWScannerProperties_PK] PRIMARY KEY CLUSTERED 
(
	[PROPERTIE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__666905252]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__666905252] ON [dbo].[NWScannerProperties]
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NWScannerProperties] ADD  DEFAULT ((0)) FOR [PingEnabled]
GO
ALTER TABLE [dbo].[NWScannerProperties] ADD  DEFAULT ((0)) FOR [SNMPEnabled]
GO
ALTER TABLE [dbo].[NWScannerProperties] ADD  DEFAULT ((0)) FOR [DNSEnabled]
GO
ALTER TABLE [dbo].[NWScannerProperties] ADD  DEFAULT ((0)) FOR [MACEnabled]
GO
ALTER TABLE [dbo].[NWScannerProperties]  WITH CHECK ADD  CONSTRAINT [NWScannerProperties_FK] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[AaaUser] ([USER_ID])
GO
ALTER TABLE [dbo].[NWScannerProperties] CHECK CONSTRAINT [NWScannerProperties_FK]
GO
