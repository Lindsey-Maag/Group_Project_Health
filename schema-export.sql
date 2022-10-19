-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Groups" (
    "GROUPID" int   NOT NULL,
    "AREA" string   NOT NULL,
    "RACE" sting   NOT NULL,
    "SEX" string   NOT NULL,
    "SITE" string   NOT NULL,
    "YEAR" int   NOT NULL,
    CONSTRAINT "pk_Groups" PRIMARY KEY (
        "GROUPID"
     )
);

CREATE TABLE "Mortality" (
    "GROUPID" int   NOT NULL,
    "AGE_ADJUSTED_CI_LOWER" float   NOT NULL,
    "AGE_ADJUSTED_CI_UPPER" float   NOT NULL,
    "AGE_ADJUSTED_RATE" float   NOT NULL,
    "CRUDE_CI_LOWER" float   NOT NULL,
    "CRUDE_CI_UPPER" float   NOT NULL,
    "CRUDE_RATE" float   NOT NULL
);

CREATE TABLE "Incidence" (
    "GROUPID" int   NOT NULL,
    "AGE_ADJUSTED_CI_LOWER" float   NOT NULL,
    "AGE_ADJUSTED_CI_UPPER" float   NOT NULL,
    "AGE_ADJUSTED_RATE" float   NOT NULL,
    "CRUDE_CI_LOWER" float   NOT NULL,
    "CRUDE_CI_UPPER" float   NOT NULL,
    "CRUDE_RATE" float   NOT NULL
);

CREATE TABLE "Demographics" (
    "AREA" string   NOT NULL,
    "YEAR" int   NOT NULL,
    "POPULATION" int   NOT NULL,
    "SMOKINGRATE" float   NOT NULL,
    "INCOME" int   NOT NULL
);

ALTER TABLE "Mortality" ADD CONSTRAINT "fk_Mortality_GROUPID" FOREIGN KEY("GROUPID")
REFERENCES "Groups" ("GROUPID");

ALTER TABLE "Incidence" ADD CONSTRAINT "fk_Incidence_GROUPID" FOREIGN KEY("GROUPID")
REFERENCES "Groups" ("GROUPID");

