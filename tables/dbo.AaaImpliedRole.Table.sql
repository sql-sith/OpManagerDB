USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[AaaImpliedRole]    Script Date: 6/29/2019 5:45:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AaaImpliedRole](
	[ROLE_ID] [bigint] NOT NULL,
	[IMPLIEDROLE_ID] [bigint] NOT NULL,
 CONSTRAINT [AaaImpliedRole_PK] PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC,
	[IMPLIEDROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1502698710]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1502698710] ON [dbo].[AaaImpliedRole]
(
	[IMPLIEDROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_505715175]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_505715175] ON [dbo].[AaaImpliedRole]
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AaaImpliedRole]  WITH CHECK ADD  CONSTRAINT [AaaImpliedRole_FK] FOREIGN KEY([ROLE_ID])
REFERENCES [dbo].[AaaRole] ([ROLE_ID])
GO
ALTER TABLE [dbo].[AaaImpliedRole] CHECK CONSTRAINT [AaaImpliedRole_FK]
GO
ALTER TABLE [dbo].[AaaImpliedRole]  WITH CHECK ADD  CONSTRAINT [AaaImpliedRole_FK1] FOREIGN KEY([IMPLIEDROLE_ID])
REFERENCES [dbo].[AaaRole] ([ROLE_ID])
GO
ALTER TABLE [dbo].[AaaImpliedRole] CHECK CONSTRAINT [AaaImpliedRole_FK1]
GO
