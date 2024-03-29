USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AppSMSVsNP]    Script Date: 6/29/2019 5:46:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppSMSVsNP](
	[ID] [bigint] NOT NULL,
	[PROFILEID] [bigint] NOT NULL,
 CONSTRAINT [AppSMSVsNP_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_361211076]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_361211076] ON [dbo].[AppSMSVsNP]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_361211077]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_361211077] ON [dbo].[AppSMSVsNP]
(
	[PROFILEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AppSMSVsNP]  WITH CHECK ADD  CONSTRAINT [AppSMSVsNP_FK1] FOREIGN KEY([ID])
REFERENCES [dbo].[AppSMSInfo] ([ID])
GO
ALTER TABLE [dbo].[AppSMSVsNP] CHECK CONSTRAINT [AppSMSVsNP_FK1]
GO
ALTER TABLE [dbo].[AppSMSVsNP]  WITH CHECK ADD  CONSTRAINT [AppSMSVsNP_FK2] FOREIGN KEY([PROFILEID])
REFERENCES [dbo].[ModemSMSProfile] ([PROFILEID])
GO
ALTER TABLE [dbo].[AppSMSVsNP] CHECK CONSTRAINT [AppSMSVsNP_FK2]
GO
