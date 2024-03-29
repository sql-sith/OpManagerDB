USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RediscoveryRules]    Script Date: 6/29/2019 5:50:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RediscoveryRules](
	[PROFILEID] [bigint] NOT NULL,
	[DEVICEADDACTION] [varchar](100) NULL,
	[DEVICEREMOVEACTON] [varchar](100) NULL,
	[INTFADDACTION] [varchar](100) NULL,
	[INTFREMOVEACTION] [varchar](100) NULL,
 CONSTRAINT [RediscoveryRules_PK1] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__233017209]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__233017209] ON [dbo].[RediscoveryRules]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RediscoveryRules]  WITH CHECK ADD  CONSTRAINT [RediscoveryRules_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[DiscoveryProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[RediscoveryRules] CHECK CONSTRAINT [RediscoveryRules_FK1]
GO
