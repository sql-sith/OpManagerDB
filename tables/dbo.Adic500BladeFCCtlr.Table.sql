USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Adic500BladeFCCtlr]    Script Date: 6/29/2019 5:45:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adic500BladeFCCtlr](
	[CTLR_ID] [int] NOT NULL,
	[BLADE_ID] [bigint] NOT NULL,
	[CTLR_STATUS] [varchar](250) NOT NULL,
	[MAX_SPEED] [int] NOT NULL,
	[CTLR_WWPN] [varchar](250) NOT NULL,
	[CTLR_LOOPID] [int] NOT NULL,
	[LOOPID_MODE] [varchar](250) NOT NULL,
	[PORT_MODE] [varchar](250) NOT NULL,
	[CONN_OPTIONS] [varchar](250) NOT NULL,
 CONSTRAINT [Adic500BladeFCCtlr_PK] PRIMARY KEY CLUSTERED 
(
	[CTLR_ID] ASC,
	[BLADE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__809188063]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__809188063] ON [dbo].[Adic500BladeFCCtlr]
(
	[BLADE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adic500BladeFCCtlr]  WITH CHECK ADD  CONSTRAINT [Adic500BladeFCCtlr_FK1] FOREIGN KEY([BLADE_ID])
REFERENCES [dbo].[Adic500BladeInterface] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[Adic500BladeFCCtlr] CHECK CONSTRAINT [Adic500BladeFCCtlr_FK1]
GO
