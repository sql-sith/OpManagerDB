USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[StorEdgeDSPFCPort]    Script Date: 6/29/2019 5:51:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorEdgeDSPFCPort](
	[DEVICE_ID] [bigint] NOT NULL,
	[PORT_SAN_ID] [bigint] NOT NULL,
	[PORT_NAME] [varchar](250) NOT NULL,
	[PROCESSOR_NAME] [varchar](250) NULL,
	[ELEMENTNAME] [varchar](250) NULL,
	[PORT_ID] [varchar](250) NULL,
	[NODE_WWN] [varchar](250) NULL,
	[PERMANENT_ADDRESS] [varchar](250) NULL,
	[NETWORK_ADDRESS] [varchar](250) NULL,
	[SPEED] [varchar](250) NULL,
	[PORT_TYPE] [varchar](250) NULL,
	[OPER_STATUS] [varchar](250) NULL,
	[AUTO_SENSE] [varchar](250) NULL,
	[OTHER_IDENTITY] [varchar](250) NULL,
	[LINK_TECHNOLODY] [varchar](250) NULL,
	[REPRODUCTION] [varchar](250) NULL,
 CONSTRAINT [StorEdgeDSPFCPort_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[PORT_SAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_158654763]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_158654763] ON [dbo].[StorEdgeDSPFCPort]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StorEdgeDSPFCPort]  WITH CHECK ADD  CONSTRAINT [StorEdgeDSPFCPort_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[StorEdgeDSPFCPort] CHECK CONSTRAINT [StorEdgeDSPFCPort_FK1]
GO
