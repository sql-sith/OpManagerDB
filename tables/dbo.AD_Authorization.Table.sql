USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AD_Authorization]    Script Date: 6/29/2019 5:45:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AD_Authorization](
	[ID] [bigint] NOT NULL,
	[AD_ID] [bigint] NOT NULL,
	[FILTERID] [bigint] NULL,
	[MODULE_ID] [int] NOT NULL,
	[CATEGORY] [int] NOT NULL,
	[GROUP_ID] [varbinary](max) NULL,
 CONSTRAINT [AD_Authorization_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_2056243722]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2056243722] ON [dbo].[AD_Authorization]
(
	[AD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2056243723]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2056243723] ON [dbo].[AD_Authorization]
(
	[FILTERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2056243724]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2056243724] ON [dbo].[AD_Authorization]
(
	[MODULE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AD_Authorization]  WITH CHECK ADD  CONSTRAINT [AD_Authorization_FK1] FOREIGN KEY([AD_ID])
REFERENCES [dbo].[ActiveDirectoryInfo] ([AD_ID])
GO
ALTER TABLE [dbo].[AD_Authorization] CHECK CONSTRAINT [AD_Authorization_FK1]
GO
ALTER TABLE [dbo].[AD_Authorization]  WITH CHECK ADD  CONSTRAINT [AD_Authorization_FK2] FOREIGN KEY([FILTERID])
REFERENCES [dbo].[ADGroupFilter] ([FILTERID])
GO
ALTER TABLE [dbo].[AD_Authorization] CHECK CONSTRAINT [AD_Authorization_FK2]
GO
ALTER TABLE [dbo].[AD_Authorization]  WITH CHECK ADD  CONSTRAINT [AD_Authorization_FK3] FOREIGN KEY([MODULE_ID])
REFERENCES [dbo].[ProductDetails] ([PRODUCT_ID])
GO
ALTER TABLE [dbo].[AD_Authorization] CHECK CONSTRAINT [AD_Authorization_FK3]
GO
