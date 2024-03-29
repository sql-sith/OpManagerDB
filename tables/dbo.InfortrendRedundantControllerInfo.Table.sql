USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InfortrendRedundantControllerInfo]    Script Date: 6/29/2019 5:48:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InfortrendRedundantControllerInfo](
	[DEVICE_ID] [bigint] NOT NULL,
	[REDUNDANT_CONTROLLER_CONFIG] [varchar](250) NULL,
	[CACHE_SYNC] [varchar](250) NULL,
	[SECONDARY_RS232PORT] [varchar](250) NULL,
	[HOSTCHL_FAILOVER] [varchar](250) NULL,
	[REDUNDANT_MODE] [varchar](250) NULL,
	[REDUNDANT_CONTROLLER_COMMTYPE] [varchar](250) NULL,
	[CURRENT_STATUS] [varchar](250) NULL,
	[ORIGINAL_ROLE] [varchar](250) NULL,
	[CURRENTROLE] [varchar](250) NULL,
 CONSTRAINT [InfortrendRedundantControllerInfo_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1774120437]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1774120437] ON [dbo].[InfortrendRedundantControllerInfo]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InfortrendRedundantControllerInfo]  WITH CHECK ADD  CONSTRAINT [InfortrendRedundantControllerInfo_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[InfortrendRedundantControllerInfo] CHECK CONSTRAINT [InfortrendRedundantControllerInfo_FK1]
GO
