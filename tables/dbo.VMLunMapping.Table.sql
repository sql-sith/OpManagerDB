USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VMLunMapping]    Script Date: 6/29/2019 5:52:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VMLunMapping](
	[VMDISK_ID] [bigint] NOT NULL,
	[VM_ID] [bigint] NOT NULL,
	[LUN_ID] [bigint] NULL,
	[CANONICAL_NAME] [varchar](150) NOT NULL,
 CONSTRAINT [VMLunMapping_PK] PRIMARY KEY CLUSTERED 
(
	[VMDISK_ID] ASC,
	[VM_ID] ASC,
	[CANONICAL_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1226525293]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1226525293] ON [dbo].[VMLunMapping]
(
	[VM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VMLunMapping]  WITH CHECK ADD  CONSTRAINT [VMLunMapping_FK1] FOREIGN KEY([VM_ID])
REFERENCES [dbo].[VMProperties] ([VM_ID])
GO
ALTER TABLE [dbo].[VMLunMapping] CHECK CONSTRAINT [VMLunMapping_FK1]
GO
