USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ADGroups]    Script Date: 6/29/2019 5:45:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADGroups](
	[OUID] [bigint] NOT NULL,
	[OUNAME] [nvarchar](100) NOT NULL,
	[ADSPATH] [ntext] NULL,
	[ISIMPORTED] [int] NOT NULL,
	[DOMAINID] [bigint] NOT NULL,
 CONSTRAINT [ADGroups_PK] PRIMARY KEY CLUSTERED 
(
	[OUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__793845203]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__793845203] ON [dbo].[ADGroups]
(
	[DOMAINID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADGroups]  WITH CHECK ADD  CONSTRAINT [ADGroups_FK] FOREIGN KEY([DOMAINID])
REFERENCES [dbo].[FADiscoveredDomains] ([DID])
GO
ALTER TABLE [dbo].[ADGroups] CHECK CONSTRAINT [ADGroups_FK]
GO
