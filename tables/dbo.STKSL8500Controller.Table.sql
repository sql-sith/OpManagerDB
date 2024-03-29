USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[STKSL8500Controller]    Script Date: 6/29/2019 5:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STKSL8500Controller](
	[DEVICE_ID] [bigint] NOT NULL,
	[ID] [varchar](250) NOT NULL,
	[ADDRESS] [varchar](250) NOT NULL,
	[SERIAL_NO] [varchar](250) NOT NULL,
	[STATUS] [varchar](250) NOT NULL,
	[FAULTLED_STATE] [varchar](250) NOT NULL,
	[OPERATIONAL_STATUS] [varchar](250) NOT NULL,
	[VERSION] [varchar](250) NOT NULL,
	[FIRM_VERSION] [varchar](250) NOT NULL,
	[AVAILABILITY_STATUS] [varchar](250) NOT NULL,
 CONSTRAINT [STKSL8500Controller_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_428053289]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_428053289] ON [dbo].[STKSL8500Controller]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[STKSL8500Controller]  WITH CHECK ADD  CONSTRAINT [STKSL8500Controller_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[STKSL8500Controller] CHECK CONSTRAINT [STKSL8500Controller_FK1]
GO
