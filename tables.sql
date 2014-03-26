USE [AllegriniLuca]
GO

/****** Object:  Table [dbo].[Basket]    Script Date: 3/26/2014 2:18:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Basket](
	[Basketid] [int] IDENTITY(1,1) NOT NULL,
	[Ordineid] [int] NOT NULL,
	[Prodottoid] [int] NOT NULL,
	[Quantita] [int] NOT NULL,
 CONSTRAINT [PK_Basket] PRIMARY KEY CLUSTERED 
(
	[Basketid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

/****** Object:  Table [dbo].[Prodotti]    Script Date: 3/26/2014 2:19:11 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Prodotti](
	[ProdottoId] [int] IDENTITY(1,1) NOT NULL,
	[Descrizione] [nvarchar](32) NULL,
	[Prezzo] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Prodotti] PRIMARY KEY CLUSTERED 
(
	[ProdottoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
