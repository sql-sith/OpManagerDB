USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwHostCPUProps]    Script Date: 6/29/2019 5:53:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwHostCPUProps](
	[PACKAGE_ID] [bigint] NOT NULL,
	[CPU_PKG_INDEX] [int] NOT NULL,
	[VHOST_ID] [bigint] NOT NULL,
	[THREAD_COUNT] [int] NOT NULL,
	[VENDOR] [varchar](100) NOT NULL,
	[DESCRIPTION] [varchar](200) NOT NULL,
	[SPEED] [bigint] NOT NULL,
	[BUS_SPEED] [bigint] NOT NULL,
 CONSTRAINT [VwHostCPUProps_PK] PRIMARY KEY CLUSTERED 
(
	[PACKAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwHostCPUProps_UK0] UNIQUE NONCLUSTERED 
(
	[CPU_PKG_INDEX] ASC,
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1838598846]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1838598846] ON [dbo].[VwHostCPUProps]
(
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwHostCPUProps]  WITH CHECK ADD  CONSTRAINT [VwHostCPUProps_FK1] FOREIGN KEY([VHOST_ID])
REFERENCES [dbo].[VwHOSTPROPS] ([VHOST_ID])
GO
ALTER TABLE [dbo].[VwHostCPUProps] CHECK CONSTRAINT [VwHostCPUProps_FK1]
GO
