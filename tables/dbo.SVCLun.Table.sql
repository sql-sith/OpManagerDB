USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SVCLun]    Script Date: 6/29/2019 5:52:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SVCLun](
	[DEVICE_ID] [bigint] NOT NULL,
	[LUN_NAME] [varchar](250) NOT NULL,
	[LUN_ID] [varchar](250) NOT NULL,
	[OPERATIONALSTATUS] [varchar](250) NOT NULL,
	[ACCESS] [varchar](250) NOT NULL,
	[LUN_CAPACITY] [varchar](250) NOT NULL,
	[LUN_MODE] [varchar](250) NOT NULL,
	[PRIMORDIAL] [varchar](250) NOT NULL,
	[ASSOCIATED_POOL_ID] [varchar](250) NOT NULL,
	[ASSOCIATED_POOL_NAME] [varchar](250) NOT NULL,
	[LUN_SLOT_LOCATION] [varchar](250) NOT NULL,
	[ASSOCIATED_VDISKS] [varchar](500) NOT NULL,
 CONSTRAINT [SVCLun_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[LUN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1258903950]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1258903950] ON [dbo].[SVCLun]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVCLun]  WITH CHECK ADD  CONSTRAINT [SVCLun_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[SVCLun] CHECK CONSTRAINT [SVCLun_FK1]
GO
