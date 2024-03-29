USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPEVADiskEnclosurePSRow]    Script Date: 6/29/2019 5:48:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPEVADiskEnclosurePSRow](
	[DEVICE_ID] [bigint] NOT NULL,
	[ENCLOSURE_NAME] [varchar](160) NOT NULL,
	[PS_NAME] [varchar](160) NOT NULL,
	[OUTPUT_VOLTAGE] [varchar](250) NULL,
	[OUTPUT_CURRENT] [varchar](250) NULL,
	[VOLTAGE_SEVERITY] [varchar](250) NULL,
	[CURRENT_SEVERITY] [varchar](250) NULL,
 CONSTRAINT [HPEVADISKENCLOSUREPS_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[ENCLOSURE_NAME] ASC,
	[PS_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2120887229]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2120887229] ON [dbo].[HPEVADiskEnclosurePSRow]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPEVADiskEnclosurePSRow]  WITH CHECK ADD  CONSTRAINT [HPEVADISKENCLOSUREPS_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[HPEVARaid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPEVADiskEnclosurePSRow] CHECK CONSTRAINT [HPEVADISKENCLOSUREPS_FK1]
GO
