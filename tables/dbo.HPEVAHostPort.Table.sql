USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HPEVAHostPort]    Script Date: 6/29/2019 5:48:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HPEVAHostPort](
	[DEVICE_ID] [bigint] NOT NULL,
	[HOST_NAME] [varchar](160) NOT NULL,
	[PORT_NAME] [varchar](160) NOT NULL,
	[PORT_WWN] [varchar](250) NOT NULL,
 CONSTRAINT [HPEVAHOSTPORT_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[HOST_NAME] ASC,
	[PORT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_641153182]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_641153182] ON [dbo].[HPEVAHostPort]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HPEVAHostPort]  WITH CHECK ADD  CONSTRAINT [HPEVAHOSTPORT_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[HPEVARaid] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[HPEVAHostPort] CHECK CONSTRAINT [HPEVAHOSTPORT_FK1]
GO
