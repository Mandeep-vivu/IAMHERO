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
-- Name: clock; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.clock (
    clock_id integer NOT NULL,
    name character varying(10) NOT NULL,
    maker character varying(10)
);


ALTER TABLE public.clock OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer,
    distance integer,
    discription text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    distance integer,
    life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer,
    life boolean,
    type character varying(10)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    spherical boolean,
    size numeric(6,5)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: clock; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.clock VALUES (1, 'VIVAN', 'singh');
INSERT INTO public.clock VALUES (2, 'Vivu', 'singh');
INSERT INTO public.clock VALUES (3, 'AJAY', 'singh');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', 5000000, 0, 'galaxy in which we are living');
INSERT INTO public.galaxy VALUES (2, 'Antromada', 5012000, 60002020, 'nearest galaxy from galaxy in  which we are living');
INSERT INTO public.galaxy VALUES (3, 'Centaurus', 5012800, 60040220, 'visible to naked eyes');
INSERT INTO public.galaxy VALUES (4, 'Malin 1', 50128000, 640040220, 'not visible to naked eyes');
INSERT INTO public.galaxy VALUES (5, 'black eye', 501280040, 640044220, 'look like a black eye ');
INSERT INTO public.galaxy VALUES (6, 'backward', 501280040, 640044220, 'rotate in backward direction ');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'vivu', 4, 4000, true);
INSERT INTO public.moon VALUES (2, 'ajay', 7, 4900, false);
INSERT INTO public.moon VALUES (3, 'mandeep', 12, 0, true);
INSERT INTO public.moon VALUES (4, 'shraddha', 12, 0, true);
INSERT INTO public.moon VALUES (5, 'father', 12, 0, true);
INSERT INTO public.moon VALUES (6, 'mechain', 12, 0, true);
INSERT INTO public.moon VALUES (7, 'nobi', 12, 0, true);
INSERT INTO public.moon VALUES (8, 'doraemon', 12, 0, true);
INSERT INTO public.moon VALUES (9, 'jaan', 12, 0, true);
INSERT INTO public.moon VALUES (10, 'jaanu', 12, 0, true);
INSERT INTO public.moon VALUES (11, 'ansh', 10, 2232, true);
INSERT INTO public.moon VALUES (12, 'nikita', 10, 232, true);
INSERT INTO public.moon VALUES (13, 'babli', 10, 432, true);
INSERT INTO public.moon VALUES (14, 'rajveer', 9, 432, true);
INSERT INTO public.moon VALUES (15, 'sandeep', 9, 42, true);
INSERT INTO public.moon VALUES (16, 'vishu', 12, 0, true);
INSERT INTO public.moon VALUES (17, 'sneh', 12, 0, true);
INSERT INTO public.moon VALUES (18, 'rishu', 12, 0, true);
INSERT INTO public.moon VALUES (20, 'sakshi', 12, 0, true);
INSERT INTO public.moon VALUES (19, 'raghu', 3, 342, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', 1, false, 'gas');
INSERT INTO public.planet VALUES (2, 'venus', 1, false, 'gas');
INSERT INTO public.planet VALUES (4, 'earth', 1, true, 'solid');
INSERT INTO public.planet VALUES (3, 'mars', 1, true, 'solid');
INSERT INTO public.planet VALUES (5, 'jupiter', 1, false, 'solid');
INSERT INTO public.planet VALUES (6, 'uranus', 1, false, 'gas');
INSERT INTO public.planet VALUES (7, 'seturn', 1, false, 'gas');
INSERT INTO public.planet VALUES (8, 'neptune', 1, false, 'gas');
INSERT INTO public.planet VALUES (9, 'pluto', 1, false, 'dwarf');
INSERT INTO public.planet VALUES (10, 'makemake', 2, false, 'dwarf');
INSERT INTO public.planet VALUES (11, 'varsa', 2, false, 'gas');
INSERT INTO public.planet VALUES (12, 'khushi', 3, true, 'gas');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 0.54321);
INSERT INTO public.star VALUES (2, 'enif', 1, true, 0.64321);
INSERT INTO public.star VALUES (3, 'spica', 1, true, 0.69321);
INSERT INTO public.star VALUES (4, 'Ratal', 2, true, 0.60001);
INSERT INTO public.star VALUES (5, 'brust', 2, false, 0.60901);
INSERT INTO public.star VALUES (6, 'carnage', 3, false, 0.50001);


--
-- Name: clock clock_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clock
    ADD CONSTRAINT clock_name_key UNIQUE (name);


--
-- Name: clock clock_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.clock
    ADD CONSTRAINT clock_pkey PRIMARY KEY (clock_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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

