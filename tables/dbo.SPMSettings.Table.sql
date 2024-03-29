USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SPMSettings]    Script Date: 6/29/2019 5:51:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SPMSettings](
	[ID] [bigint] NOT NULL,
	[NO_OF_DAYS] [int] NOT NULL,
	[IFINDEX_ENABLED] [bit] NOT NULL,
	[RESOLVE_DNS] [bit] NOT NULL,
	[STACKED_PORT_COUNT] [int] NOT NULL,
	[TRUNK_PORT_NEEDED] [int] NOT NULL,
 CONSTRAINT [SPMSettings_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1886906033]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1886906033] ON [dbo].[SPMSettings]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SPMSettings] ADD  DEFAULT ((0)) FOR [IFINDEX_ENABLED]
GO
ALTER TABLE [dbo].[SPMSettings] ADD  DEFAULT ((1)) FOR [RESOLVE_DNS]
GO
ALTER TABLE [dbo].[SPMSettings] ADD  DEFAULT ('2') FOR [STACKED_PORT_COUNT]
GO
ALTER TABLE [dbo].[SPMSettings] ADD  DEFAULT ('0') FOR [TRUNK_PORT_NEEDED]
GO
ALTER TABLE [dbo].[SPMSettings]  WITH CHECK ADD  CONSTRAINT [SPMSettings_FK] FOREIGN KEY([ID])
REFERENCES [dbo].[Settings] ([ID])
GO
ALTER TABLE [dbo].[SPMSettings] CHECK CONSTRAINT [SPMSettings_FK]
GO
