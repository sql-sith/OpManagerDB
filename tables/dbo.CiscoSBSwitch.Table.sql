USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoSBSwitch]    Script Date: 6/29/2019 5:46:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoSBSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[HW_VER] [varchar](100) NOT NULL,
 CONSTRAINT [CiscoSBSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_102788233]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_102788233] ON [dbo].[CiscoSBSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoSBSwitch] ADD  DEFAULT ('Not Available') FOR [HW_VER]
GO
ALTER TABLE [dbo].[CiscoSBSwitch]  WITH CHECK ADD  CONSTRAINT [CiscoSBSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoSBSwitch] CHECK CONSTRAINT [CiscoSBSwitch_FK1]
GO
