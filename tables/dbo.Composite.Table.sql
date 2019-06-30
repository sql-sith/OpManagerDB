USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Composite]    Script Date: 6/29/2019 5:46:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Composite](
	[SCHEDULE_ID] [bigint] NOT NULL,
	[SUB_SCHEDULE_ID1] [bigint] NOT NULL,
	[OPERATOR] [varchar](150) NOT NULL,
	[SUB_SCHEDULE_ID2] [bigint] NOT NULL,
 CONSTRAINT [Composite_PK] PRIMARY KEY CLUSTERED 
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2042775092]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2042775092] ON [dbo].[Composite]
(
	[SCHEDULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2042775093]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2042775093] ON [dbo].[Composite]
(
	[SUB_SCHEDULE_ID1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2042775094]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2042775094] ON [dbo].[Composite]
(
	[SUB_SCHEDULE_ID2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Composite]  WITH CHECK ADD  CONSTRAINT [Composite_FK1] FOREIGN KEY([SCHEDULE_ID])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[Composite] CHECK CONSTRAINT [Composite_FK1]
GO
ALTER TABLE [dbo].[Composite]  WITH CHECK ADD  CONSTRAINT [Composite_FK2] FOREIGN KEY([SUB_SCHEDULE_ID1])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[Composite] CHECK CONSTRAINT [Composite_FK2]
GO
ALTER TABLE [dbo].[Composite]  WITH CHECK ADD  CONSTRAINT [Composite_FK3] FOREIGN KEY([SUB_SCHEDULE_ID2])
REFERENCES [dbo].[Schedule] ([SCHEDULE_ID])
GO
ALTER TABLE [dbo].[Composite] CHECK CONSTRAINT [Composite_FK3]
GO
