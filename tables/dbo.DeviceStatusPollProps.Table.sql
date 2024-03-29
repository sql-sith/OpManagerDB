USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DeviceStatusPollProps]    Script Date: 6/29/2019 5:47:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceStatusPollProps](
	[MOID] [bigint] NOT NULL,
	[MONAME] [varchar](255) NOT NULL,
 CONSTRAINT [DeviceStatusPollProps_PK1] PRIMARY KEY CLUSTERED 
(
	[MONAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [DeviceStatusPollProps_UK0] UNIQUE NONCLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1164658326]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1164658326] ON [dbo].[DeviceStatusPollProps]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DeviceStatusPollProps]  WITH CHECK ADD  CONSTRAINT [DeviceStatusPollProps_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[DeviceStatusPollProps] CHECK CONSTRAINT [DeviceStatusPollProps_FK1]
GO
