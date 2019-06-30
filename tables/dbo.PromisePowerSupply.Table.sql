USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[PromisePowerSupply]    Script Date: 6/29/2019 5:50:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PromisePowerSupply](
	[RAID_ID] [bigint] NOT NULL,
	[ENCLOSURE_ID] [int] NOT NULL,
	[PS_ID] [int] NOT NULL,
	[PS_STATUS] [varchar](250) NOT NULL,
 CONSTRAINT [PromisePowerSupply_PK] PRIMARY KEY CLUSTERED 
(
	[RAID_ID] ASC,
	[ENCLOSURE_ID] ASC,
	[PS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_139881766]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_139881766] ON [dbo].[PromisePowerSupply]
(
	[RAID_ID] ASC,
	[ENCLOSURE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PromisePowerSupply]  WITH CHECK ADD  CONSTRAINT [PromisePowerSupply_FK1] FOREIGN KEY([RAID_ID], [ENCLOSURE_ID])
REFERENCES [dbo].[PromiseEnclosure] ([RAID_ID], [ENCLOSURE_ID])
GO
ALTER TABLE [dbo].[PromisePowerSupply] CHECK CONSTRAINT [PromisePowerSupply_FK1]
GO
