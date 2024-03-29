USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EMCSymmetrixRaid]    Script Date: 6/29/2019 5:47:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMCSymmetrixRaid](
	[DEVICE_ID] [bigint] NOT NULL,
	[ENCLOSURE_COUNT] [int] NOT NULL,
	[MASKING_ENABLED] [varchar](250) NOT NULL,
	[DISK_COUNT] [int] NOT NULL,
	[READ_CACHE] [int] NOT NULL,
	[WRITE_CACHE] [int] NOT NULL,
	[STATUS] [varchar](250) NOT NULL,
	[LAST_SYNC_TYPE] [varchar](250) NOT NULL,
	[LAST_SYNC_TIME] [varchar](250) NOT NULL,
 CONSTRAINT [EMCSymmetrixRaid_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1872826904]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1872826904] ON [dbo].[EMCSymmetrixRaid]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMCSymmetrixRaid]  WITH CHECK ADD  CONSTRAINT [EMCSymmetrixRaid_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[EMCSymmetrixRaid] CHECK CONSTRAINT [EMCSymmetrixRaid_FK1]
GO
