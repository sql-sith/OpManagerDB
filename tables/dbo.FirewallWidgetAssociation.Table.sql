USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FirewallWidgetAssociation]    Script Date: 6/29/2019 5:47:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirewallWidgetAssociation](
	[ASSOCIATIONID] [bigint] NOT NULL,
	[TOPN] [int] NOT NULL,
	[CATEGORY] [nvarchar](50) NULL,
	[DEVICE] [nvarchar](50) NULL,
 CONSTRAINT [FirewallWidgetAssociation_PK] PRIMARY KEY CLUSTERED 
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2036344345]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2036344345] ON [dbo].[FirewallWidgetAssociation]
(
	[ASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FirewallWidgetAssociation]  WITH CHECK ADD  CONSTRAINT [FirewallWidgetAssociation_FK] FOREIGN KEY([ASSOCIATIONID])
REFERENCES [dbo].[WidgetAssociation] ([ASSOCIATIONID])
GO
ALTER TABLE [dbo].[FirewallWidgetAssociation] CHECK CONSTRAINT [FirewallWidgetAssociation_FK]
GO
