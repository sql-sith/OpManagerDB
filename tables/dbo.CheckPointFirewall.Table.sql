USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CheckPointFirewall]    Script Date: 6/29/2019 5:46:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CheckPointFirewall](
	[RESOURCEID] [bigint] NOT NULL,
	[HARDWARE_VERSION] [varchar](15) NOT NULL,
	[HARDWARE_TYPE] [varchar](15) NOT NULL,
	[MEMORY_SIZE] [varchar](15) NOT NULL,
	[BOOTCODE_VERSION] [varchar](15) NOT NULL,
 CONSTRAINT [CheckPointFirewall_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__297810443]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__297810443] ON [dbo].[CheckPointFirewall]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CheckPointFirewall] ADD  DEFAULT ('Not Available') FOR [HARDWARE_VERSION]
GO
ALTER TABLE [dbo].[CheckPointFirewall] ADD  DEFAULT ('Not Available') FOR [HARDWARE_TYPE]
GO
ALTER TABLE [dbo].[CheckPointFirewall] ADD  DEFAULT ('Not Available') FOR [MEMORY_SIZE]
GO
ALTER TABLE [dbo].[CheckPointFirewall] ADD  DEFAULT ('Not Available') FOR [BOOTCODE_VERSION]
GO
ALTER TABLE [dbo].[CheckPointFirewall]  WITH CHECK ADD  CONSTRAINT [CheckPointFirewall_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CheckPointFirewall] CHECK CONSTRAINT [CheckPointFirewall_FK1]
GO
