USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ADServicesDefinition]    Script Date: 6/29/2019 5:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADServicesDefinition](
	[SERVICEDEFINITIONID] [int] NOT NULL,
	[AUTOADD] [bit] NOT NULL,
 CONSTRAINT [ADServicesDefinition_PK1] PRIMARY KEY CLUSTERED 
(
	[SERVICEDEFINITIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__227534047]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__227534047] ON [dbo].[ADServicesDefinition]
(
	[SERVICEDEFINITIONID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ADServicesDefinition] ADD  DEFAULT ((1)) FOR [AUTOADD]
GO
ALTER TABLE [dbo].[ADServicesDefinition]  WITH CHECK ADD  CONSTRAINT [ADServicesDefinition_FK1] FOREIGN KEY([SERVICEDEFINITIONID])
REFERENCES [dbo].[ServicesDefinition] ([SERVICEDEFINITIONID])
GO
ALTER TABLE [dbo].[ADServicesDefinition] CHECK CONSTRAINT [ADServicesDefinition_FK1]
GO
