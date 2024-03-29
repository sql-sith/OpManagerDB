USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CustomFieldsForInterfaces]    Script Date: 6/29/2019 5:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomFieldsForInterfaces](
	[DEVICENAME] [varchar](250) NOT NULL,
	[UDF1] [varchar](250) NULL,
	[UDF2] [varchar](250) NULL,
	[UDF3] [varchar](250) NULL,
	[UDF4] [varchar](250) NULL,
	[UDF5] [varchar](250) NULL,
	[UDF6] [varchar](250) NULL,
	[UDF7] [varchar](250) NULL,
	[UDF8] [varchar](250) NULL,
	[UDF9] [varchar](250) NULL,
	[UDF10] [varchar](250) NULL,
 CONSTRAINT [CustomFieldsForInterfaces_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
