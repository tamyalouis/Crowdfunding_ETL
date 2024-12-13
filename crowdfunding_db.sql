-- Create campaign table
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id VARCHAR(5),
    company_name VARCHAR(30),
    description VARCHAR(50),
    goal VARCHAR(10),
    pledged VARCHAR(10),
	outcome VARCHAR(10),
	backers_count VARCHAR(5),
	country VARCHAR(3),
	currency VARCHAR(3),
	launched_date DATE,
	end_date DATE,
	staff_pick BOOLEAN,
	spotlight BOOLEAN,
	category_subcategory VARCHAR(60),
	category_id VARCHAR(5),
	subcategory_id VARCHAR(10),
);

-- Create category table
CREATE TABLE category (
    category_id VARCHAR(4)
    category VARCHAR(30),
);

-- Create contacts table
CREATE TABLE contacts (
    contact_id VARCHAR(10),
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email TEXT,
);

-- Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10),
    subcategory VARCHAR(30),
);