USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[IPParameters]    Script Date: 6/29/2019 5:48:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IPParameters](
	[TransportParamsID] [varchar](150) NOT NULL,
	[LocalHost] [varchar](25) NULL,
	[LocalPort] [int] NULL,
	[RemoteHost] [varchar](25) NULL,
	[RemotePort] [int] NULL,
	[ReceiveBufferSize] [int] NULL,
	[SubNetMask] [varchar](150) NULL,
 CONSTRAINT [IPPARMS_KEY] PRIMARY KEY CLUSTERED 
(
	[TransportParamsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__423125801]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__423125801] ON [dbo].[IPParameters]
(
	[TransportParamsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IPParameters]  WITH CHECK ADD  CONSTRAINT [IPPARAMS_FK] FOREIGN KEY([TransportParamsID])
REFERENCES [dbo].[TransportParams] ([TransportParamsID])
GO
ALTER TABLE [dbo].[IPParameters] CHECK CONSTRAINT [IPPARAMS_FK]
GO
