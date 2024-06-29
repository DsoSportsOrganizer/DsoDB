USE `DSO`;
 
/* SQLINES DEMO *** le [dbo].[Gym]    Script Date: 6/29/2024 9:06:18 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `Gym`(
	`id` int AUTO_INCREMENT NOT NULL,
	`gymName` nvarchar(500) NULL,
	`ownerName` nvarchar(500) NULL,
	`state` int NULL,
	`district` nvarchar(500) NULL,
	`categories` int NULL,
	`description` Longtext NULL,
	`Geo` Longtext NULL,
	`Address` Longtext NULL,
	`phone` int NULL,
	`web` Longtext NOT NULL,
	`instagram` Longtext NOT NULL,
	`youtube` Longtext NOT NULL,
	`facebook` Longtext NOT NULL,
	`twitter` Longtext NOT NULL,
 CONSTRAINT `PK_Gym` PRIMARY KEY 
(
	`id` ASC
) 
) ;
/* SQLINES DEMO *** le [dbo].[GymAdminMapping]    Script Date: 6/29/2024 9:06:18 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `GymAdminMapping`(
	`gymid` int NULL,
	`userid` Char(36) NULL,
	`isApproved` Tinyint NULL,
	`isSuperAdmin` Tinyint NULL,
	`isCompleted` Tinyint NULL
);
/* SQLINES DEMO *** le [dbo].[GymUserMapping]    Script Date: 6/29/2024 9:06:18 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `GymUserMapping`(
	`gymid` int NULL,
	`userid` Char(36) NULL
);
/* SQLINES DEMO *** le [dbo].[Profile]    Script Date: 6/29/2024 9:06:18 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `Profile`(
	`id` int AUTO_INCREMENT NOT NULL,
	`uid` Char(36) NULL,
	`userID` nvarchar(50) NULL,
	`profileImage` Longblob NOT NULL,
	`name` nvarchar(500) NULL,
	`dob` datetime(3) NULL,
	`gender` int NULL,
	`fatherName` nvarchar(500) NOT NULL,
	`state` nvarchar(500) NULL,
	`district` nvarchar(500) NULL,
	`stance` int NOT NULL,
	`martialArts` int NOT NULL,
 CONSTRAINT `PK_Profile` PRIMARY KEY 
(
	`id` ASC
) 
) ;
/* SQLINES DEMO *** le [dbo].[User]    Script Date: 6/29/2024 9:06:18 AM ******/
/* SET ANSI_NULLS ON */
 
/* SET QUOTED_IDENTIFIER ON */
 
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE `User`(
	`id` Char(36) NOT NULL,
	`phoneNumber` nvarchar(50) NULL,
	`otp` int NULL,
	`cb` Char(36) NOT NULL,
	`cd` datetime(3) NOT NULL,
	`mb` Char(36) NOT NULL,
	`md` datetime(3) NOT NULL,
 CONSTRAINT `PK_User` PRIMARY KEY 
(
	`id` ASC
) 
);
