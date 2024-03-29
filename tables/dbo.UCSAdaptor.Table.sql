USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UCSAdaptor]    Script Date: 6/29/2019 5:52:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCSAdaptor](
	[ADAPTOR_ID] [bigint] NOT NULL,
	[DN] [varchar](250) NOT NULL,
	[NAME] [varchar](250) NOT NULL,
	[ADMIN_POWER_STATE] [varchar](50) NOT NULL,
	[BASE_MAC] [varchar](150) NOT NULL,
	[CHASSIS_ID] [bigint] NOT NULL,
	[BLADE_ID] [bigint] NOT NULL,
	[ID] [bigint] NOT NULL,
	[CONNECTION_PATH] [varchar](150) NOT NULL,
	[CONNECTION_STATUS] [varchar](100) NOT NULL,
	[INTEGRATED] [varchar](100) NOT NULL,
	[MANAGING_INST] [varchar](50) NOT NULL,
	[MODEL] [varchar](100) NOT NULL,
	[OPER_QUALIFIER_REASON] [varchar](50) NOT NULL,
	[OPERSTATE] [varchar](50) NOT NULL,
	[OPERABILITY] [varchar](100) NOT NULL,
	[PART_NUMBER] [varchar](50) NOT NULL,
	[PIC_ADDRESS] [varchar](250) NOT NULL,
	[PIC_SLOT] [varchar](100) NOT NULL,
	[PERF] [varchar](100) NOT NULL,
	[POWER] [varchar](50) NOT NULL,
	[PRESENCE] [varchar](100) NOT NULL,
	[REACHABILITY] [varchar](100) NOT NULL,
	[REVISION] [varchar](50) NOT NULL,
	[SERIAL] [varchar](250) NOT NULL,
	[THERMAL] [varchar](100) NOT NULL,
	[VENDOR] [varchar](100) NOT NULL,
	[VOLTAGE] [varchar](50) NOT NULL,
 CONSTRAINT [UCSAdaptor_PK] PRIMARY KEY CLUSTERED 
(
	[ADAPTOR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UCSAdaptor] ADD  DEFAULT ('-1') FOR [CHASSIS_ID]
GO
ALTER TABLE [dbo].[UCSAdaptor] ADD  DEFAULT ('-1') FOR [BLADE_ID]
GO
ALTER TABLE [dbo].[UCSAdaptor] ADD  DEFAULT ('-1') FOR [ID]
GO
