USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ArecaRaidController]    Script Date: 6/29/2019 5:46:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArecaRaidController](
	[DEVICE_ID] [bigint] NOT NULL,
	[CPU_SPEED] [varchar](250) NULL,
	[INSTRUCTION_CACHE] [varchar](250) NULL,
	[DATA_CACHE] [varchar](250) NULL,
	[SECONDARY_CACHE] [varchar](250) NULL,
	[MEM_SIZE] [varchar](250) NULL,
	[MEM_SPEED] [varchar](250) NULL,
 CONSTRAINT [ArecaRaidController_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1805508539]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1805508539] ON [dbo].[ArecaRaidController]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ArecaRaidController]  WITH CHECK ADD  CONSTRAINT [ArecaRaidController_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[RaidController] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[ArecaRaidController] CHECK CONSTRAINT [ArecaRaidController_FK1]
GO
