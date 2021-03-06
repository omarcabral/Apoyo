USE [master]
GO
/****** Object:  Database [apoyo_docente]    Script Date: 20/02/2021 11:12:52 a. m. ******/
CREATE DATABASE [apoyo_docente]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'apoyo_docente', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\apoyo_docente.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'apoyo_docente_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\apoyo_docente_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [apoyo_docente].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [apoyo_docente] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [apoyo_docente] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [apoyo_docente] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [apoyo_docente] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [apoyo_docente] SET ARITHABORT OFF 
GO
ALTER DATABASE [apoyo_docente] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [apoyo_docente] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [apoyo_docente] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [apoyo_docente] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [apoyo_docente] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [apoyo_docente] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [apoyo_docente] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [apoyo_docente] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [apoyo_docente] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [apoyo_docente] SET  ENABLE_BROKER 
GO
ALTER DATABASE [apoyo_docente] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [apoyo_docente] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [apoyo_docente] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [apoyo_docente] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [apoyo_docente] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [apoyo_docente] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [apoyo_docente] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [apoyo_docente] SET RECOVERY FULL 
GO
ALTER DATABASE [apoyo_docente] SET  MULTI_USER 
GO
ALTER DATABASE [apoyo_docente] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [apoyo_docente] SET DB_CHAINING OFF 
GO
ALTER DATABASE [apoyo_docente] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [apoyo_docente] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [apoyo_docente] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'apoyo_docente', N'ON'
GO
ALTER DATABASE [apoyo_docente] SET QUERY_STORE = OFF
GO
USE [apoyo_docente]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 20/02/2021 11:12:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 20/02/2021 11:12:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 20/02/2021 11:12:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 20/02/2021 11:12:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 20/02/2021 11:12:52 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 20/02/2021 11:12:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 20/02/2021 11:12:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[Tipo] [int] NULL,
	[Nombre] [nvarchar](max) NULL,
	[Apellidos] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 20/02/2021 11:12:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbActividades]    Script Date: 20/02/2021 11:12:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbActividades](
	[Id] [uniqueidentifier] NOT NULL,
	[IdGrupoId] [int] NULL,
	[Actividad] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Inicio] [datetime2](7) NOT NULL,
	[Final] [datetime2](7) NOT NULL,
	[Ponderacion] [real] NOT NULL,
	[IsAllDay] [bit] NOT NULL,
	[RecurrenceRule] [nvarchar](max) NULL,
	[RecurrenceId] [uniqueidentifier] NULL,
	[IdMateriaId] [int] NULL,
 CONSTRAINT [PK_dbActividades] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbCalificaciones]    Script Date: 20/02/2021 11:12:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbCalificaciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupoAlumnoId] [int] NULL,
	[IdMateriaId] [int] NULL,
	[Calificacion] [int] NOT NULL,
 CONSTRAINT [PK_dbCalificaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbGrupo]    Script Date: 20/02/2021 11:12:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbGrupo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NOT NULL,
	[DocentesId] [nvarchar](450) NOT NULL,
	[Activo] [bit] NOT NULL,
	[CicloEscolar] [nvarchar](9) NOT NULL,
 CONSTRAINT [PK_dbGrupo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbGrupoAlumnos]    Script Date: 20/02/2021 11:12:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbGrupoAlumnos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdGrupoId] [int] NULL,
	[IdAlumnoId] [nvarchar](450) NULL,
 CONSTRAINT [PK_dbGrupoAlumnos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dbMaterias]    Script Date: 20/02/2021 11:12:53 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dbMaterias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Creditos] [int] NOT NULL,
	[DocenteId] [nvarchar](450) NOT NULL,
	[Color] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbMaterias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_dbActividades_IdGrupoId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_dbActividades_IdGrupoId] ON [dbo].[dbActividades]
