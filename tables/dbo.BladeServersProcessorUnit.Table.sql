USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BladeServersProcessorUnit]    Script Date: 6/29/2019 5:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BladeServersProcessorUnit](
	[PROCESSOR_ID] [bigint] NOT NULL,
	[SERVER_ID] [bigint] NOT NULL,
	[DN] [varchar](100) NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[ARCHITECTURE] [varchar](150) NOT NULL,
	[CORES] [int] NOT NULL,
	[CORESENABLED] [int] NOT NULL,
	[ID] [bigint] NOT NULL,
	[MODEL] [varchar](100) NOT NULL,
	[OPERSTATE] [varchar](50) NOT NULL,
	[OPERABILITY] [varchar](50) NOT NULL,
	[POWER] [varchar](100) NOT NULL,
	[PRESENCE] [varchar](100) NOT NULL,
	[REVISION] [varchar](100) NOT NULL,
	[SERIAL] [varchar](100) NOT NULL,
	[SOCKET_DESIGNATION] [varchar](100) NOT NULL,
	[SPEED] [real] NOT NULL,
	[STEEPING] [varchar](100) NOT NULL,
	[THERMAL] [varchar](100) NOT NULL,
	[THREADS] [bigint] NOT NULL,
	[VENDOR] [varchar](50) NOT NULL,
	[VOLTAGE] [varchar](100) NOT NULL,
 CONSTRAINT [BladeServersProcessorUnit_PK] PRIMARY KEY CLUSTERED 
(
	[PROCESSOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1510082810]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1510082810] ON [dbo].[BladeServersProcessorUnit]
(
	[SERVER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BladeServersProcessorUnit] ADD  DEFAULT ('-1') FOR [CORES]
GO
ALTER TABLE [dbo].[BladeServersProcessorUnit] ADD  DEFAULT ('-1') FOR [CORESENABLED]
GO
ALTER TABLE [dbo].[BladeServersProcessorUnit] ADD  DEFAULT ('-1') FOR [ID]
GO
ALTER TABLE [dbo].[BladeServersProcessorUnit] ADD  DEFAULT ('-1') FOR [THREADS]
GO
ALTER TABLE [dbo].[BladeServersProcessorUnit]  WITH CHECK ADD  CONSTRAINT [BladeServersProcessorUnit_FK] FOREIGN KEY([SERVER_ID])
REFERENCES [dbo].[BladeServer] ([SERVER_ID])
GO
ALTER TABLE [dbo].[BladeServersProcessorUnit] CHECK CONSTRAINT [BladeServersProcessorUnit_FK]
GO
