USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPTLInterfaceManager]    Script Date: 6/29/2019 5:48:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPTLInterfaceManager](
	[DEVICE_ID] [bigint] NOT NULL,
	[MGR_NAME] [varchar](250) NOT NULL,
	[MGR_ELT_NAME] [varchar](250) NULL,
	[MGR_OWNERNAME] [varchar](250) NULL,
	[MGR_STATUS] [varchar](250) NULL,
	[MGR_CONTACT] [varchar](250) NULL,
 CONSTRAINT [HPTLInterfaceManager_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[MGR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1012464863]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1012464863] ON [dbo].[HPTLInterfaceManager]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPTLInterfaceManager]  WITH CHECK ADD  CONSTRAINT [HPTLInterfaceManager_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPTLInterfaceManager] CHECK CONSTRAINT [HPTLInterfaceManager_FK1]
GO
