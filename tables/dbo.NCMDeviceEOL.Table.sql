USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMDeviceEOL]    Script Date: 6/29/2019 5:49:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMDeviceEOL](
	[RESOURCEID] [bigint] NOT NULL,
	[RESOURCENAME] [varchar](100) NOT NULL,
	[PERSONALITYNAME] [varchar](50) NOT NULL,
	[SERIES] [varchar](100) NOT NULL,
	[MODEL] [varchar](50) NOT NULL,
	[ENDOFSALEDATE] [varchar](50) NULL,
	[ENDOFENGINEERINGDATE] [varchar](50) NULL,
	[ENDOFCONTACTRENEWALDATE] [varchar](50) NULL,
	[ENDOFSUPPORTDATE] [varchar](50) NULL,
	[FUTURE_EOL] [bit] NOT NULL,
 CONSTRAINT [NCMDeviceEOL_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1458794489]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1458794489] ON [dbo].[NCMDeviceEOL]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMDeviceEOL] ADD  DEFAULT ('[NA]') FOR [SERIES]
GO
ALTER TABLE [dbo].[NCMDeviceEOL] ADD  DEFAULT ('[NA]') FOR [MODEL]
GO
ALTER TABLE [dbo].[NCMDeviceEOL] ADD  DEFAULT ((0)) FOR [FUTURE_EOL]
GO
ALTER TABLE [dbo].[NCMDeviceEOL]  WITH CHECK ADD  CONSTRAINT [DeviceEOL_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMDeviceEOL] CHECK CONSTRAINT [DeviceEOL_FK1]
GO
