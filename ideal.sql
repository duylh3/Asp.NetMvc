USE [IdealDb]
GO
/****** Object:  Table [dbo].[tb_User]    Script Date: 08/16/2019 17:07:29 ******/
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
SET IDENTITY_INSERT [dbo].[tb_User] ON
INSERT [dbo].[tb_User] ([Id], [Username], [Password], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (1, N'admin', N'mQdnElWGhlc=', 0, 1, CAST(0x0000AA9B00000000 AS DateTime), 1)
INSERT [dbo].[tb_User] ([Id], [Username], [Password], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (2, N'ict', N'R3BgXpClFLU=', 0, 1, CAST(0x0000AA9C00A79C78 AS DateTime), NULL)
INSERT [dbo].[tb_User] ([Id], [Username], [Password], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (3, N'040001', N'yrAb9cdSwB4=', 0, 1, CAST(0x0000AA9C00B7E8C9 AS DateTime), NULL)
INSERT [dbo].[tb_User] ([Id], [Username], [Password], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (4, N'171569', N'T3WhafE6fRI=', 0, 1, CAST(0x0000AAA2008C03C5 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_User] OFF
/****** Object:  Table [dbo].[tb_Questions]    Script Date: 08/16/2019 17:07:29 ******/
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
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (3, 1, N'Có giảm lương không?', 0, CAST(0x0000AA9B01010BDA AS DateTime), 1, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (5, 1, N'tôi muốn tăng lương 100tr/tháng', 0, CAST(0x0000AA9C00B83896 AS DateTime), 3, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (19, 1, N'tôi muốn giảm lương', 0, CAST(0x0000AAA100FE6781 AS DateTime), 1, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (22, 12, N'Chấm công lúc mấy h?', 0, CAST(0x0000AAA401150051 AS DateTime), 1, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (23, 19, N'Hỗ trợ khó khăn ntn?', 0, CAST(0x0000AAA40117C88E AS DateTime), 1, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (33, 1, N'Lương huynh', 0, CAST(0x0000AAAB00A15B45 AS DateTime), 1, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (35, 18, N'Phúc lợi nhân viên.', 0, CAST(0x0000AAAB00A4FAF9 AS DateTime), 1, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (36, 17, N'đạo đức', 0, CAST(0x0000AAAB00ACB0A8 AS DateTime), 1, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (39, 1, N'Test - chấm công', 0, CAST(0x0000AAAB00BB18E3 AS DateTime), 1, NULL)
INSERT [dbo].[tb_Questions] ([Id], [CategoryId], [Question], [IsDeleted], [CreatedDate], [CreatedBy], [ModifiedBy]) VALUES (40, 17, N'Câu hỏi liên quan chuẩn mực đạo đức', 0, CAST(0x0000AAAB01088CD2 AS DateTime), 1, NULL)
SET IDENTITY_INSERT [dbo].[tb_Questions] OFF
/****** Object:  Table [dbo].[tb_Employee]    Script Date: 08/16/2019 17:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_Employee](
	[EMP_ID] [nchar](10) NOT NULL,
	[NAME] [nvarchar](50) NULL,
	[WORKGROUP] [char](40) NULL,
	[ENTER_DATE] [date] NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EMP_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'040001    ', N'NGUYỄN VĂN HƯỚNG', N'Safety                                  ', CAST(0x092B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050003    ', N'NGUYỄN DUY BẢO', N'Factory 1                               ', CAST(0x362B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050004    ', N'VŨ VĂN NAM', N'Electric #1                             ', CAST(0x362B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050005    ', N'NGUYỄN ANH TĂNG', N'CAPL                                    ', CAST(0x3A2B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050008    ', N'ĐỖ THÀNH NAM', N'Electric #2                             ', CAST(0x612B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050009    ', N'ĐỖ MẠNH CƯỜNG', N'Electric #2                             ', CAST(0x652B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050010    ', N'NGUYỄN ĐẠT LONG', N'Electric #1                             ', CAST(0x652B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050011    ', N'PHẠM VĂN BÌNH', N'CBL                                     ', CAST(0x652B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050013    ', N'TRẦN QUỐC THÁI', N'Factory 1                               ', CAST(0x652B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050014    ', N'NGUYỄN HỮU TUẤN', N'Mechanic #1                             ', CAST(0x682B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050015    ', N'CÁP XUÂN TRUNG', N'Utility-Electric                        ', CAST(0x682B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050016    ', N'ĐOÀN THANH PHƯƠNG', N'Utility-Mechanic                        ', CAST(0x682B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050018    ', N'TRẦN ĐỨC HÒA', N'Utility-Mechanic                        ', CAST(0x682B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050021    ', N'PHẠM VĂN TÂM', N'Factory 1                               ', CAST(0x702B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050023    ', N'NGUYỄN VĂN BỐN', N'Safety                                  ', CAST(0x702B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050026    ', N'VŨ TIẾN THƠI', N'Mechanic #1                             ', CAST(0x702B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050027    ', N'ĐỖ PHƯỚC TÂN', N'Electric #2                             ', CAST(0x702B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050028    ', N'VÕ XUÂN QUYẾT', N'HBA                                     ', CAST(0x702B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050029    ', N'NGUYỄN VĂN THUYÊN', N'Processing control                      ', CAST(0x702B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050030    ', N'NGUYỄN VĂN HÙNG', N'Electric #2                             ', CAST(0x702B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050033    ', N'NGUYỄN XUÂN SUNG', N'Safety                                  ', CAST(0x742B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050035    ', N'HỨA THÁI CƯỜNG', N'SPM2                                    ', CAST(0x742B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050036    ', N'TRẦN HÙNG DŨNG', N'Factory 2                               ', CAST(0x742B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050037    ', N'ĐINH QUA', N'Construction Section                    ', CAST(0x822B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050038    ', N'NGUYỄN VĂN TUẤN', N'RG                                      ', CAST(0x8A2B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050039    ', N'TRƯƠNG THANH SƠN', N'Processing control                      ', CAST(0x8C2B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050043    ', N'HOÀNG VĂN LONG', N'PTL                                     ', CAST(0xA42B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050044    ', N'KIỀU VĂN TIỆP', N'VBA2                                    ', CAST(0xA42B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050045    ', N'VŨ HỮU HÙNG', N'Safety                                  ', CAST(0xA42B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050047    ', N'MAI XUÂN KHẢI', N'VBA2                                    ', CAST(0xAA2B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050048    ', N'NGUYỄN QUỐC VIỆT', N'Domestic Sales                          ', CAST(0xB92B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050050    ', N'BÙI NGỌC DƯƠNG', N'Innovation                              ', CAST(0xE72B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050051    ', N'ĐINH ĐỨC THIỆN', N'VBA1                                    ', CAST(0xEC2B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050052    ', N'NGUYỄN NGỌC TÂN', N'Factory 1                               ', CAST(0xFE2B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050053    ', N'NGUYỄN ĐÌNH CÔNG', N'Mechanic #1                             ', CAST(0xFE2B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050055    ', N'MAI HOÀNG THẮNG', N'Factory 2                               ', CAST(0x162C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050058    ', N'ĐOÀN VĂN DŨNG', N'Utility-Electric                        ', CAST(0x562C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050059    ', N'ĐỖ VĂN AN', N'Processing control                      ', CAST(0x632C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'050065    ', N'NGUYỄN THỊ THU', N'Purchase                                ', CAST(0x8B2C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060070    ', N'PHẠM VĂN THUẬN', N'Mechanic #2                             ', CAST(0xD02C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060071    ', N'NGUYỄN MAI NGỌC LINH', N'Account                                 ', CAST(0xD22C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060072    ', N'LÊ VĂN TÁM', N'Processing control                      ', CAST(0xD22C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060073    ', N'PHAN SĨ DŨNG', N'Inspection1                             ', CAST(0xD32C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060075    ', N'THÁI HỮU BÌNH', N'RG                                      ', CAST(0xD32C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060076    ', N'PHẠM THỊ NGỌC BÍCH', N'Import-Export                           ', CAST(0xD82C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060077    ', N'ĐỖ VĂN HẢI', N'Mechanic #2                             ', CAST(0xDB2C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060084    ', N'ĐÀO VĂN HIỆN', N'SPM2                                    ', CAST(0xF12C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060085    ', N'TRẦN ĐÌNH ĐỨC', N'VBA1                                    ', CAST(0xF12C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060088    ', N'BÙI TÁ HỌC', N'ZM2                                     ', CAST(0x0F2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060089    ', N'NGUYỄN VĂN YÊN', N'VBA1                                    ', CAST(0x0F2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060092    ', N'PHÙNG VĂN TUẤN', N'WWT                                     ', CAST(0x282D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060095    ', N'TRỊNH XUÂN VIỆT', N'Mechanic #2                             ', CAST(0x282D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060096    ', N'TRẦN THANH VINH', N'ZM3                                     ', CAST(0x282D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060097    ', N'DƯƠNG ĐÌNH HƯNG', N'CBL                                     ', CAST(0x2E2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060098    ', N'NGUYỄN QUỐC HUY', N'RG                                      ', CAST(0x2E2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060099    ', N'HỒ XUÂN HẢI', N'VBA2                                    ', CAST(0x322D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060100    ', N'LƯU THỊ KIM HOÀN', N'Import-Export                           ', CAST(0x3C2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060101    ', N'HUỲNH TRỌNG TUẤN', N'Warehouse                               ', CAST(0x5C2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060105    ', N'PHẠM ĐÌNH HỮU', N'Support                                 ', CAST(0x632D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060106    ', N'DƯƠNG ĐÌNH HIỆP', N'VBA1                                    ', CAST(0x662D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060108    ', N'NGUYỄN TRỌNG KIÊN', N'Factory 2                               ', CAST(0x6B2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060110    ', N'NGUYỄN TẤN HƠN', N'PZM                                     ', CAST(0x782D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060111    ', N'ĐẶNG VĂN THƯƠNG', N'PRG                                     ', CAST(0x7F2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060112    ', N'NGUYỄN ĐÌNH ĐỨC', N'ZM2                                     ', CAST(0x7F2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060116    ', N'LÊ VĂN DƯƠNG', N'SPM2                                    ', CAST(0xA22D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060118    ', N'NGUYỄN HỒNG QUÂN', N'SPM2                                    ', CAST(0xA22D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060120    ', N'NGUYỄN NGỌC KHOA', N'Domestic Sales                          ', CAST(0xC52D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060121    ', N'ĐINH VĂN ẨN', N'PQC                                     ', CAST(0xC52D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060122    ', N'HỒ VIẾT PHÚC', N'Mechanic #2                             ', CAST(0xCC2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060127    ', N'TRẦN VĂN HÙNG', N'SPM1                                    ', CAST(0xD62D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060128    ', N'PHAN VĂN QUÝ', N'VBA2                                    ', CAST(0xD72D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060129    ', N'PHẠM VĂN DUY', N'SL                                      ', CAST(0xD72D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060131    ', N'NGUYỄN VĂN TÚ', N'Inspection2                             ', CAST(0xDD2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060132    ', N'NGUYỄN MINH TUYẾN', N'SL                                      ', CAST(0xDE2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060133    ', N'NGUYỄN TIẾN DŨNG', N'SPM1                                    ', CAST(0xDE2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060134    ', N'ĐỖ NGỌC CHÍNH', N'Driver                                  ', CAST(0xDF2D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060135    ', N'NGUYỄN PHAN CƯỜNG', N'Mechanical Lab                          ', CAST(0xE12D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'060138    ', N'HOÀNG QUỐC THUẬN', N'Safety                                  ', CAST(0xF72D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070139    ', N'LƯƠNG TẤN PHƯỚC', N'QC                                      ', CAST(0x122E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070140    ', N'NGUYỄN CHÍ THANH', N'Processing control                      ', CAST(0x202E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070152    ', N'HUỲNH VĂN THANH', N'Electric #2                             ', CAST(0x462E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070154    ', N'LÊ THANH GIÀU', N'Electric #2                             ', CAST(0x462E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070155    ', N'NGUYỄN VĂN CƯỜNG', N'Packing1                                ', CAST(0x4A2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070156    ', N'TRẦN DUY THÔNG', N'Factory 1                               ', CAST(0x4A2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070157    ', N'MÃ TRẦN THÔNG', N'Electric #1                             ', CAST(0x4B2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070159    ', N'ĐINH CÔNG TRƯƠNG', N'SPM1                                    ', CAST(0x4B2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070160    ', N'HOÀNG HỒNG THÁI', N'PTL                                     ', CAST(0x4B2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070161    ', N'LÊ VIỆT BẰNG', N'Mechanic #2                             ', CAST(0x522E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070162    ', N'HOÀNG NGỌC DŨNG', N'Innovation                              ', CAST(0x582E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070164    ', N'PHẠM DOÃN HẠNH', N'PRG                                     ', CAST(0x5A2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070167    ', N'PHẠM PHƯỚC THUẬN', N'ZM2                                     ', CAST(0x702E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070168    ', N'HOÀNG VƯƠNG QUỐC', N'ZM2                                     ', CAST(0x7D2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070169    ', N'BẠCH ĐÌNH HUYÊN', N'HBA                                     ', CAST(0x7D2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070170    ', N'NGUYỄN MINH PHƯƠNG', N'Inspection1                             ', CAST(0x832E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070171    ', N'ĐINH MẠNH PHÚC', N'CAPL                                    ', CAST(0x892E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070173    ', N'NGUYỄN ĐÌNH ĐỊNH', N'VBA1                                    ', CAST(0x8A2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070174    ', N'VŨ TRƯỜNG TOẢN', N'Processing control                      ', CAST(0x8A2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070175    ', N'BÙI HOÀNG HẬN', N'CAPL                                    ', CAST(0x8A2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070176    ', N'PHẠM TUẤN PHONG', N'SPM1                                    ', CAST(0x8B2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070180    ', N'BÙI ĐÌNH TUẤN', N'Support                                 ', CAST(0x8E2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070181    ', N'VÕ VĂN CHIẾN', N'PSL                                     ', CAST(0x8E2E0B00 AS Date))
GO
print 'Processed 100 total records'
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070182    ', N'TRẦN NGỌC BÌNH', N'Purchase                                ', CAST(0x902E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070183    ', N'NGUYỄN THANH BÌNH', N'ZM1                                     ', CAST(0x952E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070185    ', N'VŨ TRÍ VỸ', N'Factory 2                               ', CAST(0x9B2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070189    ', N'TRẦN ĐÌNH THANH', N'Inspection2                             ', CAST(0xA82E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070190    ', N'TĂNG BẢO PHONG', N'ZM1                                     ', CAST(0xBA2E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070191    ', N'HỒ VĂN CƯỜNG', N'Security                                ', CAST(0xC12E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070192    ', N'MAI HOÀNG THÔNG', N'Mechanic #1                             ', CAST(0xE62E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070193    ', N'NGUYỄN TRỌNG NGHĨA', N'Security                                ', CAST(0x0F2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070195    ', N'NGUYỄN VĂN QUÁT', N'Inspection1                             ', CAST(0x152F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070196    ', N'NGUYỄN VĂN HẢI', N'Processing control                      ', CAST(0x152F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070198    ', N'NGUYỄN HỮU ĐỨC', N'SL                                      ', CAST(0x232F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070204    ', N'PHẠM VĂN HƯỞNG', N'Utility-Mechanic                        ', CAST(0x512F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070207    ', N'TRẦN VĂN DŨNG', N'Inspection1                             ', CAST(0x522F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070210    ', N'ĐOÀN THỊ KIM DUNG', N'Order Process                           ', CAST(0x592F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'070213    ', N'CAO PHƯƠNG THANH NGUYỆT', N'HR                                      ', CAST(0x652F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080215    ', N'THÂN VĂN TÙNG', N'VBA2                                    ', CAST(0x722F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080218    ', N'ĐỖ SƠN HẢI', N'SPM1                                    ', CAST(0x722F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080219    ', N'VÕ VĂN HÀNH', N'Construction Section                    ', CAST(0x722F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080224    ', N'LÊ MINH PHÚ', N'VBA1                                    ', CAST(0x722F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080226    ', N'TĂNG VĂN HOÀNG', N'ZM1                                     ', CAST(0x7A2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080227    ', N'THÂN THỊ HẰNG', N'Purchase                                ', CAST(0x9B2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080229    ', N'PHẠM NGỌC ÂN', N'Utility-Mechanic                        ', CAST(0xA12F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080233    ', N'NGUYỄN LONG THÔNG', N'STL                                     ', CAST(0xA22F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080234    ', N'TRỊNH XUÂN LONG', N'Inspection2                             ', CAST(0xA32F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080235    ', N'MAI NGỌC DIỆP', N'Import-Export                           ', CAST(0xA42F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080236    ', N'VŨ ĐỨC TRUNG', N'Electric #2                             ', CAST(0xA42F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080238    ', N'NGUYỄN NGỌC HÙNG', N'Mechanic #2                             ', CAST(0xA82F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080239    ', N'NGUYỄN ĐÌNH HƯƠNG', N'ZM1                                     ', CAST(0xA82F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080240    ', N'NGUYỄN VĂN QUÝ', N'RG                                      ', CAST(0xA82F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080242    ', N'ĐOÀN MINH HỒNG', N'ZM2                                     ', CAST(0xA92F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080243    ', N'PHẠM VĂN CẦU', N'Utility-Mechanic                        ', CAST(0xA92F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080245    ', N'NGUYỄN ĐÌNH SẼ', N'Processing control                      ', CAST(0xB22F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080246    ', N'NGUYỄN VĂN HẢI', N'Inspection1                             ', CAST(0xB22F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080248    ', N'HOÀNG THẾ DƯƠNG', N'PZM                                     ', CAST(0xB92F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080249    ', N'TRẦN QUỐC TỬNG', N'PZM                                     ', CAST(0xB92F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080250    ', N'CHU QUỐC TRUNG', N'Mechanic #2                             ', CAST(0xB92F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080252    ', N'TRẦN ĐÌNH THÂN', N'STL                                     ', CAST(0xB92F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080255    ', N'HUỲNH TRỌNG TÀI', N'RS                                      ', CAST(0xC42F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080258    ', N'TRƯƠNG ĐÌNH TOÀN', N'Labor Relation                          ', CAST(0xC62F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080261    ', N'TRƯƠNG HẢI DƯƠNG', N'Utility-Mechanic                        ', CAST(0xCC2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080262    ', N'NGUYỄN VĂN PHONG', N'Inspection2                             ', CAST(0xCC2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080269    ', N'MAI THANH BÌNH', N'Import-Export                           ', CAST(0xD92F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080271    ', N'HOÀNG VĂN PHƯỚC', N'SPM1                                    ', CAST(0xD92F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080272    ', N'TRẦN VIẾT HỒNG', N'Mechanic #2                             ', CAST(0xDB2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080274    ', N'HOÀNG VĂN TUẤN', N'Utility-Mechanic                        ', CAST(0xDB2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080280    ', N'PHAN VĂN ĐẠI', N'Mechanic #2                             ', CAST(0xF52F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080283    ', N'ĐẶNG VĂN KỶ', N'VBA2                                    ', CAST(0xF62F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080285    ', N'PHẠM VĂN TUÂN', N'VBA1                                    ', CAST(0xFC2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080287    ', N'ĐẶNG TRỌNG HƯƠNG', N'Mechanic #1                             ', CAST(0xFC2F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080291    ', N'TRẦN ĐỨC TÂN', N'Export Sales                            ', CAST(0x0B300B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080295    ', N'NGUYỄN PHONG VINH', N'Processing control                      ', CAST(0x27300B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080297    ', N'PHẠM THỊ NGỌC TUYẾT', N'GA                                      ', CAST(0x34300B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080300    ', N'PHẠM VĂN HÙNG', N'Processing control                      ', CAST(0x46300B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080301    ', N'LÊ THANH BÌNH', N'CAPL                                    ', CAST(0x49300B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080307    ', N'ĐẶNG BÁ HOAN', N'Electric #1                             ', CAST(0x6E300B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080308    ', N'TRẦN XUÂN THỊNH', N'ZM1                                     ', CAST(0x75300B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'080310    ', N'ĐỖ KHẮC THỌ', N'Utility-Mechanic                        ', CAST(0x75300B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'090316    ', N'NGUYỄN QUANG DŨNG', N'PTL                                     ', CAST(0x45310B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'090322    ', N'NGUYỄN VĂN DƯƠNG', N'Processing control                      ', CAST(0x5A310B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'090323    ', N'PHẠM VĂN HÙNG', N'Inspection1                             ', CAST(0x5D310B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'090325    ', N'TRẦN MINH CƯỜNG', N'Inspection1                             ', CAST(0x69310B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'090326    ', N'NGUYỄN VĂN TẤN HIỆP', N'Innovation                              ', CAST(0x69310B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'090327    ', N'TRẦN HỒ TRIỀU', N'Mechanical Lab                          ', CAST(0x85310B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'090328    ', N'TRẦN THỊ KIỀU NHUNG', N'Purchase Support                        ', CAST(0x94310B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'090335    ', N'PHẠM VĂN THUYẾN', N'Processing control                      ', CAST(0x2D320B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100346    ', N'LỮ THỊ TRUNG TÍN', N'Account                                 ', CAST(0xDD320B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100347    ', N'PHAN BÁ ĐÀI', N'ZM1                                     ', CAST(0xDD320B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100348    ', N'PHẠM VĂN TÀI', N'VBA1                                    ', CAST(0xEB320B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100350    ', N'NGUYỄN ĐÌNH HẢI', N'ZM2                                     ', CAST(0xF4320B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100354    ', N'HOÀNG MINH QUÂN', N'Inspection1                             ', CAST(0xFF320B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100355    ', N'BÙI THỊ THÙY TRANG', N'Purchase Support                        ', CAST(0x01330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100357    ', N'LÊ HỒNG THANH', N'Support                                 ', CAST(0x01330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100358    ', N'HUỲNH NGỌC QUÍ', N'HBA                                     ', CAST(0x02330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100359    ', N'NGUYỄN NGỌC HIẾU', N'CAPL                                    ', CAST(0x02330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100360    ', N'NGUYỄN HỮU NHÂN', N'Technical Improvement                   ', CAST(0x05330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100361    ', N'PHẠM CÔNG TRÌNH', N'CBL                                     ', CAST(0x05330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100362    ', N'HỒ THỊ THANH LOAN', N'Purchase Support                        ', CAST(0x05330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100363    ', N'BÙI TRỌNG TUYẾN', N'CAPL                                    ', CAST(0x05330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100369    ', N'NGUYỄN VĂN BÌNH', N'HBA                                     ', CAST(0x0C330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100371    ', N'PHAN VĂN ẤT', N'RG                                      ', CAST(0x0C330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100372    ', N'LÊ VĂN NGỘ', N'ZM2                                     ', CAST(0x0C330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100373    ', N'TRẦN THẾ THI', N'Order Process                           ', CAST(0x13330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100375    ', N'TRẦN HỮU TÀI', N'Inspection2                             ', CAST(0x13330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100377    ', N'HOÀNG MẠNH KIỀU', N'RS                                      ', CAST(0x1A330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100378    ', N'HUỲNH VĂN ĐIỀN', N'Processing control                      ', CAST(0x1A330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100380    ', N'PHẠM NGỌC TÂN', N'Processing control                      ', CAST(0x1A330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100382    ', N'NGUYỄN VĂN ĐẠI', N'PRG                                     ', CAST(0x1A330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100383    ', N'TRẦN VĂN VỞ', N'ZM1                                     ', CAST(0x1A330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100385    ', N'TRẦN THÀNH ĐÔNG', N'Mechanical Lab                          ', CAST(0x21330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100391    ', N'TRẦN THANH HỒNG', N'RG                                      ', CAST(0x28330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100399    ', N'ĐÀO VĂN GiỜ', N'Inspection2                             ', CAST(0x36330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100408    ', N'HUỲNH NHẬT TRƯỜNG', N'PRG                                     ', CAST(0x44330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100409    ', N'LƯƠNG NGỌC TIỆP', N'PZM                                     ', CAST(0x44330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100411    ', N'LÊ ANH TÚ', N'GA                                      ', CAST(0x44330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100412    ', N'NGUYỄN VĂN NAM', N'CBL                                     ', CAST(0x44330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100423    ', N'NGUYỄN TRỌNG DU', N'ZM3                                     ', CAST(0x44330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100426    ', N'NGUYỄN THANH HOÀNG', N'WWT                                     ', CAST(0x44330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100427    ', N'NGUYỄN VĂN LÂN', N'Order Process                           ', CAST(0x44330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100431    ', N'TRƯƠNG TẤN MINH', N'Inspection1                             ', CAST(0x4B330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100441    ', N'BÙI THANH SỬ', N'Electric #2                             ', CAST(0x60330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100443    ', N'ĐÀO TRỌNG HÂN', N'Utility-Mechanic                        ', CAST(0x60330B00 AS Date))
GO
print 'Processed 200 total records'
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100444    ', N'NGUYỄN ĐÌNH THỊNH', N'STL                                     ', CAST(0x60330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100452    ', N'PHẠM ĐẠI NGHĨA', N'HBA                                     ', CAST(0x60330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100453    ', N'LÊ THỊ THỦY NGÂN', N'Mechanic #1                             ', CAST(0x60330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100457    ', N'MẠC THẾ CƯỜNG', N'STL                                     ', CAST(0x6E330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100458    ', N'NGUYỄN PHÙNG HẢI', N'SPM2                                    ', CAST(0x6E330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100460    ', N'NGUYỄN CHÍ CƯỜNG', N'PZM                                     ', CAST(0x6E330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100461    ', N'NGUYỄN TIẾN LỰC', N'WWT                                     ', CAST(0x6E330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100463    ', N'ĐOÀN VÕ THỊ HUYỀN TRANG', N'Finance                                 ', CAST(0x83330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100466    ', N'ĐỔNG MINH TIẾN', N'HBA                                     ', CAST(0x8A330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100468    ', N'HỒ PHAN KHẮC TÂM', N'ZM1                                     ', CAST(0x8A330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100471    ', N'NGUYỄN THÀNH NHÂN', N'ZM1                                     ', CAST(0x98330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100472    ', N'NGUYỄN MINH ĐỒNG', N'ZM1                                     ', CAST(0x98330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100478    ', N'LÊ XUÂN THAO', N'Mechanic #2                             ', CAST(0x98330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100479    ', N'PHẠM VĂN HIẾN', N'Warehouse                               ', CAST(0x98330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100483    ', N'LÝ GIANG THẢO', N'Mechanic #2                             ', CAST(0x9F330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'100494    ', N'MAI NGỌC BÌNH', N'Mechanic #1                             ', CAST(0xAD330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110314    ', N'NGÔ TRÍ VINH', N'Mechanic #1                             ', CAST(0x01340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110497    ', N'NGUYỄN HÀM DŨNG', N'RG                                      ', CAST(0xBC330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110500    ', N'PHẠM QUỐC KHÁNH', N'VBA2                                    ', CAST(0xCA330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110504    ', N'TRẦN VĂN NUÔI', N'ZM2                                     ', CAST(0xE5330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110505    ', N'TRẦN ĐÌNH CƯỜNG', N'ZM2                                     ', CAST(0xE5330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110507    ', N'SA VĂN BÌNH', N'ZM1                                     ', CAST(0xE7330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110510    ', N'TRẦN VĂN HẢI', N'Utility-Electric                        ', CAST(0xE7330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110512    ', N'HUỲNH VĂN QUANG', N'Utility-Electric                        ', CAST(0xE7330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110513    ', N'NGUYỄN TẤN DŨNG', N'Mechanic #1                             ', CAST(0xE7330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110516    ', N'NGUYỄN MINH THUẬN', N'PRG                                     ', CAST(0xE7330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110524    ', N'NGUYỄN VĂN THIỆU', N'Processing control                      ', CAST(0xEC330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110533    ', N'PHẠM HỒNG TOẢN', N'Electric #1                             ', CAST(0xEC330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110534    ', N'TÔ LAN PHƯƠNG', N'Processing control                      ', CAST(0xED330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110541    ', N'NGUYỄN HẢI SƠN', N'Utility-Electric                        ', CAST(0xF3330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110544    ', N'NGUYỄN NGỌC TUẤN', N'VBA2                                    ', CAST(0xF3330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110545    ', N'TRẦN THẾ HÙNG', N'HBA                                     ', CAST(0xF3330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110546    ', N'NGUYỄN KHẮC HÙNG', N'Order Process                           ', CAST(0xF3330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110547    ', N'LÊ VĂN HÙNG', N'SPM1                                    ', CAST(0xF3330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110552    ', N'NGUYỄN QUANG HIẾU', N'RG                                      ', CAST(0xF3330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110555    ', N'TRẦN DŨNG', N'Purchase                                ', CAST(0xF3330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110556    ', N'HỒ THỊ PHI PHIÊN', N'GA                                      ', CAST(0xFA330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110564    ', N'PHAN THỊ TƯỜNG VI', N'Export Sales                            ', CAST(0xFD330B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110569    ', N'NGÔ TRÍ VINH', N'Mechanic #1                             ', CAST(0x01340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110571    ', N'LÊ VĂN HOÀI', N'PSL                                     ', CAST(0x01340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110573    ', N'NGUYỄN KHẮC DUYỆT', N'RG                                      ', CAST(0x01340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110579    ', N'HUỲNH PHƯỚC HƯNG', N'Utility-Electric                        ', CAST(0x01340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110581    ', N'PHAN ĐÌNH HẬU', N'Electric #1                             ', CAST(0x01340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110582    ', N'NGUYỄN NGUYÊN THÀNH NAM', N'VBA1                                    ', CAST(0x02340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110585    ', N'TRẦN VĂN BÌNH', N'PZM                                     ', CAST(0x08340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110588    ', N'NGUYỄN VĂN VŨ', N'HBA                                     ', CAST(0x08340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110590    ', N'NGUYỄN NGỌC LAM', N'VBA1                                    ', CAST(0x08340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110596    ', N'NGUYỄN ĐÌNH HUY', N'PQC                                     ', CAST(0x08340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110602    ', N'LÊ HỮU QUANG', N'Mechanic #1                             ', CAST(0x0F340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110604    ', N'NGUYỄN THỊ HƯỜNG', N'Domestic Sales                          ', CAST(0x10340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110606    ', N'ĐỖ VIẾT CƯỜNG', N'Mechanic #1                             ', CAST(0x16340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110608    ', N'NGUYỄN TRỌNG NHÂN', N'Electric #1                             ', CAST(0x16340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110614    ', N'HUỲNH NGỌC CHÂU', N'Mechanic #2                             ', CAST(0x16340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110615    ', N'LÊ DUY ĐẠI', N'Safety                                  ', CAST(0x1D340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110619    ', N'ĐẶNG THẾ THANH', N'Mechanic #1                             ', CAST(0x1D340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110623    ', N'TRẦN VĂN PHƯƠNG', N'Security                                ', CAST(0x24340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110626    ', N'NGUYỄN QUANG CHƯƠNG', N'Security                                ', CAST(0x24340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110627    ', N'ĐỖ ĐỨC HẠNH', N'CAPL                                    ', CAST(0x2C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110631    ', N'TRẦN CÔNG CHÍNH', N'Electric #2                             ', CAST(0x2C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110638    ', N'TRẦN TIẾN MẠNH', N'PQC                                     ', CAST(0x2C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110640    ', N'VÕ XUÂN TRƯỜNG', N'WWT                                     ', CAST(0x2C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110645    ', N'PHẠM QUỐC MẠNH', N'Electric #2                             ', CAST(0x33340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110646    ', N'NGUYỄN THỊ THÙY AN', N'Import-Export                           ', CAST(0x33340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110648    ', N'PHAN ĐÌNH ANH', N'Mechanic #1                             ', CAST(0x39340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110652    ', N'NGUYỄN ANH MINH', N'Mechanic #1                             ', CAST(0x39340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110654    ', N'TRẦN VĂN TRƯỜNG', N'RS                                      ', CAST(0x40340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110657    ', N'NGUYỄN XUÂN TRỰC', N'Mechanic #1                             ', CAST(0x40340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110661    ', N'ĐỖ ĐỨC KHÁ', N'Utility-Electric                        ', CAST(0x40340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110663    ', N'HOÀNG VĂN TRÌNH', N'Instrumentation control                 ', CAST(0x47340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110666    ', N'LÊ XUÂN HÓA', N'VBA1                                    ', CAST(0x47340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110668    ', N'PHẠM GIA LÂN', N'VBA1                                    ', CAST(0x47340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110672    ', N'THÁI VĂN ĐIỀN', N'Mechanic #2                             ', CAST(0x47340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110681    ', N'LÊ THÀNH TRUNG', N'SPM1                                    ', CAST(0x47340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110683    ', N'HUỲNH THANH PHONG', N'SPM1                                    ', CAST(0x47340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110686    ', N'PHAN VĂN BÌNH', N'SL                                      ', CAST(0x47340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110691    ', N'TRẦN PHÚC LUẬN', N'Mechanic #1                             ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110692    ', N'LÊ HỮU TRÍ', N'GA                                      ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110693    ', N'TRẦN QUANG HUẤN', N'Electric #1                             ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110694    ', N'TẰNG VĂN QUỲNH', N'Utility-Electric                        ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110695    ', N'CAO THANH TRỌNG', N'WWT                                     ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110696    ', N'TRẦN VĂN THỊNH', N'STL                                     ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110697    ', N'THIỀU QUỐC THỊNH', N'CAPL                                    ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110700    ', N'NGUYỄN VĂN HẢI', N'SPM2                                    ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110701    ', N'NGUYỄN DUY PHƯƠNG', N'CAPL                                    ', CAST(0x4E340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110712    ', N'NGUYỄN HỒNG LINH', N'VBA2                                    ', CAST(0x55340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110715    ', N'VÕ ĐÌNH CÔNG', N'WWT                                     ', CAST(0x55340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110719    ', N'BÙI TRỌNG THẮNG', N'Warehouse                               ', CAST(0x5C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110727    ', N'NGUYỄN PHÚC NGHĨA', N'WWT                                     ', CAST(0x5C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110728    ', N'NGUYỄN MINH HẢI', N'Mechanic #2                             ', CAST(0x5C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110732    ', N'TRẦN VĂN TRƯỜNG', N'VBA2                                    ', CAST(0x5C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110736    ', N'NGUYỄN THANH HÙNG', N'SPM1                                    ', CAST(0x5C340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110745    ', N'LÊ VĂN LỢI', N'WWT                                     ', CAST(0x63340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110753    ', N'PHAN VĂN BẢO', N'CAPL                                    ', CAST(0x6A340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110754    ', N'TRẦN VĂN QUÝ', N'CBL                                     ', CAST(0x6A340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110761    ', N'NGUYỄN ĐỨC HÒA', N'TLL                                     ', CAST(0x6A340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110764    ', N'ĐỖ HUY DŨNG', N'VBA1                                    ', CAST(0x6A340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110768    ', N'PHAN XUÂN QUANG', N'ZM3                                     ', CAST(0x71340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110771    ', N'TRẦN NGỌC SANG', N'Mechanic #2                             ', CAST(0x71340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110776    ', N'TỪ THANH TIỀN', N'STL                                     ', CAST(0x78340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110786    ', N'PHẠM VĂN TIẾN', N'SPM2                                    ', CAST(0x78340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110787    ', N'PHAN THỊ HOÀI QUYÊN', N'Order Process                           ', CAST(0x7F340B00 AS Date))
GO
print 'Processed 300 total records'
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110791    ', N'VŨ VĂN CÔNG', N'Processing control                      ', CAST(0x7F340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110801    ', N'LÊ VĂN TIẾN', N'WWT                                     ', CAST(0x87340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110806    ', N'HUỲNH TẤN DŨNG', N'STL                                     ', CAST(0x87340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110812    ', N'VÕ HỒNG SANG', N'CBL                                     ', CAST(0x87340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110815    ', N'LÊ VĂN BA', N'CBL                                     ', CAST(0x87340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110816    ', N'HUỲNH THANH HÒA', N'WWT                                     ', CAST(0x87340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110818    ', N'VÕ VĂN KHÁNH', N'CBL                                     ', CAST(0x87340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110823    ', N'ĐINH TRỌNG TUẤN', N'Mechanical Lab                          ', CAST(0x8D340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110832    ', N'LÊ VĂN QUÂN', N'RS                                      ', CAST(0x94340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110840    ', N'PHAN ĐÌNH LÝ', N'STL                                     ', CAST(0x94340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110842    ', N'THÁI HOÀNG ANH', N'WWT                                     ', CAST(0x94340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110846    ', N'VƯƠNG HUY QUÂN', N'RS                                      ', CAST(0x9B340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110847    ', N'NGUYỄN HOÀNG ÂN', N'RS                                      ', CAST(0x9B340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110852    ', N'HUỲNH HOÀNG TÚ', N'Inspection2                             ', CAST(0x9B340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110854    ', N'THÁI VĂN THIỆN', N'Inspection2                             ', CAST(0x9B340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110855    ', N'LÊ TRỌNG HÒA', N'Electric #2                             ', CAST(0x9B340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110866    ', N'NGUYỄN TRÍ TUẤN', N'Mechanic #2                             ', CAST(0xBE340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110867    ', N'BÙI THỊ THU HIỀN', N'Chemical Lab                            ', CAST(0xBE340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110868    ', N'TRẦN THỊ XUÂN HẤN', N'Chemical Lab                            ', CAST(0xBE340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110870    ', N'LÊ PHAN AN', N'Electric #1                             ', CAST(0xBE340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110875    ', N'NGUYỄN ĐỨC HIỆP', N'Electric #1                             ', CAST(0xC5340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110877    ', N'NGUYỄN THỊ CẨM VÂN', N'Chemical Lab                            ', CAST(0xC5340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110879    ', N'LÊ ĐÌNH DUYÊN', N'Security                                ', CAST(0xC5340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110881    ', N'ĐINH VĂN SƠN', N'STL                                     ', CAST(0xCC340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110888    ', N'VÕ VĂN BÉ NĂM', N'Mechanic #2                             ', CAST(0xD3340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110899    ', N'HỒ VĂN NGHĨA', N'CBL                                     ', CAST(0xE1340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110900    ', N'ĐOÀN MINH DƯƠNG', N'SPM2                                    ', CAST(0xE1340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110902    ', N'ĐẶNG THỊ MỸ DUNG', N'Chemical Lab                            ', CAST(0xE1340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110903    ', N'PHẠM THỊ LỆ HẰNG', N'Chemical Lab                            ', CAST(0xE1340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110905    ', N'VÕ HÙNG ANH', N'Labor Relation                          ', CAST(0xE8340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110907    ', N'TRẦN MINH VƯƠNG', N'SPM2                                    ', CAST(0xE8340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110918    ', N'NGUYỄN THANH QUYỀN', N'ZM3                                     ', CAST(0xE8340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110919    ', N'ĐOÀN VĂN TOÀN', N'Mechanical Lab                          ', CAST(0xE8340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110920    ', N'LÊ VĂN ĐẠT', N'Mechanical Lab                          ', CAST(0xEF340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110927    ', N'PHẠM TRUNG TƯỜNG', N'CBL                                     ', CAST(0xEF340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110928    ', N'TRƯƠNG TRỌNG', N'CBL                                     ', CAST(0xEF340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110932    ', N'CAO MINH NHẬT', N'Electric #2                             ', CAST(0xEF340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110934    ', N'HUỲNH MINH TIẾN', N'Electric #2                             ', CAST(0xEF340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110938    ', N'VŨ MINH VƯƠNG', N'Mechanical Lab                          ', CAST(0xF7340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110942    ', N'LÊ ANH THI', N'Inspection2                             ', CAST(0xF7340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110943    ', N'NGUYỄN HÀ GIANG', N'Domestic Sales                          ', CAST(0xF7340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110945    ', N'MAI MINH THIÊN', N'RG                                      ', CAST(0xF7340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110946    ', N'ĐẶNG THẾ LONG', N'ZM2                                     ', CAST(0xF7340B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110949    ', N'VŨ TIẾN THỊNH', N'CAPL                                    ', CAST(0x04350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110956    ', N'NGUYỄN PHƯỚC THỌ', N'Mechanic #2                             ', CAST(0x04350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110959    ', N'VŨ VĂN THỊNH', N'Mechanical Lab                          ', CAST(0x04350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110960    ', N'LÊ VĂN THỌ', N'SPM1                                    ', CAST(0x04350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110961    ', N'LÊ VĂN QUÝ', N'RG                                      ', CAST(0x04350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110962    ', N'ĐINH CÔNG DUY', N'ZM2                                     ', CAST(0x04350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110963    ', N'TRẦN THỊ XUÂN HƯƠNG', N'Export Sales                            ', CAST(0x04350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110971    ', N'NGUYỄN ANH ĐỨC', N'Domestic Sales                          ', CAST(0x12350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110973    ', N'TRẦN BÁ KHÁNH', N'CAPL                                    ', CAST(0x12350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110977    ', N'LÊ VĂN HÙNG', N'CAPL                                    ', CAST(0x12350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'110979    ', N'NGUYỄN KIM THỦY', N'Purchase                                ', CAST(0x19350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'120983    ', N'HỒ NHƯ MINH', N'Safety                                  ', CAST(0x28350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'120984    ', N'NGUYỄN THỊ BÍCH THU', N'GA                                      ', CAST(0x28350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'120993    ', N'HOÀNG THẾ HẢI', N'Inspection1                             ', CAST(0x4B350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'120997    ', N'PHAN THANH HÀN', N'RG                                      ', CAST(0x52350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121000    ', N'NGUYỄN ĐỨC TRỌNG', N'Utility-Mechanic                        ', CAST(0x52350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121004    ', N'PHẠM VĂN HÒA', N'Inspection2                             ', CAST(0x52350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121005    ', N'TÔ TRẦN THÁI BẢO', N'Support                                 ', CAST(0x52350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121006    ', N'HỒ VĂN THÀNH', N'Inspection2                             ', CAST(0x52350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121009    ', N'NGUYỄN DOÃN THẮNG', N'VBA2                                    ', CAST(0x52350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121015    ', N'HỒ VĂN THIỆN', N'Security                                ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121016    ', N'LÊ ĐỖ THẢO ĐĂNG', N'Processing control                      ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121017    ', N'ĐẶNG VĂN NGUYÊN', N'Processing control                      ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121020    ', N'HOÀNG VĂN HOẠT', N'Inspection2                             ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121021    ', N'PHẠM VĂN TÚ', N'Inspection2                             ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121028    ', N'LƯƠNG ANH TÚ', N'RG                                      ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121030    ', N'NGUYỄN THÀNH LUÂN', N'HBA                                     ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121031    ', N'NGUYỄN HỒNG SƠN', N'HBA                                     ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121032    ', N'NGUYỄN VĂN TÙNG', N'PSL                                     ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121033    ', N'PHẠM THANH TUẤN', N'PSL                                     ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121034    ', N'NGUYỄN XUÂN LỰC', N'PRG                                     ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121035    ', N'LÊ THANH NGHĨA', N'PZM                                     ', CAST(0x59350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121039    ', N'NGUYỄN XUÂN NAM', N'Inspection1                             ', CAST(0x60350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121040    ', N'NGUYỄN HỮU HOÀN', N'Processing control                      ', CAST(0x60350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121041    ', N'LÊ QUANG TOÀN', N'Processing control                      ', CAST(0x60350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121050    ', N'NGUYỄN VĂN DUY', N'CAPL                                    ', CAST(0x60350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121052    ', N'BÙI VĂN THÀNH', N'Mechanical Lab                          ', CAST(0x60350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121053    ', N'DƯƠNG VĂN SÁU', N'Security                                ', CAST(0x75350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121060    ', N'HỒ HỮU LONG', N'CAPL                                    ', CAST(0x75350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121067    ', N'MAI QUÝ ANH', N'Inspection2                             ', CAST(0x75350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121069    ', N'NGUYỄN VĂN MẠNH', N'RS                                      ', CAST(0x75350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121073    ', N'MÃ LÝ LUẬN', N'Security                                ', CAST(0x7C350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121075    ', N'NGUYỄN VĂN ĐỆ', N'PTL                                     ', CAST(0x7C350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121079    ', N'PHẠM VĂN HẬU', N'CBL                                     ', CAST(0x7C350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121082    ', N'ĐINH VĂN DƯƠNG', N'RS                                      ', CAST(0x7C350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121083    ', N'VÕ THỊ TUYẾT TRINH', N'HR                                      ', CAST(0x3B360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121090    ', N'NGUYỄN THANH TUẤN', N'CBL                                     ', CAST(0xC9350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121091    ', N'NGUYỄN MINH PHƯƠNG', N'ZM3                                     ', CAST(0xC9350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121092    ', N'TRẦN QUANG ĐẶNG', N'Order Process                           ', CAST(0xD7350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121099    ', N'MAI VĂN PHÚ', N'CAPL                                    ', CAST(0xD7350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121101    ', N'NGUYỄN CHÍNH CÔNG', N'PQC                                     ', CAST(0xEC350B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121104    ', N'TRƯƠNG QUANG HÙNG', N'Account                                 ', CAST(0x0E360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121105    ', N'TRẦN ĐÌNH PHƯƠNG', N'Instrumentation control                 ', CAST(0x1D360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121107    ', N'ĐẶNG THỊ THÙY TRANG', N'Account                                 ', CAST(0x1F360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121109    ', N'PHAN THĂNG LONG', N'Processing control                      ', CAST(0x32360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121111    ', N'NGUYỄN XUÂN THANH HỒNG', N'Finance                                 ', CAST(0x55360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'121113    ', N'TRẦN TRUNG THẮNG', N'Security                                ', CAST(0x72360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131122    ', N'TRỊNH NGỌC THÀNH', N'SPM2                                    ', CAST(0xDB360B00 AS Date))
GO
print 'Processed 400 total records'
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131123    ', N'HOÀNG ĐÌNH BANG', N'Inspection2                             ', CAST(0xDB360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131126    ', N'PHẠM VĂN BẰNG', N'PQC                                     ', CAST(0xDB360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131129    ', N'NGUYỄN MINH TUẤN', N'Processing control                      ', CAST(0xDB360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131130    ', N'THÁI HOÀNG TRUNG', N'Inspection1                             ', CAST(0xDC360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131135    ', N'MAI TIẾN THANH', N'CBL                                     ', CAST(0xE8360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131138    ', N'LÊ VĂN NGỌC', N'VBA2                                    ', CAST(0xE8360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131139    ', N'NGUYỄN VĂN QUÝ', N'Security                                ', CAST(0xE8360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131140    ', N'NGUYỄN MẠNH CƯỜNG', N'Processing control                      ', CAST(0xE8360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131147    ', N'NGUYỄN THÀNH DANH', N'CBL                                     ', CAST(0xEA360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131148    ', N'NGUYỄN TẤN TÀI', N'PZM                                     ', CAST(0xF6360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131149    ', N'TĂNG VĂN HUY', N'PRG                                     ', CAST(0xF6360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131150    ', N'LÊ HOÀNG MINH', N'PSL                                     ', CAST(0xF6360B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131159    ', N'HOÀNG ĐÌNH HẢI', N'ZM3                                     ', CAST(0x66370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131160    ', N'MẠNH HUỲNH THẮNG', N'ZM3                                     ', CAST(0x66370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131161    ', N'NGUYỄN VĂN ĐỨC', N'SPM1                                    ', CAST(0x66370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131162    ', N'TRẦN HỮU BA', N'ZM2                                     ', CAST(0x66370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131166    ', N'LÝ HÙNG QUÂN', N'CAPL                                    ', CAST(0x73370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131167    ', N'NGUYỄN VĂN ĐỒNG', N'CAPL                                    ', CAST(0x73370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131171    ', N'ĐOÀN NHẤT NAM', N'ZM1                                     ', CAST(0x8B370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131172    ', N'NGUYỄN TÂN TIẾN', N'ZM2                                     ', CAST(0x8B370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131176    ', N'ĐINH KIỀU MINH TÂN', N'WWT                                     ', CAST(0x96370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131178    ', N'NGUYỄN TẤN PHÁT', N'Support                                 ', CAST(0xAB370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131183    ', N'VÒNG TRẦN BẨU', N'PRG                                     ', CAST(0xAB370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131184    ', N'PHẠM MINH DƯƠNG', N'PRG                                     ', CAST(0xAB370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131185    ', N'ĐỖ ĐÌNH THÀNH', N'TLL                                     ', CAST(0xAB370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131190    ', N'NGUYỄN HOÀNG KHẮP', N'SPM1                                    ', CAST(0xBC370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131191    ', N'NGÔ CHUNG', N'ZM3                                     ', CAST(0xBC370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131193    ', N'MÃ VĂN HOÀNG', N'TLL                                     ', CAST(0xC3370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131201    ', N'NGUYỄN BÉ SÁU', N'Electric #1                             ', CAST(0xC3370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131202    ', N'NGUYỄN XUÂN MỸ', N'TLL                                     ', CAST(0xC3370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131203    ', N'LÊ DƯ ĐÔN', N'TLL                                     ', CAST(0xC3370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'131204    ', N'NGÔ VĂN KHANG', N'SL                                      ', CAST(0xC3370B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141221    ', N'ĐỖ VĂN SĨ', N'Processing control                      ', CAST(0x14380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141229    ', N'TRẦN HOÀI ÂN', N'Finance                                 ', CAST(0x53380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141233    ', N'LÊ VĂN DUNG', N'RG                                      ', CAST(0x53380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141236    ', N'NGUYỄN QUỐC TRÍ', N'Processing control                      ', CAST(0x53380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141241    ', N'NGUYỄN THANH VŨ', N'Inspection2                             ', CAST(0x61380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141244    ', N'NGUYỄN VĂN TẤN', N'Inspection1                             ', CAST(0x61380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141246    ', N'PHAN THANH PHÚC', N'SL                                      ', CAST(0x61380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141249    ', N'ĐẶNG HỒNG QUỐC', N'RG                                      ', CAST(0x61380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141265    ', N'HUỲNH PHÚC NHÂN', N'QC                                      ', CAST(0x7F380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141268    ', N'ĐINH XUÂN NĂM', N'CAPL                                    ', CAST(0x84380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141269    ', N'NGUYỄN QUANG ANH', N'SPM2                                    ', CAST(0x8B380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141271    ', N'NGUYỄN THANH TÙNG', N'ZM2                                     ', CAST(0x8B380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141272    ', N'TRẦN ĐÀ', N'VBA1                                    ', CAST(0x8B380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141275    ', N'LÊ THANH LỊCH', N'RS                                      ', CAST(0x96380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141278    ', N'PHÙNG NGỌC CƯỜNG', N'ZM3                                     ', CAST(0xA0380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141282    ', N'ĐẶNG SỸ DIỆU', N'SL                                      ', CAST(0xA7380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141285    ', N'NGUYỄN THỊ CẨM NHUNG', N'Order Process                           ', CAST(0xA7380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141286    ', N'TRẦN THẾ SƠN', N'Processing control                      ', CAST(0xB1380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141293    ', N'NGUYỄN THỊ MINH THOA', N'Support                                 ', CAST(0xB1380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141299    ', N'NGUYỄN HOÀNG HUY', N'Technical Improvement                   ', CAST(0xB1380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141309    ', N'TRẦN NHẬT DU', N'Electric #2                             ', CAST(0xBF380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141311    ', N'NGUYỄN VĂN KHÁNH', N'Security                                ', CAST(0xC6380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141312    ', N'PHẠM VĂN HƯỞNG', N'Mechanic #1                             ', CAST(0xC6380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141314    ', N'HUỲNH PHONG HÂN', N'CBL                                     ', CAST(0xC6380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141316    ', N'NGUYỄN HOÀNG THÁM', N'CBL                                     ', CAST(0xC6380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141317    ', N'LÊ TRỌNG LINH', N'SPM2                                    ', CAST(0xC6380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141322    ', N'NGUYỄN LÊ ĐỨC NHÂN', N'Innovation                              ', CAST(0xF6380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141326    ', N'BÙI VĂN HÙNG', N'Mechanic #1                             ', CAST(0xF6380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141327    ', N'TRẦN DIỄM TRINH', N'HR                                      ', CAST(0xFC380B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141334    ', N'NGUYỄN TÚ SƯƠNG', N'Utility-Electric                        ', CAST(0x26390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141339    ', N'THÂN MINH QUÂN', N'CAPL                                    ', CAST(0x26390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141340    ', N'NGUYỄN MINH CẢNH', N'RS                                      ', CAST(0x26390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141343    ', N'NGUYỄN VĂN SÁNG', N'CAPL                                    ', CAST(0x34390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141344    ', N'NGUYỄN VĂN BA', N'ZM3                                     ', CAST(0x34390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141351    ', N'NGUYỄN ĐÌNH LUÂN', N'Purchase                                ', CAST(0x4B390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141353    ', N'PHẠM THỊ THỦY', N'HR                                      ', CAST(0x5E390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'141356    ', N'ĐÀO TRUNG THÀNH', N'WWT                                     ', CAST(0x5E390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151360    ', N'TRẦN PHAN YẾN NHI', N'Domestic Sales                          ', CAST(0x79390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151362    ', N'NGUYỄN ĐÌNH SÁNG', N'Warehouse                               ', CAST(0xB5390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151364    ', N'PHÙNG VĂN BỪA', N'Processing control                      ', CAST(0xB5390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151366    ', N'TRƯƠNG HOÀNG HIỆP', N'Warehouse                               ', CAST(0xC2390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151369    ', N'PHẠM THANH XUYÊN', N'PSL                                     ', CAST(0xCD390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151377    ', N'LÊ VĂN LONG', N'Processing control                      ', CAST(0xD5390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151378    ', N'HUỲNH VĂN TRƯỜNG HẬN', N'Inspection2                             ', CAST(0xD5390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151379    ', N'TRẦN TRUNG TÍN', N'PQC                                     ', CAST(0xD5390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151380    ', N'NGUYỄN THÀNH NGHIỆP', N'PQC                                     ', CAST(0xD5390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151382    ', N'DƯƠNG HOÀI NAM', N'ZM3                                     ', CAST(0xD5390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151383    ', N'LÊ NGUYỄN PHƯỚC HẬU', N'RS                                      ', CAST(0xD5390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151386    ', N'ĐẶNG MINH HẢI', N'TLL                                     ', CAST(0xED390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151388    ', N'NGUYỄN HOÀNG LONG', N'Mechanical Lab                          ', CAST(0xED390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151390    ', N'ĐINH VĂN HÓA', N'Inspection1                             ', CAST(0xED390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151391    ', N'NGUYỄN VĂN LÊN', N'CAPL                                    ', CAST(0xED390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151392    ', N'TRẦN HOÀNG VIỄN', N'WWT                                     ', CAST(0xED390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151394    ', N'ĐẶNG HOÀNG AN', N'TLL                                     ', CAST(0xED390B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151396    ', N'BÙI TRƯỜNG GIANG', N'Instrumentation control                 ', CAST(0x023A0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151399    ', N'NGUYỄN VĂN QUÃNG', N'Utility-Mechanic                        ', CAST(0x1E3A0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151403    ', N'PHAN TRỌNG CHINH', N'PQC                                     ', CAST(0x243A0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151407    ', N'DƯƠNG NGỌC THANH KHÔI', N'HBA                                     ', CAST(0x3A3A0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151411    ', N'NGUYỄN TỪ ĐỨC HUY', N'Domestic Sales                          ', CAST(0x483A0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151413    ', N'NGUYỄN VĂN CHƯƠNG', N'Technical Improvement                   ', CAST(0x4F3A0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'151414    ', N'LÊ THÁI SƠN', N'Domestic Sales                          ', CAST(0xCB3A0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161415    ', N'NGUYỄN TUẤN TÚ', N'Domestic Sales                          ', CAST(0xED3A0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161416    ', N'ĐẶNG ĐÌNH SOÁI', N'VBA1                                    ', CAST(0x183B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161417    ', N'NGUYỄN THỊ PHƯỢNG HẰNG', N'Account                                 ', CAST(0x1D3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161418    ', N'ĐẶNG TẤN PHÚC', N'RS                                      ', CAST(0x2B3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161421    ', N'NGUYỄN THANH TUÂN', N'Processing control                      ', CAST(0x3A3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161422    ', N'HỒ THỊ BÍCH NGỌC', N'Export Sales                            ', CAST(0x3A3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161423    ', N'NGUYỄN BÁ THÔNG', N'Technical Improvement                   ', CAST(0x3A3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161424    ', N'NGUYỄN QUỐC BẢO', N'Technical Improvement                   ', CAST(0x3A3B0B00 AS Date))
GO
print 'Processed 500 total records'
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161426    ', N'BÙI NỮ YẾN NGỌC', N'Account                                 ', CAST(0x5C3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161427    ', N'NGUYỄN DOÃN MINH', N'CBL                                     ', CAST(0x643B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161436    ', N'ĐỖ TIẾN CÔNG', N'ZM2                                     ', CAST(0x7F3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161439    ', N'NGUYỄN ĐỨC THÙY', N'TLL                                     ', CAST(0x833B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161440    ', N'TRẦN ĐÌNH ĐẠT', N'Processing control                      ', CAST(0x833B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161443    ', N'NGUYỄN HÙNG CƯỜNG', N'SL                                      ', CAST(0x873B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161444    ', N'TRẦN DUY THÀNH', N'PQC                                     ', CAST(0x8A3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161452    ', N'HOÀNG VĂN CHUNG', N'Export Sales                            ', CAST(0x8D3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161453    ', N'TRẦN THỊ PHƯƠNG LAN', N'Domestic Sales                          ', CAST(0x8D3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161454    ', N'PHẠM MINH TÙNG', N'Domestic Sales                          ', CAST(0x8D3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161455    ', N'ĐỖ THỊ QUỲNH NHƯ', N'Domestic Sales                          ', CAST(0x8D3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161456    ', N'TRẦN VĂN NAM', N'Processing control                      ', CAST(0x913B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161457    ', N'HOÀNG VĂN HÒA', N'Processing control                      ', CAST(0x913B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161459    ', N'NGUYỄN VĂN TÂN', N'Processing control                      ', CAST(0x913B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161460    ', N'PHAN CẢNH ANH', N'RG                                      ', CAST(0x913B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161461    ', N'THÁI VĂN HÙNG', N'PSL                                     ', CAST(0x913B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161462    ', N'NGUYỄN NGỌC THÀNH', N'PRG                                     ', CAST(0x913B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161465    ', N'ĐẬU VĂN QUỲNH', N'VBA2                                    ', CAST(0x913B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161466    ', N'THÂN HOÀNG XUÂN THƯƠNG', N'Export Sales                            ', CAST(0x953B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161467    ', N'NGUYỄN THỊ THU VÂN', N'GA                                      ', CAST(0x953B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161469    ', N'NGUYỄN HOÀNG ĐẬM', N'PQC                                     ', CAST(0x973B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161470    ', N'BÙI DIỆP TRỌNG', N'PTL                                     ', CAST(0x973B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161473    ', N'NGUYỄN XUÂN HÒA', N'PZM                                     ', CAST(0x973B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161474    ', N'NGUYỄN MINH KHƯƠNG', N'Domestic Sales                          ', CAST(0x9B3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161475    ', N'HUỲNH ANH HIẾU', N'Inspection2                             ', CAST(0x9E3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161476    ', N'NGUYỄN TIẾN DŨNG', N'HBA                                     ', CAST(0x9E3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161481    ', N'BÙI VĂN MẬU', N'SPM1                                    ', CAST(0xAA3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161482    ', N'PHẠM VĂN HÒA', N'ZM1                                     ', CAST(0xAA3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161484    ', N'TRẦN HỮU HÒA', N'Inspection2                             ', CAST(0xAA3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161485    ', N'NGUYỄN VĂN SINH', N'SPM2                                    ', CAST(0xAA3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161487    ', N'TRẦN THÀNH TUẤN', N'Export Sales                            ', CAST(0xB33B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161488    ', N'TRẦN ĐỨC HUY', N'Domestic Sales                          ', CAST(0xB73B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161489    ', N'NGUYỄN THANH TUẤN', N'ZM3                                     ', CAST(0xD33B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161490    ', N'VÕ VĂN TIẾN', N'ZM3                                     ', CAST(0xD33B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161492    ', N'NGUYỄN QUANG NAM', N'ZM1                                     ', CAST(0xDA3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161493    ', N'NGUYỄN TRƯỜNG SƠN', N'VBA2                                    ', CAST(0xDA3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161494    ', N'PHẠM MINH QUÂN', N'SPM2                                    ', CAST(0xDE3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161497    ', N'TRƯƠNG CÔNG LINH', N'SL                                      ', CAST(0xE93B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161498    ', N'TRẦN VĂN PHƠN', N'CBL                                     ', CAST(0xE93B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161499    ', N'NGUYỄN THỊ NGỌC TRINH', N'Export Sales                            ', CAST(0x013C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161500    ', N'TRẦN THỊ HẰNG', N'Export Sales                            ', CAST(0x0B3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'161501    ', N'PHẠM THỊ NHUNG', N'Export Sales                            ', CAST(0x3C3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171502    ', N'TRƯƠNG CÔNG QUÝ', N'PZM                                     ', CAST(0x7B3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171503    ', N'PHẠM XUÂN HỮU', N'Warehouse                               ', CAST(0x7B3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171504    ', N'NGUYỄN CẢNH PHƯỢNG', N'Utility-Mechanic                        ', CAST(0x7E3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171506    ', N'VÕ VĂN HÙNG', N'Utility-Electric                        ', CAST(0x103B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171507    ', N'NGUYỄN THÀNH VŨ', N'Safety                                  ', CAST(0x893C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171508    ', N'TRÌNH THỊ MỸ NGỌC', N'Domestic Sales                          ', CAST(0x8C3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171510    ', N'NGUYỄN ĐỨC THÀNH', N'CBL                                     ', CAST(0x8C3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171511    ', N'LÊ HOÀNG MINH', N'CBL                                     ', CAST(0x8C3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171513    ', N'TRẦN HUỲNH ĐÔ', N'STL                                     ', CAST(0x923C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171514    ', N'VÕ THANH TÒNG', N'Processing control                      ', CAST(0x923C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171515    ', N'ĐÀO ĐẶNG TRUNG HIẾU', N'Domestic Sales                          ', CAST(0x9A3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171517    ', N'PHAN ĐÔ', N'SL                                      ', CAST(0x9A3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171518    ', N'PHẠM ĐẮC LĨNH', N'CBL                                     ', CAST(0xA03C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171521    ', N'NGUYỄN MINH TRIẾT', N'Inspection1                             ', CAST(0xA23C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171523    ', N'THÂN TRỌNG TIẾN', N'Technical Improvement                   ', CAST(0xA53C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171524    ', N'PHẠM HỒNG THỦY TIÊN', N'Domestic Sales                          ', CAST(0xA53C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171525    ', N'PHAN VĂN VŨ', N'Mechanic #2                             ', CAST(0xA53C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171526    ', N'NGUYỄN MINH TRUNG', N'Instrumentation control                 ', CAST(0xA93C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171527    ', N'TRẦN VIẾT LỘC', N'HBA                                     ', CAST(0xAC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171528    ', N'LÊ VĂN MÃI', N'PTL                                     ', CAST(0xAC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171529    ', N'TRẦN VIẾT SANG', N'CBL                                     ', CAST(0xAC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171530    ', N'NGUYỄN VĂN CƯỜNG', N'ZM3                                     ', CAST(0xAC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171531    ', N'NGUYỄN NGỌC HẢI', N'Electric #2                             ', CAST(0xAC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171532    ', N'TRỊNH THỊ NGỌC TRANG', N'Import-Export                           ', CAST(0xAC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171533    ', N'HUỲNH VIỆT THẮNG', N'PQC                                     ', CAST(0xB03C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171534    ', N'NGUYỄN THẾ LONG', N'Mechanical Lab                          ', CAST(0xB03C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171535    ', N'LÊ NGỌC LỤA', N'CAPL                                    ', CAST(0xB03C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171537    ', N'PHAN TRƯỜNG CÔNG', N'HBA                                     ', CAST(0xB53C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171538    ', N'TRẦN ĐỨC QUANG', N'Mechanical Lab                          ', CAST(0xB73C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171540    ', N'VƯƠNG HUY QUANG', N'Mechanic #1                             ', CAST(0xBC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171541    ', N'HOÀNG VĂN LÂM', N'Technical Improvement                   ', CAST(0xC33C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171543    ', N'PHAN HOÀNG DANH', N'QC                                      ', CAST(0xC33C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171544    ', N'NGUYỄN QUỐC HÒA', N'SPM2                                    ', CAST(0xC93C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171545    ', N'NAY BANG', N'SPM2                                    ', CAST(0xC93C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171547    ', N'NGUYỄN CÔNG DƯƠNG', N'Electric #1                             ', CAST(0xCC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171548    ', N'NGUYỄN VĂN BI', N'Chemical Lab                            ', CAST(0xCC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171549    ', N'NGUYỄN NGỌC TÂN', N'ZM3                                     ', CAST(0xCF3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171550    ', N'ĐINH HOÀNG MƯỜI', N'RS                                      ', CAST(0xCF3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171552    ', N'NGUYỄN VĂN QUYỀN', N'CAPL                                    ', CAST(0xCF3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171553    ', N'PHẠM VĂN VIỆT', N'SPM2                                    ', CAST(0xCF3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171555    ', N'PHẠM VĂN LỢI', N'CAPL                                    ', CAST(0xCF3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171556    ', N'TRẦN THỊ KHÁNH HÒA', N'Export Sales                            ', CAST(0xD63C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171557    ', N'NGUYỄN PHƯỚC HƯNG', N'Utility-Mechanic                        ', CAST(0xD63C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171558    ', N'NGUYỄN VĂN ĐẠT', N'Processing control                      ', CAST(0xD63C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171559    ', N'ĐỖ LINH PHƯƠNG', N'Finance                                 ', CAST(0xD83C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171560    ', N'HÀ ĐỨC ĐÔNG', N'Electric #2                             ', CAST(0xD83C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171561    ', N'PHẠM TẤN THỊNH', N'STL                                     ', CAST(0xDD3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171563    ', N'TRẦN VĂN XUYÊN', N'Order Process                           ', CAST(0xE53C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171564    ', N'LÊ THANH SANG', N'ZM3                                     ', CAST(0xE83C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171565    ', N'LÂM VĂN NHU', N'HBA                                     ', CAST(0xED3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171567    ', N'LÊ THỊ THÙY', N'Finance                                 ', CAST(0xF93C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171568    ', N'NGUYỄN CÔNG KHÔI', N'ZM3                                     ', CAST(0xFC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171569    ', N'DƯƠNG HÀ NGỌC PHƯƠNG', N'HR                                      ', CAST(0x0B3D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171570    ', N'CHU NGỌC LỘC', N'SPM2                                    ', CAST(0x473D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171571    ', N'NGUYỄN HOÀNG MINH', N'SPM2                                    ', CAST(0x473D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171573    ', N'NGUYỄN ĐỨC NGHỊ', N'PQC                                     ', CAST(0x4A3D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171574    ', N'ĐẶNG NGỌC SƠN', N'PQC                                     ', CAST(0x4A3D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'171575    ', N'LÊ VĂN NHÂM', N'PZM                                     ', CAST(0x543D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181580    ', N'ĐẶNG HỮU PHÁT', N'ZM3                                     ', CAST(0xF63D0B00 AS Date))
GO
print 'Processed 600 total records'
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181581    ', N'NGUYỄN TẤN THỨC', N'Support                                 ', CAST(0xF63D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181582    ', N'LÊ MINH VŨ', N'Safety                                  ', CAST(0xFD3D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181583    ', N'HOÀNG VĂN THÀNH', N'Processing control                      ', CAST(0x053E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181584    ', N'NGUYỄN VĂN BÌNH', N'CAPL                                    ', CAST(0x053E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181585    ', N'ĐÀO VĂN ÁNH', N'STL                                     ', CAST(0x053E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181586    ', N'KPĂ ROK', N'STL                                     ', CAST(0x053E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181587    ', N'HỒ THỊ HOÀNG MY', N'Domestic Sales                          ', CAST(0xF63D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181588    ', N'HUỲNH NGUYỄN TIỆP', N'Security                                ', CAST(0x0E3E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181590    ', N'LÝ TRẦN TUẤN KHÔI', N'Order Process                           ', CAST(0x183E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181591    ', N'LÊ ĐÌNH THI', N'CBL                                     ', CAST(0x233E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181592    ', N'NGUYỄN TƯỜNG VIÊN', N'CBL                                     ', CAST(0x233E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181593    ', N'LÊ ĐÌNH HIỂN', N'CBL                                     ', CAST(0x233E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181594    ', N'NINH THẾ VÕ', N'CAPL                                    ', CAST(0x233E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181595    ', N'CHÂU NHẬT TÂM', N'PTL                                     ', CAST(0x233E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181596    ', N'HOÀNG VĂN TÂM', N'HBA                                     ', CAST(0x233E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181597    ', N'TRẦN ĐOÀN PHƯƠNG LINH', N'Order Process                           ', CAST(0x343E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181598    ', N'TRẦN THỊ NHẬT TRÂM', N'Domestic Sales                          ', CAST(0x433E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181599    ', N'LÝ NHÂN KIỆT', N'Inspection2                             ', CAST(0x4A3E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181600    ', N'THẠCH KHÉT', N'Processing control                      ', CAST(0x4A3E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181601    ', N'NGUYỄN HUY QUANG', N'HBA                                     ', CAST(0x5F3E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181602    ', N'NGUYỄN ANH HÀO', N'TLL                                     ', CAST(0x743E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181605    ', N'NGUYỄN VŨ HẠ VY', N'Export Sales                            ', CAST(0xDC3E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181606    ', N'NGUYỄN QUANG VINH', N'Technical Improvement                   ', CAST(0xE33E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181607    ', N'NGUYỄN THANH TRÚC', N'Import-Export                           ', CAST(0xDA3E0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'181612    ', N'ĐOÁI HOÀNG TUẤN', N'QC                                      ', CAST(0x063F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'191613    ', N'PHÙNG VĂN MỸ', N'Processing control                      ', CAST(0x2A3F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'191614    ', N'VÕ XUÂN SANG ', N'Processing control                      ', CAST(0x2A3F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'191615    ', N'PHẠM ĐĂNG KHOA', N'HR                                      ', CAST(0x373F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'191627    ', N'NGUYỄN THỊ TRÀ MY', N'Account                                 ', CAST(0x683F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'191636    ', N'NGUYỄN ANH ĐẠT', N'Technical Improvement                   ', CAST(0x6F3F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200003    ', N'LEE CHANG HOAN', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200005    ', N'KIM SEON TAE', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200018    ', N'KANG YOO BIN', N'Domestic Sales                          ', NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200020    ', N'SHIM WOONGBO', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200022    ', N'PARK MIN SEOK', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200023    ', N'YEOM JAE SEOK', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200025    ', N'IM JI AM', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200026    ', N'LEE JU HYEOB', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200027    ', N'CHOI SEUNG HO', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200028    ', N'LEE MINHO', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200030    ', N'KWON JOONIN', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200032    ', N'PARK EUN YOUNG', N'QC                                      ', CAST(0xEB3B0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200033    ', N'JEONG DAE JUNG', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200034    ', N'KO MOON JEONG', N'Purchase                                ', CAST(0xAC3C0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200035    ', N'KIM BONG JIN', N'Factory 1                               ', CAST(0xD93D0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200037    ', N'CHOI DALYOUNG', N'Factory 1                               ', CAST(0x033F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'200039    ', N'PARK DUCK BAE', N'Electric #1                             ', CAST(0xC73F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'532177    ', N'BAEK KYUNG HYUN', NULL, NULL)
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'admin     ', N'Admin', N'ICT                                     ', CAST(0xFD3F0B00 AS Date))
INSERT [dbo].[tb_Employee] ([EMP_ID], [NAME], [WORKGROUP], [ENTER_DATE]) VALUES (N'quantri   ', N'Administrator', N'HR                                      ', CAST(0xE63C0B00 AS Date))
/****** Object:  Table [dbo].[tb_Document]    Script Date: 08/16/2019 17:07:29 ******/
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
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (2, 2, N'Luật Việt Nam', N'/Resources/upload/abc.pdf', 0, N'1', CAST(0x0000AA9A00000000 AS DateTime), N'1')
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (3, 2, N'Văn bản luật', N'/Resources/upload/abc.pdf', 0, N'1', CAST(0x0000AA9A00000000 AS DateTime), N'1')
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (4, 3, N'Luật lao động', N'/Resources/upload/LuatLaoDong.pdf', 0, N'1', CAST(0x0000AA9A00000000 AS DateTime), N'1')
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (7, 4, N'Luật Bảo Hiểm Xã Hội', N'/Resources/upload/LuatBHXH.pdf', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), N'1')
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (9, 5, N'Luật sửa đổi các Luật về thuế 2014 ', N'/Resources/upload/LuatThue2014.pdf', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (10, 5, N'Luật thuế TNCN 2007', N'/Resources/upload/LuatThueTNCN2007.pdf', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (11, 5, N'Luật thuế TNCN sửa đổi 2012', N'/Resources/upload/LuatThueTNCN2012.pdf', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (12, 10, N'Tài liệu hướng dẫn thực hành và chuẩn mực đạo đức ở POSCO', N'/Resources/upload/ChuanMucDaoDuc.pdf', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (13, 9, N'Tiêu chuẩn quy định bảo vệ thông tin pháp nhân nước ngoài', N'/Resources/upload/PhapNhanNuocNgoai.pdf', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Document] ([Id], [CategoryId], [DocumentName], [Url], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (14, 7, N'Nội quy lao động', N'/Resources/upload/NoiQuyPOSCO.pdf', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Document] OFF
/****** Object:  Table [dbo].[tb_Categories]    Script Date: 08/16/2019 17:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[CategoryName] [nvarchar](150) NULL,
	[ParentId] [int] NULL,
	[Type] [nvarchar](50) NULL,
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
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (1, N'Salary', N'Tiền lương', 11, N'QA', 0, N'1', CAST(0x0000AA9600000000 AS DateTime), N'1')
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (2, N'Law', N'Pháp luật Việt Nam', NULL, N'DOC', 0, N'1', CAST(0x0000AA9900000000 AS DateTime), N'1')
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (3, N'Labor', N'Luật lao động', NULL, N'DOC', 0, N'1', CAST(0x0000AA9A00000000 AS DateTime), N'1')
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (4, N'RuleInsurrance', N'Luật bảo hiểm', NULL, N'DOC', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (5, N'RuleTax', N'Luật thuế', NULL, N'DOC', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (6, N'RuleCompany', N'Công ty', NULL, N'DOC', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (7, N'RuleHR', N'Nhân sự', NULL, N'DOC', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (8, N'RuleSafety', N'An toàn', NULL, N'DOC', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (9, N'RuleSercurityInfo', N'Bảo mật thông tin', NULL, N'DOC', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (10, N'RuleEthic', N'Chuẩn mực đạo đức', NULL, N'DOC', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (11, N'HR', N'Liên quan nhân sự', NULL, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (12, N'WokingTime', N'Chấm công ', 11, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (13, N'OT', N'Tăng ca', 11, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (14, N'Eva', N'Đánh giá', 11, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (15, N'Insurrance', N'Bảo hiểm', 11, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (16, N'Other', N'Nhân sự - khác', 11, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (17, N'Rule', N'Chuẩn mực đạo đức', NULL, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (18, N'Welfare', N'Phúc lợi', NULL, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (19, N'Hard', N'Khó khăn nhân viên', NULL, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
INSERT [dbo].[tb_Categories] ([Id], [Category], [CategoryName], [ParentId], [Type], [IsDeleted], [CreatedBy], [CreatedDate], [ModifiedBy]) VALUES (20, N'QOther', N'Câu hỏi khác', NULL, N'QA', 0, N'1', CAST(0x0000AAA200000000 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Categories] OFF
/****** Object:  Table [dbo].[tb_Answers]    Script Date: 08/16/2019 17:07:29 ******/
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
/****** Object:  StoredProcedure [dbo].[UserLogin]    Script Date: 08/16/2019 17:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UserLogin]
	-- Add the parameters for the stored procedure here
	@Username nvarchar(150) = 'admin',
	@Password nvarchar(250) = 'Yc802gRUeM8='
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT u.Username, u.Id
	FROM tb_User u WHERE u.Username = @Username AND u.Password = @Password 
	
END
GO
/****** Object:  StoredProcedure [dbo].[SearchQuestion]    Script Date: 08/16/2019 17:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SearchQuestion]
	-- Add the parameters for the stored procedure here
	@KeySearch nvarchar(150) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT q.Question, q.CreatedBy, q.CreatedDate, c.Category, c.CategoryName, u.Username
	
	FROM tb_Questions q 
	LEFT JOIN tb_Categories c ON c.Id = q.CategoryId
	LEFT JOIN tb_User u ON u.Id = q.CreatedBy
	WHERE q.Question LIKE '%' + @KeySearch +'%'
		AND q.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[InsertUser]    Script Date: 08/16/2019 17:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertUser]
	-- Add the parameters for the stored procedure here
	@Username nvarchar(150),
	@Password nvarchar(250),
	@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO tb_User(Username, Password, CreatedBy, CreatedDate)
			VALUES(@Username, @Password, @CreatedBy, GETDATE())
   
END
GO
/****** Object:  StoredProcedure [dbo].[InsertQuestion]    Script Date: 08/16/2019 17:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[InsertQuestion]
	@CategoryId int,
	@Question nvarchar(250),
	@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	INSERT INTO tb_Questions (CategoryId, Question, CreatedDate, CreatedBy)
				VALUES (@CategoryId, @Question, GETDATE(), @CreatedBy)
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetQuestionList]    Script Date: 08/16/2019 17:07:27 ******/
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
	SELECT q.CreatedBy, q.Question, q.Id, c.Category, u.Username, e.EMP_ID, c.CategoryName
	FROM tb_Questions q
	LEFT JOIN tb_Categories c ON c.Id = q.CategoryId
	inner join tb_User u on q.CreatedBy = u.Id
	left join tb_Employee e on e.EMP_ID = u.Username
	WHERE 1=1
		AND c.Category = @Category
		AND q.IsDeleted = 0
		
	--OFFSET (@pageIndex - 1) * @pageSize rows
	--FETCH NEXT @pageSize row only
END

--	inner join tb_User u on q.CreatedBy = u.Id
--	left join tb_Employee e on e.EMP_ID = u.Username
GO
/****** Object:  StoredProcedure [dbo].[GetQuestionById]    Script Date: 08/16/2019 17:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetQuestionById]
@CategoryId int = NULL
AS
BEGIN
select q.CreatedBy, q.Question, q.Id, u.Username, e.EMP_ID, c.CategoryName  from tb_Questions q
	LEFT JOIN tb_Categories c ON c.Id = q.CategoryId
	left join tb_User u on q.CreatedBy = u.Id
	left join tb_Employee e on e.EMP_ID = u.Username 
		 where q.CategoryId in 
			(
				select c.Id from tb_Categories c where c.ParentId = @CategoryId or q.CategoryId = @CategoryId
			) 
END
GO
/****** Object:  StoredProcedure [dbo].[GetList]    Script Date: 08/16/2019 17:07:27 ******/
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
/****** Object:  StoredProcedure [dbo].[GetHistory]    Script Date: 08/16/2019 17:07:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetHistory]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT q.Question, q.Id, q.CreatedDate ,e.EMP_ID, e.NAME, e.ENTER_DATE, e.WORKGROUP
	FROM tb_Questions q 
	inner join tb_User u on q.CreatedBy = u.Id
	left join tb_Employee e on e.EMP_ID = u.Username
	WHERE q.IsDeleted = 0
	
END
GO
/****** Object:  StoredProcedure [dbo].[GetDocumentList]    Script Date: 08/16/2019 17:07:27 ******/
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
	SELECT d.CreatedBy, d.DocumentName, d.Id, c.Category, d.Url, u.Username, c.CategoryName
	FROM tb_Document d
	LEFT JOIN tb_Categories c ON c.Id = d.CategoryId
	LEFT JOIN tb_User u ON d.CreatedBy = u.Id
	WHERE c.Category = @Category
		AND d.IsDeleted = 0
END
GO
/****** Object:  StoredProcedure [dbo].[GetDocumentDetail]    Script Date: 08/16/2019 17:07:27 ******/
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
/****** Object:  StoredProcedure [dbo].[GetAnswer]    Script Date: 08/16/2019 17:07:27 ******/
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
/****** Object:  Default [DF_tb_answers_IsDeleted]    Script Date: 08/16/2019 17:07:29 ******/
ALTER TABLE [dbo].[tb_Answers] ADD  CONSTRAINT [DF_tb_answers_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tb_Categoried_IsDeleted]    Script Date: 08/16/2019 17:07:29 ******/
ALTER TABLE [dbo].[tb_Categories] ADD  CONSTRAINT [DF_tb_Categoried_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tb_Document_IsDeleted]    Script Date: 08/16/2019 17:07:29 ******/
ALTER TABLE [dbo].[tb_Document] ADD  CONSTRAINT [DF_tb_Document_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tb_Questions_IsDeleted]    Script Date: 08/16/2019 17:07:29 ******/
ALTER TABLE [dbo].[tb_Questions] ADD  CONSTRAINT [DF_tb_Questions_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_tb_User_IsDeleted]    Script Date: 08/16/2019 17:07:29 ******/
ALTER TABLE [dbo].[tb_User] ADD  CONSTRAINT [DF_tb_User_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
