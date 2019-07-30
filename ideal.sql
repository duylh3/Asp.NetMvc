USE [IdealDb]
GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 07/30/2019 17:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](150) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [timestamp] NULL,
 CONSTRAINT [PK_tb_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Questions]    Script Date: 07/30/2019 17:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Questions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Question] [nvarchar](50) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[ModifiedDate] [timestamp] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_tb_Questions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Questions] ON
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (1, 1, N'Lương khi nào tăng?', 0, CAST(0x0000AA8C00000000 AS DateTime), 1, 1)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (2, 1, N'Bạn muốn tăng lương không?', 0, CAST(0x0000AA9900000000 AS DateTime), 1, 1)
SET IDENTITY_INSERT [dbo].[tb_Questions] OFF
/****** Object:  Table [dbo].[tb_Document]    Script Date: 07/30/2019 17:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Document](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[DocumentName] [nvarchar](150) NOT NULL,
	[Url] [nvarchar](250) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [timestamp] NULL,
 CONSTRAINT [PK_tb_Document] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Document] ON
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (2, 2, N'Luật Việt Nam', N'law.pdf', 0, N'1', CAST(0x0000AA9A00000000 AS DateTime), N'1')
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (3, 2, N'Văn bản luật', N'vb.pdf', 0, N'1', CAST(0x0000AA9A00000000 AS DateTime), N'1')
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (4, 3, N'Luật lao động', N'labor.pdf', 0, N'1', CAST(0x0000AA9A00000000 AS DateTime), N'1')
SET IDENTITY_INSERT [dbo].[tb_Document] OFF
/****** Object:  Table [dbo].[tb_Categories]    Script Date: 07/30/2019 17:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [timestamp] NULL,
 CONSTRAINT [PK_tb_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Categories] ON
INSERT [dbo].[tb_Categories] ([Id], [Category], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (1, N'Salary', 0, N'1', CAST(0x0000AA9600000000 AS DateTime), N'1')
INSERT [dbo].[tb_Categories] ([Id], [Category], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (2, N'Law', 0, N'1', CAST(0x0000AA9900000000 AS DateTime), N'1')
INSERT [dbo].[tb_Categories] ([Id], [Category], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (3, N'Labor', 0, N'1', CAST(0x0000AA9A00000000 AS DateTime), N'1')
SET IDENTITY_INSERT [dbo].[tb_Categories] OFF
/****** Object:  Table [dbo].[tb_Answers]    Script Date: 07/30/2019 17:13:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Answers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Answer] [nvarchar](500) NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [timestamp] NULL,
 CONSTRAINT [PK_tb_answers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tb_Answers] ON
INSERT [dbo].[tb_Answers] ([Id], [QuestionId], [Answer], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (1, 1, N'Không tăng nhé', 0, 1, CAST(0x0000AA9900000000 AS DateTime), 1)
INSERT [dbo].[tb_Answers] ([Id], [QuestionId], [Answer], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (2, 2, N'Tăng mỗi ngày nha', 0, 1, CAST(0x0000AA9A00000000 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[tb_Answers] OFF
/****** Object:  StoredProcedure [dbo].[GetQuestionList]    Script Date: 07/30/2019 17:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetQuestionList]
--@pageIndex int = 1,
--@pageSize int = 1,
@Category nvarchar(150) = NULL
--@totalRow int = null output
AS
BEGIN
		SET NOCOUNT ON;
	SELECT q.CreatedBy, q.Question, q.Id, c.Category
	FROM tb_Questions q
	LEFT JOIN tb_Categories c ON c.Id = q.CategoryId 
	WHERE 1=1
		AND c.Category = @Category
		AND q.IsDeleted = 0
		
	--OFFSET (@pageIndex - 1) * @pageSize rows
	--FETCH NEXT @pageSize row only
END
GO
/****** Object:  StoredProcedure [dbo].[GetList]    Script Date: 07/30/2019 17:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetList] 
	@page int = 1,
    @pageSize int = 10,
    @Caregory nvarchar(150),
	@RowNum int = null output
    AS
    BEGIN

    WITH CTE AS
    (
      SELECT 
        ROW_NUMBER() OVER ( ORDER BY q.CreatedDate ) AS RowNum ,
        q.Question, q.CreatedBy, q.CreatedDate, q.Id, c.Category
      FROM tb_Questions q
        LEFT JOIN tb_Categories c ON q.CategoryId = c.Id
      WHERE 
      
      q.IsDeleted = 0 AND c.Category = @Caregory
    )
    SELECT 
      Id, Question, CreatedBy, CreatedDate, Category
    FROM CTE 
    WHERE 
      (RowNum > @pageSize * (@page - 1) )
      AND 
      (RowNum <= @pageSize * @page )
    Order By RowNum 

END
GO
/****** Object:  StoredProcedure [dbo].[GetDocumentList]    Script Date: 07/30/2019 17:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDocumentList]
	@Category nvarchar(150) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	SELECT d.CreatedBy, d.DocumentName, d.Id, c.Category, d.Url
	FROM tb_Document d
	LEFT JOIN tb_Categories c ON c.Id = d.CategoryId
	WHERE c.Category = @Category
		AND d.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[GetDocumentDetail]    Script Date: 07/30/2019 17:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDocumentDetail]
	@Id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT d.DocumentName, d.Url, d.CreatedBy, d.CreatedDate
	From tb_Document d
	WHERE d.Id = @Id And d.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[GetAnswer]    Script Date: 07/30/2019 17:13:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetAnswer]
	-- Add the parameters for the stored procedure here
	@questionId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT q.Question, q.CreatedBy, q.CreatedDate, a.Answer
	FROM tb_Questions q
	Left join tb_Answers a ON q.Id = a.QuestionId
	WHERE  q.Id = @questionId
	AND q.IsDeleted = 0
END
GO
/****** Object:  Default [DF_tb_answers_IsDeleted]    Script Date: 07/30/2019 17:13:32 ******/
ALTER TABLE [dbo].[tb_Answers] ADD  CONSTRAINT [DF_tb_answers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tb_Categoried_IsDeleted]    Script Date: 07/30/2019 17:13:32 ******/
ALTER TABLE [dbo].[tb_Categories] ADD  CONSTRAINT [DF_tb_Categoried_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tb_Document_IsDeleted]    Script Date: 07/30/2019 17:13:32 ******/
ALTER TABLE [dbo].[tb_Document] ADD  CONSTRAINT [DF_tb_Document_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tb_Questions_IsDeleted]    Script Date: 07/30/2019 17:13:32 ******/
ALTER TABLE [dbo].[tb_Questions] ADD  CONSTRAINT [DF_tb_Questions_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tb_User_IsDeleted]    Script Date: 07/30/2019 17:13:32 ******/
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
