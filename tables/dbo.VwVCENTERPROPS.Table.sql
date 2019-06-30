USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[VwVCENTERPROPS]    Script Date: 6/29/2019 5:53:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VwVCENTERPROPS](
	[VCENTER_ID] [bigint] NOT NULL,
	[INSTANCE_UUID] [varchar](150) NOT NULL,
	[MOID] [bigint] NOT NULL,
	[VCENTER_OS] [varchar](100) NOT NULL,
	[VCENTER_BUILD_NUMBER] [varchar](50) NOT NULL,
	[VCENTER_VERSION] [varchar](50) NOT NULL,
	[VCENTER_VENDOR] [varchar](100) NOT NULL,
	[VCENTER_APIVERSION] [varchar](50) NOT NULL,
	[VCENTER_APITYPE] [varchar](50) NOT NULL,
	[PRODUCT_TYPE] [varchar](50) NOT NULL,
	[UPDATE_INTERVAL] [bigint] NULL,
	[LASTUPDATEDTIME] [datetime] NULL,
 CONSTRAINT [VwVCENTERPROPS_PK] PRIMARY KEY CLUSTERED 
(
	[VCENTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwVCENTERPROPS_UK0] UNIQUE NONCLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [VwVCENTERPROPS_UK1] UNIQUE NONCLUSTERED 
(
	[INSTANCE_UUID] ASC,
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1017222733]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1017222733] ON [dbo].[VwVCENTERPROPS]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VwVCENTERPROPS] ADD  DEFAULT ('2') FOR [UPDATE_INTERVAL]
GO
ALTER TABLE [dbo].[VwVCENTERPROPS]  WITH CHECK ADD  CONSTRAINT [VwVCENTERPROPS_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[VwVCENTERPROPS] CHECK CONSTRAINT [VwVCENTERPROPS_FK1]
GO
