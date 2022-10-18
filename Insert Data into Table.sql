INSERT INTO pjWorkOrder (workorderID, address, city, state, zip)
SELECT DISTINCT WorkOrderID, WorkOrderAddress, WorkOrderCity, WorkOrderState, WorkOrderZip
FROM WorkOrderAndTaskData
WHERE workorderID is not null

SELECT *
FROM pjWorkOrder

TRUNCATE TABLE pjWorkOrder

INSERT INTO pjTask (TaskID, TaskDescription)
SELECT DISTINCT TaskID, TaskDescription
FROM WorkOrderAndTaskData
WHERE taskID is not null

SELECT *
FROM pjTask

INSERT INTO pjWorkOrderTask (WorkOrderID, TaskID, SquareFeet, EstHours, EstLaborCost, EstMaterialCost, DateStarted, DateCompleted, CustomerName)
SELECT DISTINCT WorkOrderID, TaskID, SquareFeet, EstHours, EstLaborCost, EstMaterialCost, DateStarted, DateCompleted, CustomerName
FROM WorkOrderAndTaskData
WHERE WorkOrderID is not null and taskid is not null

SELECT WorkOrderID, 
	   Count(*)
FROM pjWorkOrderTask
GROUP BY WorkOrderID

TRUNCATE TABLE pjWorkOrderTask

INSERT INTO pjEmployee (EmployeeID, LastName, FirstName)
SELECT DISTINCT     empid, LastName, FirstName
FROM ActualLaborTimeSheets

SELECT *
FROM pjEmployee

INSERT INTO pjTimeSheets (Startwork, Hoursworked, HourlyPayRate, EmployeeID, WorkOrderID, TaskID)
SELECT DISTINCT    StartWork, HoursWork, HourlyPayRate, Empid, WorkOrderID, TaskID
FROM ActualLaborTimeSheets

TRUNCATE TABLE pjTimeSheets

SELECT *
FROM pjTimeSheets

INSERT pjMaterial (MaterialID, MaterialDescription)
SELECT DISTINCT MaterialID, MaterialName
FROM ActualMaterialCostAssigned

SELECT *
FROM pjMaterial

INSERT INTO pjMaterialAssigned (MaterialAssignedID, DateAssigned, Quantity, UOM, CostPerUOM, MaterialID, TaskID, WorkOrderID)
SELECT DISTINCT MaterialAssignedID, DateAssigned, Quantity, UOM, CostPerUOM, MaterialID, TaskID, WorkOrderID
FROM ActualMaterialCostAssigned

SELECT *
FROM pjMaterialAssigned