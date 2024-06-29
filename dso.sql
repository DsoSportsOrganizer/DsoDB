USE [DSO]
GO
/****** Object:  Table [dbo].[Gym]    Script Date: 6/29/2024 9:06:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gym](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gymName] [nvarchar](500) NULL,
	[ownerName] [nvarchar](500) NULL,
	[state] [int] NULL,
	[district] [nvarchar](500) NULL,
	[categories] [int] NULL,
	[description] [nvarchar](max) NULL,
	[Geo] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[phone] [int] NULL,
	[web] [nvarchar](max) NOT NULL,
	[instagram] [nvarchar](max) NOT NULL,
	[youtube] [nvarchar](max) NOT NULL,
	[facebook] [nvarchar](max) NOT NULL,
	[twitter] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Gym] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GymAdminMapping]    Script Date: 6/29/2024 9:06:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GymAdminMapping](
	[gymid] [int] NULL,
	[userid] [uniqueidentifier] NULL,
	[isApproved] [bit] NULL,
	[isSuperAdmin] [bit] NULL,
	[isCompleted] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GymUserMapping]    Script Date: 6/29/2024 9:06:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GymUserMapping](
	[gymid] [int] NULL,
	[userid] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profile]    Script Date: 6/29/2024 9:06:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [uniqueidentifier] NULL,
	[userID] [nvarchar](50) NULL,
	[profileImage] [image] NOT NULL,
	[name] [nvarchar](500) NULL,
	[dob] [datetime] NULL,
	[gender] [int] NULL,
	[fatherName] [nvarchar](500) NOT NULL,
	[state] [nvarchar](500) NULL,
	[district] [nvarchar](500) NULL,
	[stance] [int] NOT NULL,
	[martialArts] [int] NOT NULL,
 CONSTRAINT [PK_Profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 6/29/2024 9:06:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [uniqueidentifier] NOT NULL,
	[phoneNumber] [nvarchar](50) NULL,
	[otp] [int] NULL,
	[cb] [uniqueidentifier] NOT NULL,
	[cd] [datetime] NOT NULL,
	[mb] [uniqueidentifier] NOT NULL,
	[md] [datetime] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
