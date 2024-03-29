USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLITransportProtocol]    Script Date: 6/29/2019 5:46:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLITransportProtocol](
	[TransportProtocolName] [varchar](50) NOT NULL,
	[TransportProviderClassName] [varchar](100) NOT NULL,
	[ProtocolOptionsClassName] [varchar](100) NOT NULL,
 CONSTRAINT [TransportProtocol_PK] PRIMARY KEY CLUSTERED 
(
	[TransportProtocolName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
