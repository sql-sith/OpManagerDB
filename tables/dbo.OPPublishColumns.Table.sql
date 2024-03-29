USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[OPPublishColumns]    Script Date: 6/29/2019 5:50:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPPublishColumns](
	[OPPublishColumns_ID] [bigint] NOT NULL,
	[TOOL_ID] [varchar](50) NOT NULL,
	[ColumnName] [varchar](100) NOT NULL,
	[ColumnAlias] [varchar](100) NOT NULL,
	[DisplayName] [varchar](100) NOT NULL,
	[IsVisible] [bit] NOT NULL,
	[ViewOrder] [bigint] NULL,
	[IsCustomColumn] [bit] NOT NULL,
	[Dummy_Column] [bit] NOT NULL,
 CONSTRAINT [OPPublishColumns_PK] PRIMARY KEY CLUSTERED 
(
	[OPPublishColumns_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1770499036]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1770499036] ON [dbo].[OPPublishColumns]
(
	[TOOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OPPublishColumns] ADD  DEFAULT ((0)) FOR [IsVisible]
GO
ALTER TABLE [dbo].[OPPublishColumns] ADD  DEFAULT ((1)) FOR [IsCustomColumn]
GO
ALTER TABLE [dbo].[OPPublishColumns] ADD  DEFAULT ((0)) FOR [Dummy_Column]
GO
ALTER TABLE [dbo].[OPPublishColumns]  WITH CHECK ADD  CONSTRAINT [OPPublishColumns_FK1] FOREIGN KEY([TOOL_ID])
REFERENCES [dbo].[Tool] ([TOOL_ID])
GO
ALTER TABLE [dbo].[OPPublishColumns] CHECK CONSTRAINT [OPPublishColumns_FK1]
GO
