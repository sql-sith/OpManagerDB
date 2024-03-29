USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[RouterCLI]    Script Date: 6/29/2019 5:51:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouterCLI](
	[RID] [bigint] NOT NULL,
	[DEVICETYPE] [varchar](50) NOT NULL,
	[USERNAME] [varchar](150) NULL,
	[PASSWORD] [varchar](150) NOT NULL,
	[SYSPROMPT] [varchar](50) NOT NULL,
	[ENABPASSWORD] [varchar](150) NULL,
	[ENABSYSPROMPT] [varchar](50) NULL,
	[ENUSERNAME] [varchar](150) NULL,
 CONSTRAINT [RouterCLI_PK] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__609822451]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__609822451] ON [dbo].[RouterCLI]
(
	[RID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RouterCLI]  WITH CHECK ADD  CONSTRAINT [RouterCLI_FK] FOREIGN KEY([RID])
REFERENCES [dbo].[RouterDetails] ([ID])
GO
ALTER TABLE [dbo].[RouterCLI] CHECK CONSTRAINT [RouterCLI_FK]
GO
