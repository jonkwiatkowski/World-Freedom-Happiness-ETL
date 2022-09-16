CREATE TABLE "world_happiness" (
    "country" VARCHAR(255)   NOT NULL,
    "region" VARCHAR(255)   NOT NULL,
    "happiness_score" Decimal(6,4)   NOT NULL,
    "social_support" DECIMAL(6,3)   NOT NULL,
    "freedom_of_choice" DECIMAL(6,3)   NOT NULL,
    "life_expectancy" DECIMAL(6,3)   NOT NULL,
    "gdp" DECIMAL(6,3)   NOT NULL,
    CONSTRAINT "pk_world_happiness" PRIMARY KEY (
        "happiness_score"
     ) 
);

CREATE TABLE "human_freedom_index" (
    "country" VARCHAR(255)   NOT NULL,
    "region" VARCHAR(255)   NOT NULL,
    "human_freedom_score" DECIMAL(6,3)   NOT NULL,
    "homicide" DECIMAL(6,3),
    "freedom_of_expression" DECIMAL(6,3),
    "government_consumption" DECIMAL(6,3),
    "freedom_of_religion" DECIMAL(6,3),
    "same_sex_relationships" DECIMAL(6,3),
    "freedom_of_money" DECIMAL(6,3),
    "civil_justice" DECIMAL(6,3),
    "criminal_justice" DECIMAL(6,3),
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
