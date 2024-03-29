USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SnmpV2Traps]    Script Date: 6/29/2019 5:51:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SnmpV2Traps](
	[PARSERID] [bigint] NOT NULL,
	[TRAPOID] [varchar](250) NOT NULL,
 CONSTRAINT [SnmpV2Traps_PK1] PRIMARY KEY CLUSTERED 
(
	[PARSERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1883977767]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1883977767] ON [dbo].[SnmpV2Traps]
(
	[PARSERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SnmpV2Traps]  WITH CHECK ADD  CONSTRAINT [SnmpV2Traps_FK1] FOREIGN KEY([PARSERID])
REFERENCES [dbo].[TrapParsers] ([PARSERID])
GO
ALTER TABLE [dbo].[SnmpV2Traps] CHECK CONSTRAINT [SnmpV2Traps_FK1]
GO
