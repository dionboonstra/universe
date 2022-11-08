--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    name character varying(30),
    black_holes_id integer NOT NULL,
    size_in_km integer,
    origin character varying(30) NOT NULL
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text NOT NULL,
    name character varying(30),
    galaxy_id integer NOT NULL,
    age numeric,
    has_life boolean,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    description text NOT NULL,
    name character varying(30),
    moon_id integer NOT NULL,
    age numeric,
    has_life boolean,
    distance_from_earth integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    description text NOT NULL,
    name character varying(30),
    planet_id integer NOT NULL,
    age numeric,
    has_life boolean,
    distance_from_earth integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    description text NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    age numeric,
    has_life boolean,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES ('black hole 1', 1, 10, 'implosion');
INSERT INTO public.black_holes VALUES ('black hole 2', 2, 5, 'explosion');
INSERT INTO public.black_holes VALUES ('black hole 3', 3, 500, 'implosions');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('galaxy', 'een', 1, 10.000, NULL, 12, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 2', 'twee', 2, 15.000, NULL, 25, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 3', 'drie', 3, 45.000, NULL, 50, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 4', 'vier', 4, 50.000, NULL, 100, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 5', 'vijf', 5, 75.000, NULL, 150, NULL);
INSERT INTO public.galaxy VALUES ('galaxy 6', 'zes', 6, 100.000, NULL, 200, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon 1', 'een', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 2', 'twee', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 3', 'drie', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 4', 'vier', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 5', 'vijf', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 6', 'zes', 6, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 7', 'zeven', 7, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 8', 'acht', 8, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 9', 'negen', 9, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 10', 'tien', 10, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 11', 'elf', 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 12', 'twaalf', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 13', 'dertien', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 14', 'veertien', 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 15', 'vijftien', 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 16', 'zestien', 16, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 17', 'zeventien', 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 18', 'achttien', 18, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 19', 'negentien', 19, NULL, NULL, NULL);
INSERT INTO public.moon VALUES ('moon 20', 'twintig', 20, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet 1', 'een', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 2', 'twee', 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 3', 'drie', 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 4', 'vier', 4, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 5', 'vijf', 5, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 6', 'zes', 6, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 7', 'zeven', 7, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 8', 'acht', 8, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 9', 'negen', 9, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 10', 'tien', 10, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 11', 'elf', 11, NULL, NULL, NULL);
INSERT INTO public.planet VALUES ('planet 12', 'twaalf', 12, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star 1', 'een', 1, 12, NULL, 10, NULL);
INSERT INTO public.star VALUES ('star 2', 'twee', 2, 150, NULL, 40, NULL);
INSERT INTO public.star VALUES ('star 3', 'drie', 3, 250, NULL, 65, NULL);
INSERT INTO public.star VALUES ('star 4', 'vier', 4, 700, NULL, 80, NULL);
INSERT INTO public.star VALUES ('star 5', 'vijf', 5, 1.500, NULL, 100, NULL);
INSERT INTO public.star VALUES ('star 5', 'zes', 6, 3.000, NULL, 150, NULL);


--
-- Name: black_holes black_holes_origin_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_origin_key UNIQUE (origin);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkay; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkay PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

