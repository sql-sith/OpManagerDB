USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GrpPortRange]    Script Date: 6/29/2019 5:48:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrpPortRange](
	[ID] [int] NOT NULL,
	[IP_GROUP_ID] [int] NOT NULL,
	[START_PORT_RANGE] [int] NOT NULL,
	[END_PORT_RANGE] [int] NOT NULL,
 CONSTRAINT [PORT_ID_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__616454131]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__616454131] ON [dbo].[GrpPortRange]
(
	[IP_GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GrpPortRange]  WITH CHECK ADD  CONSTRAINT [GrpPortRange_FK] FOREIGN KEY([IP_GROUP_ID])
REFERENCES [dbo].[IDGen] ([UNQ_ID])
GO
ALTER TABLE [dbo].[GrpPortRange] CHECK CONSTRAINT [GrpPortRange_FK]
GO
