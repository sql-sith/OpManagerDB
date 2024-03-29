USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiscoveryAdditionalParams]    Script Date: 6/29/2019 5:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscoveryAdditionalParams](
	[PROFILEID] [bigint] NOT NULL,
	[APPNAMES] [varchar](2500) NULL,
	[RULEID] [varchar](2500) NULL,
	[INTFDISCOVERY] [varchar](50) NOT NULL,
	[EMAIL] [varchar](150) NULL,
	[SUBJECT] [varchar](150) NULL,
	[MESSAGE] [varchar](2500) NULL,
 CONSTRAINT [DiscoveryAdditionalParams_PK1] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1609922806]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1609922806] ON [dbo].[DiscoveryAdditionalParams]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiscoveryAdditionalParams]  WITH CHECK ADD  CONSTRAINT [DiscoveryAdditionalParams_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[DiscoveryProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[DiscoveryAdditionalParams] CHECK CONSTRAINT [DiscoveryAdditionalParams_FK1]
GO
