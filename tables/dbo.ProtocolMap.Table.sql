USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProtocolMap]    Script Date: 6/29/2019 5:50:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProtocolMap](
	[PROT_ID] [int] NOT NULL,
	[PROTOCOLNAME] [varchar](255) NOT NULL,
 CONSTRAINT [PROT_ID_PK] PRIMARY KEY CLUSTERED 
(
	[PROT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [ProtocolMap_UK0] UNIQUE NONCLUSTERED 
(
	[PROTOCOLNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
