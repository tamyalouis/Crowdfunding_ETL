CREATE TABLE "campaign" (
    "cf_id" int NOT NULL PRIMARY KEY,
    "contact_id" int NOT NULL,
    "company_name" varchar(255) NOT NULL,
    "description" varchar(255) NOT NULL,
    "goal" decimal NOT NULL,
    "pledged" decimal NOT NULL,
    "outcome" varchar(255) NOT NULL,
    "backers_count" int NOT NULL,
    "country" varchar(100) NOT NULL,
    "currency" varchar(10) NOT NULL,
    "launched_date" date NOT NULL,
    "end_date" date NOT NULL,
    "staff_pick" boolean NOT NULL,
    "spotlight" boolean NOT NULL,
    "category_id" varchar(4) NOT NULL,
    "subcategory_id" varchar(20) NOT NULL,
	UNIQUE (category_id),
	UNIQUE (subcategory_id),
	UNIQUE (contact_id)
);

CREATE TABLE "category" (
    "category_id" varchar(4) NOT NULL,
    "category" varchar(20) NOT NULL,
    PRIMARY KEY (category_id),
    FOREIGN KEY (category_id) REFERENCES campaign(category_id)
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(20) NOT NULL,  
    "subcategory" varchar(20) NOT NULL,
    PRIMARY KEY (subcategory_id),
    FOREIGN KEY (subcategory_id) REFERENCES campaign(subcategory_id)
);

CREATE TABLE "contacts" (
    "contact_id" int NOT NULL,
    "first_name" varchar(255) NOT NULL,
    "last_name" varchar(255) NOT NULL,
    "email" varchar(255) NOT NULL,
    PRIMARY KEY (contact_id),
    FOREIGN KEY (contact_id) REFERENCES campaign(contact_id)
);

SELECT * FROM campaign;
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;

