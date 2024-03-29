USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARNodeCPU]    Script Date: 6/29/2019 5:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARNodeCPU](
	[NODE_ID] [bigint] NOT NULL,
	[CPU_ID] [varchar](250) NOT NULL,
	[CPU_NAME] [varchar](250) NOT NULL,
	[CPU_ROLE] [varchar](250) NOT NULL,
	[CPU_MAX_SPEED] [varchar](250) NOT NULL,
	[CPU_REVISION] [varchar](250) NOT NULL,
	[CPU_NO_OF_CORES] [varchar](250) NOT NULL,
	[CPU_POSITION] [varchar](250) NOT NULL,
	[CPU_BUS_SPEED] [varchar](250) NOT NULL,
	[CPU_MANUFACTURER] [varchar](250) NOT NULL,
	[CPU_MODEL] [varchar](250) NOT NULL,
	[CPU_SERIAL_NUMBER] [varchar](250) NOT NULL,
	[CPU_STATUS] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARNodeCPU_PK] PRIMARY KEY CLUSTERED 
(
	[NODE_ID] ASC,
	[CPU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1422960756]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1422960756] ON [dbo].[HP3PARNodeCPU]
(
	[NODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARNodeCPU]  WITH CHECK ADD  CONSTRAINT [HP3PARNodeCPU_FK] FOREIGN KEY([NODE_ID])
REFERENCES [dbo].[HP3PARNode] ([NODE_ID])
GO
ALTER TABLE [dbo].[HP3PARNodeCPU] CHECK CONSTRAINT [HP3PARNodeCPU_FK]
GO
