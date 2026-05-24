CREATE DATABASE CompanyDB;
CREATE SCHEMA company;

CREATE TABLE company.departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

CREATE TABLE company.employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    dob DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES company.departments(department_id)
);

CREATE TABLE company.projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(50),
    start_date DATE,
    end_date DATE
);

CREATE TABLE company.employee_projects (
    emp_id INT,
    project_id INT,
    FOREIGN KEY (emp_id) REFERENCES company.employees(emp_id),
    FOREIGN KEY (project_id) REFERENCES company.projects(project_id)
);