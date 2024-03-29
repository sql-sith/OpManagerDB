USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SUBNET_V6]    Script Date: 6/29/2019 5:52:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUBNET_V6](
	[SUBNET_V6_ID] [bigint] NOT NULL,
	[ADDRESS_PREFIX] [varchar](45) NOT NULL,
	[SUBNET_V6_NAME] [varchar](100) NULL,
	[SUBNET_V6_DESCR] [varchar](300) NULL,
	[PREFIX_LENGTH] [int] NOT NULL,
	[PARENT_ID] [bigint] NULL,
	[IS_LEAF] [bit] NOT NULL,
	[CREATED_BY] [varchar](100) NULL,
	[CREATED_TIME] [datetime] NULL,
 CONSTRAINT [SUBNET_V6_PK] PRIMARY KEY CLUSTERED 
(
	[SUBNET_V6_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__143119089]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__143119089] ON [dbo].[SUBNET_V6]
(
	[PARENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SUBNET_V6] ADD  DEFAULT ((0)) FOR [IS_LEAF]
GO
ALTER TABLE [dbo].[SUBNET_V6]  WITH CHECK ADD  CONSTRAINT [SUBNET_V6_FK1] FOREIGN KEY([PARENT_ID])
REFERENCES [dbo].[SUBNET_V6] ([SUBNET_V6_ID])
GO
ALTER TABLE [dbo].[SUBNET_V6] CHECK CONSTRAINT [SUBNET_V6_FK1]
GO
