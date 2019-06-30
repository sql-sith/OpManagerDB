USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBM3584SoftwareElement]    Script Date: 6/29/2019 5:48:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBM3584SoftwareElement](
	[DEVICE_ID] [bigint] NOT NULL,
	[SOFTWARE_ELEMENT_INDEX] [int] NOT NULL,
	[SOFTWARE_ELMT_NAME] [varchar](250) NULL,
	[SOFTWARE_ELMT_VERSION] [varchar](250) NULL,
	[SOFTWARE_ELEMENTID] [varchar](250) NULL,
	[MANUFACTURER] [varchar](250) NULL,
	[BUILD_NUMBER] [varchar](250) NULL,
	[SERIAL_NO] [varchar](250) NULL,
	[CODE_SET] [varchar](250) NULL,
	[IDENTIFICATION_CODE] [varchar](250) NULL,
	[LANGUAGE_EDITION] [varchar](250) NULL,
	[INSTANCE_ID] [varchar](250) NULL,
 CONSTRAINT [IBM3584SoftwareElement_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[SOFTWARE_ELEMENT_INDEX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1075888528]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1075888528] ON [dbo].[IBM3584SoftwareElement]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBM3584SoftwareElement]  WITH CHECK ADD  CONSTRAINT [IBM3584SoftwareElement_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBM3584SoftwareElement] CHECK CONSTRAINT [IBM3584SoftwareElement_FK1]
GO
