USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[HP3PARFCPortEndPoint]    Script Date: 6/29/2019 5:48:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HP3PARFCPortEndPoint](
	[PORT_ID] [bigint] NOT NULL,
	[EP_NAME] [varchar](250) NOT NULL,
	[EP_DISPLAY_NAME] [varchar](250) NOT NULL,
	[ROLE] [varchar](250) NOT NULL,
	[CONN_TYPE] [varchar](250) NOT NULL,
	[CONN_MODE] [varchar](250) NOT NULL,
	[EP_STATUS] [varchar](250) NOT NULL,
 CONSTRAINT [HP3PARFCPortEndPoint_PK] PRIMARY KEY CLUSTERED 
(
	[PORT_ID] ASC,
	[EP_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__309672869]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__309672869] ON [dbo].[HP3PARFCPortEndPoint]
(
	[PORT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HP3PARFCPortEndPoint]  WITH CHECK ADD  CONSTRAINT [HP3PARFCPortEndPoint_FK] FOREIGN KEY([PORT_ID])
REFERENCES [dbo].[HP3PARFCPort] ([PORT_ID])
GO
ALTER TABLE [dbo].[HP3PARFCPortEndPoint] CHECK CONSTRAINT [HP3PARFCPortEndPoint_FK]
GO
