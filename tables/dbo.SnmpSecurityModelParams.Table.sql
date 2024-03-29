USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SnmpSecurityModelParams]    Script Date: 6/29/2019 5:51:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SnmpSecurityModelParams](
	[SSParamsID] [varchar](50) NOT NULL,
	[SecurityModel] [int] NOT NULL,
	[EntryClassName] [varchar](50) NOT NULL,
	[TableClassName] [varchar](50) NOT NULL,
	[InitializerClassName] [varchar](60) NOT NULL,
 CONSTRAINT [SNMPSECURITYPARAMS_KEY] PRIMARY KEY CLUSTERED 
(
	[SSParamsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
