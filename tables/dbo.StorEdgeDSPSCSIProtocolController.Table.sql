USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[StorEdgeDSPSCSIProtocolController]    Script Date: 6/29/2019 5:51:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StorEdgeDSPSCSIProtocolController](
	[DEVICE_ID] [bigint] NOT NULL,
	[SCSI_CONT_ID] [varchar](250) NOT NULL,
	[DOMAIN_SYS_NAME] [varchar](250) NULL,
	[ELEMENTNAME] [varchar](250) NULL,
	[OPER_STATUS] [varchar](250) NULL,
	[MAX_UNITS_CONTROLLED] [int] NULL,
	[ASSOCIATED_INITIATOR] [varchar](250) NULL,
	[INUSE_LUNS] [varchar](250) NULL,
	[MAPPED_VOLUMES] [varchar](500) NULL,
	[MAP_STATE] [varchar](250) NULL,
	[VOL_PERMISSION] [varchar](250) NULL,
 CONSTRAINT [StorEdgeDSPSCSIProtocolController_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[SCSI_CONT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1311900647]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1311900647] ON [dbo].[StorEdgeDSPSCSIProtocolController]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StorEdgeDSPSCSIProtocolController]  WITH CHECK ADD  CONSTRAINT [StorEdgeDSPSCSIProtocolController_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[StorEdgeDSPSCSIProtocolController] CHECK CONSTRAINT [StorEdgeDSPSCSIProtocolController_FK1]
GO
