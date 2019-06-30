USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QosSetDetails]    Script Date: 6/29/2019 5:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QosSetDetails](
	[CLASS_ID] [int] NOT NULL,
	[DSCP_VALUE] [int] NOT NULL,
	[IP_VALUE] [int] NOT NULL,
	[QOSGROUP_VALUE] [int] NOT NULL,
	[COS_VALUE] [int] NOT NULL,
	[MPLS_VALUE] [bigint] NOT NULL,
	[DISCARDCLASS_VALUE] [bigint] NOT NULL,
 CONSTRAINT [QosSetDetials_PK] PRIMARY KEY CLUSTERED 
(
	[CLASS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__633779729]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__633779729] ON [dbo].[QosSetDetails]
(
	[CLASS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QosSetDetails]  WITH CHECK ADD  CONSTRAINT [QosSetDetails_FK] FOREIGN KEY([CLASS_ID])
REFERENCES [dbo].[QosClassDetails] ([CLASS_ID])
GO
ALTER TABLE [dbo].[QosSetDetails] CHECK CONSTRAINT [QosSetDetails_FK]
GO
