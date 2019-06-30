USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[FcPort]    Script Date: 6/29/2019 5:47:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FcPort](
	[PORT_ID] [bigint] NOT NULL,
	[FC_ID] [varchar](250) NOT NULL,
	[TYPE] [varchar](250) NOT NULL,
	[PORT_DESCR] [varchar](250) NULL,
 CONSTRAINT [FCPORT_PK] PRIMARY KEY CLUSTERED 
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__199122165]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__199122165] ON [dbo].[FcPort]
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FcPort] ADD  DEFAULT ('Not Available') FOR [PORT_DESCR]
GO
ALTER TABLE [dbo].[FcPort]  WITH CHECK ADD  CONSTRAINT [FCPORT_FK1] FOREIGN KEY([PORT_ID])
REFERENCES [dbo].[Port] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[FcPort] CHECK CONSTRAINT [FCPORT_FK1]
GO
