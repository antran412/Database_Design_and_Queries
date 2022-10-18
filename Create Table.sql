CREATE TABLE [dbo].[WorkOrderAndTaskData]
(
[WorkOrderID] [char] (5) NULL,
[DateProposed] Date NULL,
[DateAccepted] Date NULL,
[WorkOrderAddress] [varchar] (50) NULL,
[WorkOrderCity] [char] (10) NULL,
[WorkOrderState] [char] (2) NULL,
[WorkOrderZip] [char] (5) NULL,
[PrimaryWorkOrderID] [char] (5) NULL,
[EmpManagerID] [char] (4) NULL,
[CustomerID] [char] (4) NULL,
[CustomerName] [varchar] (50) NULL,
[CustomerAddress] [varchar] (50) NULL,
[CustomerCity] [char] (10) NULL,
[CustomerState] [char] (2) NULL,
[CustomerZip] [char] (5) NULL,
[Phone] [char] (10) NULL,
[Email] [varchar] (50) NULL,
[TaskID] [char] (3) NULL,
[TaskDescription] [varchar] (50) NULL,
[DateStarted] date NULL,
[DateCompleted] date NULL,
[SquareFeet] [int] NULL,
[EstHours] [int] NULL,
[EstLaborCost] [money] NULL,
[EstMaterialCost] [money] NULL
);

DROP TABLE [dbo].[WorkOrderAndTaskData];

CREATE TABLE [dbo].[ActualLaborTimeSheets]
(
[empid] [char] (4) NULL,
[LastName] [char] (20) NULL,
[FirstName] [char] (20) NULL,
[StartWork] [datetime] NULL,
[Hourswork] decimal(5,2) NULL,
[Taskid] [char] (3) NULL,
[WorkOrderID] [char] (5) NULL,
[HourlyPayRate] [money] NULL
);

DROP TABLE [dbo].[ActualLaborTimeSheets]

CREATE TABLE [dbo].[ActualMaterialCostAssigned]
(
[MaterialAssignedID] [char] (4) NULL,
[DateAssigned] date NULL,
[MaterialID] [char] (4) NULL,
[MaterialName] [varchar] (50) NULL,
[TaskID] [char] (3) NULL,
[WorkOrderID] [char] (5) NULL,
[Quantity] decimal(6,2) NULL,
[UOM] [char] (5) NULL,
[CostPerUOM] [money] NULL
);

DROP TABLE [dbo].[ActualMaterialCostAssigned];

