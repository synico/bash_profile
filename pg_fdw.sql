
CREATE EXTENSION postgres_fdw;

CREATE SERVER apm_db FOREIGN DATA WRAPPER postgres_fdw OPTIONS (HOST 'localhost', PORT '5432', DBNAME 'ge_apm');

CREATE USER MAPPING FOR postgres SERVER apm_db OPTIONS (USER 'postgres', PASSWORD 'root');

CREATE SCHEMA apm;

IMPORT FOREIGN SCHEMA public LIMIT TO (user_account) FROM SERVER apm_db INTO apm;

