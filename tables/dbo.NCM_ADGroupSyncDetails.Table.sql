USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCM_ADGroupSyncDetails]    Script Date: 6/29/2019 5:49:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCM_ADGroupSyncDetails](
	[DUMMY_ID] [bigint] NOT NULL,
	[DOMAIN_ID] [bigint] NOT NULL,
	[ADSPATH] [varchar](500) NULL,
 CONSTRAINT [NCM_ADGroupSyncDetails_PK] PRIMARY KEY CLUSTERED 
(
	[DUMMY_ID] ASC,
	[DOMAIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_951986258]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_951986258] ON [dbo].[NCM_ADGroupSyncDetails]
(
	[DOMAIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCM_ADGroupSyncDetails]  WITH CHECK ADD  CONSTRAINT [NCM_ADGroupSyncDetails_FK] FOREIGN KEY([DOMAIN_ID])
REFERENCES [dbo].[ActiveDirectoryInfo] ([AD_ID])
GO
ALTER TABLE [dbo].[NCM_ADGroupSyncDetails] CHECK CONSTRAINT [NCM_ADGroupSyncDetails_FK]
GO
