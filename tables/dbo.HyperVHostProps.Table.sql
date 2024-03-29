USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HyperVHostProps]    Script Date: 6/29/2019 5:48:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HyperVHostProps](
	[HOSTID] [bigint] NOT NULL,
	[HOSTNAME] [varchar](250) NOT NULL,
	[DNSNAME] [varchar](250) NOT NULL,
	[UUID] [varchar](250) NULL,
	[HOSTTYPE] [varchar](100) NOT NULL,
	[VENDORNAME] [varchar](250) NULL,
	[VERSION] [varchar](100) NULL,
	[BUILDNUMBER] [varchar](100) NULL,
	[HARDWAREVENDOR] [varchar](250) NULL,
	[POWERSTATE] [int] NOT NULL,
	[CPUMODEL] [varchar](250) NULL,
	[NUMOFCPUCORES] [int] NULL,
	[NUMOFLOGICALPROCESSORS] [int] NULL,
	[AVGCPUSPEEDMHZ] [int] NULL,
	[MEMCAPACITYMB] [bigint] NULL,
	[NUMOFNICS] [int] NULL,
	[LASTSYSUPTIME] [datetime] NULL,
	[LASTUPDATEDTIME] [datetime] NULL,
 CONSTRAINT [HyperVHostProps_PK] PRIMARY KEY CLUSTERED 
(
	[HOSTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [HyperVHostProps_UK1] UNIQUE NONCLUSTERED 
(
	[HOSTNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_972299403]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_972299403] ON [dbo].[HyperVHostProps]
(
	[HOSTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HyperVHostProps]  WITH CHECK ADD  CONSTRAINT [HyperVHostProps_FK1] FOREIGN KEY([HOSTID])
REFERENCES [dbo].[HyperVEntityMOMap] ([ENTITYID])
GO
ALTER TABLE [dbo].[HyperVHostProps] CHECK CONSTRAINT [HyperVHostProps_FK1]
GO
