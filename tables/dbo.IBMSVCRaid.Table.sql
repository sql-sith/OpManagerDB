USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBMSVCRaid]    Script Date: 6/29/2019 5:48:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBMSVCRaid](
	[DEVICE_ID] [bigint] NOT NULL,
	[NAME] [varchar](250) NULL,
	[STATISTICS_STATUS] [varchar](250) NULL,
	[FC_PORT_SPEED] [varchar](250) NULL,
 CONSTRAINT [IBMSVCRaid_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1701250403]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1701250403] ON [dbo].[IBMSVCRaid]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBMSVCRaid]  WITH CHECK ADD  CONSTRAINT [IBMSVCRaid_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[Raid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBMSVCRaid] CHECK CONSTRAINT [IBMSVCRaid_FK1]
GO
