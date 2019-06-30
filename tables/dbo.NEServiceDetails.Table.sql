USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NEServiceDetails]    Script Date: 6/29/2019 5:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEServiceDetails](
	[RESOURCEID] [bigint] NOT NULL,
	[SERVICEINDEX] [int] NULL,
	[PROCESSID] [int] NULL,
	[RUNPATH] [varchar](200) NULL,
	[RUNTYPE] [int] NULL,
	[RUNSTATUS] [int] NULL,
	[CPUUSAGE] [bigint] NULL,
	[MEMORYUSAGE] [bigint] NULL,
 CONSTRAINT [NEServiceDetails_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1118155953]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1118155953] ON [dbo].[NEServiceDetails]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NEServiceDetails]  WITH CHECK ADD  CONSTRAINT [NEServiceDetails_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NEService] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NEServiceDetails] CHECK CONSTRAINT [NEServiceDetails_FK1]
GO
