USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[USERTOBUSINESSVIEWMAPPINGS]    Script Date: 6/29/2019 5:52:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USERTOBUSINESSVIEWMAPPINGS](
	[ID] [bigint] NOT NULL,
	[LOGIN_ID] [bigint] NOT NULL,
	[BV_ID] [bigint] NOT NULL,
 CONSTRAINT [USERTOBUSINESSVIEWMAPPINGS_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1496120989]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1496120989] ON [dbo].[USERTOBUSINESSVIEWMAPPINGS]
(
	[LOGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1496120990]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1496120990] ON [dbo].[USERTOBUSINESSVIEWMAPPINGS]
(
	[BV_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[USERTOBUSINESSVIEWMAPPINGS]  WITH CHECK ADD  CONSTRAINT [USERTOBUSINESSVIEWMAPPINGS_FK1] FOREIGN KEY([LOGIN_ID])
REFERENCES [dbo].[AaaLogin] ([LOGIN_ID])
GO
ALTER TABLE [dbo].[USERTOBUSINESSVIEWMAPPINGS] CHECK CONSTRAINT [USERTOBUSINESSVIEWMAPPINGS_FK1]
GO
ALTER TABLE [dbo].[USERTOBUSINESSVIEWMAPPINGS]  WITH CHECK ADD  CONSTRAINT [USERTOBUSINESSVIEWMAPPINGS_FK2] FOREIGN KEY([BV_ID])
REFERENCES [dbo].[BusinessViewDetails] ([ID])
GO
ALTER TABLE [dbo].[USERTOBUSINESSVIEWMAPPINGS] CHECK CONSTRAINT [USERTOBUSINESSVIEWMAPPINGS_FK2]
GO
