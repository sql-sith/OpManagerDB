USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HyperVHostNICProps]    Script Date: 6/29/2019 5:48:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HyperVHostNICProps](
	[HOSTID] [bigint] NOT NULL,
	[NICNAME] [varchar](250) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[MACADDRESS] [varchar](100) NULL,
	[DRIVERNAME] [varchar](100) NULL,
 CONSTRAINT [HyperVHostNICProps_PK] PRIMARY KEY CLUSTERED 
(
	[HOSTID] ASC,
	[NICNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__506721017]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__506721017] ON [dbo].[HyperVHostNICProps]
(
	[HOSTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HyperVHostNICProps]  WITH CHECK ADD  CONSTRAINT [HyperVHostNICProps_FK1] FOREIGN KEY([HOSTID])
REFERENCES [dbo].[HyperVHostProps] ([HOSTID])
GO
ALTER TABLE [dbo].[HyperVHostNICProps] CHECK CONSTRAINT [HyperVHostNICProps_FK1]
GO
