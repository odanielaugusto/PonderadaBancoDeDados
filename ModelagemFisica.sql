-- Dropando Tabela se existir
DROP TABLE IF EXISTS users;
		
-- Criando Tabela 'users'
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  nick_email VARCHAR(100) DEFAULT NULL,
  password VARCHAR(100) DEFAULT NULL
);

-- Dropando Tabela se existir
DROP TABLE IF EXISTS general_forms;
		
-- Criando Tabela 'general_forms'
CREATE TABLE general_forms (
  id SERIAL PRIMARY KEY,
  age INTEGER DEFAULT NULL,
  gender VARCHAR(30) DEFAULT NULL,
  education VARCHAR DEFAULT NULL,
  type_of_housing VARCHAR(30) DEFAULT NULL,
  family_constituition VARCHAR(50) DEFAULT NULL,
  family_income DECIMAL(30) DEFAULT NULL,
  resident_people INTEGER DEFAULT NULL,
  address VARCHAR(30) DEFAULT NULL,
  choice_of_form VARCHAR(30) DEFAULT NULL,
  id_users INTEGER REFERENCES users(id)
);

-- Dropando Tabela se existir
DROP TABLE IF EXISTS have_dog_forms;
		
-- Criando Tabela 'have_dog_forms'
CREATE TABLE have_dog_forms (
  id SERIAL PRIMARY KEY,
  name_of_dog VARCHAR(30) DEFAULT NULL,
  castrated VARCHAR(30) DEFAULT NULL,
  time_with_the_dog VARCHAR(30) DEFAULT NULL,
  first_dog VARCHAR(30) DEFAULT NULL,
  other_pets VARCHAR(30) DEFAULT NULL,
  age_dog VARCHAR(30) DEFAULT NULL,
  breed VARCHAR(30) DEFAULT NULL,
  where_did_you_get_it VARCHAR(50) DEFAULT NULL,
  paid VARCHAR(30) DEFAULT NULL,
  age_rechead VARCHAR(30) DEFAULT NULL,
  dog_personality VARCHAR(100) DEFAULT NULL,
  reason_to_have_a_dog VARCHAR(100) DEFAULT NULL,
  dog_characteristics VARCHAR(100) DEFAULT NULL,
  decision VARCHAR(30) DEFAULT NULL,
  dog_at_home VARCHAR(30) DEFAULT NULL,
  went_to_the_vet VARCHAR(30) DEFAULT NULL,
  personality_for_dog_adoption VARCHAR(40) DEFAULT NULL,
  id_users INTEGER REFERENCES users(id)
);

-- Dropando Tabela se existir
DROP TABLE IF EXISTS had_dog_forms;
		
-- Criando Tabela 'had_dog_forms'
CREATE TABLE had_dog_forms (
  id SERIAL PRIMARY KEY,
  name_dog VARCHAR(50) DEFAULT NULL,
  personality_dog VARCHAR(100) DEFAULT NULL,
  coexistence_time INTEGER DEFAULT NULL,
  first_dog INTEGER DEFAULT NULL,
  other_pets INTEGER DEFAULT NULL,
  age_dog_in_house INTEGER DEFAULT NULL,
  castrated VARCHAR(30) DEFAULT NULL,
  dog_breed VARCHAR(30) DEFAULT NULL,
  dog_origin VARCHAR(30) DEFAULT NULL,
  pet_value VARCHAR(30) DEFAULT NULL,
  reason_to_have VARCHAR(100) DEFAULT NULL,
  pet_characteristic VARCHAR(100) DEFAULT NULL,
  decision VARCHAR(100) DEFAULT NULL,
  what_i_liked VARCHAR(100) DEFAULT NULL,
  what_i_didnt_like VARCHAR(100) DEFAULT NULL,
  veterinarian VARCHAR(30) DEFAULT NULL,
  dismissal_date VARCHAR(30) DEFAULT NULL,
  age_in_dismissal VARCHAR(30) DEFAULT NULL,
  doesnt_live INTEGER DEFAULT NULL,
  new_dog VARCHAR(30) DEFAULT NULL,
  id_users INTEGER REFERENCES users(id)
);

-- Dropando Tabela se existir
DROP TABLE IF EXISTS want_dog_forms;
		
-- Criando Tabela 'want_dog_forms'
CREATE TABLE want_dog_forms (
  id SERIAL PRIMARY KEY,
  dog_character VARCHAR(100) DEFAULT NULL,
  live_with_dog VARCHAR(30) DEFAULT NULL,
  dog_name VARCHAR(50) DEFAULT NULL,
  reason VARCHAR(30) DEFAULT NULL,
  intention_to_acquire VARCHAR(30) DEFAULT NULL,
  when_will_you_have VARCHAR(30) DEFAULT NULL,
  personality VARCHAR(50) DEFAULT NULL,
  monthly_expenses VARCHAR(30) DEFAULT NULL,
  id_users INTEGER REFERENCES users(id)
);

-- Dropando Tabela se existir
DROP TABLE IF EXISTS null_forms;
		
-- Criando Tabela 'null_forms'
CREATE TABLE null_forms (
  id SERIAL PRIMARY KEY,
  why_not VARCHAR(200) DEFAULT NULL,
  id_users INTEGER REFERENCES users(id)
);

-- Dropando Tabela se existir
DROP TABLE IF EXISTS identification_user;
		
-- Criando Tabela 'identification_user'
CREATE TABLE identification_user (
  id SERIAL PRIMARY KEY,
  social_name VARCHAR(50) DEFAULT NULL,
  telephone INTEGER DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  first_name VARCHAR(50) DEFAULT NULL,
  last_name VARCHAR(50) DEFAULT NULL,
  id_users INTEGER REFERENCES users(id)
);

-- Dropando Tabela se existir
DROP TABLE IF EXISTS dog_forms_have;
		
-- Criando Tabela 'dog_forms_have'
CREATE TABLE dog_forms_have (
  id SERIAL PRIMARY KEY,
  dog_name VARCHAR(30) DEFAULT NULL,
  gender VARCHAR(30) DEFAULT NULL,
  castrated VARCHAR(30) DEFAULT NULL,
  belongs_to_you INTEGER DEFAULT NULL,
  id_have_dog_forms INTEGER REFERENCES have_dog_forms(id)
);

-- Dropando Tabela se existir
DROP TABLE IF EXISTS dog_forms_want;
		
-- Criando Tabela 'dog_forms_want'
CREATE TABLE dog_forms_want (
  id SERIAL PRIMARY KEY,
  dog_size VARCHAR(30) DEFAULT NULL,
  coat VARCHAR(30) DEFAULT NULL,
  color_preference VARCHAR(30) DEFAULT NULL,
  gender VARCHAR(30) DEFAULT NULL,
  age INTEGER DEFAULT NULL,
  breed VARCHAR(30) DEFAULT NULL,
  id_want_dog INTEGER REFERENCES want_dog_forms(id)
);
