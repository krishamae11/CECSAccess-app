
USE cecsaccess;
DELETE FROM access_request;

INSERT INTO access_request
    (Request_ID, Student_ID, Category_ID, Purpose, Request_Date, Requested_Start, Requested_End, Status)
VALUES
    (1, 1, 2, 'Use a projector for an academic presentation.',
     '2026-11-10', '09:00:00', '11:00:00', 'Approved'),

    (2, 1, 3, 'Practice router configuration for networking class.',
     '2026-11-10', '13:00:00', '16:00:00', 'Approved'),

    (3, 1, 1, 'Request a computer for programming activities.',
     '2026-11-11', '10:00:00', '12:00:00', 'Pending'),

    (4, 1, 2, 'Borrow a projector for a classroom report.',
     '2026-11-12', '14:00:00', '15:30:00', 'Pending'),

    (5, 1, 3, 'Use networking equipment for laboratory practice.',
     '2026-11-13', '08:00:00', '10:00:00', 'Rejected');
