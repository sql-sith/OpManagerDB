USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARNodeDIMM]    Script Date: 6/29/2019 5:48:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARNodeDIMM](
	[NODE_ID] [bigint] NOT NULL,
	[DIMM_ID] [varchar](250) NOT NULL,
	[DIMM_NAME] [varchar](250) NOT NULL,
	[DIMM_MANUFACTURER] [varchar](250) NOT NULL,
	[DIMM_SERIAL_NUMBER] [varchar](250) NOT NULL,
	[DIMM_PART_NUMBER] [varchar](250) NOT NULL,
	[DIMM_MEMORY_TYPE] [varchar](250) NOT NULL,
	[DIMM_CAPACITY] [varchar](250) NOT NULL,
	[DIMM_SLOT] [varchar](250) NOT NULL,
	[DIMM_SLOT_ID] [varchar](250) NOT NULL,
	[DIMM_CACHE_TYPE] [varchar](250) NOT NULL,
	[DIMM_CAS_LATENCY] [varchar](250) NOT NULL,
	[DIMM_JEDEC_ID] [varchar](250) NOT NULL,
	[DIMM_REVISION] [varchar](250) NOT NULL,
	[DIMM_STATUS] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARNodeDIMM_PK] PRIMARY KEY CLUSTERED 
(
	[NODE_ID] ASC,
	[DIMM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1841309639]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1841309639] ON [dbo].[HP3PARNodeDIMM]
(
	[NODE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARNodeDIMM]  WITH CHECK ADD  CONSTRAINT [HP3PARNodeDIMM_FK] FOREIGN KEY([NODE_ID])
REFERENCES [dbo].[HP3PARNode] ([NODE_ID])
GO
ALTER TABLE [dbo].[HP3PARNodeDIMM] CHECK CONSTRAINT [HP3PARNodeDIMM_FK]
GO
