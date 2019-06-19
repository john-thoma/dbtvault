{{ config(schema='VLT') }}

CREATE TABLE DV_PROTOTYPE_DB.VLT.LINK_CUSTOMER_NATION
(
	CUSTOMER_NATION_PK BINARY(16) PRIMARY KEY,
	CUSTOMER_PK BINARY(16) FOREIGN KEY REFERENCES DV_PROTOTYPE_DB.VLT.HUB_CUSTOMER(CUSTOMER_PK),
	NATION_PK BINARY(16) FOREIGN KEY REFERENCES DV_PROTOTYPE_DB.VLT.HUB_NATION(NATION_PK),
	LOADDATE DATE,
	SOURCE VARCHAR(4)
);