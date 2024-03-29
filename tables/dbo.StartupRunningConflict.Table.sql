USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[StartupRunningConflict]    Script Date: 6/29/2019 5:51:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StartupRunningConflict](
	[RID] [bigint] NOT NULL,
	[STARTUP_VNO] [bigint] NOT NULL,
	[RUNNING_VNO] [bigint] NOT NULL,
	[CHANGED_BY] [nvarchar](100) NOT NULL,
	[ANNOTATION] [nvarchar](4000) NOT NULL,
	[MODIFIED_TIME] [datetime] NOT NULL,
	[DIFF_CONTENTS] [ntext] NOT NULL,
	[DIFF_COUNT] [int] NOT NULL,
 CONSTRAINT [StartupRunningConf_PK] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_4186225]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_4186225] ON [dbo].[StartupRunningConflict]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[StartupRunningConflict] ADD  DEFAULT ('Not Available') FOR [CHANGED_BY]
GO
ALTER TABLE [dbo].[StartupRunningConflict]  WITH CHECK ADD  CONSTRAINT [StartupRunConfToRes_FK] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[StartupRunningConflict] CHECK CONSTRAINT [StartupRunConfToRes_FK]
GO
