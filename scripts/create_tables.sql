-- create doctors, patients, and appointments tables

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender CHAR(1),
  born_on DATE,
  specialty TEXT
);

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  surname TEXT,
  given_name TEXT,
  gender CHAR(1),
  born_on DATE,
  insurance TEXT
);

CREATE TABLE appointments(
  id SERIAL PRIMARY KEY,
  date TEXT,
  time TEXT,
  comment TEXT,
  doctor_id INTEGER REFERENCES doctors(id),
  patient_id INTEGER REFERENCES patients(id)
);
CREATE INDEX ON appointments(doctors_id);
CREATE INDEX ON appointments(patients_id);
