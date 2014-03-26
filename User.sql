USE [master]
GO

/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [artek]    Script Date: 3/26/2014 2:07:37 PM ******/
CREATE LOGIN [artek] WITH PASSWORD=N'w≈lÅ·ª+»Òµ˘∆AAL{ø^+‡<∂^Àk†ØÙ', DEFAULT_DATABASE=[AllegriniLuca], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

ALTER LOGIN [artek] DISABLE
GO


