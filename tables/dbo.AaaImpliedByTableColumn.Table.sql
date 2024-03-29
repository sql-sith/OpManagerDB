USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaImpliedByTableColumn]    Script Date: 6/29/2019 5:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaImpliedByTableColumn](
	[PERMISSION_ID] [bigint] NOT NULL,
	[IMPLIED_TABLE_NAME] [varchar](50) NOT NULL,
	[IMPLIED_BY_TABLE_NAME] [varchar](50) NOT NULL,
	[COLUMN_NAME] [varchar](50) NOT NULL,
	[COLUMN_ORDER] [bigint] NULL,
 CONSTRAINT [AaaImpliedByTableColumn_PK] PRIMARY KEY CLUSTERED 
(
	[PERMISSION_ID] ASC,
	[IMPLIED_BY_TABLE_NAME] ASC,
	[IMPLIED_TABLE_NAME] ASC,
	[COLUMN_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1474152894]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1474152894] ON [dbo].[AaaImpliedByTableColumn]
(
	[PERMISSION_ID] ASC,
	[IMPLIED_TABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaImpliedByTableColumn] ADD  DEFAULT ('0') FOR [COLUMN_ORDER]
GO
ALTER TABLE [dbo].[AaaImpliedByTableColumn]  WITH CHECK ADD  CONSTRAINT [AaaImpliedByTableColumn_FK] FOREIGN KEY([PERMISSION_ID], [IMPLIED_TABLE_NAME])
REFERENCES [dbo].[AaaImpliedPermission] ([PERMISSION_ID], [IMPLIED_TABLE_NAME])
GO
ALTER TABLE [dbo].[AaaImpliedByTableColumn] CHECK CONSTRAINT [AaaImpliedByTableColumn_FK]
GO
