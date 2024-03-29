USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPTLChassis]    Script Date: 6/29/2019 5:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPTLChassis](
	[DEVICE_ID] [bigint] NOT NULL,
	[MANUFACTURER] [varchar](250) NULL,
	[MODEL] [varchar](250) NULL,
	[SERIALNO] [varchar](250) NULL,
	[LOCK_PRESENT] [varchar](250) NULL,
	[SECURITY_BREACH] [varchar](250) NULL,
	[IS_LOCKED] [varchar](250) NULL,
	[CHASSIS_TAG] [varchar](250) NULL,
	[CHASSIS_ELMT_NAME] [varchar](250) NULL,
 CONSTRAINT [HPTLChassis_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__241149741]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__241149741] ON [dbo].[HPTLChassis]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPTLChassis]  WITH CHECK ADD  CONSTRAINT [HPTLChassis_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPTLChassis] CHECK CONSTRAINT [HPTLChassis_FK1]
GO
