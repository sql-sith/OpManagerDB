USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwHostSwitchProps]    Script Date: 6/29/2019 5:53:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwHostSwitchProps](
	[VSWITCH_ID] [bigint] NOT NULL,
	[VHOST_ID] [bigint] NOT NULL,
	[VSWITCH_NAME] [varchar](100) NOT NULL,
	[VSWITCH_MTU] [int] NULL,
	[PHYSICAL_NICS] [int] NULL,
	[PORTGROUPS] [int] NULL,
	[AVAILABLE_PORTS] [int] NULL,
	[NO_OF_PORTS] [int] NULL,
 CONSTRAINT [VwHostSwitchProps_PK] PRIMARY KEY CLUSTERED 
(
	[VSWITCH_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwHostSwitchProps_UK0] UNIQUE NONCLUSTERED 
(
	[VSWITCH_NAME] ASC,
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__49497984]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__49497984] ON [dbo].[VwHostSwitchProps]
(
	[VHOST_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwHostSwitchProps]  WITH CHECK ADD  CONSTRAINT [VwHostSwitchProps_FK1] FOREIGN KEY([VHOST_ID])
REFERENCES [dbo].[VwHOSTPROPS] ([VHOST_ID])
GO
ALTER TABLE [dbo].[VwHostSwitchProps] CHECK CONSTRAINT [VwHostSwitchProps_FK1]
GO
