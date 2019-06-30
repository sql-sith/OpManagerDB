USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[COMMONTHRESHOLDASSOCIATION]    Script Date: 6/29/2019 5:46:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMONTHRESHOLDASSOCIATION](
	[COMMONASSOCIATIONID] [bigint] NOT NULL,
	[COMMONPOLLID] [bigint] NOT NULL,
	[INSTANCE] [varchar](100) NOT NULL,
 CONSTRAINT [COMMONTHRESHOLDASSOCIATION_PK] PRIMARY KEY CLUSTERED 
(
	[COMMONPOLLID] ASC,
	[INSTANCE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1327173521]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1327173521] ON [dbo].[COMMONTHRESHOLDASSOCIATION]
(
	[COMMONPOLLID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1327173522]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1327173522] ON [dbo].[COMMONTHRESHOLDASSOCIATION]
(
	[COMMONASSOCIATIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[COMMONTHRESHOLDASSOCIATION]  WITH CHECK ADD  CONSTRAINT [COMMONTHRESHOLDASSOCIATION_FK1] FOREIGN KEY([COMMONASSOCIATIONID])
REFERENCES [dbo].[COMMONTHRESHOLDVALUES] ([COMMONTHRESHOLDID])
GO
ALTER TABLE [dbo].[COMMONTHRESHOLDASSOCIATION] CHECK CONSTRAINT [COMMONTHRESHOLDASSOCIATION_FK1]
GO
ALTER TABLE [dbo].[COMMONTHRESHOLDASSOCIATION]  WITH CHECK ADD  CONSTRAINT [COMMONTHRESHOLDASSOCIATION_FK2] FOREIGN KEY([COMMONPOLLID])
REFERENCES [dbo].[COMMONPOLLEDDATAID] ([COMMONPOLLID])
GO
ALTER TABLE [dbo].[COMMONTHRESHOLDASSOCIATION] CHECK CONSTRAINT [COMMONTHRESHOLDASSOCIATION_FK2]
GO
