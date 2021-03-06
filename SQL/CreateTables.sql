USE [elssa_booking]
GO
/****** Object:  Table [dbo].[WorkShopSet]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkShopSet](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[created] [datetime] NULL,
	[creatorID] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL,
	[modified] [datetime] NULL,
	[modifierID] [int] NULL,
	[isActived] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workShops_waiting]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workShops_waiting](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[workshopID] [int] NULL,
	[studentID] [char](10) NULL,
	[priority] [int] NULL,
	[created] [datetime] NULL,
	[creatorID] [int] NULL,
	[modified] [datetime] NULL,
	[modifierID] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workShops_booking]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workShops_booking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[workshopID] [int] NULL,
	[studentID] [char](10) NULL,
	[created] [datetime] NULL,
	[creatorID] [int] NULL,
	[modified] [datetime] NULL,
	[modifierID] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL,
	[canceled] [int] NULL,
	[attended] [int] NULL,
	[notes] [ntext] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[workshops]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[workshops](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[topic] [varchar](255) NULL,
	[description] [ntext] NULL,
	[targetingGroup] [ntext] NULL,
	[campusID] [int] NULL,
	[starting] [datetime] NULL,
	[ending] [datetime] NULL,
	[maximum] [int] NULL,
	[cutoff] [int] NULL,
	[creatorID] [int] NULL,
	[created] [datetime] NULL,
	[modifierID] [int] NULL,
	[modified] [datetime] NULL,
	[archiverID] [int] NULL,
	[archived] [datetime] NULL,
	[WorkShopSetID] [int] NULL,
	[type] [nvarchar](50) NULL,
	[reminder_num] [int] NULL,
	[reminder_sent] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[waitings]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[waitings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [char](10) NOT NULL,
	[sessionId] [int] NOT NULL,
	[assisstance] [char](20) NULL,
	[reason] [ntext] NULL,
	[priority] [int] NOT NULL,
	[created] [datetime] NULL,
	[creatorId] [int] NULL,
	[modified] [datetime] NULL,
	[modifierId] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL,
	[isgroup] [int] NULL,
	[numpeople] [char](10) NULL,
	[assigntype] [nvarchar](50) NULL,
	[assigntypeOther] [nvarchar](50) NULL,
	[subject] [nvarchar](100) NULL,
	[appointments] [nvarchar](50) NULL,
	[appointmentsOther] [nvarchar](50) NULL,
	[assisstanceText] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[students]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[students](
	[studentID] [char](10) NOT NULL,
	[dob] [datetime] NULL,
	[gender] [char](5) NULL,
	[degree] [char](5) NOT NULL,
	[status] [char](20) NOT NULL,
	[first_language] [nvarchar](50) NOT NULL,
	[country_origin] [nvarchar](50) NOT NULL,
	[background] [ntext] NULL,
	[HSC] [bit] NULL,
	[HSC_mark] [char](20) NULL,
	[IELTS] [bit] NULL,
	[IELTS_mark] [char](20) NULL,
	[TOEFL] [bit] NULL,
	[TOEFL_mark] [char](20) NULL,
	[TAFE] [bit] NULL,
	[TAFE_mark] [char](20) NULL,
	[CULT] [bit] NULL,
	[CULT_mark] [char](20) NULL,
	[InsearchDEEP] [bit] NULL,
	[InsearchDEEP_mark] [char](20) NULL,
	[InsearchDiploma] [bit] NULL,
	[InsearchDiploma_mark] [char](20) NULL,
	[foundationcourse] [bit] NULL,
	[foundationcourse_mark] [char](20) NULL,
	[created] [datetime] NULL,
	[creatorID] [int] NULL,
	[modified] [datetime] NULL,
	[modifierID] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL,
	[degree_details] [char](50) NULL,
	[alternative_contact] [text] NULL,
	[caf] [bit] NULL,
	[batch] [bit] NULL,
	[preferred_name] [nvarchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sessionsType]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sessionsType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[abbName] [varchar](25) NULL,
	[iscurrent] [bit] NULL,
	[fullName] [varchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sessions]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[starting] [datetime] NOT NULL,
	[ending] [datetime] NOT NULL,
	[campus] [nvarchar](50) NOT NULL,
	[lecturer] [int] NOT NULL,
	[type] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[creatorId] [int] NOT NULL,
	[modified] [datetime] NULL,
	[modifierId] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sessionDocuments]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sessionDocuments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sessionID] [int] NULL,
	[studentID] [char](10) NULL,
	[filename] [nvarchar](255) NULL,
	[CreatorId] [char](10) NULL,
	[archived] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[programWorkshops]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programWorkshops](
	[programId] [int] NULL,
	[workshopId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[programs]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[days] [nvarchar](50) NULL,
	[numOfWeeks] [int] NULL,
	[startDate] [date] NULL,
	[endDate] [date] NULL,
	[maximum] [int] NULL,
	[cutoff] [int] NULL,
	[created] [datetime] NULL,
	[creatorId] [int] NULL,
	[modified] [datetime] NULL,
	[modifierId] [int] NULL,
	[archived] [datetime] NULL,
	[archiverId] [int] NULL,
	[reminder_num] [int] NULL,
	[reminder_sent] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[path] [varchar](100) NULL,
	[filename] [varchar](50) NULL,
	[modifierID] [int] NULL,
	[modified] [datetime] NULL,
	[description] [varchar](255) NULL,
	[text] [ntext] NULL,
	[cssID] [varchar](50) NULL,
	[isactive] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[lecturers]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lecturers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[staffID] [char](10) NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](100) NOT NULL,
	[created] [datetime] NOT NULL,
	[creatorId] [int] NOT NULL,
	[modified] [datetime] NULL,
	[modifierId] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL,
	[inactive] [bit] NULL,
 CONSTRAINT [PK_lecturers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[learningissues]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[learningissues](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[issue] [nvarchar](50) NULL,
	[researchonly] [int] NULL,
	[orderitem] [int] NULL,
	[iscurrent] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emailtemplatesCategory]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[emailtemplatesCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](25) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[emailtemplates]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emailtemplates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subject] [text] NULL,
	[body] [text] NULL,
	[stagingsubject] [text] NULL,
	[stagingbody] [text] NULL,
	[description] [text] NULL,
	[modified] [datetime] NULL,
	[ModifierID] [int] NULL,
	[published] [datetime] NULL,
	[PublisherID] [int] NULL,
	[isactived] [int] NULL,
	[categoryID] [int] NULL,
 CONSTRAINT [PK_emailtemplates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campus]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[campus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[campus] [varchar](25) NULL,
	[creatorID] [int] NULL,
	[created] [datetime] NULL,
	[modifierID] [int] NULL,
	[modified] [datetime] NULL,
	[archiverID] [int] NULL,
	[archived] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[bookings]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bookings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[studentID] [char](10) NOT NULL,
	[sessionId] [int] NOT NULL,
	[cancel] [bit] NOT NULL,
	[assisstance] [char](20) NULL,
	[reason] [ntext] NULL,
	[attended] [int] NULL,
	[waitingID] [int] NULL,
	[created] [datetime] NOT NULL,
	[creatorId] [int] NOT NULL,
	[modified] [datetime] NULL,
	[modifierId] [int] NULL,
	[archived] [datetime] NULL,
	[archiverID] [int] NULL,
	[isgroup] [int] NULL,
	[numpeople] [char](10) NULL,
	[lecturercomment] [ntext] NULL,
	[learningissues] [nvarchar](50) NULL,
	[islocked] [int] NULL,
	[assigntype] [nvarchar](50) NULL,
	[assigntypeOther] [nvarchar](50) NULL,
	[subject] [nvarchar](100) NULL,
	[appointments] [nvarchar](50) NULL,
	[appointmentsOther] [nvarchar](50) NULL,
	[assisstanceText] [ntext] NULL,
 CONSTRAINT [PK_students] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[assignments]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[assignments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NULL,
	[orderItem] [int] NULL,
	[iscurrent] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appointments]    Script Date: 07/30/2015 09:57:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appointments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NULL,
	[orderItem] [int] NULL,
	[iscurrent] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Default [DF_bookings_cancel]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[bookings] ADD  CONSTRAINT [DF_bookings_cancel]  DEFAULT (0) FOR [cancel]
GO
/****** Object:  Default [DF_bookings_attended]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[bookings] ADD  CONSTRAINT [DF_bookings_attended]  DEFAULT ((-1)) FOR [attended]
GO
/****** Object:  Default [DF_bookings_isgroup]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[bookings] ADD  CONSTRAINT [DF_bookings_isgroup]  DEFAULT (0) FOR [isgroup]
GO
/****** Object:  Default [DF_lecturers_inactive]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[lecturers] ADD  CONSTRAINT [DF_lecturers_inactive]  DEFAULT (0) FOR [inactive]
GO
/****** Object:  Default [DF_sessions_type]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[sessions] ADD  CONSTRAINT [DF_sessions_type]  DEFAULT (0) FOR [type]
GO
/****** Object:  Default [DF_students_HSC]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_HSC]  DEFAULT (0) FOR [HSC]
GO
/****** Object:  Default [DF_students_IELTS]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_IELTS]  DEFAULT (0) FOR [IELTS]
GO
/****** Object:  Default [DF_students_TOEFL]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_TOEFL]  DEFAULT (0) FOR [TOEFL]
GO
/****** Object:  Default [DF_students_TAFE]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_TAFE]  DEFAULT (0) FOR [TAFE]
GO
/****** Object:  Default [DF_students_CULT]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_CULT]  DEFAULT (0) FOR [CULT]
GO
/****** Object:  Default [DF_students_InsearchDEEP]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_InsearchDEEP]  DEFAULT (0) FOR [InsearchDEEP]
GO
/****** Object:  Default [DF_students_InsearchDiploma]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_InsearchDiploma]  DEFAULT (0) FOR [InsearchDiploma]
GO
/****** Object:  Default [DF_students_foundationcourse]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[students] ADD  CONSTRAINT [DF_students_foundationcourse]  DEFAULT (0) FOR [foundationcourse]
GO
/****** Object:  Default [DF_waitings_priority]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[waitings] ADD  CONSTRAINT [DF_waitings_priority]  DEFAULT (1) FOR [priority]
GO
/****** Object:  Default [DF_waitings_isgroup]    Script Date: 07/30/2015 09:57:18 ******/
ALTER TABLE [dbo].[waitings] ADD  CONSTRAINT [DF_waitings_isgroup]  DEFAULT (0) FOR [isgroup]
GO
