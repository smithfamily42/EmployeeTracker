INSERT INTO departments (dept_name)
VALUES
('Sales'),
('Engineering'),
('Finance'),
('Legal');

INSERT INTO roles (title, salary, dept_id)
VALUES
('Sales Lead', 100000, 1),
('Salesperson', 80000, 1),
('Lead Engineer', 150000, 2),
('Software Engineer', 120000, 2),
('Accountant', 125,000, 3),
('Legal Team Lead', 250000, 4),
('Lawyer', 190000, 4),
('Software Engineer', 120000, 2);

INSERT INTO employees (f_name, l_name, role_id, manager_id)
VALUES
('John', 'Doe', 1, 3),
('Mike', 'Chan', 2, 1),
('Ashley', 'Rodriguez', 3, null),
('Kevin', 'Tupik', 4, 3),
