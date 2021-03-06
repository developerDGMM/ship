USE [master]
GO
/****** Object:  Database [buquesweb]    Script Date: 2/4/2017 4:16:49 p. m. ******/
CREATE DATABASE [buquesweb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'buquesweb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\buquesweb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'buquesweb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\buquesweb_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [buquesweb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [buquesweb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [buquesweb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [buquesweb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [buquesweb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [buquesweb] SET ARITHABORT OFF 
GO
ALTER DATABASE [buquesweb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [buquesweb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [buquesweb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [buquesweb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [buquesweb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [buquesweb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [buquesweb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [buquesweb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [buquesweb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [buquesweb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [buquesweb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [buquesweb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [buquesweb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [buquesweb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [buquesweb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [buquesweb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [buquesweb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [buquesweb] SET RECOVERY FULL 
GO
ALTER DATABASE [buquesweb] SET  MULTI_USER 
GO
ALTER DATABASE [buquesweb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [buquesweb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [buquesweb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [buquesweb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [buquesweb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [buquesweb] SET QUERY_STORE = OFF
GO
USE [buquesweb]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [buquesweb]
GO
/****** Object:  Table [dbo].[areas_comercio]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[areas_comercio](
	[cod_areacom] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_areas_comercio] PRIMARY KEY CLUSTERED 
(
	[cod_areacom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[armador_buque]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[armador_buque](
	[cod_armador] [int] NOT NULL,
	[omi] [varchar](50) NOT NULL,
	[pasaporte] [varchar](15) NOT NULL,
	[propiedad] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_armador_buque] PRIMARY KEY CLUSTERED 
(
	[cod_armador] ASC,
	[omi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[arrendatario_buque]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arrendatario_buque](
	[cod_arrendatario] [int] NOT NULL,
	[omi] [varchar](50) NOT NULL,
	[pasaporte] [varchar](15) NULL,
 CONSTRAINT [PK_arrendatario_buque] PRIMARY KEY CLUSTERED 
(
	[cod_arrendatario] ASC,
	[omi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aviso_pago]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aviso_pago](
	[no_aviso] [int] NOT NULL,
	[no_cotizacion] [int] NULL,
	[monto_cobrado] [varchar](5) NULL,
	[omi] [varchar](50) NULL,
	[cod_estadoaviso] [int] NULL,
 CONSTRAINT [PK_aviso_pago] PRIMARY KEY CLUSTERED 
(
	[no_aviso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BarcoEstacionRadio]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarcoEstacionRadio](
	[CodigoBarco] [varchar](10) NOT NULL,
	[CodigoEstacionRadio] [varchar](7) NOT NULL,
	[Frecuencia] [varchar](10) NOT NULL,
	[MarcaEquipo] [varchar](100) NOT NULL,
	[ModeloEquipo] [varchar](100) NOT NULL,
	[Potencia] [varchar](50) NOT NULL,
	[TipoAntena] [varchar](100) NOT NULL,
	[TipoEmision] [varchar](100) NOT NULL,
	[CodigoLicencia] [varchar](20) NOT NULL,
 CONSTRAINT [PK_barcoestacionradio] PRIMARY KEY CLUSTERED 
(
	[CodigoBarco] ASC,
	[CodigoEstacionRadio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BarcoINMARSAT]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarcoINMARSAT](
	[CodigoBarco] [varchar](10) NOT NULL,
	[CodigoEstacionINMARSAT] [varchar](15) NOT NULL,
	[IMN] [varchar](100) NOT NULL,
	[AnswerBack] [varchar](50) NOT NULL,
	[Marca] [varchar](100) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Serie] [varchar](50) NOT NULL,
	[UsoServicio] [varchar](max) NOT NULL,
 CONSTRAINT [PK_BarcoINMARSAT] PRIMARY KEY CLUSTERED 
(
	[CodigoEstacionINMARSAT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BarcoRadionavegacion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BarcoRadionavegacion](
	[CodigoBarco] [varchar](10) NOT NULL,
	[CodigoRadioNavegacion] [varchar](8) NOT NULL,
	[MarcaEquipo] [varchar](100) NOT NULL,
	[ModeloEquipo] [varchar](100) NOT NULL,
	[BandaOperacion] [varchar](100) NOT NULL,
	[Observaciones] [varchar](100) NOT NULL,
	[nombreEquipo] [varchar](max) NOT NULL,
 CONSTRAINT [PK_BarcoRadionavegacion] PRIMARY KEY CLUSTERED 
(
	[CodigoBarco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[buque_omi]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buque_omi](
	[CodigoBarco] [varchar](10) NOT NULL,
	[omi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_buque_omi] PRIMARY KEY CLUSTERED 
(
	[CodigoBarco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[buques]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[buques](
	[omi] [varchar](50) NOT NULL,
	[nombre_buque] [varchar](100) NOT NULL,
	[nombre_anterior] [varchar](100) NOT NULL,
	[operador] [varchar](100) NULL,
	[cod_nacionalidad] [int] NOT NULL,
	[cod_clase] [int] NULL,
	[sub_clasificacion] [int] NULL,
	[lugar_contruccion] [varchar](100) NOT NULL,
	[cod_pais] [varchar](3) NOT NULL,
	[ano_contruccion] [date] NOT NULL,
	[fecha_quilla] [date] NOT NULL,
	[contructores] [varchar](100) NOT NULL,
	[cubiertas] [varchar](2) NOT NULL,
	[mastiles] [varchar](2) NOT NULL,
	[chimeneas] [varchar](2) NOT NULL,
	[puentes] [varchar](2) NOT NULL,
	[bodegas] [varchar](2) NOT NULL,
	[otro_material] [varchar](100) NOT NULL,
	[estola] [varchar](2) NOT NULL,
	[manga] [varchar](2) NOT NULL,
	[puntal] [varchar](2) NOT NULL,
	[calado] [varchar](2) NOT NULL,
	[tonelaje_bruto] [varchar](2) NOT NULL,
	[tonelaje_neto] [varchar](2) NOT NULL,
	[cod_material] [int] NULL,
 CONSTRAINT [PK_buques] PRIMARY KEY CLUSTERED 
(
	[omi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[clasificacion_buque]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clasificacion_buque](
	[cod_clase] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_clasificacion_buque] PRIMARY KEY CLUSTERED 
(
	[cod_clase] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[conceptos_cobro]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conceptos_cobro](
	[cod_concepto] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_conceptos_cobro] PRIMARY KEY CLUSTERED 
(
	[cod_concepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cotizacion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cotizacion](
	[no_cotizacion] [int] NOT NULL,
	[omi] [varchar](50) NOT NULL,
	[cod_puerto] [int] NOT NULL,
	[nombre_buque] [varchar](50) NULL,
	[cod_nacionalidad] [int] NULL,
	[nombre_armador] [varchar](150) NULL,
	[razon_social] [varchar](50) NULL,
	[cod_clase] [int] NULL,
	[sub_clasificacion] [int] NULL,
	[maquinas] [int] NULL,
	[fecha_quilla] [date] NULL,
	[a_contruccion] [date] NULL,
	[tonelaje_neto] [varchar](2) NULL,
	[tonelajebruto] [varchar](2) NULL,
	[numero_tripulantes] [int] NULL,
	[cod_estadocotizacion] [int] NOT NULL,
	[cod_usuario] [int] NOT NULL,
	[fecha_cotizacion] [date] NOT NULL,
	[hora_cotizacion] [datetime] NOT NULL,
	[monto] [money] NULL,
 CONSTRAINT [PK_cotizacion] PRIMARY KEY CLUSTERED 
(
	[no_cotizacion] ASC,
	[omi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalle_aviso]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_aviso](
	[no_aviso] [int] NOT NULL,
	[num_detalle] [int] NOT NULL,
	[cod_tipotarifas] [int] NULL,
	[valor] [money] NULL,
 CONSTRAINT [PK_detalle_aviso] PRIMARY KEY CLUSTERED 
(
	[no_aviso] ASC,
	[num_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[documento_adjunto]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documento_adjunto](
	[correlativo_patente] [int] NULL,
	[no_doc] [int] NOT NULL,
	[cod_tipodoc] [int] NOT NULL,
	[imagen_documento] [varchar](100) NULL,
	[no_cotizacion] [int] NULL,
 CONSTRAINT [PK_documento_adjunto] PRIMARY KEY CLUSTERED 
(
	[no_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EquipoAuxiliares]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipoAuxiliares](
	[codigoBarco] [varchar](10) NOT NULL,
	[tipoRadioBaliza] [varchar](10) NOT NULL,
	[Frecuencia] [varchar](50) NOT NULL,
	[CodigoELT] [varchar](50) NOT NULL,
	[ID] [int] NOT NULL,
	[fechaSistema] [datetime] NULL,
	[usuarioSistema] [varchar](20) NULL,
 CONSTRAINT [PK_EquipoAuxiliares] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_aviso]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_aviso](
	[cod_estadoaviso] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_estado_aviso] PRIMARY KEY CLUSTERED 
(
	[cod_estadoaviso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_cotizacion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_cotizacion](
	[cod_estadocotizacion] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_estado_cotizacion] PRIMARY KEY CLUSTERED 
(
	[cod_estadocotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_patente]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_patente](
	[cod_estadopatente] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_estado_patente] PRIMARY KEY CLUSTERED 
(
	[cod_estadopatente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_scmt]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_scmt](
	[cod_scmt] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_estado_scmt] PRIMARY KEY CLUSTERED 
(
	[cod_scmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_usuarios]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_usuarios](
	[cod_estadousuario] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_estado_usuarios] PRIMARY KEY CLUSTERED 
(
	[cod_estadousuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[grados]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grados](
	[cod_grado] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_grados] PRIMARY KEY CLUSTERED 
(
	[cod_grado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[material_casco]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material_casco](
	[cod_material] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_material_casco] PRIMARY KEY CLUSTERED 
(
	[cod_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[motores_buque]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motores_buque](
	[omi] [varchar](50) NOT NULL,
	[cod_motor] [int] NOT NULL,
	[marcha_motor] [varchar](100) NULL,
	[modelo_motor] [varchar](100) NULL,
	[velocidad] [varchar](50) NULL,
	[potencia_motor] [varchar](100) NULL,
	[cilindros] [varchar](50) NULL,
 CONSTRAINT [PK_motores_buque] PRIMARY KEY CLUSTERED 
(
	[omi] ASC,
	[cod_motor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nacionalidades]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nacionalidades](
	[cod_nacionalidad] [int] NOT NULL,
	[cod_pais] [varchar](3) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_nacionalidades] PRIMARY KEY CLUSTERED 
(
	[cod_nacionalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[oficinas]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oficinas](
	[cod_oficina] [int] NULL,
	[pasaporte] [varchar](50) NULL,
	[cod_pais] [int] NULL,
	[ciudad] [varchar](50) NULL,
	[cod_usuario] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[paises]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[paises](
	[cod_pais] [varchar](3) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_paises] PRIMARY KEY CLUSTERED 
(
	[cod_pais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[patente]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patente](
	[correlativo_patente] [int] NOT NULL,
	[num_oficina] [nchar](10) NULL,
	[omi] [varchar](50) NOT NULL,
	[num_indicativollamada] [varchar](50) NULL,
	[num_serviciomovil] [varchar](50) NULL,
	[num_papel] [int] NULL,
	[cod_puerto] [int] NOT NULL,
	[cod_tonelaje] [int] NOT NULL,
	[fecha_emision] [date] NOT NULL,
	[fecha_expiracion] [date] NOT NULL,
	[lugar_expedicion_patente] [varchar](50) NOT NULL,
	[cod_pais] [int] NOT NULL,
	[cod_usuario] [int] NULL,
	[no_cotizacion] [int] NULL,
	[cod_estadopatente] [int] NULL,
 CONSTRAINT [PK_patente] PRIMARY KEY CLUSTERED 
(
	[correlativo_patente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[personas]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personas](
	[pasaporte] [varchar](15) NOT NULL,
	[nombre_completo] [varchar](150) NOT NULL,
	[cod_tipopersonas] [int] NOT NULL,
	[cod_nacionalidad] [int] NOT NULL,
	[rtn] [varchar](15) NOT NULL,
	[razon_social] [varchar](50) NOT NULL,
	[domicilio] [nvarchar](200) NOT NULL,
	[ciudad] [nvarchar](200) NOT NULL,
	[departamento] [nvarchar](150) NOT NULL,
	[cod_pais] [varchar](3) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[movil] [varchar](20) NULL,
	[fax] [varchar](20) NULL,
	[correo] [nvarchar](100) NULL,
	[redes_sociales] [varchar](50) NULL,
 CONSTRAINT [PK_personas] PRIMARY KEY CLUSTERED 
(
	[pasaporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[puerto_registro]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puerto_registro](
	[cod_puerto] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_puerto_registro] PRIMARY KEY CLUSTERED 
(
	[cod_puerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[rangos_navegacion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rangos_navegacion](
	[cod_rangonav] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_rangos_navegacion] PRIMARY KEY CLUSTERED 
(
	[cod_rangonav] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[representantelegal]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[representantelegal](
	[pasaporte] [varchar](15) NOT NULL,
	[nombre] [varchar](150) NULL,
	[razon_social] [varchar](50) NULL,
	[direccion] [varchar](200) NULL,
	[numero_colegiacion] [varchar](20) NULL,
	[correo] [varchar](100) NULL,
	[telefono] [varchar](20) NULL,
	[movil] [varchar](20) NULL,
	[redes_sociales] [varchar](50) NULL,
	[pasaporte_cliente] [varchar](15) NULL,
 CONSTRAINT [PK_representantelegal] PRIMARY KEY CLUSTERED 
(
	[pasaporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[roles_usuario]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_usuario](
	[cod_rol] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_roles_usuario] PRIMARY KEY CLUSTERED 
(
	[cod_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sistema_propulsion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sistema_propulsion](
	[omi] [varchar](50) NOT NULL,
	[cod_sistema] [int] NOT NULL,
	[cod_propulsion] [int] NOT NULL,
	[combustible] [varchar](50) NOT NULL,
	[numero_motor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sistema_propulsion] PRIMARY KEY CLUSTERED 
(
	[omi] ASC,
	[cod_sistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[solicitud_cmt]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud_cmt](
	[omi] [varchar](50) NULL,
	[cod_cmt] [int] NOT NULL,
	[cod_puerto] [int] NULL,
	[area_navegacion] [varchar](50) NULL,
	[maximo_pasajeros] [varchar](50) NULL,
	[dotacion_permanente] [varchar](2) NULL,
	[dotacion_anterior] [varchar](100) NULL,
	[fecha_solicitud] [date] NULL,
	[cod_zona] [int] NULL,
	[cod_rangonav] [int] NULL,
	[cod_areacom] [int] NULL,
	[ums] [varchar](max) NULL,
	[cod_scmt] [int] NULL,
	[cod_usuario] [int] NULL,
	[fecha_emision] [date] NULL,
	[fecha_expiracion] [date] NULL,
	[observaciones] [nchar](10) NULL,
	[no_patente] [varchar](50) NULL,
 CONSTRAINT [PK_solicitud_cmt] PRIMARY KEY CLUSTERED 
(
	[cod_cmt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sub_clasificacion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_clasificacion](
	[cod_clase] [int] NOT NULL,
	[sub_clasificacion] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_sub_clasificacion] PRIMARY KEY CLUSTERED 
(
	[cod_clase] ASC,
	[sub_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tarifas]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifas](
	[cod_tipotarifas] [int] NOT NULL,
	[cod_concepto] [int] NOT NULL,
	[cod_tonelaje] [int] NOT NULL,
	[valor_dolares] [money] NULL,
 CONSTRAINT [PK_tarifas] PRIMARY KEY CLUSTERED 
(
	[cod_tipotarifas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_documento]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_documento](
	[cod_tipodoc] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo_documento] PRIMARY KEY CLUSTERED 
(
	[cod_tipodoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_personas]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_personas](
	[cod_tipopersonas] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo_personas_1] PRIMARY KEY CLUSTERED 
(
	[cod_tipopersonas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_propulsion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_propulsion](
	[cod_propulsion] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tipo_propulsion] PRIMARY KEY CLUSTERED 
(
	[cod_propulsion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoEstacionFrecuencia]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEstacionFrecuencia](
	[CodigoEstacionRadio] [varchar](7) NOT NULL,
	[CodigoFrecuencia] [varchar](15) NOT NULL,
	[Cantidad] [varchar](2) NOT NULL,
	[Cant_botes] [varchar](2) NOT NULL,
 CONSTRAINT [PK_TipoEstacionFrecuencia] PRIMARY KEY CLUSTERED 
(
	[CodigoEstacionRadio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoEstacionRadioElectrica]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEstacionRadioElectrica](
	[CodigoEstacionRadio] [varchar](7) NOT NULL,
	[NombreEstacion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoEstacionRadioElectrica] PRIMARY KEY CLUSTERED 
(
	[CodigoEstacionRadio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoFrecuencia]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoFrecuencia](
	[CodigoFrecuencia] [varchar](15) NOT NULL,
	[Frecuencia] [varchar](20) NOT NULL,
 CONSTRAINT [PK_TipoFrecuencia] PRIMARY KEY CLUSTERED 
(
	[CodigoFrecuencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoRadiobaliza]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRadiobaliza](
	[CodigoRadiobaliza] [varchar](10) NOT NULL,
	[Radiobaliza] [varchar](20) NOT NULL,
	[Frecuencia] [varbinary](50) NOT NULL,
 CONSTRAINT [PK_TipoRadiobaliza] PRIMARY KEY CLUSTERED 
(
	[CodigoRadiobaliza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoRadionavegacion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoRadionavegacion](
	[CodigoRadioNavegacion] [varchar](8) NOT NULL,
	[RadioNavegacion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoRadionavegacion] PRIMARY KEY CLUSTERED 
(
	[CodigoRadioNavegacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tonelajes]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tonelajes](
	[cod_tonelaje] [int] IDENTITY(1,1) NOT NULL,
	[rango_de] [varchar](50) NOT NULL,
	[rango_a] [varchar](50) NULL,
 CONSTRAINT [PK_tonelajes] PRIMARY KEY CLUSTERED 
(
	[cod_tonelaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tripulacion]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tripulacion](
	[cod_cmt] [int] NULL,
	[num_tripulacion] [int] NOT NULL,
	[cod_grado] [int] NULL,
	[regla] [varchar](50) NULL,
	[cantidad_personas] [int] NULL,
 CONSTRAINT [PK_tripulacion] PRIMARY KEY CLUSTERED 
(
	[num_tripulacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[cod_usuario] [int] NOT NULL,
	[pasaporte] [varchar](15) NOT NULL,
	[nombre_usuario] [varchar](20) NOT NULL,
	[clave] [varchar](10) NOT NULL,
	[cod_estadousuario] [int] NOT NULL,
	[reseteo_contraseña] [nvarchar](50) NULL,
	[cod_rol] [int] NULL,
 CONSTRAINT [PK_usuarios] PRIMARY KEY CLUSTERED 
(
	[cod_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[zonas_gmdss]    Script Date: 2/4/2017 4:16:49 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zonas_gmdss](
	[cod_zona] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_zonas_gmdss] PRIMARY KEY CLUSTERED 
(
	[cod_zona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[areas_comercio] ON 

INSERT [dbo].[areas_comercio] ([cod_areacom], [descripcion]) VALUES (1, N'WORLDWIDE')
INSERT [dbo].[areas_comercio] ([cod_areacom], [descripcion]) VALUES (2, N'INTERNATIONAL')
SET IDENTITY_INSERT [dbo].[areas_comercio] OFF
SET IDENTITY_INSERT [dbo].[clasificacion_buque] ON 

INSERT [dbo].[clasificacion_buque] ([cod_clase], [descripcion]) VALUES (1, N'BULK CARRIER')
INSERT [dbo].[clasificacion_buque] ([cod_clase], [descripcion]) VALUES (2, N'DRY CARGO/PASSENGER')
INSERT [dbo].[clasificacion_buque] ([cod_clase], [descripcion]) VALUES (3, N'FISHING')
INSERT [dbo].[clasificacion_buque] ([cod_clase], [descripcion]) VALUES (4, N'MISCELLANEOUS')
INSERT [dbo].[clasificacion_buque] ([cod_clase], [descripcion]) VALUES (5, N'OFFSHORE')
INSERT [dbo].[clasificacion_buque] ([cod_clase], [descripcion]) VALUES (6, N'PLEASURE CRAFT')
INSERT [dbo].[clasificacion_buque] ([cod_clase], [descripcion]) VALUES (7, N'TANKERS')
SET IDENTITY_INSERT [dbo].[clasificacion_buque] OFF
SET IDENTITY_INSERT [dbo].[conceptos_cobro] ON 

INSERT [dbo].[conceptos_cobro] ([cod_concepto], [descripcion]) VALUES (1, N'MATRICULA')
INSERT [dbo].[conceptos_cobro] ([cod_concepto], [descripcion]) VALUES (2, N'INSCRIPCION')
INSERT [dbo].[conceptos_cobro] ([cod_concepto], [descripcion]) VALUES (3, N'TONELAJE')
INSERT [dbo].[conceptos_cobro] ([cod_concepto], [descripcion]) VALUES (4, N'INSPECCION')
INSERT [dbo].[conceptos_cobro] ([cod_concepto], [descripcion]) VALUES (5, N'INVESTIGACION ACCIDENTES')
INSERT [dbo].[conceptos_cobro] ([cod_concepto], [descripcion]) VALUES (6, N'CMT')
INSERT [dbo].[conceptos_cobro] ([cod_concepto], [descripcion]) VALUES (7, N'PATENTE')
INSERT [dbo].[conceptos_cobro] ([cod_concepto], [descripcion]) VALUES (9, N'CERTIFICADOS TRANSITORIOS')
SET IDENTITY_INSERT [dbo].[conceptos_cobro] OFF
SET IDENTITY_INSERT [dbo].[estado_aviso] ON 

INSERT [dbo].[estado_aviso] ([cod_estadoaviso], [descripcion]) VALUES (1, N'PENDIENTE DE PAGO')
INSERT [dbo].[estado_aviso] ([cod_estadoaviso], [descripcion]) VALUES (2, N'PAGADO')
INSERT [dbo].[estado_aviso] ([cod_estadoaviso], [descripcion]) VALUES (3, N'CANCELADO')
SET IDENTITY_INSERT [dbo].[estado_aviso] OFF
SET IDENTITY_INSERT [dbo].[estado_cotizacion] ON 

INSERT [dbo].[estado_cotizacion] ([cod_estadocotizacion], [descripcion]) VALUES (1, N'ACTIVA')
INSERT [dbo].[estado_cotizacion] ([cod_estadocotizacion], [descripcion]) VALUES (2, N'DESACTIVA')
SET IDENTITY_INSERT [dbo].[estado_cotizacion] OFF
SET IDENTITY_INSERT [dbo].[estado_patente] ON 

INSERT [dbo].[estado_patente] ([cod_estadopatente], [descripcion]) VALUES (1, N'VIGENTE')
INSERT [dbo].[estado_patente] ([cod_estadopatente], [descripcion]) VALUES (2, N'CANCELADA')
INSERT [dbo].[estado_patente] ([cod_estadopatente], [descripcion]) VALUES (3, N'VENCIDA')
SET IDENTITY_INSERT [dbo].[estado_patente] OFF
SET IDENTITY_INSERT [dbo].[estado_scmt] ON 

INSERT [dbo].[estado_scmt] ([cod_scmt], [descripcion]) VALUES (1, N'Solicitada')
INSERT [dbo].[estado_scmt] ([cod_scmt], [descripcion]) VALUES (2, N'Aprobada')
INSERT [dbo].[estado_scmt] ([cod_scmt], [descripcion]) VALUES (3, N'Rechazada')
INSERT [dbo].[estado_scmt] ([cod_scmt], [descripcion]) VALUES (4, N'Cancelada')
SET IDENTITY_INSERT [dbo].[estado_scmt] OFF
SET IDENTITY_INSERT [dbo].[estado_usuarios] ON 

INSERT [dbo].[estado_usuarios] ([cod_estadousuario], [descripcion]) VALUES (1, N'ACTIVO')
INSERT [dbo].[estado_usuarios] ([cod_estadousuario], [descripcion]) VALUES (2, N'DESACTIVADO')
SET IDENTITY_INSERT [dbo].[estado_usuarios] OFF
SET IDENTITY_INSERT [dbo].[grados] ON 

INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (1, N'MASTER')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (2, N'CHIEF MATE')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (3, N'DECK OFFICERS')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (4, N'RADIO OFFICER GMDSS')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (5, N'CHIEF ENGINEER')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (6, N'FIRST ASSISTANT ENGINEER')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (7, N'ENGINEER OFFICER')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (8, N'ELECTRO-TECNICAL OFFICER')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (9, N'RATINGS FORMING PART OF A NAVIGATIONAL WATCH')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (10, N'ABLE SEAFARER DECK')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (11, N'RATING FORMING PART OF A NAVIGATIONAL WATCH')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (12, N'ABLE SEAFERER DECK')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (13, N'RATING FORMING PART OF A WATCH IN A ENGINE-ROOM')
INSERT [dbo].[grados] ([cod_grado], [descripcion]) VALUES (14, N'ABLE SEAFARER ENGINE')
SET IDENTITY_INSERT [dbo].[grados] OFF
SET IDENTITY_INSERT [dbo].[material_casco] ON 

INSERT [dbo].[material_casco] ([cod_material], [descripcion]) VALUES (1, N'STEEL')
INSERT [dbo].[material_casco] ([cod_material], [descripcion]) VALUES (2, N'WOOD')
INSERT [dbo].[material_casco] ([cod_material], [descripcion]) VALUES (3, N'FIBERGLASS')
INSERT [dbo].[material_casco] ([cod_material], [descripcion]) VALUES (4, N'ALUMINUM')
SET IDENTITY_INSERT [dbo].[material_casco] OFF
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'1', N'Afganistán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'10', N'Antillas Holandesas')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'100', N'Haití')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'101', N'Islas Heard y McDonald')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'102', N'Honduras')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'103', N'Hong Kong')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'104', N'Hungría')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'105', N'India')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'106', N'Indonesia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'107', N'Irán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'108', N'Iraq')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'109', N'Irlanda')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'11', N'Arabia Saudí')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'110', N'Islandia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'111', N'Israel')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'112', N'Italia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'113', N'Jamaica')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'114', N'Japón')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'115', N'Jordania')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'116', N'Kazajstán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'117', N'Kenia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'118', N'Kirguistán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'119', N'Kiribati')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'12', N'Argelia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'120', N'Kuwait')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'121', N'Laos')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'122', N'Lesotho')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'123', N'Letonia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'124', N'Líbano')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'125', N'Liberia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'126', N'Libia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'127', N'Liechtenstein')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'128', N'Lituania')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'129', N'Luxemburgo')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'13', N'Argentina')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'130', N'Macao')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'131', N'ARY Macedonia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'132', N'Madagascar')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'133', N'Malasia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'134', N'Malawi')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'135', N'Maldivas')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'136', N'Malí')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'137', N'Malta')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'138', N'Islas Malvinas')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'139', N'Islas Marianas del Norte')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'14', N'Armenia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'140', N'Marruecos')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'141', N'Islas Marshall')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'142', N'Martinica')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'143', N'Mauricio')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'144', N'Mauritania')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'145', N'Mayotte')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'146', N'México')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'147', N'Micronesia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'148', N'Moldavia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'149', N'Mónaco')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'15', N'Aruba')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'150', N'Mongolia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'151', N'Montserrat')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'152', N'Mozambique')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'153', N'Myanmar')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'154', N'Namibia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'155', N'Nauru')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'156', N'Nepal')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'157', N'Nicaragua')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'158', N'Níger')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'159', N'Nigeria')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'16', N'Australia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'160', N'Niue')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'161', N'Isla Norfolk')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'162', N'Noruega')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'163', N'Nueva Caledonia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'164', N'Nueva Zelanda')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'165', N'Omán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'166', N'Países Bajos')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'167', N'Pakistán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'168', N'Palau')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'169', N'Palestina')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'17', N'Austria')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'170', N'Panamá')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'171', N'Papúa Nueva Guinea')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'172', N'Paraguay')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'173', N'Perú')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'174', N'Islas Pitcairn')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'175', N'Polinesia Francesa')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'176', N'Polonia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'177', N'Portugal')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'178', N'Puerto Rico')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'179', N'Qatar')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'18', N'Azerbaiyán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'180', N'Reino Unido')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'181', N'Reunión')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'182', N'Ruanda')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'183', N'Rumania')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'184', N'Rusia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'185', N'Sahara Occidental')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'186', N'Islas Salomón')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'187', N'Samoa')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'188', N'Samoa Americana')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'189', N'San Cristóbal y Nevis')
GO
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'19', N'Bahamas')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'190', N'San Marino')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'191', N'San Pedro y Miquelón')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'192', N'San Vicente y las Granadinas')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'193', N'Santa Helena')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'194', N'Santa Lucía')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'195', N'Santo Tomé y Príncipe')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'196', N'Senegal')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'197', N'Serbia y Montenegro')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'198', N'Seychelles')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'199', N'Sierra Leona')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'2', N'Islas Gland')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'20', N'Bahréin')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'200', N'Singapur')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'201', N'Siria')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'202', N'Somalia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'203', N'Sri Lanka')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'204', N'Suazilandia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'205', N'Sudáfrica')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'206', N'Sudán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'207', N'Suecia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'208', N'Suiza')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'209', N'Surinam')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'21', N'Bangladesh')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'210', N'Svalbard y Jan Mayen')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'211', N'Tailandia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'212', N'Taiwán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'213', N'Tanzania')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'214', N'Tayikistán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'215', N'Territorio Británico del Océano Índico')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'216', N'Territorios Australes Franceses')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'217', N'Timor Oriental')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'218', N'Togo')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'219', N'Tokelau')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'22', N'Barbados')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'220', N'Tonga')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'221', N'Trinidad y Tobago')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'222', N'Túnez')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'223', N'Islas Turcas y Caicos')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'224', N'Turkmenistán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'225', N'Turquía')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'226', N'Tuvalu')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'227', N'Ucrania')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'228', N'Uganda')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'229', N'Uruguay')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'23', N'Bielorrusia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'230', N'Uzbekistán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'231', N'Vanuatu')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'232', N'Venezuela')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'233', N'Vietnam')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'234', N'Islas Vírgenes Británicas')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'235', N'Islas Vírgenes de los Estados Unidos')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'236', N'Wallis y Futuna')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'237', N'Yemen')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'238', N'Yibuti')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'239', N'Zambia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'24', N'Bélgica')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'240', N'Zimbabue')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'25', N'Belice')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'26', N'Benin')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'27', N'Bermudas')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'28', N'Bhután')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'29', N'Bolivia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'3', N'Albania')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'30', N'Bosnia y Herzegovina')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'31', N'Botsuana')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'32', N'Isla Bouvet')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'33', N'Brasil')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'34', N'Brunéi')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'35', N'Bulgaria')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'36', N'Burkina Faso')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'37', N'Burundi')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'38', N'Cabo Verde')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'39', N'Islas Caimán')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'4', N'Alemania')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'40', N'Camboya')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'41', N'Camerún')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'42', N'Canadá')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'43', N'República Centroafricana')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'44', N'Chad')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'45', N'República Checa')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'46', N'Chile')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'47', N'China')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'48', N'Chipre')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'49', N'Isla de Navidad')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'5', N'Andorra')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'50', N'Ciudad del Vaticano')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'51', N'Islas Cocos')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'52', N'Colombia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'53', N'Comoras')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'54', N'República Democrática del Congo')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'55', N'Congo')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'56', N'Islas Cook')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'57', N'Corea del Norte')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'58', N'Corea del Sur')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'59', N'Costa de Marfil')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'6', N'Angola')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'60', N'Costa Rica')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'61', N'Croacia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'62', N'Cuba')
GO
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'63', N'Dinamarca')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'64', N'Dominica')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'65', N'República Dominicana')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'66', N'Ecuador')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'67', N'Egipto')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'68', N'El Salvador')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'69', N'Emiratos Árabes Unidos')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'7', N'Anguilla')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'70', N'Eritrea')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'71', N'Eslovaquia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'72', N'Eslovenia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'73', N'España')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'74', N'Islas ultramarinas de Estados Unidos')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'76', N'Estonia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'77', N'Etiopía')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'78', N'Islas Feroe')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'79', N'Filipinas')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'8', N'Antártida')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'80', N'Finlandia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'81', N'Fiyi')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'82', N'Francia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'83', N'Gabón')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'84', N'Gambia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'85', N'Georgia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'86', N'Islas Georgias del Sur y Sandwich del Sur')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'87', N'Ghana')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'88', N'Gibraltar')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'89', N'Granada')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'9', N'Antigua y Barbuda')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'90', N'Grecia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'91', N'Groenlandia')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'92', N'Guadalupe')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'93', N'Guam')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'94', N'Guatemala')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'95', N'Guayana Francesa')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'96', N'Guinea')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'97', N'Guinea Ecuatorial')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'98', N'Guinea-Bissau')
INSERT [dbo].[paises] ([cod_pais], [descripcion]) VALUES (N'99', N'Guyana')
SET IDENTITY_INSERT [dbo].[puerto_registro] ON 

INSERT [dbo].[puerto_registro] ([cod_puerto], [descripcion]) VALUES (1, N'Puerto Cortes')
SET IDENTITY_INSERT [dbo].[puerto_registro] OFF
SET IDENTITY_INSERT [dbo].[rangos_navegacion] ON 

INSERT [dbo].[rangos_navegacion] ([cod_rangonav], [descripcion]) VALUES (1, N'LESS THAN 600 NAUTICAL MILES BETWEEN PORTS')
INSERT [dbo].[rangos_navegacion] ([cod_rangonav], [descripcion]) VALUES (2, N'600 NAUTICAL MILES')
INSERT [dbo].[rangos_navegacion] ([cod_rangonav], [descripcion]) VALUES (3, N'UNLIMITED')
SET IDENTITY_INSERT [dbo].[rangos_navegacion] OFF
SET IDENTITY_INSERT [dbo].[roles_usuario] ON 

INSERT [dbo].[roles_usuario] ([cod_rol], [descripcion]) VALUES (1, N'ADMINISTRADOR')
INSERT [dbo].[roles_usuario] ([cod_rol], [descripcion]) VALUES (2, N'AGENTE 24/7')
INSERT [dbo].[roles_usuario] ([cod_rol], [descripcion]) VALUES (3, N'REGISTRADOR')
SET IDENTITY_INSERT [dbo].[roles_usuario] OFF
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 1, N'AGGREGATES CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 2, N'ALUMINA CARRIERS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 3, N'BULK/OIL CARRIERS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 4, N'CEMENT CARRIERS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 5, N'LIME STONE CARRIERS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 6, N'MUD CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 7, N'ORE/OIL CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 9, N'ORE CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 10, N'POWDER CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 11, N'REFINED SUGAR CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 12, N'SELF DISCHARGING CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 13, N'UREA CARRIERS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (1, 14, N'WOOD CHIPS CARRIERS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 1, N'BARGE CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 2, N'CONTAINER RO-RO CARGO SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 3, N'CONTAINER SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 4, N'DECK CARGO SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 5, N'GENERAL CARGO SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 6, N'HEAVY LOAD CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 7, N'LIVESTOCK CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 8, N'LANDING CRAF')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 9, N'LOG TIPPING CRAFT')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 10, N'NUCLEAR FUEL CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 11, N'PALLETISED CARGO SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 12, N'PASSENGER CRUISE SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 13, N'PASSENGER CONTAINER SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 14, N'PASSENGER GENERAL SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 15, N'PASSENGER RO-RO CARGO SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 16, N'PASSENGER LANDING CRAFT')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 17, N'PASSENGER SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 18, N'PEARL SHELLS CARRIERS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 19, N'PULP CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 20, N'REFRIGERATED CARGO SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 21, N'RO-RO CARGO SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 22, N'STONE CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (2, 23, N'VEHICLES CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (3, 1, N'FISH CARRIER/FREEZER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (3, 2, N'FISH FACTORY SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (3, 3, N'FISHING SUPPORT VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (3, 4, N'FISHING VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (3, 5, N'LIVE-FISH CARRIER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (3, 6, N'SEAL CATCHER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (3, 7, N'TRAWLER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (3, 8, N'WHALE-CATCHER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 1, N'AIR CUSHION VEHICLE')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 2, N'ANCHOR HOY')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 3, N'BARGE (NON-PROPELLED)')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 4, N'BUOY LIGHTHOUSE VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 5, N'CABLE LAYER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 6, N'CRANE SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 7, N'CREWBOAT')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 8, N'DREDGER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 9, N'FIRE FIGHTING VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 10, N'HOPPER DREDGER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 11, N'HOSPITAL VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 12, N'ICEBREAKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 13, N'KELP DREDGER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 14, N'LAUNCH (UNSPECIFIED)')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 15, N'MOORING VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 16, N'MOTOR HOPPER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 17, N'PATROL VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 18, N'PILOT VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 19, N'POLLUTION CONTROL VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 20, N'PONTOON (NON-PROPELLED)')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 21, N'PUSHER TUG')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 22, N'RESEARCH VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 23, N'SALVAGE SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 24, N'SEARCH & RESCUE VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 25, N'SUPPLY VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 26, N'TANK CLEANING VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 27, N'TENDER (UNSPECIFIED)')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 28, N'TRAINING SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 29, N'TRANS-SHIPMENT VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 30, N'TUG')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 31, N'UTILITY VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 32, N'WASTE DISPOSAL VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (4, 33, N'WORK REPAIR VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 1, N'DRILLING SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 2, N'OFFSHORE PROCESSING SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 3, N'OFFSHORE SUPPLY SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 4, N'OFFSHORE SUPPORT VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 5, N'OFFSHORE TUG/SUPPLY SHIP')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 6, N'PIPE-LAYER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 7, N'PRODUCTION TESTING VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 8, N'STANDBY SAFETY VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (5, 9, N'WELL STIMULATION VESSEL')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (6, 1, N'YATCHS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (6, 2, N'CATAMARANS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (6, 3, N'SAIL BOATS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 1, N'BEER TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 2, N'BITUMEN TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 3, N'CHEMICAL TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 4, N'CHEMICAL/OIL PRODUCTS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 5, N'COAL/OIL PRODUCTS')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 6, N'CRUDE OIL TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 7, N'EDIBLE OIL TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 8, N'FISH OIL TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 9, N'FRUIT JUICE TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 10, N'LATEX TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 11, N'LNG TANKER')
GO
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 12, N'LPG TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 13, N'MOLASSES TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 14, N'OIL PRODUCTS TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 15, N'OIL SLUDGE TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 16, N'VEGETABLE OIL TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 17, N'WATER TANKER')
INSERT [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion], [descripcion]) VALUES (7, 18, N'WINE TANKER')
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (1, 1, 1, 250.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (2, 1, 2, 250.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (3, 1, 3, 250.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (4, 1, 4, 400.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (5, 1, 5, 500.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (6, 1, 6, 750.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (7, 1, 7, 1500.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (8, 1, 8, 3000.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (9, 1, 9, 3000.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (10, 2, 1, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (11, 2, 2, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (12, 2, 3, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (13, 2, 4, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (14, 2, 5, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (15, 2, 6, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (16, 2, 7, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (17, 2, 8, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (18, 2, 9, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (19, 3, 1, NULL)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (20, 3, 2, 150.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (21, 3, 3, 250.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (22, 3, 4, 400.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (23, 3, 5, 500.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (24, 3, 6, 750.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (25, 3, 7, 1500.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (26, 3, 8, 0.1000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (27, 3, 9, 0.1000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (28, 4, 1, 400.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (29, 4, 2, 400.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (30, 4, 3, 400.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (31, 4, 4, 500.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (32, 4, 5, 500.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (33, 4, 6, 500.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (34, 4, 7, 1000.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (35, 4, 8, 1000.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (36, 4, 9, 1200.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (37, 5, 1, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (38, 5, 2, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (39, 5, 3, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (40, 5, 4, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (41, 5, 5, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (44, 5, 6, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (45, 5, 7, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (46, 5, 8, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (47, 5, 9, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (48, 6, 1, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (49, 6, 2, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (50, 6, 3, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (51, 6, 4, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (52, 6, 5, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (53, 6, 6, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (54, 6, 7, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (55, 6, 8, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (56, 6, 9, 0.3000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (57, 7, 1, NULL)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (58, 7, 2, NULL)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (59, 7, 3, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (60, 7, 2, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (61, 7, 3, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (62, 7, 4, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (63, 7, 5, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (64, 7, 6, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (65, 7, 7, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (66, 7, 8, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (67, 7, 9, 100.0000)
INSERT [dbo].[tarifas] ([cod_tipotarifas], [cod_concepto], [cod_tonelaje], [valor_dolares]) VALUES (68, 9, 1, 45.0000)
SET IDENTITY_INSERT [dbo].[tipo_personas] ON 

INSERT [dbo].[tipo_personas] ([cod_tipopersonas], [descripcion]) VALUES (1, N'Armadores')
INSERT [dbo].[tipo_personas] ([cod_tipopersonas], [descripcion]) VALUES (2, N'Arrendatarios')
INSERT [dbo].[tipo_personas] ([cod_tipopersonas], [descripcion]) VALUES (3, N'Apoderados Legales')
INSERT [dbo].[tipo_personas] ([cod_tipopersonas], [descripcion]) VALUES (4, N'Registradores Delegados')
SET IDENTITY_INSERT [dbo].[tipo_personas] OFF
SET IDENTITY_INSERT [dbo].[tipo_propulsion] ON 

INSERT [dbo].[tipo_propulsion] ([cod_propulsion], [descripcion]) VALUES (1, N'ELECTRICAL PROPULSION')
INSERT [dbo].[tipo_propulsion] ([cod_propulsion], [descripcion]) VALUES (2, N'WIND PROPULSION')
INSERT [dbo].[tipo_propulsion] ([cod_propulsion], [descripcion]) VALUES (3, N'MECHANICAL STEAM TURBINE')
INSERT [dbo].[tipo_propulsion] ([cod_propulsion], [descripcion]) VALUES (4, N'MECHANICAL GASTURBINE')
INSERT [dbo].[tipo_propulsion] ([cod_propulsion], [descripcion]) VALUES (5, N'MECHANICAL DIESEL ENGINE')
INSERT [dbo].[tipo_propulsion] ([cod_propulsion], [descripcion]) VALUES (6, N'MECHANICAL PETROL ENGINES')
INSERT [dbo].[tipo_propulsion] ([cod_propulsion], [descripcion]) VALUES (7, N'MECHANICAL NUCLEAR ENERGY')
SET IDENTITY_INSERT [dbo].[tipo_propulsion] OFF
SET IDENTITY_INSERT [dbo].[tonelajes] ON 

INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (1, N'5', N'50')
INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (2, N'51', N'200')
INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (3, N'201', N'500')
INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (4, N'501', N'1000')
INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (5, N'1001', N'2000')
INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (6, N'2001', N'5000')
INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (7, N'5001', N'10000')
INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (8, N'10001', N'15000')
INSERT [dbo].[tonelajes] ([cod_tonelaje], [rango_de], [rango_a]) VALUES (9, N'15001', NULL)
SET IDENTITY_INSERT [dbo].[tonelajes] OFF
SET IDENTITY_INSERT [dbo].[zonas_gmdss] ON 

INSERT [dbo].[zonas_gmdss] ([cod_zona], [descripcion]) VALUES (1, N'A1')
INSERT [dbo].[zonas_gmdss] ([cod_zona], [descripcion]) VALUES (2, N'A1 A2')
INSERT [dbo].[zonas_gmdss] ([cod_zona], [descripcion]) VALUES (3, N'A1 A2 A3')
INSERT [dbo].[zonas_gmdss] ([cod_zona], [descripcion]) VALUES (4, N'A1 A2 A3 A4')
SET IDENTITY_INSERT [dbo].[zonas_gmdss] OFF
ALTER TABLE [dbo].[armador_buque]  WITH CHECK ADD  CONSTRAINT [FK_armador_buque_buques1] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[armador_buque] CHECK CONSTRAINT [FK_armador_buque_buques1]
GO
ALTER TABLE [dbo].[armador_buque]  WITH CHECK ADD  CONSTRAINT [FK_armador_buque_personas] FOREIGN KEY([pasaporte])
REFERENCES [dbo].[personas] ([pasaporte])
GO
ALTER TABLE [dbo].[armador_buque] CHECK CONSTRAINT [FK_armador_buque_personas]
GO
ALTER TABLE [dbo].[arrendatario_buque]  WITH CHECK ADD  CONSTRAINT [FK_arrendatario_buque_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[arrendatario_buque] CHECK CONSTRAINT [FK_arrendatario_buque_buques]
GO
ALTER TABLE [dbo].[arrendatario_buque]  WITH CHECK ADD  CONSTRAINT [FK_arrendatario_buque_personas] FOREIGN KEY([pasaporte])
REFERENCES [dbo].[personas] ([pasaporte])
GO
ALTER TABLE [dbo].[arrendatario_buque] CHECK CONSTRAINT [FK_arrendatario_buque_personas]
GO
ALTER TABLE [dbo].[aviso_pago]  WITH CHECK ADD  CONSTRAINT [FK_aviso_pago_cotizacion] FOREIGN KEY([no_cotizacion], [omi])
REFERENCES [dbo].[cotizacion] ([no_cotizacion], [omi])
GO
ALTER TABLE [dbo].[aviso_pago] CHECK CONSTRAINT [FK_aviso_pago_cotizacion]
GO
ALTER TABLE [dbo].[aviso_pago]  WITH CHECK ADD  CONSTRAINT [FK_aviso_pago_estado_aviso] FOREIGN KEY([cod_estadoaviso])
REFERENCES [dbo].[estado_aviso] ([cod_estadoaviso])
GO
ALTER TABLE [dbo].[aviso_pago] CHECK CONSTRAINT [FK_aviso_pago_estado_aviso]
GO
ALTER TABLE [dbo].[BarcoEstacionRadio]  WITH CHECK ADD  CONSTRAINT [FK_BarcoEstacionRadio_buque_omi] FOREIGN KEY([CodigoBarco])
REFERENCES [dbo].[buque_omi] ([CodigoBarco])
GO
ALTER TABLE [dbo].[BarcoEstacionRadio] CHECK CONSTRAINT [FK_BarcoEstacionRadio_buque_omi]
GO
ALTER TABLE [dbo].[BarcoEstacionRadio]  WITH CHECK ADD  CONSTRAINT [FK_BarcoEstacionRadio_TipoEstacionFrecuencia] FOREIGN KEY([CodigoEstacionRadio])
REFERENCES [dbo].[TipoEstacionFrecuencia] ([CodigoEstacionRadio])
GO
ALTER TABLE [dbo].[BarcoEstacionRadio] CHECK CONSTRAINT [FK_BarcoEstacionRadio_TipoEstacionFrecuencia]
GO
ALTER TABLE [dbo].[BarcoINMARSAT]  WITH CHECK ADD  CONSTRAINT [FK_BarcoINMARSAT_buque_omi] FOREIGN KEY([CodigoBarco])
REFERENCES [dbo].[buque_omi] ([CodigoBarco])
GO
ALTER TABLE [dbo].[BarcoINMARSAT] CHECK CONSTRAINT [FK_BarcoINMARSAT_buque_omi]
GO
ALTER TABLE [dbo].[BarcoRadionavegacion]  WITH CHECK ADD  CONSTRAINT [FK_BarcoRadionavegacion_buque_omi] FOREIGN KEY([CodigoBarco])
REFERENCES [dbo].[buque_omi] ([CodigoBarco])
GO
ALTER TABLE [dbo].[BarcoRadionavegacion] CHECK CONSTRAINT [FK_BarcoRadionavegacion_buque_omi]
GO
ALTER TABLE [dbo].[BarcoRadionavegacion]  WITH CHECK ADD  CONSTRAINT [FK_BarcoRadionavegacion_TipoRadionavegacion] FOREIGN KEY([CodigoRadioNavegacion])
REFERENCES [dbo].[TipoRadionavegacion] ([CodigoRadioNavegacion])
GO
ALTER TABLE [dbo].[BarcoRadionavegacion] CHECK CONSTRAINT [FK_BarcoRadionavegacion_TipoRadionavegacion]
GO
ALTER TABLE [dbo].[buque_omi]  WITH CHECK ADD  CONSTRAINT [FK_buque_omi_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[buque_omi] CHECK CONSTRAINT [FK_buque_omi_buques]
GO
ALTER TABLE [dbo].[buques]  WITH CHECK ADD  CONSTRAINT [FK_buques_material_casco] FOREIGN KEY([cod_material])
REFERENCES [dbo].[material_casco] ([cod_material])
GO
ALTER TABLE [dbo].[buques] CHECK CONSTRAINT [FK_buques_material_casco]
GO
ALTER TABLE [dbo].[buques]  WITH CHECK ADD  CONSTRAINT [FK_buques_nacionalidades1] FOREIGN KEY([cod_nacionalidad])
REFERENCES [dbo].[nacionalidades] ([cod_nacionalidad])
GO
ALTER TABLE [dbo].[buques] CHECK CONSTRAINT [FK_buques_nacionalidades1]
GO
ALTER TABLE [dbo].[buques]  WITH CHECK ADD  CONSTRAINT [FK_buques_sub_clasificacion] FOREIGN KEY([cod_clase], [sub_clasificacion])
REFERENCES [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion])
GO
ALTER TABLE [dbo].[buques] CHECK CONSTRAINT [FK_buques_sub_clasificacion]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_buques]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_buques1] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_buques1]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_estado_cotizacion] FOREIGN KEY([cod_estadocotizacion])
REFERENCES [dbo].[estado_cotizacion] ([cod_estadocotizacion])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_estado_cotizacion]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_nacionalidades] FOREIGN KEY([cod_nacionalidad])
REFERENCES [dbo].[nacionalidades] ([cod_nacionalidad])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_nacionalidades]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_sub_clasificacion] FOREIGN KEY([cod_clase], [sub_clasificacion])
REFERENCES [dbo].[sub_clasificacion] ([cod_clase], [sub_clasificacion])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_sub_clasificacion]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_usuarios] FOREIGN KEY([cod_usuario])
REFERENCES [dbo].[usuarios] ([cod_usuario])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_usuarios]
GO
ALTER TABLE [dbo].[detalle_aviso]  WITH CHECK ADD  CONSTRAINT [FK_detalle_aviso_aviso_pago] FOREIGN KEY([no_aviso])
REFERENCES [dbo].[aviso_pago] ([no_aviso])
GO
ALTER TABLE [dbo].[detalle_aviso] CHECK CONSTRAINT [FK_detalle_aviso_aviso_pago]
GO
ALTER TABLE [dbo].[detalle_aviso]  WITH CHECK ADD  CONSTRAINT [FK_detalle_aviso_tarifas] FOREIGN KEY([cod_tipotarifas])
REFERENCES [dbo].[tarifas] ([cod_tipotarifas])
GO
ALTER TABLE [dbo].[detalle_aviso] CHECK CONSTRAINT [FK_detalle_aviso_tarifas]
GO
ALTER TABLE [dbo].[documento_adjunto]  WITH CHECK ADD  CONSTRAINT [FK_documento_adjunto_patente] FOREIGN KEY([correlativo_patente])
REFERENCES [dbo].[patente] ([correlativo_patente])
GO
ALTER TABLE [dbo].[documento_adjunto] CHECK CONSTRAINT [FK_documento_adjunto_patente]
GO
ALTER TABLE [dbo].[documento_adjunto]  WITH CHECK ADD  CONSTRAINT [FK_documento_adjunto_tipo_documento] FOREIGN KEY([cod_tipodoc])
REFERENCES [dbo].[tipo_documento] ([cod_tipodoc])
GO
ALTER TABLE [dbo].[documento_adjunto] CHECK CONSTRAINT [FK_documento_adjunto_tipo_documento]
GO
ALTER TABLE [dbo].[EquipoAuxiliares]  WITH CHECK ADD  CONSTRAINT [FK_EquipoAuxiliares_buque_omi] FOREIGN KEY([codigoBarco])
REFERENCES [dbo].[buque_omi] ([CodigoBarco])
GO
ALTER TABLE [dbo].[EquipoAuxiliares] CHECK CONSTRAINT [FK_EquipoAuxiliares_buque_omi]
GO
ALTER TABLE [dbo].[EquipoAuxiliares]  WITH CHECK ADD  CONSTRAINT [FK_EquipoAuxiliares_TipoRadiobaliza] FOREIGN KEY([tipoRadioBaliza])
REFERENCES [dbo].[TipoRadiobaliza] ([CodigoRadiobaliza])
GO
ALTER TABLE [dbo].[EquipoAuxiliares] CHECK CONSTRAINT [FK_EquipoAuxiliares_TipoRadiobaliza]
GO
ALTER TABLE [dbo].[motores_buque]  WITH CHECK ADD  CONSTRAINT [FK_motores_buque_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[motores_buque] CHECK CONSTRAINT [FK_motores_buque_buques]
GO
ALTER TABLE [dbo].[nacionalidades]  WITH CHECK ADD  CONSTRAINT [FK_nacionalidades_paises] FOREIGN KEY([cod_pais])
REFERENCES [dbo].[paises] ([cod_pais])
GO
ALTER TABLE [dbo].[nacionalidades] CHECK CONSTRAINT [FK_nacionalidades_paises]
GO
ALTER TABLE [dbo].[oficinas]  WITH CHECK ADD  CONSTRAINT [FK_oficinas_usuarios] FOREIGN KEY([cod_usuario])
REFERENCES [dbo].[usuarios] ([cod_usuario])
GO
ALTER TABLE [dbo].[oficinas] CHECK CONSTRAINT [FK_oficinas_usuarios]
GO
ALTER TABLE [dbo].[patente]  WITH CHECK ADD  CONSTRAINT [FK_patente_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[patente] CHECK CONSTRAINT [FK_patente_buques]
GO
ALTER TABLE [dbo].[patente]  WITH CHECK ADD  CONSTRAINT [FK_patente_estado_patente] FOREIGN KEY([cod_estadopatente])
REFERENCES [dbo].[estado_patente] ([cod_estadopatente])
GO
ALTER TABLE [dbo].[patente] CHECK CONSTRAINT [FK_patente_estado_patente]
GO
ALTER TABLE [dbo].[patente]  WITH CHECK ADD  CONSTRAINT [FK_patente_puerto_registro1] FOREIGN KEY([cod_puerto])
REFERENCES [dbo].[puerto_registro] ([cod_puerto])
GO
ALTER TABLE [dbo].[patente] CHECK CONSTRAINT [FK_patente_puerto_registro1]
GO
ALTER TABLE [dbo].[personas]  WITH CHECK ADD  CONSTRAINT [FK_personas_nacionalidades] FOREIGN KEY([cod_nacionalidad])
REFERENCES [dbo].[nacionalidades] ([cod_nacionalidad])
GO
ALTER TABLE [dbo].[personas] CHECK CONSTRAINT [FK_personas_nacionalidades]
GO
ALTER TABLE [dbo].[personas]  WITH CHECK ADD  CONSTRAINT [FK_personas_paises] FOREIGN KEY([cod_pais])
REFERENCES [dbo].[paises] ([cod_pais])
GO
ALTER TABLE [dbo].[personas] CHECK CONSTRAINT [FK_personas_paises]
GO
ALTER TABLE [dbo].[personas]  WITH CHECK ADD  CONSTRAINT [FK_personas_tipo_personas] FOREIGN KEY([cod_tipopersonas])
REFERENCES [dbo].[tipo_personas] ([cod_tipopersonas])
GO
ALTER TABLE [dbo].[personas] CHECK CONSTRAINT [FK_personas_tipo_personas]
GO
ALTER TABLE [dbo].[representantelegal]  WITH CHECK ADD  CONSTRAINT [FK_representantelegal_personas] FOREIGN KEY([pasaporte_cliente])
REFERENCES [dbo].[personas] ([pasaporte])
GO
ALTER TABLE [dbo].[representantelegal] CHECK CONSTRAINT [FK_representantelegal_personas]
GO
ALTER TABLE [dbo].[sistema_propulsion]  WITH CHECK ADD  CONSTRAINT [FK_sistema_propulsion_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[sistema_propulsion] CHECK CONSTRAINT [FK_sistema_propulsion_buques]
GO
ALTER TABLE [dbo].[sistema_propulsion]  WITH CHECK ADD  CONSTRAINT [FK_sistema_propulsion_tipo_propulsion] FOREIGN KEY([cod_propulsion])
REFERENCES [dbo].[tipo_propulsion] ([cod_propulsion])
GO
ALTER TABLE [dbo].[sistema_propulsion] CHECK CONSTRAINT [FK_sistema_propulsion_tipo_propulsion]
GO
ALTER TABLE [dbo].[solicitud_cmt]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_cmt_areas_comercio] FOREIGN KEY([cod_areacom])
REFERENCES [dbo].[areas_comercio] ([cod_areacom])
GO
ALTER TABLE [dbo].[solicitud_cmt] CHECK CONSTRAINT [FK_solicitud_cmt_areas_comercio]
GO
ALTER TABLE [dbo].[solicitud_cmt]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_cmt_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[solicitud_cmt] CHECK CONSTRAINT [FK_solicitud_cmt_buques]
GO
ALTER TABLE [dbo].[solicitud_cmt]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_cmt_estado_scmt] FOREIGN KEY([cod_scmt])
REFERENCES [dbo].[estado_scmt] ([cod_scmt])
GO
ALTER TABLE [dbo].[solicitud_cmt] CHECK CONSTRAINT [FK_solicitud_cmt_estado_scmt]
GO
ALTER TABLE [dbo].[solicitud_cmt]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_cmt_puerto_registro] FOREIGN KEY([cod_puerto])
REFERENCES [dbo].[puerto_registro] ([cod_puerto])
GO
ALTER TABLE [dbo].[solicitud_cmt] CHECK CONSTRAINT [FK_solicitud_cmt_puerto_registro]
GO
ALTER TABLE [dbo].[solicitud_cmt]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_cmt_rangos_navegacion] FOREIGN KEY([cod_rangonav])
REFERENCES [dbo].[rangos_navegacion] ([cod_rangonav])
GO
ALTER TABLE [dbo].[solicitud_cmt] CHECK CONSTRAINT [FK_solicitud_cmt_rangos_navegacion]
GO
ALTER TABLE [dbo].[solicitud_cmt]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_cmt_usuarios] FOREIGN KEY([cod_usuario])
REFERENCES [dbo].[usuarios] ([cod_usuario])
GO
ALTER TABLE [dbo].[solicitud_cmt] CHECK CONSTRAINT [FK_solicitud_cmt_usuarios]
GO
ALTER TABLE [dbo].[solicitud_cmt]  WITH CHECK ADD  CONSTRAINT [FK_solicitud_cmt_zonas_gmdss] FOREIGN KEY([cod_zona])
REFERENCES [dbo].[zonas_gmdss] ([cod_zona])
GO
ALTER TABLE [dbo].[solicitud_cmt] CHECK CONSTRAINT [FK_solicitud_cmt_zonas_gmdss]
GO
ALTER TABLE [dbo].[sub_clasificacion]  WITH CHECK ADD  CONSTRAINT [FK_sub_clasificacion_clasificacion_buque] FOREIGN KEY([cod_clase])
REFERENCES [dbo].[clasificacion_buque] ([cod_clase])
GO
ALTER TABLE [dbo].[sub_clasificacion] CHECK CONSTRAINT [FK_sub_clasificacion_clasificacion_buque]
GO
ALTER TABLE [dbo].[tarifas]  WITH CHECK ADD  CONSTRAINT [FK_tarifas_conceptos_cobro] FOREIGN KEY([cod_concepto])
REFERENCES [dbo].[conceptos_cobro] ([cod_concepto])
GO
ALTER TABLE [dbo].[tarifas] CHECK CONSTRAINT [FK_tarifas_conceptos_cobro]
GO
ALTER TABLE [dbo].[tarifas]  WITH CHECK ADD  CONSTRAINT [FK_tarifas_tonelajes] FOREIGN KEY([cod_tonelaje])
REFERENCES [dbo].[tonelajes] ([cod_tonelaje])
GO
ALTER TABLE [dbo].[tarifas] CHECK CONSTRAINT [FK_tarifas_tonelajes]
GO
ALTER TABLE [dbo].[TipoEstacionFrecuencia]  WITH CHECK ADD  CONSTRAINT [FK_TipoEstacionFrecuencia_TipoEstacionRadioElectrica] FOREIGN KEY([CodigoEstacionRadio])
REFERENCES [dbo].[TipoEstacionRadioElectrica] ([CodigoEstacionRadio])
GO
ALTER TABLE [dbo].[TipoEstacionFrecuencia] CHECK CONSTRAINT [FK_TipoEstacionFrecuencia_TipoEstacionRadioElectrica]
GO
ALTER TABLE [dbo].[TipoEstacionFrecuencia]  WITH CHECK ADD  CONSTRAINT [FK_TipoEstacionFrecuencia_TipoFrecuencia] FOREIGN KEY([CodigoFrecuencia])
REFERENCES [dbo].[TipoFrecuencia] ([CodigoFrecuencia])
GO
ALTER TABLE [dbo].[TipoEstacionFrecuencia] CHECK CONSTRAINT [FK_TipoEstacionFrecuencia_TipoFrecuencia]
GO
ALTER TABLE [dbo].[tripulacion]  WITH CHECK ADD  CONSTRAINT [FK_tripulacion_grados] FOREIGN KEY([cod_grado])
REFERENCES [dbo].[grados] ([cod_grado])
GO
ALTER TABLE [dbo].[tripulacion] CHECK CONSTRAINT [FK_tripulacion_grados]
GO
ALTER TABLE [dbo].[tripulacion]  WITH CHECK ADD  CONSTRAINT [FK_tripulacion_solicitud_cmt] FOREIGN KEY([cod_cmt])
REFERENCES [dbo].[solicitud_cmt] ([cod_cmt])
GO
ALTER TABLE [dbo].[tripulacion] CHECK CONSTRAINT [FK_tripulacion_solicitud_cmt]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_estado_usuarios] FOREIGN KEY([cod_estadousuario])
REFERENCES [dbo].[estado_usuarios] ([cod_estadousuario])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_estado_usuarios]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_personas] FOREIGN KEY([pasaporte])
REFERENCES [dbo].[personas] ([pasaporte])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_personas]
GO
ALTER TABLE [dbo].[usuarios]  WITH CHECK ADD  CONSTRAINT [FK_usuarios_roles_usuario] FOREIGN KEY([cod_rol])
REFERENCES [dbo].[roles_usuario] ([cod_rol])
GO
ALTER TABLE [dbo].[usuarios] CHECK CONSTRAINT [FK_usuarios_roles_usuario]
GO
USE [master]
GO
ALTER DATABASE [buquesweb] SET  READ_WRITE 
GO
