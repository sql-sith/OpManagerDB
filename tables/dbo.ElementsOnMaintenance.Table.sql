USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ElementsOnMaintenance]    Script Date: 6/29/2019 5:47:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ElementsOnMaintenance](
	[ELEMENTID] [bigint] NOT NULL,
	[TASKID] [bigint] NOT NULL,
 CONSTRAINT [ElementsOnMaintenance_PK] PRIMARY KEY CLUSTERED 
(
	[ELEMENTID] ASC,
	[TASKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1609551018]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1609551018] ON [dbo].[ElementsOnMaintenance]
(
	[ELEMENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ElementsOnMaintenance]  WITH CHECK ADD  CONSTRAINT [ElementsOnMaintenance_FK1] FOREIGN KEY([ELEMENTID])
REFERENCES [dbo].[AvailabilityElementID] ([ELEMENTID])
GO
ALTER TABLE [dbo].[ElementsOnMaintenance] CHECK CONSTRAINT [ElementsOnMaintenance_FK1]
GO
