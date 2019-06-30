USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ParentDownStart]    Script Date: 6/29/2019 5:50:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParentDownStart](
	[ELEMENTID] [bigint] NOT NULL,
	[STARTTIME] [bigint] NOT NULL,
 CONSTRAINT [ParentDownStart_PK] PRIMARY KEY CLUSTERED 
(
	[ELEMENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_895542894]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_895542894] ON [dbo].[ParentDownStart]
(
	[ELEMENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ParentDownStart]  WITH CHECK ADD  CONSTRAINT [ParentDownStart_FK] FOREIGN KEY([ELEMENTID])
REFERENCES [dbo].[AvailabilityElementID] ([ELEMENTID])
GO
ALTER TABLE [dbo].[ParentDownStart] CHECK CONSTRAINT [ParentDownStart_FK]
GO
