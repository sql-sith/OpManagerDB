USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[TippingpointIPS]    Script Date: 6/29/2019 5:52:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TippingpointIPS](
	[RESOURCEID] [bigint] NOT NULL,
	[VACCINE] [varchar](150) NOT NULL,
 CONSTRAINT [TippingpointIPS_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_2117899958]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_2117899958] ON [dbo].[TippingpointIPS]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TippingpointIPS] ADD  DEFAULT ('Not Available') FOR [VACCINE]
GO
ALTER TABLE [dbo].[TippingpointIPS]  WITH CHECK ADD  CONSTRAINT [TippingpointIPS_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMResource] ([RESOURCEID])
GO
ALTER TABLE [dbo].[TippingpointIPS] CHECK CONSTRAINT [TippingpointIPS_FK1]
GO
