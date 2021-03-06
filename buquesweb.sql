USE [master]
GO
/****** Object:  Database [buquesweb]    Script Date: 31/3/2017 7:05:46 p. m. ******/

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
/****** Object:  Table [dbo].[area_operacion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[area_operacion](
	[cod_areaoperacion] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_area_operacion] PRIMARY KEY CLUSTERED 
(
	[cod_areaoperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[armador_buque]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[armador_buque](
	[cod_armador] [int] NOT NULL,
	[omi] [varchar](50) NOT NULL,
	[pasaporte] [varchar](15) NOT NULL,
	[propiedad] [float] NOT NULL,
 CONSTRAINT [PK_armador_buque] PRIMARY KEY CLUSTERED 
(
	[cod_armador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[arrendatario_buque]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[arrendatario_buque](
	[cod_arrendatario] [int] NOT NULL,
	[omi] [varchar](50) NULL,
	[pasaporte] [varchar](15) NULL,
 CONSTRAINT [PK_arrendatario_buque] PRIMARY KEY CLUSTERED 
(
	[cod_arrendatario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aviso_pago]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aviso_pago](
	[no_aviso] [varchar](20) NOT NULL,
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
/****** Object:  Table [dbo].[BarcoEstacionRadio]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[BarcoINMARSAT]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[BarcoRadionavegacion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[buque_omi]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[buques]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[clasificacion_buque]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clasificacion_buque](
	[cod_clase] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
	[sub_clasificacion] [int] NOT NULL,
 CONSTRAINT [PK_clasificacion_buque] PRIMARY KEY CLUSTERED 
(
	[cod_clase] ASC,
	[sub_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[concepto_tarifas]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[concepto_tarifas](
	[cod_concepto] [int] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_concepto_tarifas] PRIMARY KEY CLUSTERED 
(
	[cod_concepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[conceptos_cobro]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conceptos_cobro](
	[cod_concepto] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_conceptos_cobro] PRIMARY KEY CLUSTERED 
(
	[cod_concepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cotizacion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
 CONSTRAINT [PK_cotizacion] PRIMARY KEY CLUSTERED 
(
	[no_cotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cotizacion_monto]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cotizacion_monto](
	[no_cotizacion] [int] NOT NULL,
	[cod_monto] [int] NOT NULL,
	[cod_concepto] [int] NOT NULL,
	[monto] [int] NOT NULL,
 CONSTRAINT [PK_cotizacion_monto] PRIMARY KEY CLUSTERED 
(
	[no_cotizacion] ASC,
	[cod_monto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[documento_adjunto]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documento_adjunto](
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
/****** Object:  Table [dbo].[EquipoAuxiliares]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[estado_aviso]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_aviso](
	[cod_estadoaviso] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_estado_aviso] PRIMARY KEY CLUSTERED 
(
	[cod_estadoaviso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_cotizacion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_cotizacion](
	[cod_estadocotizacion] [int] NOT NULL,
	[descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_estado_cotizacion] PRIMARY KEY CLUSTERED 
(
	[cod_estadocotizacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_patente]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_patente](
	[cod_estadopatente] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_estado_patente] PRIMARY KEY CLUSTERED 
(
	[cod_estadopatente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[estado_usuarios]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado_usuarios](
	[cod_estadousuario] [int] NOT NULL,
	[descripcion] [varchar](60) NOT NULL,
 CONSTRAINT [PK_estado_usuarios] PRIMARY KEY CLUSTERED 
(
	[cod_estadousuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[material_casco]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[material_casco](
	[cod_material] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_material_casco] PRIMARY KEY CLUSTERED 
(
	[cod_material] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[motores_buque]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[motores_buque](
	[omi] [varchar](50) NULL,
	[cod_motor] [int] NOT NULL,
	[marcha_motor] [varchar](100) NULL,
	[modelo_motor] [varchar](100) NULL,
	[velocidad] [varchar](50) NULL,
	[potencia_motor] [varchar](100) NULL,
 CONSTRAINT [PK_motores_buque] PRIMARY KEY CLUSTERED 
(
	[cod_motor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[nacionalidades]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[paises]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[patente]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[patente](
	[correlativo_patente] [int] NOT NULL,
	[omi] [varchar](50) NOT NULL,
	[cod_puerto] [int] NOT NULL,
	[cod_tonelaje] [int] NOT NULL,
	[registro_matricula] [varchar](50) NOT NULL,
	[fecha_emision] [date] NOT NULL,
	[fecha_expiracion] [date] NOT NULL,
	[lugar_expedicion_patente] [varchar](50) NOT NULL,
	[cod_pais] [int] NOT NULL,
	[cod_usuario] [int] NULL,
	[no_cotizacion] [int] NULL,
	[cod_estadopatente] [int] NULL,
	[no_papel] [int] NULL,
 CONSTRAINT [PK_patente] PRIMARY KEY CLUSTERED 
(
	[correlativo_patente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[personas]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personas](
	[pasaporte] [varchar](15) NOT NULL,
	[nombre_completo] [varchar](150) NOT NULL,
	[cod_tipopersonas] [varchar](2) NOT NULL,
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
/****** Object:  Table [dbo].[puerto_operacion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puerto_operacion](
	[cod_poperacion] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[cod_pais] [varchar](50) NOT NULL,
 CONSTRAINT [PK_puerto_operacion] PRIMARY KEY CLUSTERED 
(
	[cod_poperacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[puerto_registro]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[puerto_registro](
	[cod_puerto] [int] NOT NULL,
	[letra_puerto] [varchar](2) NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_puerto_registro] PRIMARY KEY CLUSTERED 
(
	[cod_puerto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[representantelegal]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[roles_usuario]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_usuario](
	[cod_rol] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_roles_usuario] PRIMARY KEY CLUSTERED 
(
	[cod_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sistema_propulsion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sistema_propulsion](
	[omi] [varchar](50) NOT NULL,
	[cod_sistema] [int] NOT NULL,
	[cod_propulsion] [int] NULL,
	[combustible] [varchar](50) NOT NULL,
	[numero_motor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_sistema_propulsion] PRIMARY KEY CLUSTERED 
(
	[cod_sistema] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sub_clasificacion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_clasificacion](
	[sub_clasificacion] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_sub_clasificacion] PRIMARY KEY CLUSTERED 
(
	[sub_clasificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tarida_tonelaje]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarida_tonelaje](
	[cod_tarifatonelaje] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_tarida_tonelaje] PRIMARY KEY CLUSTERED 
(
	[cod_tarifatonelaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tarifas]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tarifas](
	[cod_tipotarifas] [int] NOT NULL,
	[cod_concepto] [int] NOT NULL,
	[valor_lempiras] [money] NOT NULL,
	[valor_dolares] [money] NOT NULL,
	[monto] [nchar](10) NULL,
	[cod_tarifatonelaje] [int] NULL,
 CONSTRAINT [PK_tarifas] PRIMARY KEY CLUSTERED 
(
	[cod_tipotarifas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_documento]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[tipo_navegacion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_navegacion](
	[cod_tiponavegacion] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tipo_navegacion] PRIMARY KEY CLUSTERED 
(
	[cod_tiponavegacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_personas]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_personas](
	[cod_tipopersonas] [varchar](2) NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tipo_personas] PRIMARY KEY CLUSTERED 
(
	[cod_tipopersonas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipo_propulsion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_propulsion](
	[cod_propulsion] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tipo_propulsion] PRIMARY KEY CLUSTERED 
(
	[cod_propulsion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoEstacionFrecuencia]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[TipoEstacionRadioElectrica]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[TipoFrecuencia]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[TipoRadiobaliza]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[TipoRadionavegacion]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
/****** Object:  Table [dbo].[tonelajes]    Script Date: 31/3/2017 7:05:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tonelajes](
	[cod_tonelaje] [int] NOT NULL,
	[rango_de] [varchar](50) NOT NULL,
	[rango_a] [varchar](50) NULL,
 CONSTRAINT [PK_tonelajes] PRIMARY KEY CLUSTERED 
(
	[cod_tonelaje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 31/3/2017 7:05:46 p. m. ******/
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
ALTER TABLE [dbo].[aviso_pago]  WITH CHECK ADD  CONSTRAINT [FK_aviso_pago_cotizacion] FOREIGN KEY([no_cotizacion])
REFERENCES [dbo].[cotizacion] ([no_cotizacion])
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
ALTER TABLE [dbo].[buques]  WITH CHECK ADD  CONSTRAINT [FK_buques_clasificacion_buque] FOREIGN KEY([cod_clase], [sub_clasificacion])
REFERENCES [dbo].[clasificacion_buque] ([cod_clase], [sub_clasificacion])
GO
ALTER TABLE [dbo].[buques] CHECK CONSTRAINT [FK_buques_clasificacion_buque]
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
ALTER TABLE [dbo].[clasificacion_buque]  WITH CHECK ADD  CONSTRAINT [FK_clasificacion_buque_cotizacion] FOREIGN KEY([cod_clase])
REFERENCES [dbo].[cotizacion] ([no_cotizacion])
GO
ALTER TABLE [dbo].[clasificacion_buque] CHECK CONSTRAINT [FK_clasificacion_buque_cotizacion]
GO
ALTER TABLE [dbo].[clasificacion_buque]  WITH CHECK ADD  CONSTRAINT [FK_clasificacion_buque_cotizacion1] FOREIGN KEY([sub_clasificacion])
REFERENCES [dbo].[cotizacion] ([no_cotizacion])
GO
ALTER TABLE [dbo].[clasificacion_buque] CHECK CONSTRAINT [FK_clasificacion_buque_cotizacion1]
GO
ALTER TABLE [dbo].[clasificacion_buque]  WITH CHECK ADD  CONSTRAINT [FK_clasificacion_buque_sub_clasificacion] FOREIGN KEY([sub_clasificacion])
REFERENCES [dbo].[sub_clasificacion] ([sub_clasificacion])
GO
ALTER TABLE [dbo].[clasificacion_buque] CHECK CONSTRAINT [FK_clasificacion_buque_sub_clasificacion]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_buques]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_estado_cotizacion] FOREIGN KEY([cod_estadocotizacion])
REFERENCES [dbo].[estado_cotizacion] ([cod_estadocotizacion])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_estado_cotizacion]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_puerto_registro1] FOREIGN KEY([cod_puerto])
REFERENCES [dbo].[puerto_registro] ([cod_puerto])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_puerto_registro1]
GO
ALTER TABLE [dbo].[cotizacion]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_usuarios] FOREIGN KEY([cod_usuario])
REFERENCES [dbo].[usuarios] ([cod_usuario])
GO
ALTER TABLE [dbo].[cotizacion] CHECK CONSTRAINT [FK_cotizacion_usuarios]
GO
ALTER TABLE [dbo].[cotizacion_monto]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_monto_conceptos_cobro] FOREIGN KEY([cod_concepto])
REFERENCES [dbo].[conceptos_cobro] ([cod_concepto])
GO
ALTER TABLE [dbo].[cotizacion_monto] CHECK CONSTRAINT [FK_cotizacion_monto_conceptos_cobro]
GO
ALTER TABLE [dbo].[cotizacion_monto]  WITH CHECK ADD  CONSTRAINT [FK_cotizacion_monto_cotizacion1] FOREIGN KEY([no_cotizacion])
REFERENCES [dbo].[cotizacion] ([no_cotizacion])
GO
ALTER TABLE [dbo].[cotizacion_monto] CHECK CONSTRAINT [FK_cotizacion_monto_cotizacion1]
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
ALTER TABLE [dbo].[patente]  WITH CHECK ADD  CONSTRAINT [FK_patente_buques] FOREIGN KEY([omi])
REFERENCES [dbo].[buques] ([omi])
GO
ALTER TABLE [dbo].[patente] CHECK CONSTRAINT [FK_patente_buques]
GO
ALTER TABLE [dbo].[patente]  WITH CHECK ADD  CONSTRAINT [FK_patente_cotizacion] FOREIGN KEY([no_cotizacion])
REFERENCES [dbo].[cotizacion] ([no_cotizacion])
GO
ALTER TABLE [dbo].[patente] CHECK CONSTRAINT [FK_patente_cotizacion]
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
ALTER TABLE [dbo].[patente]  WITH CHECK ADD  CONSTRAINT [FK_patente_tonelajes] FOREIGN KEY([cod_tonelaje])
REFERENCES [dbo].[tonelajes] ([cod_tonelaje])
GO
ALTER TABLE [dbo].[patente] CHECK CONSTRAINT [FK_patente_tonelajes]
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
ALTER TABLE [dbo].[tarifas]  WITH CHECK ADD  CONSTRAINT [FK_tarifas_conceptos_cobro] FOREIGN KEY([cod_concepto])
REFERENCES [dbo].[conceptos_cobro] ([cod_concepto])
GO
ALTER TABLE [dbo].[tarifas] CHECK CONSTRAINT [FK_tarifas_conceptos_cobro]
GO
ALTER TABLE [dbo].[tarifas]  WITH CHECK ADD  CONSTRAINT [FK_tarifas_tarida_tonelaje] FOREIGN KEY([cod_tarifatonelaje])
REFERENCES [dbo].[tarida_tonelaje] ([cod_tarifatonelaje])
GO
ALTER TABLE [dbo].[tarifas] CHECK CONSTRAINT [FK_tarifas_tarida_tonelaje]
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
