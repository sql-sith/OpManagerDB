USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PillarBrickController]    Script Date: 6/29/2019 5:50:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PillarBrickController](
	[PILLAR_ID] [bigint] NOT NULL,
	[BRICK_INSTANCE] [int] NOT NULL,
	[CONTROLLER_INSTANCE] [int] NOT NULL,
	[NUMBER] [int] NOT NULL,
	[MODEL] [varchar](250) NULL,
	[SERIAL_NUMBER] [varchar](250) NOT NULL,
	[FIRMWARE_VERSION] [varchar](250) NULL,
 CONSTRAINT [PillarBrickController_PK] PRIMARY KEY CLUSTERED 
(
	[PILLAR_ID] ASC,
	[SERIAL_NUMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1841650289]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1841650289] ON [dbo].[PillarBrickController]
(
	[PILLAR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PillarBrickController]  WITH CHECK ADD  CONSTRAINT [PillarBrickController_FK] FOREIGN KEY([PILLAR_ID])
REFERENCES [dbo].[PillarRaid] ([PILLAR_ID])
GO
ALTER TABLE [dbo].[PillarBrickController] CHECK CONSTRAINT [PillarBrickController_FK]
GO
