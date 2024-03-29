USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QosConfigPolicyDetails]    Script Date: 6/29/2019 5:50:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QosConfigPolicyDetails](
	[POLICY_ID] [int] NOT NULL,
	[POLICY_NAME] [varchar](40) NOT NULL,
	[POLICY_DIRECTION] [int] NOT NULL,
 CONSTRAINT [QosConfigPolicyDetails_PK] PRIMARY KEY CLUSTERED 
(
	[POLICY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1508871974]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1508871974] ON [dbo].[QosConfigPolicyDetails]
(
	[POLICY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QosConfigPolicyDetails]  WITH CHECK ADD  CONSTRAINT [QosConfigPolicyDetails_FK1] FOREIGN KEY([POLICY_ID])
REFERENCES [dbo].[QosIdGen] ([POLICY_ID])
GO
ALTER TABLE [dbo].[QosConfigPolicyDetails] CHECK CONSTRAINT [QosConfigPolicyDetails_FK1]
GO
