USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[BeanInterceptor]    Script Date: 6/29/2019 5:46:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BeanInterceptor](
	[BEAN_INCP_ID] [bigint] NOT NULL,
	[ORDER_NO] [int] NOT NULL,
	[BEAN_ID] [bigint] NOT NULL,
	[INCP_NAME] [varchar](100) NULL,
	[CLASSNAME] [varchar](250) NOT NULL,
 CONSTRAINT [BeanInterceptor_PK] PRIMARY KEY CLUSTERED 
(
	[BEAN_INCP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [BeanInterceptor_UK] UNIQUE NONCLUSTERED 
(
	[ORDER_NO] ASC,
	[BEAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1066278641]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1066278641] ON [dbo].[BeanInterceptor]
(
	[BEAN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BeanInterceptor]  WITH CHECK ADD  CONSTRAINT [BeanInterceptor_FK] FOREIGN KEY([BEAN_ID])
REFERENCES [dbo].[Bean] ([BEAN_ID])
GO
ALTER TABLE [dbo].[BeanInterceptor] CHECK CONSTRAINT [BeanInterceptor_FK]
GO
