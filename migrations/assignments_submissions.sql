CREATE TABLE assignments (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  content VARCHAR(5000),
  day int,
  chapter int,
  duration int
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY,
  assignment_id int,
  student_id int,
  duration int,
  github VARCHAR(50),  
  submission_date DATE
);

ALTER TABLE assignment_submissions ADD FOREIGN KEY(assignment_id) REFERENCES assignments(id);
ALTER TABLE assignment_submissions ADD FOREIGN KEY(student_id) REFERENCES student(id);