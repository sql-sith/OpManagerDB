USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HyperVHostCPUInstance]    Script Date: 6/29/2019 5:48:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HyperVHostCPUInstance](
	[HOSTID] [bigint] NOT NULL,
	[CPUNAME] [varchar](250) NOT NULL,
 CONSTRAINT [HyperVHostCPUInstance_PK] PRIMARY KEY CLUSTERED 
(
	[HOSTID] ASC,
	[CPUNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__303312776]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__303312776] ON [dbo].[HyperVHostCPUInstance]
(
	[HOSTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HyperVHostCPUInstance]  WITH CHECK ADD  CONSTRAINT [HyperVHostCPUInstance_FK1] FOREIGN KEY([HOSTID])
REFERENCES [dbo].[HyperVHostProps] ([HOSTID])
GO
ALTER TABLE [dbo].[HyperVHostCPUInstance] CHECK CONSTRAINT [HyperVHostCPUInstance_FK1]
GO
