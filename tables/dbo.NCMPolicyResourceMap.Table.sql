USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMPolicyResourceMap]    Script Date: 6/29/2019 5:49:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMPolicyResourceMap](
	[COMPPOLICY_ID] [bigint] NOT NULL,
	[RESOURCEID] [bigint] NOT NULL,
 CONSTRAINT [NCMPolicyResourceMap_PK1] PRIMARY KEY CLUSTERED 
(
	[COMPPOLICY_ID] ASC,
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1481604305]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1481604305] ON [dbo].[NCMPolicyResourceMap]
(
	[COMPPOLICY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1481604306]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1481604306] ON [dbo].[NCMPolicyResourceMap]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMPolicyResourceMap]  WITH CHECK ADD  CONSTRAINT [NCMPolicyResourceMap_FK1] FOREIGN KEY([COMPPOLICY_ID])
REFERENCES [dbo].[NCMCompliancePolicy] ([COMPPOLICY_ID])
GO
ALTER TABLE [dbo].[NCMPolicyResourceMap] CHECK CONSTRAINT [NCMPolicyResourceMap_FK1]
GO
ALTER TABLE [dbo].[NCMPolicyResourceMap]  WITH CHECK ADD  CONSTRAINT [NCMPolicyResourceMap_FK2] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NetworkElement] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMPolicyResourceMap] CHECK CONSTRAINT [NCMPolicyResourceMap_FK2]
GO
