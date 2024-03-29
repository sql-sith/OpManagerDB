USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SnmpInteractionSpec]    Script Date: 6/29/2019 5:51:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SnmpInteractionSpec](
	[InteractionID] [varchar](150) NOT NULL,
	[InteractionVerb] [int] NOT NULL,
	[FunctionName] [varchar](50) NOT NULL,
	[RequestTimeout] [int] NOT NULL,
	[Retries] [int] NOT NULL,
	[VarBindCount] [int] NULL,
	[Protocol] [varchar](25) NOT NULL,
 CONSTRAINT [INTERACTION_ID_KEY] PRIMARY KEY CLUSTERED 
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__32786786]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__32786786] ON [dbo].[SnmpInteractionSpec]
(
	[InteractionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SnmpInteractionSpec]  WITH CHECK ADD  CONSTRAINT [SNMPISPEC_FK] FOREIGN KEY([InteractionID])
REFERENCES [dbo].[InteractionSpec] ([InteractionID])
GO
ALTER TABLE [dbo].[SnmpInteractionSpec] CHECK CONSTRAINT [SNMPISPEC_FK]
GO
