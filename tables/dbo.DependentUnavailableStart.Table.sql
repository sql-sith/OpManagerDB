USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DependentUnavailableStart]    Script Date: 6/29/2019 5:47:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DependentUnavailableStart](
	[ELEMENTID] [bigint] NOT NULL,
	[STARTTIME] [bigint] NOT NULL,
 CONSTRAINT [DependentUnavailableStart_PK] PRIMARY KEY CLUSTERED 
(
	[ELEMENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1544799021]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1544799021] ON [dbo].[DependentUnavailableStart]
(
	[ELEMENTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DependentUnavailableStart]  WITH CHECK ADD  CONSTRAINT [DependentUnavailableStart_FK] FOREIGN KEY([ELEMENTID])
REFERENCES [dbo].[AvailabilityElementID] ([ELEMENTID])
GO
ALTER TABLE [dbo].[DependentUnavailableStart] CHECK CONSTRAINT [DependentUnavailableStart_FK]
GO
