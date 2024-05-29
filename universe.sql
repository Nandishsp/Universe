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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id numeric NOT NULL,
    dia numeric(12,2),
    diauom text DEFAULT 'lightyears'::text,
    color character varying(10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_water boolean DEFAULT false,
    dia integer DEFAULT 1935,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    planet_id numeric NOT NULL,
    no_of_moon integer,
    dia_in_km integer,
    star_id integer,
    moon boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_ty; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_ty (
    planet_ty_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean DEFAULT false
);


ALTER TABLE public.planet_ty OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id numeric NOT NULL,
    distance integer,
    uom character varying(20) DEFAULT 'lightyears'::character varying,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('a', 1, 1456.00, 'lightyears', 'red');
INSERT INTO public.galaxy VALUES ('b', 2, 12434.00, 'lightyears', 'green');
INSERT INTO public.galaxy VALUES ('c', 3, 144356.00, 'lightyears', 'red');
INSERT INTO public.galaxy VALUES ('d', 4, 645456.00, 'lightyears', 'green');
INSERT INTO public.galaxy VALUES ('e', 5, 87678.00, 'lightyears', 'golden');
INSERT INTO public.galaxy VALUES ('f', 6, 43456.00, 'lightyears', 'yellow');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'aaaa', false, 1935, 111);
INSERT INTO public.moon VALUES (2, 'aaab', false, 1935, 112);
INSERT INTO public.moon VALUES (3, 'aaac', false, 1935, 113);
INSERT INTO public.moon VALUES (4, 'aaad', false, 1935, 114);
INSERT INTO public.moon VALUES (5, 'aaae', false, 1935, 115);
INSERT INTO public.moon VALUES (6, 'kgjr', false, 1935, 116);
INSERT INTO public.moon VALUES (7, 'koe', false, 1935, 117);
INSERT INTO public.moon VALUES (8, 'kooe', false, 1935, 118);
INSERT INTO public.moon VALUES (9, 'poie', false, 1935, 119);
INSERT INTO public.moon VALUES (10, 'aaaasd', false, 1935, 120);
INSERT INTO public.moon VALUES (11, 'artaae', false, 1935, 112);
INSERT INTO public.moon VALUES (12, 'kggjr', false, 1935, 116);
INSERT INTO public.moon VALUES (13, 'koge', false, 1935, 119);
INSERT INTO public.moon VALUES (14, 'kossdoe', false, 1935, 120);
INSERT INTO public.moon VALUES (15, 'pgfsoie', false, 1935, 119);
INSERT INTO public.moon VALUES (16, 'aart', false, 1935, 120);
INSERT INTO public.moon VALUES (17, 'arsgrta', false, 1935, 112);
INSERT INTO public.moon VALUES (18, 'kggkojr', false, 1935, 116);
INSERT INTO public.moon VALUES (19, 'kkooge', false, 1935, 120);
INSERT INTO public.moon VALUES (20, 'kossafsdoe', false, 1935, 120);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('aa', 111, 2, 74653, 13, true);
INSERT INTO public.planet VALUES ('ab', 112, 2, 12345, 14, true);
INSERT INTO public.planet VALUES ('ac', 113, 3, 12565, 16, true);
INSERT INTO public.planet VALUES ('ad', 114, 0, 543543, 15, false);
INSERT INTO public.planet VALUES ('ae', 115, 2, 56245, 17, true);
INSERT INTO public.planet VALUES ('af', 116, 4, 56543, 14, true);
INSERT INTO public.planet VALUES ('ag', 117, 0, 8172, 15, false);
INSERT INTO public.planet VALUES ('ah', 118, 2, 5624345, 15, true);
INSERT INTO public.planet VALUES ('ai', 119, 0, 12436, 17, false);
INSERT INTO public.planet VALUES ('aj', 120, 0, 817432, 13, false);
INSERT INTO public.planet VALUES ('ak', 121, 2, 562345, 15, true);
INSERT INTO public.planet VALUES ('al', 122, 0, 17636, 15, false);


--
-- Data for Name: planet_ty; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_ty VALUES (1, 'afh', false);
INSERT INTO public.planet_ty VALUES (2, 'afgrh', false);
INSERT INTO public.planet_ty VALUES (3, 'afgajferh', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('g', 12, 1456, 'lightyears', 1);
INSERT INTO public.star VALUES ('h', 13, 78456, 'lightyears', 2);
INSERT INTO public.star VALUES ('i', 14, 78456, 'lightyears', 3);
INSERT INTO public.star VALUES ('j', 15, 785, 'lightyears', 6);
INSERT INTO public.star VALUES ('k', 16, 1567, 'lightyears', 4);
INSERT INTO public.star VALUES ('l', 17, 98743, 'lightyears', 5);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: planet_ty planet_ty_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_ty
    ADD CONSTRAINT planet_ty_name_key UNIQUE (name);


--
-- Name: planet_ty planet_ty_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_ty
    ADD CONSTRAINT planet_ty_pkey PRIMARY KEY (planet_ty_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

