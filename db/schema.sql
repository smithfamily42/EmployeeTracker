DROP DATABASE IF EXISTS emplTracker_db;
CREATE DATABASE emplTracker_db;

USE emplTracker_db;

CREATE TABLE departments(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30)
);

CREATE TABLE roles(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL(10,0),
    dept_id INTEGER
    FOREIGN KEY (dept_id)
    REFERENCES departments(id)
);

CREATE TABLE employees(
    id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    f_name VARCHAR(30) NOT NULL,
    l_name VARCHAR(30) NOT NULL,
    role_id INTEGER
    FOREIGN KEY (role_id)
    REFERENCES roles(id)
    ON DELETE CASCADE,
    manager_id INTEGER
    FOREIGN KEY (manager_id)
    REFERENCES employees(id)
    ON DELETE CASCADE
);