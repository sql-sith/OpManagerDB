USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AlaxalaSwitch5400]    Script Date: 6/29/2019 5:45:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlaxalaSwitch5400](
	[RESOURCEID] [bigint] NOT NULL,
	[CPU] [varchar](30) NOT NULL,
	[MEMORYSIZE] [varchar](50) NOT NULL,
 CONSTRAINT [AlaxalaSwitch5400_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__977964652]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__977964652] ON [dbo].[AlaxalaSwitch5400]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AlaxalaSwitch5400] ADD  DEFAULT ('Not Available') FOR [CPU]
GO
ALTER TABLE [dbo].[AlaxalaSwitch5400] ADD  DEFAULT ('Not Available') FOR [MEMORYSIZE]
GO
ALTER TABLE [dbo].[AlaxalaSwitch5400]  WITH CHECK ADD  CONSTRAINT [AlaxalaSwitch5400_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[AlaxalaSwitch5400] CHECK CONSTRAINT [AlaxalaSwitch5400_FK1]
GO
