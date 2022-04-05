CREATE TABLE animal_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE breed (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE color (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE outcome_subtype (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE outcome_type (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE new_animals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    age_upon_outcome VARCHAR(255) NOT NULL,
    animal_id VARCHAR(10) NOT NULL,
    name VARCHAR(255),
    date_of_birth TEXT,
    outcome_month INTEGER NOT NULL,
    outcome_year INTEGER NOT NULL,
    animal_type_id INTEGER NOT NULL,
    breed_id INTEGER NOT NULL,
    color1_id INTEGER,
    color2_id INTEGER,
    outcome_subtype_id INTEGER,
    outcome_type_id INTEGER,
    FOREIGN KEY (animal_type_id) REFERENCES animal_type(id),
    FOREIGN KEY (breed_id) REFERENCES breed(id),
    FOREIGN KEY (color1_id) REFERENCES color(id),
    FOREIGN KEY (color2_id) REFERENCES color(id),
    FOREIGN KEY (outcome_subtype_id) REFERENCES outcome_type(id),
    FOREIGN KEY (outcome_type_id) REFERENCES outcome_type(id)
)