-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/axAzil
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "departments" (
    "department_number" Varchar   NOT NULL,
    "department_name" Varchar   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "department_number"
     )
);

CREATE TABLE "employee_numbers" (
    "employee_number" INT   NOT NULL,
    "department_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_employee_numbers" PRIMARY KEY (
        "employee_number","department_no"
     )
);

CREATE TABLE "department_manager" (
    "department_no" VARCHAR   NOT NULL,
    "employee_number" INT   NOT NULL,
    CONSTRAINT "pk_department_manager" PRIMARY KEY (
        "department_no","employee_number"
     )
);

CREATE TABLE "employees" (
    "employee_number" INT   NOT NULL,
    "employee_title" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "salaries" (
    "employee_number" INT   NOT NULL,
    "salary" INT   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "employee_number"
     )
);

CREATE TABLE "title" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_title" PRIMARY KEY (
        "title_id"
     )
);

ALTER TABLE "employee_numbers" ADD CONSTRAINT "fk_employee_numbers_employee_number" FOREIGN KEY("employee_number")
REFERENCES "employees" ("employee_number");

ALTER TABLE "employee_numbers" ADD CONSTRAINT "fk_employee_numbers_department_no" FOREIGN KEY("department_no")
REFERENCES "departments" ("department_number");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_department_no" FOREIGN KEY("department_no")
REFERENCES "departments" ("department_number");

ALTER TABLE "department_manager" ADD CONSTRAINT "fk_department_manager_employee_number" FOREIGN KEY("employee_number")
REFERENCES "employees" ("employee_number");

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_employee_title" FOREIGN KEY("employee_title")
REFERENCES "title" ("title_id");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_employee_number" FOREIGN KEY("employee_number")
REFERENCES "employees" ("employee_number");

