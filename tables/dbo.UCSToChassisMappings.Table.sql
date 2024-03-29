USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[UCSToChassisMappings]    Script Date: 6/29/2019 5:52:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UCSToChassisMappings](
	[MAPPINGID] [bigint] NOT NULL,
	[UCS_ID] [bigint] NOT NULL,
	[LABEL] [varchar](250) NOT NULL,
	[EQUIPMENT_TYPE] [int] NOT NULL,
	[EQUIPMENT_ID] [int] NOT NULL,
	[UNITSIZE] [int] NOT NULL,
	[UNITPOSITION] [int] NOT NULL,
	[IMAGENAME] [varchar](250) NOT NULL,
 CONSTRAINT [UCSToChassisMappings_PK] PRIMARY KEY CLUSTERED 
(
	[MAPPINGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__2045739400]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__2045739400] ON [dbo].[UCSToChassisMappings]
(
	[UCS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UCSToChassisMappings] ADD  DEFAULT ('1') FOR [UNITSIZE]
GO
ALTER TABLE [dbo].[UCSToChassisMappings]  WITH CHECK ADD  CONSTRAINT [UCSToChassisMappings_FK1] FOREIGN KEY([UCS_ID])
REFERENCES [dbo].[UCSDetails] ([UCS_ID])
GO
ALTER TABLE [dbo].[UCSToChassisMappings] CHECK CONSTRAINT [UCSToChassisMappings_FK1]
GO
