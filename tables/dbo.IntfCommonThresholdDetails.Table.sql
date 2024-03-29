USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IntfCommonThresholdDetails]    Script Date: 6/29/2019 5:48:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IntfCommonThresholdDetails](
	[ID] [bigint] NOT NULL,
	[FAILURETHRESHOLD] [bigint] NOT NULL,
 CONSTRAINT [IntfCommonThresholdDetails_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_493020171]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_493020171] ON [dbo].[IntfCommonThresholdDetails]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IntfCommonThresholdDetails]  WITH CHECK ADD  CONSTRAINT [IntfCommonThresholdDetails_FK] FOREIGN KEY([ID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[IntfCommonThresholdDetails] CHECK CONSTRAINT [IntfCommonThresholdDetails_FK]
GO
