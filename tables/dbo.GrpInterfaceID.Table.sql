USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GrpInterfaceID]    Script Date: 6/29/2019 5:47:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrpInterfaceID](
	[ID] [int] NOT NULL,
	[IP_GROUP_ID] [int] NOT NULL,
	[INTERFACE_ID] [int] NOT NULL,
 CONSTRAINT [GRP_INTER_ID_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__897527636]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__897527636] ON [dbo].[GrpInterfaceID]
(
	[INTERFACE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1322902878]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1322902878] ON [dbo].[GrpInterfaceID]
(
	[IP_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GrpInterfaceID]  WITH CHECK ADD  CONSTRAINT [GRP_INTER_ID_FK] FOREIGN KEY([INTERFACE_ID])
REFERENCES [dbo].[NetFlow_Interface] ([INTERFACE_ID])
GO
ALTER TABLE [dbo].[GrpInterfaceID] CHECK CONSTRAINT [GRP_INTER_ID_FK]
GO
ALTER TABLE [dbo].[GrpInterfaceID]  WITH CHECK ADD  CONSTRAINT [INTERGRP_ID_FK1] FOREIGN KEY([IP_GROUP_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[GrpInterfaceID] CHECK CONSTRAINT [INTERGRP_ID_FK1]
GO
