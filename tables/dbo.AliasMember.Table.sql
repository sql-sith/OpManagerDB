USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AliasMember]    Script Date: 6/29/2019 5:45:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AliasMember](
	[DEVICE_ID] [bigint] NOT NULL,
	[ALIAS_NAME] [varchar](160) NOT NULL,
	[MEMBER] [varchar](160) NOT NULL,
 CONSTRAINT [ALIASMEMBER_PK] PRIMARY KEY CLUSTERED 
(
	[DEVICE_ID] ASC,
	[ALIAS_NAME] ASC,
	[MEMBER] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__382172393]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__382172393] ON [dbo].[AliasMember]
(
	[DEVICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AliasMember]  WITH CHECK ADD  CONSTRAINT [ALIASMEMBER_FK1] FOREIGN KEY([DEVICE_ID])
REFERENCES [dbo].[SanManagedObject] ([DEVICE_ID])
GO
ALTER TABLE [dbo].[AliasMember] CHECK CONSTRAINT [ALIASMEMBER_FK1]
GO
