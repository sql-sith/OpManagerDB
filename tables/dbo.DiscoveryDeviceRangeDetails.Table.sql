USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DiscoveryDeviceRangeDetails]    Script Date: 6/29/2019 5:47:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscoveryDeviceRangeDetails](
	[PROFILEID] [bigint] NOT NULL,
	[TYPE] [varchar](50) NOT NULL,
	[MEMBERS] [text] NOT NULL,
 CONSTRAINT [DiscoveryDeviceRangeDetails_PK1] PRIMARY KEY CLUSTERED 
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__1729350856]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1729350856] ON [dbo].[DiscoveryDeviceRangeDetails]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DiscoveryDeviceRangeDetails]  WITH CHECK ADD  CONSTRAINT [DiscoveryDeviceRangeDetails_FK1] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[DiscoveryProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[DiscoveryDeviceRangeDetails] CHECK CONSTRAINT [DiscoveryDeviceRangeDetails_FK1]
GO
