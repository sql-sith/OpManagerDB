USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBM3584ComputerSystemTable]    Script Date: 6/29/2019 5:48:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBM3584ComputerSystemTable](
	[DEVICE_ID] [bigint] NOT NULL,
	[ELEMENT_NAME] [varchar](250) NULL,
	[OPER_STATUS] [varchar](250) NULL,
	[NAME] [varchar](250) NULL,
	[NAME_FORMAT] [varchar](250) NULL,
	[DEDICATED_ELEMENT] [varchar](250) NULL,
	[PRIMARY_OWNER_CONTACT] [varchar](250) NULL,
	[PRIMARY_OWNER_NAME] [varchar](250) NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[CAPTION] [varchar](250) NULL,
	[SOFTWARE_ELEMENT_INDEX] [int] NULL,
 CONSTRAINT [IBM3584ComputerSystemTable_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1079355519]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1079355519] ON [dbo].[IBM3584ComputerSystemTable]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBM3584ComputerSystemTable]  WITH CHECK ADD  CONSTRAINT [IBM3584ComputerSystemTable_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBM3584ComputerSystemTable] CHECK CONSTRAINT [IBM3584ComputerSystemTable_FK1]
GO
