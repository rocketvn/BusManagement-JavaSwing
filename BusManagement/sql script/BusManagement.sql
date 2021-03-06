USE [master]
GO
/****** Object:  Database [BusManagement]    Script Date: 5/20/2022 3:39:45 PM ******/
CREATE DATABASE [BusManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BusManagement2_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BusManagement2.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BusManagement2_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BusManagement2.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BusManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BusManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BusManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BusManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BusManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BusManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BusManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [BusManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BusManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BusManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BusManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BusManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BusManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BusManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BusManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BusManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BusManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BusManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BusManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BusManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BusManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BusManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BusManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BusManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BusManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [BusManagement] SET  MULTI_USER 
GO
ALTER DATABASE [BusManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BusManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BusManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BusManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BusManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BusManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BusManagement', N'ON'
GO
ALTER DATABASE [BusManagement] SET QUERY_STORE = OFF
GO
USE [BusManagement]
GO
/****** Object:  UserDefinedFunction [dbo].[testing]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[testing]()
returns @aTable table(col_1 nvarchar(30), col_2 nvarchar(39))

as
begin
 	insert into @aTable select emp_id, f_name from EMPLOYEE
	
	return
end
GO
/****** Object:  UserDefinedFunction [dbo].[TONG]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[TONG](@a int, @b int)
RETURNS INT
AS
BEGIN
	RETURN @a+ @b
END
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[emp_id] [int] IDENTITY(1,1) NOT NULL,
	[f_name] [nvarchar](64) NOT NULL,
	[l_name] [nvarchar](64) NOT NULL,
	[birth_date] [date] NULL,
	[address] [ntext] NULL,
	[sex] [nchar](1) NULL,
	[start_working_date] [date] NULL,
	[position] [nvarchar](20) NULL,
	[salary] [decimal](10, 2) NULL,
	[identity_num] [varchar](12) NULL,
 CONSTRAINT [PK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_EMPLOYEE] UNIQUE NONCLUSTERED 
(
	[identity_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[showEmp]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[showEmp]()
returns table
as
return (select * from EMPLOYEE)
GO
/****** Object:  Table [dbo].[BUS_TICKET]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUS_TICKET](
	[bus_id] [int] NOT NULL,
	[ticket_id] [int] NOT NULL,
	[ticket_sold] [int] NULL,
	[day] [date] NOT NULL,
 CONSTRAINT [PK_BUS_TICKET] PRIMARY KEY CLUSTERED 
(
	[bus_id] ASC,
	[ticket_id] ASC,
	[day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[tk_so_ve]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[tk_so_ve]
as
select bus_id, MONTH(day) as mymonth, ticket_id ,ticket_sold from bus_ticket
where bus_id = 1 and MONTH(day) = 4
GO
/****** Object:  Table [dbo].[BUS]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUS](
	[bus_id] [int] IDENTITY(1,1) NOT NULL,
	[route_id] [int] NULL,
	[license_plate] [nvarchar](20) NULL,
	[bus_type] [nvarchar](20) NULL,
	[start_use] [date] NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_BUS_1] PRIMARY KEY CLUSTERED 
(
	[bus_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_BUS] UNIQUE NONCLUSTERED 
(
	[license_plate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[tk_ve2]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[tk_ve2]
as
select b.bus_id, route_id, mymonth, ticket_id, ticket_sold
from BUS b
INNER JOIN tk_so_ve tk
on b.bus_id = tk.bus_id
GO
/****** Object:  Table [dbo].[WORK]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WORK](
	[bus_id] [int] NOT NULL,
	[emp_id] [int] NOT NULL,
	[time_id] [int] NOT NULL,
	[work_day] [date] NOT NULL,
 CONSTRAINT [PK_WORK] PRIMARY KEY CLUSTERED 
(
	[bus_id] ASC,
	[emp_id] ASC,
	[time_id] ASC,
	[work_day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIME]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIME](
	[time_id] [int] NOT NULL,
	[start_time] [time](2) NULL,
	[end_time] [time](2) NULL,
	[repeat] [int] NULL,
 CONSTRAINT [PK_TIME] PRIMARY KEY CLUSTERED 
(
	[time_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_info_work]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[view_info_work] 
as
select w.bus_id, b.license_plate , w.emp_id, hoten= e.l_name+ ' '+ ' ' +e.f_name,
	e.position, w.time_id , t.start_time, t.end_time, w.work_day
from WORK w, EMPLOYEE e, BUS b, TIME t
where w.bus_id= b.bus_id AND w.emp_id= e.emp_id AND w.time_id = t.time_id 
GO
/****** Object:  Table [dbo].[BUS_EMP]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BUS_EMP](
	[bus_id] [int] NOT NULL,
	[emp_id] [int] NOT NULL,
 CONSTRAINT [PK_BUS_EMP] PRIMARY KEY CLUSTERED 
(
	[bus_id] ASC,
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_work_BUS]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[view_work_BUS]
as
select b.bus_id, b.route_id
from  BUS b
where not exists( select be.bus_id from BUS_EMP be where be.bus_id = b.bus_id )
GO
/****** Object:  Table [dbo].[OPERATION_COST]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPERATION_COST](
	[op_id] [int] NOT NULL,
	[bus_id] [int] NULL,
	[gas_cost] [float] NULL,
	[fix_cost] [float] NULL,
	[day] [date] NULL,
 CONSTRAINT [PK_OP_COST] PRIMARY KEY CLUSTERED 
(
	[op_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROUTE]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROUTE](
	[route_id] [int] IDENTITY(1,1) NOT NULL,
	[go_turn] [ntext] NULL,
	[back_turn] [ntext] NULL,
	[bus_stop_num] [int] NULL,
	[time_travel] [int] NULL,
	[time_break] [int] NULL,
	[start_point] [ntext] NULL,
	[cost] [float] NULL,
 CONSTRAINT [PK_ROUTE] PRIMARY KEY CLUSTERED 
(
	[route_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TICKET]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKET](
	[ticket_id] [int] IDENTITY(1,1) NOT NULL,
	[ticket_type] [nvarchar](50) NOT NULL,
	[fare] [int] NOT NULL,
 CONSTRAINT [PK__TICKET__D596F96B63BD3F7E] PRIMARY KEY CLUSTERED 
(
	[ticket_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__TICKET__84A3E0A888B0C1C8] UNIQUE NONCLUSTERED 
(
	[ticket_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view_sum_ticket1]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[view_sum_ticket1]
as
select bt.bus_id, month(bt.day) as Months ,sum(t.fare*bt.ticket_sold) as Sum_ticket, r.cost, oc.fix_cost
from BUS_TICKET bt, TICKET t, BUS b, ROUTE r, OPERATION_COST oc
where bt.ticket_id = t.ticket_id AND b.bus_id = bt.bus_id AND r.route_id= b.route_id AND b.bus_id= oc.bus_id
Group by bt.bus_id, month( bt.day), r.cost, oc.fix_cost
GO
/****** Object:  View [dbo].[view_sum_revenue]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_sum_revenue]
as
select sum(Sum_ticket)- sum(cost) as Revenue
from view_sum_ticket1
GO
/****** Object:  View [dbo].[view_statictis2]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[view_statictis2]
as
SELECT bt.bus_id, bt.ticket_id, bt.ticket_sold, t.ticket_type ,b.license_plate ,bt.day
FROM BUS_TICKET bt, BUS b, TICKET t
WHERE bt.bus_id = b.bus_id AND bt.ticket_id = t.ticket_id
GO
/****** Object:  View [dbo].[view_revenue]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE view [dbo].[view_revenue]
as
select sum(v.Sum_ticket) - sum(r.cost) - sum(e.salary) - sum(oc.fix_cost) as revenue
from view_sum_ticket1 v, EMPLOYEE e, ROUTE r, OPERATION_COST oc
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](64) NOT NULL,
	[password] [varchar](64) NOT NULL,
	[emp_id] [int] NOT NULL,
	[email] [varchar](50) NULL,
	[phone] [nchar](10) NULL,
 CONSTRAINT [PK_ACCOUNT] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_ACCOUNT] UNIQUE NONCLUSTERED 
(
	[emp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_ACCOUNT_1] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [IX_ACCOUNT_2] UNIQUE NONCLUSTERED 
(
	[phone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ__ACCOUNT__7C9273C474D1B36D] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_TIME]    Script Date: 5/20/2022 3:39:46 PM ******/
CREATE NONCLUSTERED INDEX [IX_TIME] ON [dbo].[TIME]
(
	[start_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WORK]    Script Date: 5/20/2022 3:39:46 PM ******/
CREATE NONCLUSTERED INDEX [IX_WORK] ON [dbo].[WORK]
(
	[work_day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ACCOUNT]  WITH CHECK ADD  CONSTRAINT [FK_ACCOUNT_EMPLOYEE] FOREIGN KEY([emp_id])
REFERENCES [dbo].[EMPLOYEE] ([emp_id])
GO
ALTER TABLE [dbo].[ACCOUNT] CHECK CONSTRAINT [FK_ACCOUNT_EMPLOYEE]
GO
ALTER TABLE [dbo].[BUS]  WITH CHECK ADD  CONSTRAINT [FK_BUS_ROUTE] FOREIGN KEY([route_id])
REFERENCES [dbo].[ROUTE] ([route_id])
GO
ALTER TABLE [dbo].[BUS] CHECK CONSTRAINT [FK_BUS_ROUTE]
GO
ALTER TABLE [dbo].[BUS_EMP]  WITH CHECK ADD  CONSTRAINT [FK_BUS_EMP_BUS] FOREIGN KEY([bus_id])
REFERENCES [dbo].[BUS] ([bus_id])
GO
ALTER TABLE [dbo].[BUS_EMP] CHECK CONSTRAINT [FK_BUS_EMP_BUS]
GO
ALTER TABLE [dbo].[BUS_EMP]  WITH CHECK ADD  CONSTRAINT [FK_BUS_EMP_EMPLOYEE] FOREIGN KEY([emp_id])
REFERENCES [dbo].[EMPLOYEE] ([emp_id])
GO
ALTER TABLE [dbo].[BUS_EMP] CHECK CONSTRAINT [FK_BUS_EMP_EMPLOYEE]
GO
ALTER TABLE [dbo].[BUS_TICKET]  WITH CHECK ADD  CONSTRAINT [FK_BUS_TICKET_BUS] FOREIGN KEY([bus_id])
REFERENCES [dbo].[BUS] ([bus_id])
GO
ALTER TABLE [dbo].[BUS_TICKET] CHECK CONSTRAINT [FK_BUS_TICKET_BUS]
GO
ALTER TABLE [dbo].[BUS_TICKET]  WITH CHECK ADD  CONSTRAINT [FK_BUS_TICKET_TICKET] FOREIGN KEY([ticket_id])
REFERENCES [dbo].[TICKET] ([ticket_id])
GO
ALTER TABLE [dbo].[BUS_TICKET] CHECK CONSTRAINT [FK_BUS_TICKET_TICKET]
GO
ALTER TABLE [dbo].[OPERATION_COST]  WITH CHECK ADD  CONSTRAINT [FK_OPERATION_COST_BUS] FOREIGN KEY([bus_id])
REFERENCES [dbo].[BUS] ([bus_id])
GO
ALTER TABLE [dbo].[OPERATION_COST] CHECK CONSTRAINT [FK_OPERATION_COST_BUS]
GO
ALTER TABLE [dbo].[WORK]  WITH NOCHECK ADD  CONSTRAINT [FK_WORK_BUS_EMP] FOREIGN KEY([emp_id], [bus_id])
REFERENCES [dbo].[BUS_EMP] ([bus_id], [emp_id])
GO
ALTER TABLE [dbo].[WORK] NOCHECK CONSTRAINT [FK_WORK_BUS_EMP]
GO
ALTER TABLE [dbo].[WORK]  WITH CHECK ADD  CONSTRAINT [FK_WORK_TIME] FOREIGN KEY([time_id])
REFERENCES [dbo].[TIME] ([time_id])
GO
ALTER TABLE [dbo].[WORK] CHECK CONSTRAINT [FK_WORK_TIME]
GO
/****** Object:  StoredProcedure [dbo].[addAccount]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[addAccount]
@username varchar(64),
@password varchar(64),
@emp_id int,
@email varchar(50),
@phone char(10)

AS
BEGIN
INSERT INTO ACCOUNT 
OUTPUT Inserted.user_id
VALUES(@username, @password, @emp_id, @email, @phone)
END
GO
/****** Object:  StoredProcedure [dbo].[addEmp]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[addEmp]
@f_name nvarchar(64), @l_name nvarchar(64), @birth_date date, @address ntext, @sex char, @sw_date date, @pos nvarchar(20), @salary float, @identity_num varchar(12)

AS
BEGIN
	INSERT EMPLOYEE
	VALUES (
		@f_name, @l_name, @birth_date, @address, @sex, @sw_date, @pos, @salary, @identity_num
	)
END
GO
/****** Object:  StoredProcedure [dbo].[employeeCanWork]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[employeeCanWork]
@work_day date
as
SELECT EMPLOYEE.emp_id, EMPLOYEE.l_name, EMPLOYEE.f_name, EMPLOYEE.position
FROM EMPLOYEE
LEFT OUTER JOIN
(
SELECT BUS_EMP.emp_id, BUS_EMP.bus_id 
FROM BUS_EMP
INNER JOIN WORK
ON BUS_EMP.emp_id = WORK.emp_id AND BUS_EMP.bus_id = WORK.bus_id
WHERE WORK.work_day = @work_day) TB2

ON EMPLOYEE.emp_id = TB2.emp_id
WHERE TB2.emp_id IS NULL
GO
/****** Object:  StoredProcedure [dbo].[login]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[login]

@username varchar(64), @password varchar(64)
AS
BEGIN 
	SELECT EMPLOYEE.emp_id, l_name, f_name, position, email
	FROM EMPLOYEE
	INNER JOIN ACCOUNT ON EMPLOYEE.emp_id = ACCOUNT.emp_id
	WHERE ACCOUNT.username = @username AND ACCOUNT.password =@password

END


GO
/****** Object:  StoredProcedure [dbo].[schedule]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[schedule]
@month int, @week int, @day int, @year int, @emp_id int
AS
set datefirst 1;
Select ROUTE.route_id as bus_num, BUS.license_plate, name = EMPLOYEE.f_name +' '+ EMPLOYEE.l_name, TIME.start_time AS start_time, TIME.end_time AS end_time, ROUTE.start_point, work_day from WORK
INNER JOIN BUS
ON WORK.bus_id = BUS.bus_id
INNER JOIN EMPLOYEE
ON WORK.emp_id = EMPLOYEE.emp_id
INNER JOIN TIME
ON WORK.time_id = TIME.time_id
INNER JOIN ROUTE
ON BUS.route_id = ROUTE.route_id

WHERE MONTH(WORK.work_day) = @month and datepart(week, WORK.work_day) = @week and datepart(dw, WORK.work_day) = @day and year(WORK.work_day) = @year and WORK.emp_id = @emp_id
GO
/****** Object:  StoredProcedure [dbo].[sp_WorkBus]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_WorkBus]
( 
	@day nchar(2),
	@year nchar(4)
	
)
as
select b.bus_id, b.route_id
from BUS_EMP be, BUS b
where not exists( select w.bus_id from WORK w where  b.bus_id= w.bus_id AND month(w.work_day) = @day AND year(w.work_day) =@year )
	
group by b.bus_id, b.route_id
GO
/****** Object:  StoredProcedure [dbo].[sp_WorkEMP1]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_WorkEMP1]
( 
	@day nchar(2),
	@year nchar(4)
) 
as
select e.emp_id, fullname= e.l_name+' '+e.f_name, e.position
from BUS_EMP be, EMPLOYEE e
where not exists( select w.bus_id from WORK w where  e.emp_id= w.emp_id AND month(w.work_day) = @day AND year(w.work_day) = @year )
	 AND e.position=N'Tài xế'
group by e.emp_id, e.l_name, e.f_name, e.position
GO
/****** Object:  StoredProcedure [dbo].[sp_WorkEMP2]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_WorkEMP2]
( 
	@day nchar(2) ,
	@year nchar(4)
)
as
select e.emp_id, fullname= e.l_name+' '+' '+e.f_name, e.position
from BUS_EMP be, EMPLOYEE e
where not exists( select w.bus_id from WORK w where  e.emp_id= w.emp_id AND month(w.work_day) = @day AND year(w.work_day)= @year)
	 AND e.position=N'Phụ xe'
group by e.emp_id, e.l_name, e.f_name, e.position
GO
/****** Object:  StoredProcedure [dbo].[testCase]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[testCase]
AS
BEGIN 
	DECLARE @sex int
	
	select @sex = case (select sex from EMPLOYEE where emp_id = 1)
	when 'f' then 0
	when 'm' then 1
	else 5
	END
	print(@sex)
END
GO
/****** Object:  StoredProcedure [dbo].[XOA_NV_THEOMANV]    Script Date: 5/20/2022 3:39:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XOA_NV_THEOMANV]
@MANV int, @SoNVXoa int OUTPUT
AS
BEGIN
DELETE EMPLOYEE
WHERE emp_id = @MaNV
SET @SoNVXoa = @@rowcount
end
GO
USE [master]
GO
ALTER DATABASE [BusManagement] SET  READ_WRITE 
GO
