USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiscoveryRangeDetails]    Script Date: 6/29/2019 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscoveryRangeDetails](
	[PROFILEID] [bigint] NOT NULL,
	[DISCOVERYTYPE] [varchar](100) NOT NULL,
	[IPVERSION] [varchar](50) NOT NULL,
	[NETMASK] [varchar](100) NULL,
	[CREDENTIALS] [varchar](1000) NOT NULL,
	[RANGEDETAILS] [text] NOT NULL,
 CONSTRAINT [DiscoveryRangeDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX_538591426]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_538591426] ON [dbo].[DiscoveryRangeDetails]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiscoveryRangeDetails]  WITH CHECK ADD  CONSTRAINT [DiscoveryRangeDetails_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[DiscoveryProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[DiscoveryRangeDetails] CHECK CONSTRAINT [DiscoveryRangeDetails_FK1]
GO
