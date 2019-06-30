USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[LightningLU]    Script Date: 6/29/2019 5:48:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LightningLU](
	[DEVICE_ID] [bigint] NOT NULL,
	[LU_SERIAL_NO] [int] NOT NULL,
	[CU_NO] [int] NOT NULL,
	[LDEV_NO] [int] NOT NULL,
	[EMULATION_TYPE] [varchar](250) NULL,
	[LU_COUNT] [int] NULL,
	[LU_SIZE] [varchar](250) NULL,
	[LU_PATH] [varchar](250) NULL,
	[LU_TYPE] [varchar](250) NULL,
 CONSTRAINT [LightningLU_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[LU_SERIAL_NO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_422356864]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_422356864] ON [dbo].[LightningLU]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LightningLU]  WITH CHECK ADD  CONSTRAINT [LightningLU_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[LightningLU] CHECK CONSTRAINT [LightningLU_FK1]
GO