(
	[IdGrupoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_dbActividades_IdMateriaId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_dbActividades_IdMateriaId] ON [dbo].[dbActividades]
(
	[IdMateriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_dbCalificaciones_IdGrupoAlumnoId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_dbCalificaciones_IdGrupoAlumnoId] ON [dbo].[dbCalificaciones]
(
	[IdGrupoAlumnoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_dbCalificaciones_IdMateriaId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_dbCalificaciones_IdMateriaId] ON [dbo].[dbCalificaciones]
(
	[IdMateriaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_dbGrupo_DocentesId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_dbGrupo_DocentesId] ON [dbo].[dbGrupo]
(
	[DocentesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_dbGrupoAlumnos_IdAlumnoId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_dbGrupoAlumnos_IdAlumnoId] ON [dbo].[dbGrupoAlumnos]
(
	[IdAlumnoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_dbGrupoAlumnos_IdGrupoId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_dbGrupoAlumnos_IdGrupoId] ON [dbo].[dbGrupoAlumnos]
(
	[IdGrupoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_dbMaterias_DocenteId]    Script Date: 20/02/2021 11:12:53 a. m. ******/
CREATE NONCLUSTERED INDEX [IX_dbMaterias_DocenteId] ON [dbo].[dbMaterias]
(
	[DocenteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[dbActividades]  WITH CHECK ADD  CONSTRAINT [FK_dbActividades_dbGrupo_IdGrupoId] FOREIGN KEY([IdGrupoId])
REFERENCES [dbo].[dbGrupo] ([Id])
GO
ALTER TABLE [dbo].[dbActividades] CHECK CONSTRAINT [FK_dbActividades_dbGrupo_IdGrupoId]
GO
ALTER TABLE [dbo].[dbActividades]  WITH CHECK ADD  CONSTRAINT [FK_dbActividades_dbMaterias_IdMateriaId] FOREIGN KEY([IdMateriaId])
REFERENCES [dbo].[dbMaterias] ([Id])
GO
ALTER TABLE [dbo].[dbActividades] CHECK CONSTRAINT [FK_dbActividades_dbMaterias_IdMateriaId]
GO
ALTER TABLE [dbo].[dbCalificaciones]  WITH CHECK ADD  CONSTRAINT [FK_dbCalificaciones_dbGrupoAlumnos_IdGrupoAlumnoId] FOREIGN KEY([IdGrupoAlumnoId])
REFERENCES [dbo].[dbGrupoAlumnos] ([Id])
GO
ALTER TABLE [dbo].[dbCalificaciones] CHECK CONSTRAINT [FK_dbCalificaciones_dbGrupoAlumnos_IdGrupoAlumnoId]
GO
ALTER TABLE [dbo].[dbCalificaciones]  WITH CHECK ADD  CONSTRAINT [FK_dbCalificaciones_dbMaterias_IdMateriaId] FOREIGN KEY([IdMateriaId])
REFERENCES [dbo].[dbMaterias] ([Id])
GO
ALTER TABLE [dbo].[dbCalificaciones] CHECK CONSTRAINT [FK_dbCalificaciones_dbMaterias_IdMateriaId]
GO
ALTER TABLE [dbo].[dbGrupo]  WITH CHECK ADD  CONSTRAINT [FK_dbGrupo_AspNetUsers_DocentesId] FOREIGN KEY([DocentesId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[dbGrupo] CHECK CONSTRAINT [FK_dbGrupo_AspNetUsers_DocentesId]
GO
ALTER TABLE [dbo].[dbGrupoAlumnos]  WITH CHECK ADD  CONSTRAINT [FK_dbGrupoAlumnos_AspNetUsers_IdAlumnoId] FOREIGN KEY([IdAlumnoId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[dbGrupoAlumnos] CHECK CONSTRAINT [FK_dbGrupoAlumnos_AspNetUsers_IdAlumnoId]
GO
ALTER TABLE [dbo].[dbGrupoAlumnos]  WITH CHECK ADD  CONSTRAINT [FK_dbGrupoAlumnos_dbGrupo_IdGrupoId] FOREIGN KEY([IdGrupoId])
REFERENCES [dbo].[dbGrupo] ([Id])
GO
ALTER TABLE [dbo].[dbGrupoAlumnos] CHECK CONSTRAINT [FK_dbGrupoAlumnos_dbGrupo_IdGrupoId]
GO
ALTER TABLE [dbo].[dbMaterias]  WITH CHECK ADD  CONSTRAINT [FK_dbMaterias_AspNetUsers_DocenteId] FOREIGN KEY([DocenteId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[dbMaterias] CHECK CONSTRAINT [FK_dbMaterias_AspNetUsers_DocenteId]
GO
USE [master]
GO
ALTER DATABASE [apoyo_docente] SET  READ_WRITE 
GO
