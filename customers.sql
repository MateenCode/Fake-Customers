--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Customers; Type: TABLE; Schema: public; Owner: jwo
--

CREATE TABLE "Customers" (
    id integer NOT NULL,
    name character varying(255),
    email character varying(255),
    company character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE "Customers" OWNER TO jwo;

--
-- Name: Customers_id_seq; Type: SEQUENCE; Schema: public; Owner: jwo
--

CREATE SEQUENCE "Customers_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Customers_id_seq" OWNER TO jwo;

--
-- Name: Customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jwo
--

ALTER SEQUENCE "Customers_id_seq" OWNED BY "Customers".id;


--
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: jwo
--

CREATE TABLE "SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE "SequelizeMeta" OWNER TO jwo;

--
-- Name: Customers id; Type: DEFAULT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY "Customers" ALTER COLUMN id SET DEFAULT nextval('"Customers_id_seq"'::regclass);


--
-- Data for Name: Customers; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY "Customers" (id, name, email, company, "createdAt", "updatedAt") FROM stdin;
1	Marques Wiza	Joany14@gmail.com	Parisian, Renner and Wilkinson	2017-06-28 10:54:02.088-05	2017-06-28 10:54:02.088-05
2	Bridie Greenholt	Giovanny.Hayes@yahoo.com	Dietrich, Larson and Hayes	2017-06-28 10:54:02.092-05	2017-06-28 10:54:02.092-05
3	Alysson Gerlach IV	Magnolia21@gmail.com	Donnelly LLC	2017-06-28 10:54:02.092-05	2017-06-28 10:54:02.092-05
4	Jordon Hettinger	Judson_Feil44@yahoo.com	Haley - Bernier	2017-06-28 10:54:02.092-05	2017-06-28 10:54:02.092-05
5	Florence Botsford	Billie46@hotmail.com	Wyman, O'Hara and Mueller	2017-06-28 10:54:02.092-05	2017-06-28 10:54:02.092-05
6	Lulu Bruen	Quinten_Bergstrom@hotmail.com	Corkery - Gerlach	2017-06-28 10:54:02.092-05	2017-06-28 10:54:02.092-05
7	Efren Macejkovic	Colt_Lynch41@yahoo.com	Nolan, McGlynn and Ebert	2017-06-28 10:54:02.093-05	2017-06-28 10:54:02.093-05
8	Karson Haag	Leda9@gmail.com	Nitzsche LLC	2017-06-28 10:54:02.093-05	2017-06-28 10:54:02.093-05
9	Jesse Schuster	Estell_Sipes@gmail.com	Abbott - Altenwerth	2017-06-28 10:54:02.093-05	2017-06-28 10:54:02.093-05
10	Tyra Boyle	Ned21@hotmail.com	Smith Inc	2017-06-28 10:54:02.093-05	2017-06-28 10:54:02.093-05
11	Herbert Gaylord	Neva.Reichert30@yahoo.com	Schmitt, Borer and MacGyver	2017-06-28 10:54:02.094-05	2017-06-28 10:54:02.094-05
12	Ruby Aufderhar	Sidney77@yahoo.com	Hintz, Feest and Monahan	2017-06-28 10:54:02.095-05	2017-06-28 10:54:02.095-05
13	Kaylie Heller PhD	Justice27@hotmail.com	Hilpert and Sons	2017-06-28 10:54:02.095-05	2017-06-28 10:54:02.095-05
14	Laila Lynch	Tanya_Durgan82@gmail.com	O'Connell, Schiller and Ondricka	2017-06-28 10:54:02.095-05	2017-06-28 10:54:02.095-05
15	Theodore Veum Jr.	Berniece.Zieme13@yahoo.com	Yundt Group	2017-06-28 10:54:02.095-05	2017-06-28 10:54:02.095-05
16	Nils Steuber	Jerel.Rowe53@hotmail.com	Lubowitz and Sons	2017-06-28 10:54:02.095-05	2017-06-28 10:54:02.095-05
17	Geo Becker	Amanda.Mann@yahoo.com	Fay Group	2017-06-28 10:54:02.095-05	2017-06-28 10:54:02.095-05
18	Madelyn Lebsack	Nicola61@hotmail.com	Mohr - Jenkins	2017-06-28 10:54:02.096-05	2017-06-28 10:54:02.096-05
19	Linwood Bahringer	Davion.Strosin@yahoo.com	Johns, Murphy and White	2017-06-28 10:54:02.096-05	2017-06-28 10:54:02.096-05
20	Marcelino Brekke V	Okey_Wiza96@hotmail.com	Predovic, Beahan and O'Reilly	2017-06-28 10:54:02.096-05	2017-06-28 10:54:02.096-05
\.


--
-- Name: Customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwo
--

SELECT pg_catalog.setval('"Customers_id_seq"', 20, true);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: jwo
--

COPY "SequelizeMeta" (name) FROM stdin;
20170628155152-create-customer.js
\.


--
-- Name: Customers Customers_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY "Customers"
    ADD CONSTRAINT "Customers_pkey" PRIMARY KEY (id);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: jwo
--

ALTER TABLE ONLY "SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- PostgreSQL database dump complete
--

