USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PAREthernetPortEndPoint]    Script Date: 6/29/2019 5:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PAREthernetPortEndPoint](
	[PORT_ID] [bigint] NOT NULL,
	[EP_NAME] [varchar](250) NOT NULL,
	[PROTOCOL_TYPE] [varchar](250) NOT NULL,
	[IPV4_ADDRESS] [varchar](250) NOT NULL,
	[SUBNET] [varchar](250) NOT NULL,
	[PROTOCOL_IF_TYPE] [varchar](250) NOT NULL,
	[ADDRESS_ORIGIN] [varchar](250) NOT NULL,
	[GATEWAY] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PAREthernetPortEndPoint_PK] PRIMARY KEY CLUSTERED 
(
	[PORT_ID] ASC,
	[EP_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1939693983]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1939693983] ON [dbo].[HP3PAREthernetPortEndPoint]
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PAREthernetPortEndPoint]  WITH CHECK ADD  CONSTRAINT [HP3PAREthernetPortEndPoint_FK] FOREIGN KEY([PORT_ID])
REFERENCES [dbo].[HP3PAREthernetPort] ([PORT_ID])
GO
ALTER TABLE [dbo].[HP3PAREthernetPortEndPoint] CHECK CONSTRAINT [HP3PAREthernetPortEndPoint_FK]
GO
