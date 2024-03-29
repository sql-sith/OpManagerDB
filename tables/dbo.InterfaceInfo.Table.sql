USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InterfaceInfo]    Script Date: 6/29/2019 5:48:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterfaceInfo](
	[RID] [bigint] NOT NULL,
	[IF_NAME] [nvarchar](50) NOT NULL,
	[IF_INDEX] [bigint] NOT NULL,
	[IF_IP] [nvarchar](100) NOT NULL,
	[IF_UPLINK_SPEED] [real] NULL,
	[IF_DOWNLINK_SPEED] [real] NULL,
	[IF_NETMASK] [nvarchar](100) NOT NULL,
	[IF_NETWORK] [nvarchar](100) NOT NULL,
	[IF_DISPLAY] [nvarchar](100) NOT NULL,
 CONSTRAINT [InterfaceInfo_PK] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[IF_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__627413347]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__627413347] ON [dbo].[InterfaceInfo]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InterfaceInfo]  WITH CHECK ADD  CONSTRAINT [InterfaceInfo_FK] FOREIGN KEY([RID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[InterfaceInfo] CHECK CONSTRAINT [InterfaceInfo_FK]
GO
