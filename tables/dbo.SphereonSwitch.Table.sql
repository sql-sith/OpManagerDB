USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SphereonSwitch]    Script Date: 6/29/2019 5:51:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SphereonSwitch](
	[RESOURCEID] [bigint] NOT NULL,
	[EC_LEVEL] [varchar](50) NOT NULL,
	[FIRMWARE_VERSION] [varchar](15) NOT NULL,
 CONSTRAINT [SphereonSwitch_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2102686765]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2102686765] ON [dbo].[SphereonSwitch]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SphereonSwitch] ADD  DEFAULT ('Not Available') FOR [EC_LEVEL]
GO
ALTER TABLE [dbo].[SphereonSwitch] ADD  DEFAULT ('Not Available') FOR [FIRMWARE_VERSION]
GO
ALTER TABLE [dbo].[SphereonSwitch]  WITH CHECK ADD  CONSTRAINT [SphereonSwitch_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[SphereonSwitch] CHECK CONSTRAINT [SphereonSwitch_FK1]
GO
