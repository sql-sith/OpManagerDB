USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TriggerOperDetails]    Script Date: 6/29/2019 5:52:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TriggerOperDetails](
	[PROBE_ID] [bigint] NOT NULL,
	[TRIGGER_ID] [bigint] NOT NULL,
	[OPERATION_ID] [bigint] NULL,
	[TRIGGERTIME] [datetime] NOT NULL,
	[TRAP_ID] [int] NOT NULL,
 CONSTRAINT [TriggerOperDetials_PK] PRIMARY KEY CLUSTERED 
(
	[TRIGGER_ID] ASC,
	[PROBE_ID] ASC,
	[TRIGGERTIME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__630502231]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__630502231] ON [dbo].[TriggerOperDetails]
(
	[TRAP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__851622776]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__851622776] ON [dbo].[TriggerOperDetails]
(
	[PROBE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TriggerOperDetails]  WITH CHECK ADD  CONSTRAINT [TriggerOperDetails_FK] FOREIGN KEY([PROBE_ID])
REFERENCES [dbo].[ProbeId] ([PROBE_ID])
GO
ALTER TABLE [dbo].[TriggerOperDetails] CHECK CONSTRAINT [TriggerOperDetails_FK]
GO
ALTER TABLE [dbo].[TriggerOperDetails]  WITH CHECK ADD  CONSTRAINT [TriggerOperDetails_FK1] FOREIGN KEY([TRAP_ID])
REFERENCES [dbo].[TrapType] ([TRAP_ID])
GO
ALTER TABLE [dbo].[TriggerOperDetails] CHECK CONSTRAINT [TriggerOperDetails_FK1]
GO
