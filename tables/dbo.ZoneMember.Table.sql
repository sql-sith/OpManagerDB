USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ZoneMember]    Script Date: 6/29/2019 5:53:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZoneMember](
	[DEVICE_ID] [bigint] NOT NULL,
	[ZONE_CONFIG_NAME] [varchar](110) NOT NULL,
	[ZONE_NAME] [varchar](110) NOT NULL,
	[MEMBER] [varchar](110) NOT NULL,
 CONSTRAINT [ZONEMEMBER_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[ZONE_CONFIG_NAME] ASC,
	[ZONE_NAME] ASC,
	[MEMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1228494227]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1228494227] ON [dbo].[ZoneMember]
(
	[DEVICE_ID] ASC,
	[ZONE_CONFIG_NAME] ASC,
	[ZONE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ZoneMember]  WITH CHECK ADD  CONSTRAINT [ZONEMEMBER_FK1] FOREIGN KEY([DEVICE_ID], [ZONE_CONFIG_NAME], [ZONE_NAME])
REFERENCES [dbo].[Zone] ([DEVICE_ID], [ZONE_CONFIG_NAME], [ZONE_NAME])
GO
ALTER TABLE [dbo].[ZoneMember] CHECK CONSTRAINT [ZONEMEMBER_FK1]
GO
