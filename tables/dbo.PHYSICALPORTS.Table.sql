USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PHYSICALPORTS]    Script Date: 6/29/2019 5:50:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHYSICALPORTS](
	[PORTMOID] [bigint] NOT NULL,
	[MOID] [bigint] NOT NULL,
 CONSTRAINT [PHYSICALPORTS_PK1] PRIMARY KEY CLUSTERED 
(
	[PORTMOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_746166793]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_746166793] ON [dbo].[PHYSICALPORTS]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PHYSICALPORTS]  WITH CHECK ADD  CONSTRAINT [PHYSICALPORTS_FK] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[PHYSICALPORTS] CHECK CONSTRAINT [PHYSICALPORTS_FK]
GO
