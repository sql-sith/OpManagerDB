USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TestCredentialTaskSchedule]    Script Date: 6/29/2019 5:52:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TestCredentialTaskSchedule](
	[SCHEDULEID] [bigint] NOT NULL,
	[PROFILEID] [bigint] NOT NULL,
	[TRIGGERDESCRIPTION] [varchar](250) NOT NULL,
	[LASTSCHEDULESTATUS] [varchar](250) NOT NULL,
 CONSTRAINT [TestCredentialTaskSchedule_PK1] PRIMARY KEY CLUSTERED 
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1129165138]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1129165138] ON [dbo].[TestCredentialTaskSchedule]
(
	[SCHEDULEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1129165139]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1129165139] ON [dbo].[TestCredentialTaskSchedule]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TestCredentialTaskSchedule]  WITH CHECK ADD  CONSTRAINT [TestCredentialTaskSchedule_FK1] FOREIGN KEY([SCHEDULEID])
REFERENCES [dbo].[NGBaseSchedule] ([ID])
GO
ALTER TABLE [dbo].[TestCredentialTaskSchedule] CHECK CONSTRAINT [TestCredentialTaskSchedule_FK1]
GO
ALTER TABLE [dbo].[TestCredentialTaskSchedule]  WITH CHECK ADD  CONSTRAINT [TestCredentialTaskSchedule_FK2] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[TestCredentialProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[TestCredentialTaskSchedule] CHECK CONSTRAINT [TestCredentialTaskSchedule_FK2]
GO
