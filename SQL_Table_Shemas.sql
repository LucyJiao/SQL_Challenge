-- Table: dept_emp

CREATE TABLE IF NOT EXISTS public.dept_emp
(
    emp_no character varying COLLATE pg_catalog."default" NOT NULL,
    dept_no character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT dept_emp_pk PRIMARY KEY (emp_no, dept_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_emp
    OWNER to postgres;
	
-- Table: departments

CREATE TABLE IF NOT EXISTS public.departments
(
    dept_no character varying COLLATE pg_catalog."default" NOT NULL,
    dept_name character varying COLLATE pg_catalog."default",
    CONSTRAINT departments_pkey PRIMARY KEY (dept_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.departments
    OWNER to postgres;

-- Table: dept_manager

CREATE TABLE IF NOT EXISTS public.dept_manager
(
    dept_no character varying COLLATE pg_catalog."default" NOT NULL,
    emp_no character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "dept_manager_PK" PRIMARY KEY (dept_no, emp_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dept_manager
    OWNER to postgres;
	
-- Table: employees

CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no character varying COLLATE pg_catalog."default" NOT NULL,
    emp_title_id character varying COLLATE pg_catalog."default",
    birth_date character varying COLLATE pg_catalog."default",
    first_name character varying COLLATE pg_catalog."default",
    last_name character varying COLLATE pg_catalog."default",
    sex character varying COLLATE pg_catalog."default",
    hire_date character varying COLLATE pg_catalog."default",
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;

-- Table: Salaries

CREATE TABLE IF NOT EXISTS public.salaries
(
    emp_no character varying COLLATE pg_catalog."default" NOT NULL,
    salary integer,
    CONSTRAINT salaries_pkey PRIMARY KEY (emp_no)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.salaries
    OWNER to postgres;
	
-- Table: titles

CREATE TABLE IF NOT EXISTS public.titles
(
    title_id character varying COLLATE pg_catalog."default" NOT NULL,
    title character varying COLLATE pg_catalog."default",
    CONSTRAINT titles_pkey PRIMARY KEY (title_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.titles
    OWNER to postgres;
