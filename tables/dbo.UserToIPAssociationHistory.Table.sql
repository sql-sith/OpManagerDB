USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UserToIPAssociationHistory]    Script Date: 6/29/2019 5:52:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserToIPAssociationHistory](
	[ID] [bigint] NOT NULL,
	[USERID] [bigint] NOT NULL,
	[IPADDRESS] [varchar](255) NULL,
	[STARTTIME] [bigint] NOT NULL,
	[ENDTIME] [bigint] NOT NULL,
 CONSTRAINT [UserToIPAssociationHistory_PK1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1938313837]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1938313837] ON [dbo].[UserToIPAssociationHistory]
(
	[USERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UserToIPAssociationHistory] ADD  DEFAULT ('-1') FOR [ENDTIME]
GO
ALTER TABLE [dbo].[UserToIPAssociationHistory]  WITH CHECK ADD  CONSTRAINT [UserToIPAssociationHistory_FK1] FOREIGN KEY([USERID])
REFERENCES [dbo].[UserMACAssociation] ([ID])
GO
ALTER TABLE [dbo].[UserToIPAssociationHistory] CHECK CONSTRAINT [UserToIPAssociationHistory_FK1]
GO
