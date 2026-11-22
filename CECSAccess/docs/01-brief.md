# Project Brief: CECSAccess
*College Equipment Access and Service Management System*

## 1. The problem

- CEC students often cannot afford high-performance computers, licensed software, or other equipment for their projects and schoolworks. The CEC owns this equipment. However, students can usually use it only when an instructor is present or during class scheduled time. Staff also have no organized record of who used which item, when, and in what condition.

## 2. Users and what they need to do

| User role | What they need to do in the app |

| Student | Log in, view equipment availability, submit an equipment request, check request status, view assigned equipment, record the end of usage, report an incident.|

| Staff/Authorized Personnel (equipment manager) | Review and approve or reject requests for their own categories, assign a unit, record Before/After Use condition, monitor usage, handle incidents, update equipment and maintenance status, view reports.|

|Staff see only the requests and equipment of the categories they manage.|

## 3. The database behind it

Database name: `cecsaccess_db` (12 tables)

- `student`: The students who request equipment (name, program, year level, contact details, status).
- `qualification`: Trainings or Certificates, such as AutoCAD Certification, with a validity period.
- `student_qualification`: Which student holds which qualification, with the date obtained and expiry date.
- `staff`: Faculty or administrators who review requests and manage equipment.
- `equipment_category`: A type of equipment (for example Projector). It has one responsible staff member and flags for training or supervision.
- `equipment_unit`: One physical item (for example PC-01) with its asset tag, location, and status.
- `access_request`: A student's request for one category, with purpose, date, time, and review result.
- `equipment_assignment`: The unit given to a student for one approved request, authorized by a staff member.
- `usage_record`: The start time, end time, and completion notes of one assignment.
- `condition_record`: The Before Use and After Use condition of one assignment, recorded by staff.
- `incident_record`: Damage or malfunction reported against one assignment.
- `maintenance_record`: Repairs or inspections done on one equipment unit.

## 4. Must-have features (for the final project)

1. Submit equipment requests (`access_request`, `equipment_category`, `student`).
2. Review requests by approving or rejecting them, only for the staff member's own categories (`access_request`, `equipment_category`, `staff`).
3. Assign an available unit to an approved request (`equipment_assignment`, `equipment_unit`).
4. Block restricted equipment unless the student holds a valid qualification or a supervising staff member is set (`student_qualification`, `qualification`, `equipment_category`).
5. Record Before Use and After Use condition and the usage times (`condition_record`, `usage_record`).
6. Report and track incidents, and update maintenance status (`incident_record`, `maintenance_record`, `equipment_unit`).

## 5. Nice-to-have features (only if there's time)

1. Generate usage, incident, and maintenance reports (`usage_record`, `incident_record`, `maintenance_record`).
2. Send email or in-app notices when a request is approved or a return is due.
3. Show a calendar view of unit reservations.

## 6. Similar apps I looked at

1. LibCal (Springshare) - A library equipment and room booking. I'll borrow the request-then-approve flow with time slots.
2. Snipe-IT - An open-source asset tracking. I'll borrow the check-out and check-in history for each asset.
