USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FloorWall]    Script Date: 6/29/2019 5:47:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloorWall](
	[WALLID] [bigint] NOT NULL,
	[FLOORMOID] [bigint] NOT NULL,
	[POSITION] [varchar](50) NOT NULL,
	[WALLPOSITIONX] [int] NOT NULL,
	[WALLPOSITIONZ] [int] NOT NULL,
 CONSTRAINT [FloorWall_PK] PRIMARY KEY CLUSTERED 
(
	[WALLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_258787363]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_258787363] ON [dbo].[FloorWall]
(
	[FLOORMOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FloorWall]  WITH CHECK ADD  CONSTRAINT [FloorWall_FK1] FOREIGN KEY([FLOORMOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[FloorWall] CHECK CONSTRAINT [FloorWall_FK1]
GO
