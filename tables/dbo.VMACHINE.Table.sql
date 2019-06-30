USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VMACHINE]    Script Date: 6/29/2019 5:52:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMACHINE](
	[ID] [bigint] NOT NULL,
	[VMID] [int] NOT NULL,
	[ESXID] [bigint] NOT NULL,
	[VmName] [varchar](250) NOT NULL,
	[OS] [varchar](250) NOT NULL,
	[VmState] [varchar](250) NOT NULL,
	[GuestState] [varchar](250) NOT NULL,
	[VmMemorySize] [int] NOT NULL,
	[VmCpu] [int] NULL,
	[FQDN] [varchar](250) NULL,
 CONSTRAINT [VMACHINE_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_152318430]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_152318430] ON [dbo].[VMACHINE]
(
	[ESXID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VMACHINE]  WITH CHECK ADD  CONSTRAINT [VMACHINE_FK1] FOREIGN KEY([ESXID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[VMACHINE] CHECK CONSTRAINT [VMACHINE_FK1]
GO
