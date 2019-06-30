USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CiscoIPS]    Script Date: 6/29/2019 5:46:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CiscoIPS](
	[PLATFORM] [varchar](15) NOT NULL,
	[RAMINFO] [varchar](15) NOT NULL,
	[RESOURCEID] [bigint] NOT NULL,
 CONSTRAINT [CiscoIPS_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__699711136]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__699711136] ON [dbo].[CiscoIPS]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CiscoIPS] ADD  DEFAULT ('Not Available') FOR [PLATFORM]
GO
ALTER TABLE [dbo].[CiscoIPS] ADD  DEFAULT ('Not Available') FOR [RAMINFO]
GO
ALTER TABLE [dbo].[CiscoIPS]  WITH CHECK ADD  CONSTRAINT [CiscoIPS_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[CiscoIPS] CHECK CONSTRAINT [CiscoIPS_FK1]
GO
