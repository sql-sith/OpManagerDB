USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[EMCVNXeRaidController]    Script Date: 6/29/2019 5:47:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMCVNXeRaidController](
	[DEVICE_ID] [bigint] NOT NULL,
	[DPE] [varchar](250) NULL,
	[SLOT] [varchar](250) NULL,
	[MEMORY_SIZE] [bigint] NOT NULL,
	[READ_CACHE] [bigint] NOT NULL,
	[WRITE_CACHE] [bigint] NOT NULL,
 CONSTRAINT [EMCVNXeRaidController_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1939985886]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1939985886] ON [dbo].[EMCVNXeRaidController]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EMCVNXeRaidController]  WITH CHECK ADD  CONSTRAINT [EMCVNXeRaidController_FK] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[EMCVNXeRaidController] CHECK CONSTRAINT [EMCVNXeRaidController_FK]
GO
