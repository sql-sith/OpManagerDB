USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Adic500BladeHPFMap]    Script Date: 6/29/2019 5:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adic500BladeHPFMap](
	[VPORT_ID] [int] NOT NULL,
	[BLADE_ID] [bigint] NOT NULL,
	[PPORT_ID] [int] NOT NULL,
	[STANDBY_PORTS] [varchar](250) NOT NULL,
	[ACTIVE_PORT] [int] NOT NULL,
 CONSTRAINT [Adic500BladeHPFMap_PK] PRIMARY KEY CLUSTERED 
(
	[VPORT_ID] ASC,
	[BLADE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1434471499]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1434471499] ON [dbo].[Adic500BladeHPFMap]
(
	[BLADE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adic500BladeHPFMap]  WITH CHECK ADD  CONSTRAINT [Adic500BladeHPFMap_FK1] FOREIGN KEY([BLADE_ID])
REFERENCES [dbo].[Adic500BladeInterface] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[Adic500BladeHPFMap] CHECK CONSTRAINT [Adic500BladeHPFMap_FK1]
GO
