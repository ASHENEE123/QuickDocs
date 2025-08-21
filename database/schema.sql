
CREATE TABLE processes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    status TEXT CHECK(status IN ('active', 'inactive')) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE document_types (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    description TEXT,
    required_fields TEXT 
);

CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL,
    phone TEXT,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE process_assignments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    process_id INTEGER,
    assignment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status TEXT CHECK(status IN ('pending', 'completed','rejected')) DEFAULT 'pending',
    completion_percentage INTEGER CHECK(completion_percentage BETWEEN 0 AND 100),
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (process_id) REFERENCES processes(id)
);

CREATE TABLE document_submissions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER,
    process_id INTEGER,
    document_type_id INTEGER,
    upload_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    file_url TEXT,
    ocr_data TEXT, 
    validation_status TEXT CHECK(validation_status IN ('pending', 'approved', 'rejected')) DEFAULT 'pending',
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (process_id) REFERENCES processes(id),
    FOREIGN KEY (document_type_id) REFERENCES document_types(id)
);
