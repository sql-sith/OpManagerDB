USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLIConnectionSpec]    Script Date: 6/29/2019 5:46:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIConnectionSpec](
	[ConnectionID] [varchar](250) NOT NULL,
	[Protocol] [varchar](25) NOT NULL,
	[DedicatedConnection] [bit] NULL,
	[IgnoreSplChar] [bit] NULL,
	[InterruptCmd] [varchar](50) NULL,
	[KeepAliveTimeout] [int] NULL,
	[TransportProtocolName] [varchar](50) NOT NULL,
 CONSTRAINT [CLIConnectionSpec_PK] PRIMARY KEY CLUSTERED 
(
	[ConnectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_494632807]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_494632807] ON [dbo].[CLIConnectionSpec]
(
	[TransportProtocolName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_877030695]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_877030695] ON [dbo].[CLIConnectionSpec]
(
	[ConnectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLIConnectionSpec]  WITH CHECK ADD  CONSTRAINT [CLICONSPEC_FK] FOREIGN KEY([ConnectionID])
REFERENCES [dbo].[ConnectionSpec] ([ConnectionID])
GO
ALTER TABLE [dbo].[CLIConnectionSpec] CHECK CONSTRAINT [CLICONSPEC_FK]
GO
ALTER TABLE [dbo].[CLIConnectionSpec]  WITH CHECK ADD  CONSTRAINT [CLICSPEC_TP_FK] FOREIGN KEY([TransportProtocolName])
REFERENCES [dbo].[CLITransportProtocol] ([TransportProtocolName])
GO
ALTER TABLE [dbo].[CLIConnectionSpec] CHECK CONSTRAINT [CLICSPEC_TP_FK]
GO
