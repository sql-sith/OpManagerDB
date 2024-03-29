USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[NCMCredentialValidity]    Script Date: 6/29/2019 5:49:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NCMCredentialValidity](
	[RESOURCEID] [bigint] NOT NULL,
	[VALIDITY] [bit] NOT NULL,
 CONSTRAINT [NCMCredentialValidity_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2062508338]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2062508338] ON [dbo].[NCMCredentialValidity]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCMCredentialValidity] ADD  DEFAULT ((0)) FOR [VALIDITY]
GO
ALTER TABLE [dbo].[NCMCredentialValidity]  WITH CHECK ADD  CONSTRAINT [NCMCredentialValidity_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[NCMDevices] ([RESOURCEID])
GO
ALTER TABLE [dbo].[NCMCredentialValidity] CHECK CONSTRAINT [NCMCredentialValidity_FK1]
GO
