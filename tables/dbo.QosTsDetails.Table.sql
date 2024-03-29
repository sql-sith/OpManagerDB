USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QosTsDetails]    Script Date: 6/29/2019 5:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QosTsDetails](
	[CLASS_ID] [int] NOT NULL,
	[CFG_RATE] [int] NOT NULL,
	[BURST_SIZE] [int] NOT NULL,
	[EXT_BURST_SIZE] [int] NOT NULL,
	[LIMIT_TYPE] [varchar](8) NOT NULL,
	[ADAPTIVE_ENABLED] [bit] NOT NULL,
	[ADAPTIVE_RATE] [int] NOT NULL,
 CONSTRAINT [QosTSDetials_PK] PRIMARY KEY CLUSTERED 
(
	[CLASS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_613719638]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_613719638] ON [dbo].[QosTsDetails]
(
	[CLASS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QosTsDetails]  WITH CHECK ADD  CONSTRAINT [QosTsDetails_FK] FOREIGN KEY([CLASS_ID])
REFERENCES [dbo].[QosClassDetails] ([CLASS_ID])
GO
ALTER TABLE [dbo].[QosTsDetails] CHECK CONSTRAINT [QosTsDetails_FK]
GO
