-- create doctors, patients, and appointments tables

CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  specialty TEXT
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  family_name TEXT,
  given_name TEXT,
  gender TEXT,
  born_on DATE,
  insurance TEXT
);

CREATE TABLE appointments (
  id SERIAL PRIMARY KEY,
  name TEXT,
  'date' DATE,
  'time' TIME,
  comments TEXT,
  doctor_id INTEGER,
  patient_id INTEGER
);
