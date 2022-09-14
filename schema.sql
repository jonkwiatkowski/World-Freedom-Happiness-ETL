-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "world_happiness" (
    "country" VARCHAR(255)   NOT NULL,
    "region" VARCHAR(255)   NOT NULL,
    "overall_rank" INT   NOT NULL,
    "social_support" DECIMAL(6,3)   NOT NULL,
    "freedom_of_choice" DECIMAL(6,3)   NOT NULL,
    "life_expectancy" DECIMAL(6,3)   NOT NULL,
    "gdp" DECIMAL(6,3)   NOT NULL,
    CONSTRAINT "pk_world_happiness" PRIMARY KEY (
        "overall_rank"
     ) 
);

CREATE TABLE "human_freedom_index" (
    "country" VARCHAR(255)   NOT NULL,
    "region" VARCHAR(255)   NOT NULL,
    "human_freedom_score" DECIMAL(6,3)   NOT NULL,
    "homicide" DECIMAL(6,3)   NOT NULL,
    "freedom_of_expression" DECIMAL(6,3)   NOT NULL,
    "government_consumption" DECIMAL(6,3)   NOT NULL,
    "freedom_of_religion" DECIMAL(6,3)   NOT NULL,
    "same_sex_relationships" DECIMAL(6,3)   NOT NULL,
    "freedom_of_money" DECIMAL(6,3)   NOT NULL,
    "civil_justice" DECIMAL(6,3)   NOT NULL,
    "criminal_justice" DECIMAL(6,3)   NOT NULL,
    CONSTRAINT "pk_human_freedom_index" PRIMARY KEY (
        "country"
     )
);

CREATE TABLE "regions" (
    "region" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_regions" PRIMARY KEY (
        "region"
     )
);

ALTER TABLE "world_happiness" ADD CONSTRAINT "fk_world_happiness_country" FOREIGN KEY("country")
REFERENCES "human_freedom_index" ("country");

ALTER TABLE "world_happiness" ADD CONSTRAINT "fk_world_happiness_region" FOREIGN KEY("region")
REFERENCES "regions" ("region");

ALTER TABLE "human_freedom_index" ADD CONSTRAINT "fk_human_freedom_index_region" FOREIGN KEY("region")
REFERENCES "regions" ("region");

