INSERT INTO animal_type (name)
SELECT DISTINCT animal_type
FROM animals;

INSERT INTO breed (name)
SELECT DISTINCT breed
FROM animals;

INSERT INTO color (name)
SELECT DISTINCT TRIM(color1)
FROM animals
UNION
SELECT DISTINCT TRIM(color2)
FROM animals
WHERE color2 is NOT NULL;

INSERT INTO outcome_subtype (name)
SELECT DISTINCT outcome_subtype
FROM animals
WHERE outcome_subtype is NOT NULL;

INSERT INTO outcome_type (name)
SELECT DISTINCT outcome_type
FROM animals
WHERE outcome_type is NOT NULL;

INSERT INTO new_animals (
                         age_upon_outcome,
                         animal_id,
                         name,
                         date_of_birth,
                         outcome_month,
                         outcome_year,
                         animal_type_id,
                         breed_id,
                         color1_id,
                         color2_id,
                         outcome_subtype_id,
                         outcome_type_id
)
SELECT
    animals.age_upon_outcome,
    animals.animal_id,
    animals.name,
    animals.date_of_birth,
    animals.outcome_month,
    animals.outcome_year,
    animal_type.id as animal_type_id,
    breed.id as breed_id,
    color1.id as color1_id,
    color2.id as color2_id,
    outcome_subtype.id as outcome_subtype_id,
    outcome_type.id as outcome_type_id
FROM animals
LEFT JOIN animal_type
    ON animal_type.name = animals.animal_type
LEFT JOIN breed
    ON breed.name = animals.breed
LEFT JOIN color as color1
    ON color1.name = animals.color1
LEFT JOIN color as color2
    ON color2.name = animals.color2
LEFT JOIN outcome_subtype
    ON outcome_subtype.name = animals.outcome_subtype
LEFT JOIN outcome_type
    ON outcome_type.name = animals.outcome_type
