USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SanFanInfo]    Script Date: 6/29/2019 5:51:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanFanInfo](
	[DEVICE_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NULL,
	[NUMBER] [varchar](250) NOT NULL,
	[SERIAL_NUMBER] [varchar](250) NULL,
	[MODEL] [varchar](250) NULL,
	[DESCRIPTION] [varchar](500) NULL,
	[STATUS] [varchar](250) NULL,
	[SPEED] [varchar](250) NULL,
 CONSTRAINT [SanFanInfo_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__215919282]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__215919282] ON [dbo].[SanFanInfo]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SanFanInfo]  WITH CHECK ADD  CONSTRAINT [SanFanInfo_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SanFanInfo] CHECK CONSTRAINT [SanFanInfo_FK1]
GO
