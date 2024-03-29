USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AvayaMediaGateway]    Script Date: 6/29/2019 5:46:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AvayaMediaGateway](
	[RESOURCEID] [bigint] NOT NULL,
	[HW_Vintage] [varchar](15) NOT NULL,
	[HW_Suffix] [varchar](15) NOT NULL,
 CONSTRAINT [AvayaMediaGateway_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__320120863]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__320120863] ON [dbo].[AvayaMediaGateway]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AvayaMediaGateway] ADD  DEFAULT ('Not Available') FOR [HW_Vintage]
GO
ALTER TABLE [dbo].[AvayaMediaGateway] ADD  DEFAULT ('Not Available') FOR [HW_Suffix]
GO
ALTER TABLE [dbo].[AvayaMediaGateway]  WITH CHECK ADD  CONSTRAINT [AvayaMediaGateway_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[AvayaMediaGateway] CHECK CONSTRAINT [AvayaMediaGateway_FK1]
GO
