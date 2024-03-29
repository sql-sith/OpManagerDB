USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CLITransportParameters]    Script Date: 6/29/2019 5:46:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLITransportParameters](
	[TransportParamsID] [varchar](250) NOT NULL,
	[PropertyName] [varchar](50) NOT NULL,
	[PropertyValue] [varbinary](max) NOT NULL,
 CONSTRAINT [TransportParams_PK] PRIMARY KEY CLUSTERED 
(
	[TransportParamsID] ASC,
	[PropertyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1313611635]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1313611635] ON [dbo].[CLITransportParameters]
(
	[TransportParamsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CLITransportParameters]  WITH CHECK ADD  CONSTRAINT [CLITPM_FK] FOREIGN KEY([TransportParamsID])
REFERENCES [dbo].[CLIConnectionSpec] ([ConnectionID])
GO
ALTER TABLE [dbo].[CLITransportParameters] CHECK CONSTRAINT [CLITPM_FK]
GO
