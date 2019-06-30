USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IBMDSPort]    Script Date: 6/29/2019 5:48:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IBMDSPort](
	[PORT_ID] [bigint] NOT NULL,
	[LINK_TECHNOLOGY] [varchar](250) NOT NULL,
	[USAGE_RESTRICTION] [varchar](250) NOT NULL,
	[LOCATION] [varchar](250) NOT NULL,
 CONSTRAINT [IBMDSPort_PK1] PRIMARY KEY CLUSTERED 
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__319922607]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__319922607] ON [dbo].[IBMDSPort]
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IBMDSPort]  WITH CHECK ADD  CONSTRAINT [IBMDSPort_FK1] FOREIGN KEY([PORT_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[IBMDSPort] CHECK CONSTRAINT [IBMDSPort_FK1]
GO
