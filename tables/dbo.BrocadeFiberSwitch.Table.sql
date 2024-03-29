USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BrocadeFiberSwitch]    Script Date: 6/29/2019 5:46:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BrocadeFiberSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[KERNEL] [varchar](150) NOT NULL,
	[BOOT_PROM] [varchar](150) NOT NULL,
	[PART_NUM] [varchar](150) NOT NULL,
	[ID_NUM] [varchar](150) NOT NULL,
 CONSTRAINT [BrocadeFiberSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2080722639]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2080722639] ON [dbo].[BrocadeFiberSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BrocadeFiberSwitch] ADD  DEFAULT ('Not Available') FOR [KERNEL]
GO
ALTER TABLE [dbo].[BrocadeFiberSwitch] ADD  DEFAULT ('Not Available') FOR [BOOT_PROM]
GO
ALTER TABLE [dbo].[BrocadeFiberSwitch] ADD  DEFAULT ('Not Available') FOR [PART_NUM]
GO
ALTER TABLE [dbo].[BrocadeFiberSwitch] ADD  DEFAULT ('Not Available') FOR [ID_NUM]
GO
ALTER TABLE [dbo].[BrocadeFiberSwitch]  WITH CHECK ADD  CONSTRAINT [BrocadeFiberSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[BrocadeFiberSwitch] CHECK CONSTRAINT [BrocadeFiberSwitch_FK1]
GO
