USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProtocolIdentifiers]    Script Date: 6/29/2019 5:50:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtocolIdentifiers](
	[PI_ID] [bigint] NOT NULL,
	[NAME] [nvarchar](30) NOT NULL,
	[PROTOCOL_ID] [bigint] NULL,
	[REGEX] [bit] NULL,
 CONSTRAINT [ProtocolIdentifier_PK] PRIMARY KEY CLUSTERED 
(
	[PI_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1260194894]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1260194894] ON [dbo].[ProtocolIdentifiers]
(
	[PROTOCOL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ProtocolIdentifiers] ADD  DEFAULT ((0)) FOR [REGEX]
GO
ALTER TABLE [dbo].[ProtocolIdentifiers]  WITH CHECK ADD  CONSTRAINT [ProtocolIdentifier_FK1] FOREIGN KEY([PROTOCOL_ID])
REFERENCES [dbo].[Protocols] ([PROTOCOL_ID])
GO
ALTER TABLE [dbo].[ProtocolIdentifiers] CHECK CONSTRAINT [ProtocolIdentifier_FK1]
GO
