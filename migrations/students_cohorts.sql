CREATE TABLE cohort (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  start_date DATE,
  end_date DATE
);

CREATE TABLE student (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50),
  phone VARCHAR(50),
  github VARCHAR(50),  
  start_date DATE,
  end_date DATE,
  cohort_id INT
);

ALTER TABLE student ADD FOREIGN KEY(cohort_id) REFERENCES cohort(id);