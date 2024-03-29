USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GrpAppID]    Script Date: 6/29/2019 5:47:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrpAppID](
	[ID] [int] NOT NULL,
	[IP_GROUP_ID] [int] NOT NULL,
	[APP_ID] [int] NOT NULL,
 CONSTRAINT [GRP_APP_ID_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1423205475]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1423205475] ON [dbo].[GrpAppID]
(
	[IP_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_367575985]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_367575985] ON [dbo].[GrpAppID]
(
	[APP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GrpAppID]  WITH CHECK ADD  CONSTRAINT [APPGRP_ID_FK1] FOREIGN KEY([IP_GROUP_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[GrpAppID] CHECK CONSTRAINT [APPGRP_ID_FK1]
GO
ALTER TABLE [dbo].[GrpAppID]  WITH CHECK ADD  CONSTRAINT [GRP_APP_ID_FK] FOREIGN KEY([APP_ID])
REFERENCES [dbo].[ApplicationNames] ([APP_ID])
GO
ALTER TABLE [dbo].[GrpAppID] CHECK CONSTRAINT [GRP_APP_ID_FK]
GO
