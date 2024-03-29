USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[APObject]    Script Date: 6/29/2019 5:46:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[APObject](
	[MOID] [bigint] NOT NULL,
	[PARENTMOID] [bigint] NOT NULL,
	[NAME] [varchar](200) NOT NULL,
	[GROUPNAME] [varchar](50) NULL,
	[IPADDRESS] [varchar](100) NOT NULL,
	[MACADDRESS] [varchar](200) NOT NULL,
	[SERIALNUMBER] [varchar](150) NULL,
	[NUMBEROFRADIOS] [int] NULL,
	[MODEL] [varchar](150) NULL,
	[LOCATION] [varchar](150) NULL,
	[BUILDING] [int] NULL,
	[FLOOR] [int] NULL,
	[APLOC] [int] NULL,
	[LONGITUDE] [varchar](150) NULL,
	[LATITUDE] [varchar](150) NULL,
	[ALTITUDE] [varchar](150) NULL,
 CONSTRAINT [APObject_PK1] PRIMARY KEY CLUSTERED 
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [APObject_UK1] UNIQUE NONCLUSTERED 
(
	[NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [APObject_UK2] UNIQUE NONCLUSTERED 
(
	[IPADDRESS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_838852763]    Script Date: 6/29/2019 5:53:29 PM ******/
CREATE NONCLUSTERED INDEX [IDX_838852763] ON [dbo].[APObject]
(
	[MOID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[APObject]  WITH CHECK ADD  CONSTRAINT [APObject_FK1] FOREIGN KEY([MOID])
REFERENCES [dbo].[MANAGEDOBJECTID] ([MOID])
GO
ALTER TABLE [dbo].[APObject] CHECK CONSTRAINT [APObject_FK1]
GO
