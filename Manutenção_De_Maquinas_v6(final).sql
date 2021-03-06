CREATE DATABASE [Manutencao_De_Maquinas]
USE [Manutencao_De_Maquinas]
GO
/****** Object:  Database [Manutencao_De_Maquinas]    Script Date: 20/07/2017 15:28:13 ******/
CREATE DATABASE [Manutencao_De_Maquinas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Manutencao_De_Maquinas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL_LCS197\MSSQL\DATA\Manutencao_De_Maquinas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Manutencao_De_Maquinas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQL_LCS197\MSSQL\DATA\Manutencao_De_Maquinas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Manutencao_De_Maquinas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET  MULTI_USER 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET QUERY_STORE = OFF
GO
USE [Manutencao_De_Maquinas]
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
USE [Manutencao_De_Maquinas]
GO
/****** Object:  User [admin]    Script Date: 20/07/2017 15:28:13 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[C_F]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[C_F](
	[ID_Consumiveis] [int] NULL,
	[ID_Fornecedores] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Consumiveis]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumiveis](
	[ID_Consumiveis] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Consumiveis] [nchar](50) NOT NULL,
	[Quantidade_Consumiveis] [int] NOT NULL,
	[Max_Consumiveis] [int] NOT NULL,
	[Min_Consumiveis] [int] NOT NULL,
	[Encomenda_Quantidade_Consumiveis] [int] NOT NULL,
	[Foto_Consumiveis] [image] NOT NULL,
 CONSTRAINT [PK_Consumiveis] PRIMARY KEY CLUSTERED 
(
	[ID_Consumiveis] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fornecedores]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedores](
	[ID_Fornecedores] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Fornecedores] [nchar](50) NOT NULL,
	[Mail_Fornecedores] [nchar](50) NULL,
	[Telefone_Fornecedores] [nvarchar](15) NULL,
	[Foto_Fornecedores] [image] NOT NULL,
 CONSTRAINT [PK_Fornecedores] PRIMARY KEY CLUSTERED 
(
	[ID_Fornecedores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[H_C]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[H_C](
	[ID_Consumiveis] [int] NOT NULL,
	[ID_Historico] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[H_L]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[H_L](
	[ID_Logins] [int] NOT NULL,
	[ID_Historico] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[H_M]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[H_M](
	[ID_Historico] [int] NOT NULL,
	[ID_Maquinas] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Historico]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Historico](
	[ID_Historico] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Historico] [nchar](30) NOT NULL,
	[Relatorio_Historico] [nvarchar](max) NULL,
	[Data_Inicio_Historico] [date] NOT NULL,
	[Nome_Tarefas] [nchar](70) NOT NULL,
	[Data_Fin_Historico] [date] NOT NULL,
	[ID_Tarefas] [int] NULL,
	[Data_Prevista_Tarefas] [date] NULL,
	[Vezes_Adiada] [int] NULL,
 CONSTRAINT [PK_Historico] PRIMARY KEY CLUSTERED 
(
	[ID_Historico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logins]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logins](
	[ID_Logins] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Logins] [nchar](50) NOT NULL,
	[Pass_Logins] [nchar](50) NOT NULL,
	[Foto_Logins] [image] NOT NULL,
	[Tipo_Logins] [int] NOT NULL,
 CONSTRAINT [PK_Logins_1] PRIMARY KEY CLUSTERED 
(
	[ID_Logins] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[M_L]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_L](
	[ID_Logins] [int] NULL,
	[ID_Maquinas] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Maquinas]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquinas](
	[ID_Maquinas] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Maquinas] [nchar](50) NOT NULL,
	[Foto_Maquinas] [image] NOT NULL,
 CONSTRAINT [PK_Maquinas] PRIMARY KEY CLUSTERED 
(
	[ID_Maquinas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_C]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_C](
	[ID_Tarefas] [int] NULL,
	[ID_Consumiveis] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_L]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_L](
	[ID_Tarefas] [int] NULL,
	[ID_Logins] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_M]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_M](
	[ID_Tarefas] [int] NULL,
	[ID_Maquinas] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tarefa_Agendadas]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarefa_Agendadas](
	[ID_Tarefa_Agendadas] [int] IDENTITY(1,1) NOT NULL,
	[ID_Tarefas] [int] NOT NULL,
	[Data_Tarefa_Agendadas] [date] NOT NULL,
	[Vezes_Adiada_Tarefa_Agendadas] [int] NOT NULL,
	[Data_Inicial_Previsto_Tarefa_Agendadas] [date] NOT NULL,
 CONSTRAINT [PK_Tarefa_Agendadas] PRIMARY KEY CLUSTERED 
(
	[ID_Tarefa_Agendadas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tarefas]    Script Date: 20/07/2017 15:28:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarefas](
	[ID_Tarefas] [int] IDENTITY(1,1) NOT NULL,
	[Nome_Tarefas] [nchar](50) NOT NULL,
	[Periodo_Tarefas] [int] NULL,
	[Foto_Tarefas] [image] NOT NULL,
 CONSTRAINT [PK_Tarefas] PRIMARY KEY CLUSTERED 
(
	[ID_Tarefas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[C_F]  WITH CHECK ADD  CONSTRAINT [FK_C_F_Consumiveis] FOREIGN KEY([ID_Consumiveis])
REFERENCES [dbo].[Consumiveis] ([ID_Consumiveis])
GO
ALTER TABLE [dbo].[C_F] CHECK CONSTRAINT [FK_C_F_Consumiveis]
GO
ALTER TABLE [dbo].[C_F]  WITH CHECK ADD  CONSTRAINT [FK_C_F_Fornecedores] FOREIGN KEY([ID_Fornecedores])
REFERENCES [dbo].[Fornecedores] ([ID_Fornecedores])
GO
ALTER TABLE [dbo].[C_F] CHECK CONSTRAINT [FK_C_F_Fornecedores]
GO
ALTER TABLE [dbo].[H_C]  WITH CHECK ADD  CONSTRAINT [FK_H_C_Consumiveis] FOREIGN KEY([ID_Consumiveis])
REFERENCES [dbo].[Consumiveis] ([ID_Consumiveis])
GO
ALTER TABLE [dbo].[H_C] CHECK CONSTRAINT [FK_H_C_Consumiveis]
GO
ALTER TABLE [dbo].[H_C]  WITH CHECK ADD  CONSTRAINT [FK_H_C_Historico] FOREIGN KEY([ID_Historico])
REFERENCES [dbo].[Historico] ([ID_Historico])
GO
ALTER TABLE [dbo].[H_C] CHECK CONSTRAINT [FK_H_C_Historico]
GO
ALTER TABLE [dbo].[H_L]  WITH CHECK ADD  CONSTRAINT [FK_H_L_Historico] FOREIGN KEY([ID_Historico])
REFERENCES [dbo].[Historico] ([ID_Historico])
GO
ALTER TABLE [dbo].[H_L] CHECK CONSTRAINT [FK_H_L_Historico]
GO
ALTER TABLE [dbo].[H_L]  WITH CHECK ADD  CONSTRAINT [FK_H_L_Logins] FOREIGN KEY([ID_Logins])
REFERENCES [dbo].[Logins] ([ID_Logins])
GO
ALTER TABLE [dbo].[H_L] CHECK CONSTRAINT [FK_H_L_Logins]
GO
ALTER TABLE [dbo].[H_M]  WITH CHECK ADD  CONSTRAINT [FK_H_M_Historico] FOREIGN KEY([ID_Historico])
REFERENCES [dbo].[Historico] ([ID_Historico])
GO
ALTER TABLE [dbo].[H_M] CHECK CONSTRAINT [FK_H_M_Historico]
GO
ALTER TABLE [dbo].[H_M]  WITH CHECK ADD  CONSTRAINT [FK_H_M_Maquinas] FOREIGN KEY([ID_Maquinas])
REFERENCES [dbo].[Maquinas] ([ID_Maquinas])
GO
ALTER TABLE [dbo].[H_M] CHECK CONSTRAINT [FK_H_M_Maquinas]
GO
ALTER TABLE [dbo].[M_L]  WITH CHECK ADD  CONSTRAINT [FK_M_L_Logins] FOREIGN KEY([ID_Logins])
REFERENCES [dbo].[Logins] ([ID_Logins])
GO
ALTER TABLE [dbo].[M_L] CHECK CONSTRAINT [FK_M_L_Logins]
GO
ALTER TABLE [dbo].[M_L]  WITH CHECK ADD  CONSTRAINT [FK_M_L_Maquinas1] FOREIGN KEY([ID_Maquinas])
REFERENCES [dbo].[Maquinas] ([ID_Maquinas])
GO
ALTER TABLE [dbo].[M_L] CHECK CONSTRAINT [FK_M_L_Maquinas1]
GO
ALTER TABLE [dbo].[T_C]  WITH CHECK ADD  CONSTRAINT [FK_T_C_Consumiveis] FOREIGN KEY([ID_Consumiveis])
REFERENCES [dbo].[Consumiveis] ([ID_Consumiveis])
GO
ALTER TABLE [dbo].[T_C] CHECK CONSTRAINT [FK_T_C_Consumiveis]
GO
ALTER TABLE [dbo].[T_C]  WITH CHECK ADD  CONSTRAINT [FK_T_C_Tarefas] FOREIGN KEY([ID_Tarefas])
REFERENCES [dbo].[Tarefas] ([ID_Tarefas])
GO
ALTER TABLE [dbo].[T_C] CHECK CONSTRAINT [FK_T_C_Tarefas]
GO
ALTER TABLE [dbo].[T_L]  WITH CHECK ADD  CONSTRAINT [FK_T_L_Logins] FOREIGN KEY([ID_Logins])
REFERENCES [dbo].[Logins] ([ID_Logins])
GO
ALTER TABLE [dbo].[T_L] CHECK CONSTRAINT [FK_T_L_Logins]
GO
ALTER TABLE [dbo].[T_L]  WITH CHECK ADD  CONSTRAINT [FK_T_L_Tarefas] FOREIGN KEY([ID_Tarefas])
REFERENCES [dbo].[Tarefas] ([ID_Tarefas])
GO
ALTER TABLE [dbo].[T_L] CHECK CONSTRAINT [FK_T_L_Tarefas]
GO
ALTER TABLE [dbo].[T_M]  WITH CHECK ADD  CONSTRAINT [FK_T_M_Maquinas] FOREIGN KEY([ID_Maquinas])
REFERENCES [dbo].[Maquinas] ([ID_Maquinas])
GO
ALTER TABLE [dbo].[T_M] CHECK CONSTRAINT [FK_T_M_Maquinas]
GO
ALTER TABLE [dbo].[T_M]  WITH CHECK ADD  CONSTRAINT [FK_T_M_Tarefas] FOREIGN KEY([ID_Tarefas])
REFERENCES [dbo].[Tarefas] ([ID_Tarefas])
GO
ALTER TABLE [dbo].[T_M] CHECK CONSTRAINT [FK_T_M_Tarefas]
GO
ALTER TABLE [dbo].[Tarefa_Agendadas]  WITH CHECK ADD  CONSTRAINT [FK_Tarefa_Agendadas_Tarefas] FOREIGN KEY([ID_Tarefas])
REFERENCES [dbo].[Tarefas] ([ID_Tarefas])
GO
ALTER TABLE [dbo].[Tarefa_Agendadas] CHECK CONSTRAINT [FK_Tarefa_Agendadas_Tarefas]
GO
USE [master]
GO
ALTER DATABASE [Manutencao_De_Maquinas] SET  READ_WRITE 
GO
