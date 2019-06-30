USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ModeSpecificServiceProviders]    Script Date: 6/29/2019 5:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModeSpecificServiceProviders](
	[CVTYPEID] [bigint] NOT NULL,
	[COMM_MODE] [int] NOT NULL,
 CONSTRAINT [ModeSpecificSPs_PK] PRIMARY KEY CLUSTERED 
(
	[CVTYPEID] ASC,
	[COMM_MODE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1881282149]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1881282149] ON [dbo].[ModeSpecificServiceProviders]
(
	[CVTYPEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ModeSpecificServiceProviders]  WITH CHECK ADD  CONSTRAINT [MSSPs_CVSP_FK] FOREIGN KEY([CVTYPEID])
REFERENCES [dbo].[CustomViewServiceProviders] ([CVTYPEID])
GO
ALTER TABLE [dbo].[ModeSpecificServiceProviders] CHECK CONSTRAINT [MSSPs_CVSP_FK]
GO
