USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[QosPolicyUpdateTime]    Script Date: 6/29/2019 5:50:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QosPolicyUpdateTime](
	[ROUTER_ID] [int] NOT NULL,
	[UPDATE_TIME] [bigint] NOT NULL,
 CONSTRAINT [QosPolicyUpdateTime_PKZ] PRIMARY KEY CLUSTERED 
(
	[ROUTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_723863079]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_723863079] ON [dbo].[QosPolicyUpdateTime]
(
	[ROUTER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QosPolicyUpdateTime]  WITH CHECK ADD  CONSTRAINT [QosPolicyUpdateTime_FK] FOREIGN KEY([ROUTER_ID])
REFERENCES [dbo].[NetFlow_Router] ([ROUTER_ID])
GO
ALTER TABLE [dbo].[QosPolicyUpdateTime] CHECK CONSTRAINT [QosPolicyUpdateTime_FK]
GO
