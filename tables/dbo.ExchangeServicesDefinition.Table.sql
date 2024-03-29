USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ExchangeServicesDefinition]    Script Date: 6/29/2019 5:47:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeServicesDefinition](
	[SERVICEDEFINITIONID] [int] NOT NULL,
	[SUPPORTEDPLATFORMS] [int] NOT NULL,
	[AUTOADD] [bit] NOT NULL,
 CONSTRAINT [ExchangeServicesDefinition_PK1] PRIMARY KEY CLUSTERED 
(
	[SERVICEDEFINITIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1626058049]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1626058049] ON [dbo].[ExchangeServicesDefinition]
(
	[SERVICEDEFINITIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ExchangeServicesDefinition] ADD  DEFAULT ('2') FOR [SUPPORTEDPLATFORMS]
GO
ALTER TABLE [dbo].[ExchangeServicesDefinition] ADD  DEFAULT ((1)) FOR [AUTOADD]
GO
ALTER TABLE [dbo].[ExchangeServicesDefinition]  WITH CHECK ADD  CONSTRAINT [ExchangeServicesDefinition_FK1] FOREIGN KEY([SERVICEDEFINITIONID])
REFERENCES [dbo].[ServicesDefinition] ([SERVICEDEFINITIONID])
GO
ALTER TABLE [dbo].[ExchangeServicesDefinition] CHECK CONSTRAINT [ExchangeServicesDefinition_FK1]
GO
