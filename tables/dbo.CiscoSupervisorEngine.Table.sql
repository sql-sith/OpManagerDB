USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoSupervisorEngine]    Script Date: 6/29/2019 5:46:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoSupervisorEngine](
	[HARDWAREVERSION] [varchar](15) NOT NULL,
	[DRAMSIZE] [varchar](15) NOT NULL,
	[NVRAMSIZE] [varchar](15) NOT NULL,
	[FLASHSIZE] [varchar](15) NOT NULL,
	[CONFIGREGISTER] [varchar](50) NOT NULL,
	[BOOTSTRAPVERSION] [varchar](15) NOT NULL,
	[RESOURCEID] [bigint] NOT NULL,
 CONSTRAINT [CiscoSupervisorEngine_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__935542384]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__935542384] ON [dbo].[CiscoSupervisorEngine]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoSupervisorEngine] ADD  DEFAULT ('Not Available') FOR [HARDWAREVERSION]
GO
ALTER TABLE [dbo].[CiscoSupervisorEngine] ADD  DEFAULT ('Not Available') FOR [DRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoSupervisorEngine] ADD  DEFAULT ('Not Available') FOR [NVRAMSIZE]
GO
ALTER TABLE [dbo].[CiscoSupervisorEngine] ADD  DEFAULT ('Not Available') FOR [FLASHSIZE]
GO
ALTER TABLE [dbo].[CiscoSupervisorEngine] ADD  DEFAULT ('Not Available') FOR [CONFIGREGISTER]
GO
ALTER TABLE [dbo].[CiscoSupervisorEngine] ADD  DEFAULT ('Not Available') FOR [BOOTSTRAPVERSION]
GO
ALTER TABLE [dbo].[CiscoSupervisorEngine]  WITH CHECK ADD  CONSTRAINT [CiscoSupervisorEngine_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoSupervisorEngine] CHECK CONSTRAINT [CiscoSupervisorEngine_FK1]
GO
