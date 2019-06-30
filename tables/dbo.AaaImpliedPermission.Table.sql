USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaImpliedPermission]    Script Date: 6/29/2019 5:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaImpliedPermission](
	[PERMISSION_ID] [bigint] NOT NULL,
	[IMPLIED_TABLE_NAME] [varchar](50) NOT NULL,
	[IMPLIED_BY_TABLE_NAME] [varchar](50) NOT NULL,
	[CRITERIA] [varchar](250) NULL,
 CONSTRAINT [AaaImpliedPermission_PK] PRIMARY KEY CLUSTERED 
(
	[PERMISSION_ID] ASC,
	[IMPLIED_TABLE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1219853102]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1219853102] ON [dbo].[AaaImpliedPermission]
(
	[PERMISSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaImpliedPermission]  WITH CHECK ADD  CONSTRAINT [AaaImpliedPermission_FK] FOREIGN KEY([PERMISSION_ID])
REFERENCES [dbo].[AaaTablePermission] ([PERMISSION_ID])
GO
ALTER TABLE [dbo].[AaaImpliedPermission] CHECK CONSTRAINT [AaaImpliedPermission_FK]
GO
