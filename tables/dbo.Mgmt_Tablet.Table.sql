USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Mgmt_Tablet]    Script Date: 6/29/2019 5:49:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mgmt_Tablet](
	[MGMTID] [bigint] IDENTITY(1,1) NOT NULL,
	[HOUR] [datetime] NOT NULL,
	[RID] [bigint] NOT NULL,
	[USER_ID] [bigint] NULL,
	[USER] [nvarchar](96) NULL,
	[SRC_ID] [bigint] NULL,
	[SRC] [nvarchar](96) NULL,
	[MSG] [nvarchar](1) NULL,
	[COMMAND] [nvarchar](250) NULL,
	[MODE] [nvarchar](8) NULL,
	[TYPE] [int] NULL,
	[COUNT] [int] NULL,
	[STATUS] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MGMTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Fw_Mgmt_Tablet_IDX0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [Fw_Mgmt_Tablet_IDX0] ON [dbo].[Mgmt_Tablet]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [HOUR]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT ('0') FOR [RID]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [USER_ID]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [USER]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [SRC_ID]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [SRC]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [MSG]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [COMMAND]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [MODE]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [TYPE]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [COUNT]
GO
ALTER TABLE [dbo].[Mgmt_Tablet] ADD  DEFAULT (NULL) FOR [STATUS]
GO
