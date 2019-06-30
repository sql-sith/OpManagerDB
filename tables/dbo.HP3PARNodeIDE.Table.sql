USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARNodeIDE]    Script Date: 6/29/2019 5:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARNodeIDE](
	[NODE_ID] [bigint] NOT NULL,
	[IDE_ID] [varchar](250) NOT NULL,
	[IDE_DISPLAY_NAME] [varchar](250) NOT NULL,
	[IDE_MANUFACTURER] [varchar](250) NOT NULL,
	[IDE_MODEL] [varchar](250) NOT NULL,
	[IDE_SERIAL_NUMBER] [varchar](250) NOT NULL,
	[IDE_POSITION] [varchar](250) NOT NULL,
	[IDE_FIRMWARE] [varchar](250) NOT NULL,
	[IDE_MAX_LBA] [varchar](250) NOT NULL,
	[IDE_CAPACITY] [varchar](250) NOT NULL,
	[IDE_STATUS] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARNodeIDE_PK] PRIMARY KEY CLUSTERED 
(
	[NODE_ID] ASC,
	[IDE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1583176754]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1583176754] ON [dbo].[HP3PARNodeIDE]
(
	[NODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARNodeIDE]  WITH CHECK ADD  CONSTRAINT [HP3PARNodeIDE_FK] FOREIGN KEY([NODE_ID])
REFERENCES [dbo].[HP3PARNode] ([NODE_ID])
GO
ALTER TABLE [dbo].[HP3PARNodeIDE] CHECK CONSTRAINT [HP3PARNodeIDE_FK]
GO
