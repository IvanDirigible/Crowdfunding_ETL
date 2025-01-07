DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;

CREATE TABLE category (
  category_id character varying(10),
  category character varying(50),
  PRIMARY KEY (category_id)
);

CREATE TABLE subcategory (
  subcategory_id character varying(10),
  subcategory character varying(50),
  PRIMARY KEY (subcategory_id)
);

CREATE TABLE contacts (
  contact_id integer,
  first_name character varying(50),
  last_name character varying(50),
  email character varying(50),
  PRIMARY KEY (contact_id)
);

CREATE TABLE campaign (
  cf_id integer,
  contact_id integer,
  company_name character varying(50),
  description character varying(60),
  goal float,
  pledged float,
  outcome character varying(10),
  backer_count integer,
  country character varying(10),
  currency character varying(10),
  launch_date date,
  end_date date,
  category_id character varying(10),
  subcategory_id character varying(10),
  PRIMARY KEY (cf_id),
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;