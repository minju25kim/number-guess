--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username character varying(30),
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('user_1718848195963', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848195962', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848624199', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848624198', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848815984', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848815983', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848845489', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848845488', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848901470', 0, NULL);
INSERT INTO public.users VALUES ('user_1718848901469', 0, NULL);
INSERT INTO public.users VALUES ('user_1718849308272', 0, NULL);
INSERT INTO public.users VALUES ('user_1718849308271', 0, NULL);
INSERT INTO public.users VALUES ('user_1718849944547', 0, NULL);
INSERT INTO public.users VALUES ('user_1718849944546', 0, NULL);
INSERT INTO public.users VALUES ('558', 0, NULL);
INSERT INTO public.users VALUES ('user_1718850233265', 0, NULL);
INSERT INTO public.users VALUES ('user_1718850233264', 0, NULL);
INSERT INTO public.users VALUES ('[A', 0, NULL);
INSERT INTO public.users VALUES ('EE', 0, NULL);
INSERT INTO public.users VALUES ('167', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851237561', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851237560', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851366544', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851366543', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851373676', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851373674', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851384293', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851384292', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851392765', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851392764', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851445313', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851445312', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851456457', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851456456', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851465433', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851465432', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851536097', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851536096', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851539784', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851539783', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851542734', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851542733', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851546220', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851546219', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851548330', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851548329', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851551259', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851551258', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851553555', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851553554', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851556253', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851556252', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851559551', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851559550', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851562379', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851562378', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851564815', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851564814', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851567524', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851567523', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851745318', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851745317', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851747715', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851747714', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851749946', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851749945', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851763881', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851763880', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851768827', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851768826', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851789041', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851789040', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851883265', 0, NULL);
INSERT INTO public.users VALUES ('user_1718851883264', 0, NULL);
INSERT INTO public.users VALUES ('44', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852124454', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852124453', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852126935', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852126934', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852144504', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852144503', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852147042', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852147041', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852152736', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852152735', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852155104', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852155103', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852157568', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852157567', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852174966', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852174965', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852178906', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852178905', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852196641', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852196640', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852198737', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852198736', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852200947', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852200946', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852203399', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852203398', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852212083', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852212082', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852221021', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852221020', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852223539', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852223538', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852226580', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852226579', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852232226', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852232225', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852234265', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852234264', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852311943', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852311942', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852314241', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852314240', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852316132', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852316131', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852339800', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852339799', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852342139', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852342138', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852672455', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852672454', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852697349', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852697348', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852715143', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852715142', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852730991', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852730990', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852790585', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852790584', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852805404', 0, NULL);
INSERT INTO public.users VALUES ('user_1718852805403', 0, NULL);
INSERT INTO public.users VALUES ('4ee', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853633189', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853633188', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853660504', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853660503', 0, NULL);
INSERT INTO public.users VALUES ('33', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853895356', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853895355', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853899463', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853899462', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853901152', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853901151', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853902987', 0, NULL);
INSERT INTO public.users VALUES ('user_1718853902986', 0, NULL);
INSERT INTO public.users VALUES ('eeee', 1, NULL);
INSERT INTO public.users VALUES ('ee', 1, NULL);


--
-- PostgreSQL database dump complete
--

