USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FloorAisle]    Script Date: 6/29/2019 5:47:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FloorAisle](
	[AISLEID] [bigint] NOT NULL,
	[FLOORMOID] [bigint] NOT NULL,
	[AISLEPOSITIONX] [int] NOT NULL,
	[AISLEPOSITIONZ] [int] NOT NULL,
 CONSTRAINT [FloorAisle_PK] PRIMARY KEY CLUSTERED 
(
	[AISLEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__771779899]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__771779899] ON [dbo].[FloorAisle]
(
	[FLOORMOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FloorAisle]  WITH CHECK ADD  CONSTRAINT [FloorAisle_FK1] FOREIGN KEY([FLOORMOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[FloorAisle] CHECK CONSTRAINT [FloorAisle_FK1]
GO
