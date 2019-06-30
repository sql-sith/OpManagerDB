USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SnmpV3ConnectionSpec]    Script Date: 6/29/2019 5:51:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SnmpV3ConnectionSpec](
	[ConnectionID] [varchar](250) NOT NULL,
	[SSParamsID] [varchar](50) NOT NULL,
	[ContextID] [varchar](32) NULL,
	[ContextName] [varchar](25) NULL,
	[SecurityLevel] [int] NOT NULL,
 CONSTRAINT [SNMPV3CSPEC_KEY] PRIMARY KEY CLUSTERED 
(
	[ConnectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__469629600]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__469629600] ON [dbo].[SnmpV3ConnectionSpec]
(
	[SSParamsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX_1007480705]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1007480705] ON [dbo].[SnmpV3ConnectionSpec]
(
	[ConnectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SnmpV3ConnectionSpec]  WITH CHECK ADD  CONSTRAINT [SNMPSECURITYPARAMS_FK] FOREIGN KEY([SSParamsID])
REFERENCES [dbo].[SnmpSecurityModelParams] ([SSParamsID])
GO
ALTER TABLE [dbo].[SnmpV3ConnectionSpec] CHECK CONSTRAINT [SNMPSECURITYPARAMS_FK]
GO
ALTER TABLE [dbo].[SnmpV3ConnectionSpec]  WITH CHECK ADD  CONSTRAINT [SNMPV3CSPEC_FK] FOREIGN KEY([ConnectionID])
REFERENCES [dbo].[SnmpConnectionSpec] ([ConnectionID])
GO
ALTER TABLE [dbo].[SnmpV3ConnectionSpec] CHECK CONSTRAINT [SNMPV3CSPEC_FK]
GO
