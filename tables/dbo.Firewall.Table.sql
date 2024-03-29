USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Firewall]    Script Date: 6/29/2019 5:47:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firewall](
	[RESOURCEID] [bigint] NOT NULL,
 CONSTRAINT [Firewall_PK1] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2023321491]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2023321491] ON [dbo].[Firewall]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Firewall]  WITH CHECK ADD  CONSTRAINT [Firewall_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NetworkElement] ([RESOURCEID])
GO
ALTER TABLE [dbo].[Firewall] CHECK CONSTRAINT [Firewall_FK1]
GO
