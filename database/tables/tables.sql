-- Initial database schema
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    start_date DATE NOT NULL,
    mobile VARCHAR(20),
    birth_date DATE,
    manager_id INTEGER REFERENCES employees(employee_id),
    country VARCHAR(50),
    gender VARCHAR(10),
    exp DATE,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);