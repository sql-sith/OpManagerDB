USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SchPortProtocolCriteria]    Script Date: 6/29/2019 5:51:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchPortProtocolCriteria](
	[SCH_PP_ID] [int] NOT NULL,
	[SCHEDULE_ID] [bigint] NOT NULL,
	[PROT_ID] [int] NOT NULL,
	[START_PORT] [int] NOT NULL,
	[END_PORT] [int] NOT NULL,
 CONSTRAINT [SchPortProtocolCriteria_PK] PRIMARY KEY CLUSTERED 
(
	[SCH_PP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1535678493]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1535678493] ON [dbo].[SchPortProtocolCriteria]
(
	[PROT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1850653332]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1850653332] ON [dbo].[SchPortProtocolCriteria]
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SchPortProtocolCriteria]  WITH CHECK ADD  CONSTRAINT [SchPortProtocolCriteria_FK] FOREIGN KEY([SCHEDULE_ID])
REFERENCES [dbo].[ScheduleDetails] ([ID])
GO
ALTER TABLE [dbo].[SchPortProtocolCriteria] CHECK CONSTRAINT [SchPortProtocolCriteria_FK]
GO
ALTER TABLE [dbo].[SchPortProtocolCriteria]  WITH CHECK ADD  CONSTRAINT [SchPortProtocolCriteria_FK1] FOREIGN KEY([PROT_ID])
REFERENCES [dbo].[ProtocolMap] ([PROT_ID])
GO
ALTER TABLE [dbo].[SchPortProtocolCriteria] CHECK CONSTRAINT [SchPortProtocolCriteria_FK1]
GO
