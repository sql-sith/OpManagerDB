USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SnmpConnectionSpec]    Script Date: 6/29/2019 5:51:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SnmpConnectionSpec](
	[ConnectionID] [varchar](250) NOT NULL,
	[SnmpVersion] [int] NOT NULL,
	[TransportParamsID] [varchar](150) NOT NULL,
	[DedicatedConnection] [bit] NOT NULL,
	[Community] [varchar](255) NULL,
	[WriteCommunity] [varbinary](max) NULL,
	[InterPacketDelay] [int] NULL,
	[ThreadPriority] [int] NULL,
	[Protocol] [varchar](25) NOT NULL,
	[AutoInformAck] [bit] NULL,
 CONSTRAINT [SNMPCSPEC_KEY] PRIMARY KEY CLUSTERED 
(
	[ConnectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__1899714204]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1899714204] ON [dbo].[SnmpConnectionSpec]
(
	[ConnectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1601408340]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1601408340] ON [dbo].[SnmpConnectionSpec]
(
	[TransportParamsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SnmpConnectionSpec]  WITH CHECK ADD  CONSTRAINT [SNMPCSPEC_FK] FOREIGN KEY([ConnectionID])
REFERENCES [dbo].[ConnectionSpec] ([ConnectionID])
GO
ALTER TABLE [dbo].[SnmpConnectionSpec] CHECK CONSTRAINT [SNMPCSPEC_FK]
GO
ALTER TABLE [dbo].[SnmpConnectionSpec]  WITH CHECK ADD  CONSTRAINT [SNMPTRANSPARAMS_FK] FOREIGN KEY([TransportParamsID])
REFERENCES [dbo].[TransportParams] ([TransportParamsID])
GO
ALTER TABLE [dbo].[SnmpConnectionSpec] CHECK CONSTRAINT [SNMPTRANSPARAMS_FK]
GO
