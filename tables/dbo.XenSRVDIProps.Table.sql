USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[XenSRVDIProps]    Script Date: 6/29/2019 5:53:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XenSRVDIProps](
	[VDI_ID] [bigint] NOT NULL,
	[UUID] [varchar](150) NOT NULL,
	[NAME] [varchar](200) NOT NULL,
	[SR_ID] [bigint] NOT NULL,
	[LOCATION] [varchar](200) NOT NULL,
	[MANAGED] [bit] NOT NULL,
	[VIRTUAL_SIZE_MB] [bigint] NULL,
	[PHYSICAL_UTIL_MB] [bigint] NULL,
	[SHARABLE] [bit] NOT NULL,
	[TYPE] [varchar](50) NOT NULL,
 CONSTRAINT [XenSRVDIProps_PK1] PRIMARY KEY CLUSTERED 
(
	[VDI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [XenSRVDIProps_UK0] UNIQUE NONCLUSTERED 
(
	[UUID] ASC,
	[SR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_244527298]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_244527298] ON [dbo].[XenSRVDIProps]
(
	[SR_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[XenSRVDIProps] ADD  DEFAULT ((1)) FOR [MANAGED]
GO
ALTER TABLE [dbo].[XenSRVDIProps] ADD  DEFAULT ((1)) FOR [SHARABLE]
GO
ALTER TABLE [dbo].[XenSRVDIProps]  WITH CHECK ADD  CONSTRAINT [XenSRVDIProps_FK1] FOREIGN KEY([SR_ID])
REFERENCES [dbo].[XenSRProps] ([SR_ID])
GO
ALTER TABLE [dbo].[XenSRVDIProps] CHECK CONSTRAINT [XenSRVDIProps_FK1]
GO
