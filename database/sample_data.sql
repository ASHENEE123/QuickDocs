

INSERT INTO processes (name, description) VALUES 
('Home Loan Application', 'Application process for home loan'),
('KYC Verification', 'Know Your Customer verification process');


INSERT INTO document_types (name, description, required_fields) VALUES 
('PAN Card', 'Permanent Account Number card', '{"number": "", "name": ""}'),
('Aadhaar Card', 'Government-issued Aadhaar ID', '{"uid": "", "name": "", "dob": ""}'),
('Salary Slip', 'Employee salary document', '{"month": "", "amount": "", "employer": ""}'),
('Bank Statement', 'Bank transaction details', '{"account_number": "", "transactions": []}'),
('Address Proof', 'Proof of residential address', '{"address": "", "city": "", "pincode": ""}');


INSERT INTO customers (name, email, phone) VALUES 
('Amit Sharma', 'amit.sharma@example.com', '9876543210'),
('Priya Singh', 'priya.singh@example.com', '9123456780'),
('Rohit Verma', 'rohit.verma@example.com', '9988776655'),
('Neha Mehta', 'neha.mehta@example.com', '9345678901'),
('Vikram Joshi', 'vikram.joshi@example.com', '9001234567');


INSERT INTO process_assignments (customer_id, process_id, status, completion_percentage) VALUES 
(1, 1, 'completed', 100),
(2, 1, 'pending', 30),
(3, 2, 'pending', 0),
(4, 2, 'completed', 100),
(5, 1, 'pending', 50),
(6, 2, 'rejected', 0);


INSERT INTO document_submissions (customer_id, process_id, document_type_id, file_url, ocr_data, validation_status) VALUES 
(1, 1, 1, 'files/pan_amit.pdf', '{"number": "ABCDE1234F", "name": "Amit Sharma"}', 'approved'),
(1, 1, 3, 'files/salary_amit.pdf', '{"month": "June", "amount": "50000", "employer": "ABC Corp"}', 'approved'),
(1, 1, 4, 'files/bank_amit.pdf', '{"account_number": "1234567890", "transactions": []}', 'approved'),
(2, 1, 1, 'files/pan_priya.pdf', '{"number": "XYZAB6789L", "name": "Priya Singh"}', 'pending'),
(4, 2, 2, 'files/aadhaar_neha.pdf', '{"uid": "123412341234", "name": "Neha Mehta", "dob": "1990-01-01"}', 'approved');
