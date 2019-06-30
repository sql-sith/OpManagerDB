USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SYSLOGREARMRULES]    Script Date: 6/29/2019 5:52:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SYSLOGREARMRULES](
	[RULEID] [bigint] NOT NULL,
	[REARMFACILITYID] [int] NULL,
	[REARMEMERGENCY] [bit] NOT NULL,
	[REARMALERT] [bit] NOT NULL,
	[REARMCRITICAL] [bit] NOT NULL,
	[REARMERROR] [bit] NOT NULL,
	[REARMWARNING] [bit] NOT NULL,
	[REARMNOTICE] [bit] NOT NULL,
	[REARMINFORMATION] [bit] NOT NULL,
	[REARMDEBUG] [bit] NOT NULL,
	[REARMMATCHSTRING] [varchar](255) NULL,
 CONSTRAINT [SYSLOGREARMRULES_PK1] PRIMARY KEY CLUSTERED 
(
	[RULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1147106126]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1147106126] ON [dbo].[SYSLOGREARMRULES]
(
	[RULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] ADD  DEFAULT ((0)) FOR [REARMEMERGENCY]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] ADD  DEFAULT ((0)) FOR [REARMALERT]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] ADD  DEFAULT ((0)) FOR [REARMCRITICAL]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] ADD  DEFAULT ((0)) FOR [REARMERROR]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] ADD  DEFAULT ((0)) FOR [REARMWARNING]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] ADD  DEFAULT ((0)) FOR [REARMNOTICE]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] ADD  DEFAULT ((0)) FOR [REARMINFORMATION]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] ADD  DEFAULT ((0)) FOR [REARMDEBUG]
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES]  WITH CHECK ADD  CONSTRAINT [SYSLOGREARMRULES_FK1] FOREIGN KEY([RULEID])
REFERENCES [dbo].[SYSLOGRULESLIST] ([RULEID])
GO
ALTER TABLE [dbo].[SYSLOGREARMRULES] CHECK CONSTRAINT [SYSLOGREARMRULES_FK1]
GO
