USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ProvisioningVariantProps]    Script Date: 6/29/2019 5:50:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProvisioningVariantProps](
	[VARIANTID] [varchar](50) NOT NULL,
	[PROPNAME] [varchar](50) NULL,
	[PROPVAL] [varchar](50) NULL
) ON [PRIMARY]
GO
