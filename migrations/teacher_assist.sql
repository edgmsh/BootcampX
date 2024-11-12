CREATE TABLE teacher (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  start_date DATE,
  end_date DATE,
  is_active BOOLEAN
);

CREATE TABLE assistance_request (
  id SERIAL PRIMARY KEY,
  assignment_id INT,
  student_id int,
  teacher_id int,
  created_at timestamp,
  started_at timestamp,
  completed_at timestamp,
  student_feedback VARCHAR(5000),
  teacher_feedback VARCHAR(5000)
);

ALTER TABLE assistance_request ADD FOREIGN KEY(assignment_id) REFERENCES assignments(id);
ALTER TABLE assistance_request ADD FOREIGN KEY(student_id) REFERENCES student(id);
-- ALTER TABLE assistance_request ADD FOREIGN KEY(teacher_id) REFERENCES teacher(id);