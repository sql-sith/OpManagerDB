USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RadwareSwitch]    Script Date: 6/29/2019 5:50:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RadwareSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[HARDWARE_VERSION] [varchar](30) NOT NULL,
	[BWM_VERSION] [varchar](15) NOT NULL,
	[HMM_VERSION] [varchar](15) NOT NULL,
	[PLATFORM] [varchar](25) NOT NULL,
	[RAM_SIZE] [varchar](15) NOT NULL,
	[FLASH_SIZE] [varchar](15) NOT NULL,
 CONSTRAINT [RadwareSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1402675731]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1402675731] ON [dbo].[RadwareSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RadwareSwitch] ADD  DEFAULT ('Not Available') FOR [HARDWARE_VERSION]
GO
ALTER TABLE [dbo].[RadwareSwitch] ADD  DEFAULT ('Not Available') FOR [BWM_VERSION]
GO
ALTER TABLE [dbo].[RadwareSwitch] ADD  DEFAULT ('Not Available') FOR [HMM_VERSION]
GO
ALTER TABLE [dbo].[RadwareSwitch] ADD  DEFAULT ('Not Available') FOR [PLATFORM]
GO
ALTER TABLE [dbo].[RadwareSwitch] ADD  DEFAULT ('Not Available') FOR [RAM_SIZE]
GO
ALTER TABLE [dbo].[RadwareSwitch] ADD  DEFAULT ('Not Available') FOR [FLASH_SIZE]
GO
ALTER TABLE [dbo].[RadwareSwitch]  WITH CHECK ADD  CONSTRAINT [RadwareSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[RadwareSwitch] CHECK CONSTRAINT [RadwareSwitch_FK1]
GO
