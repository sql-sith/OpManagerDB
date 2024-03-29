USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[CustomFieldsForDevices]    Script Date: 6/29/2019 5:46:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomFieldsForDevices](
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
	[UDF11] [varchar](250) NULL,
	[UDF12] [varchar](250) NULL,
	[UDF13] [varchar](250) NULL,
	[UDF14] [varchar](250) NULL,
	[UDF15] [varchar](250) NULL,
	[UDF16] [varchar](250) NULL,
	[UDF17] [varchar](250) NULL,
	[UDF18] [varchar](250) NULL,
	[UDF19] [varchar](250) NULL,
	[UDF20] [varchar](250) NULL,
 CONSTRAINT [CustomFieldsForDevices_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICENAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
