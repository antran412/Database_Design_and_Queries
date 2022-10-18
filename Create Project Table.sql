
CREATE TABLE pjWorkOrder
(WorkOrderID char(5),
Address varchar(50),
City char(10),
State char(2),
Zip char(5));

DROP TABLE pjWorkOrder

CREATE TABLE pjTask
(TaskID char(3),
TaskDescription varchar(50));

DROP TABLE pjTask

CREATE TABLE pjWorkOrderTask
(WorkOrderID char(5),
TaskID char(3),
SquareFeet int,
EstHours int,
EstLaborCost money,
EstMaterialCost money,
DateStarted date,
DateCompleted date,
CustomerName varchar(50)
);

DROP TABLE pjWorkOrderTask

CREATE TABLE pjEmployee
(EmployeeID char(4) primary key,
LastName char(20),
FirstName char(20));

CREATE TABLE pjTimeSheets
(TimeSheetID INT IDENTITY(1,1) primary key,
StartWork datetime,
Hoursworked decimal(5,2),
HourlyPayRate money,
EmployeeID char(4),
WorkOrderID char(5),
TaskID char(3)
);

DROP TABLE pjTimeSheets

CREATE TABLE pjMaterial
(MaterialID char(4) primary key,
MaterialDescription varchar(50));

CREATE TABLE pjMaterialAssigned
(MaterialAssignedID char(4) primary key,
DateAssigned date,
Quantity decimal(6,2),
UOM char(5),
CostPerUOM money,
MaterialID char(4),
WorkOrderID char(5),
TaskID char(3)
);
DROP TABLE pjMaterialAssigned







