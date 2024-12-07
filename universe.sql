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
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer,
    galaxy_type text,
    number_of_stars integer,
    mass_of_galaxy numeric(5,2)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,1),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq1 OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq1 OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,1),
    planet_type text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(60) NOT NULL,
    purpose character varying(60) NOT NULL,
    is_operational boolean,
    is_visible boolean
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description character varying(60) NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric(4,1),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq1'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Biggest in the universe', 67, 'Barred Spiral', 100, 1.50);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Way', 'Medium sized in the universe', 49, 'Coned Spiral', 280, 3.50);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Small sized in the universe', 16, 'Coned Pyramid', 540, 0.90);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Huge sized in the universe', 77, 'Circle Cuboid', 679, 3.20);
INSERT INTO public.galaxy VALUES (5, 'Tango 1', 'Greatest in the universe', 776, 'Square', 69, 3.20);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'M51', 11, 'Spherical', 453, 2.90);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (41, 'Titan', 'Largest moon of Saturn', true, 4500, 1.2, 1);
INSERT INTO public.moon VALUES (42, 'Europa', 'Moon of Jupiter with ice crust', true, 4000, 1.1, 2);
INSERT INTO public.moon VALUES (43, 'Io', 'Volcanically active moon of Jupiter', true, 4500, 0.9, 3);
INSERT INTO public.moon VALUES (44, 'Ganymede', 'Largest moon in the solar system', true, 4600, 1.3, 4);
INSERT INTO public.moon VALUES (45, 'Callisto', 'Moon of Jupiter with many craters', true, 4600, 2.2, 5);
INSERT INTO public.moon VALUES (46, 'Luna', 'Earth’s only natural satellite', true, 4500, 0.4, 6);
INSERT INTO public.moon VALUES (47, 'Phobos', 'Inner moon of Mars', true, 4500, 0.1, 7);
INSERT INTO public.moon VALUES (48, 'Deimos', 'Outer moon of Mars', true, 4500, 0.2, 8);
INSERT INTO public.moon VALUES (49, 'Titania', 'Largest moon of Uranus', true, 4500, 2.8, 9);
INSERT INTO public.moon VALUES (50, 'Oberon', 'Second largest moon of Uranus', true, 4500, 3.0, 10);
INSERT INTO public.moon VALUES (51, 'Enceladus', 'Moon of Saturn with water geysers', true, 4000, 1.0, 11);
INSERT INTO public.moon VALUES (52, 'Rhea', 'Moon of Saturn', true, 4500, 2.0, 12);
INSERT INTO public.moon VALUES (53, 'Mimas', 'Moon of Saturn with a large impact crater', true, 4500, 1.4, 13);
INSERT INTO public.moon VALUES (54, 'Triton', 'Moon of Neptune with retrograde orbit', true, 4500, 4.3, 14);
INSERT INTO public.moon VALUES (55, 'Charon', 'Largest moon of Pluto', true, 4600, 5.9, 1);
INSERT INTO public.moon VALUES (56, 'Miranda', 'Moon of Uranus with varied terrain', true, 4500, 3.1, 2);
INSERT INTO public.moon VALUES (57, 'Ganymede-II', 'Another large moon of Jupiter', true, 4600, 1.3, 3);
INSERT INTO public.moon VALUES (58, 'Iapetus', 'Moon of Saturn with a unique appearance', true, 4500, 3.0, 4);
INSERT INTO public.moon VALUES (59, 'Triton-II', 'A similar moon to Neptune’s Triton', true, 4500, 4.5, 5);
INSERT INTO public.moon VALUES (60, 'Umbriel', 'Dark moon of Uranus', true, 4500, 2.7, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 'Third planet from Sun', true, true, 4500, 0.0, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red, barren surface', false, true, 4600, 225.0, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (5, 'Venus', 'Thick toxic atmosphere', false, true, 4600, 41.0, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (6, 'Jupiter', 'Largest gas giant', false, true, 4600, 778.0, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 'Has extensive ring system', false, true, 4600, 142.0, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (8, 'ExoPlanet A', 'Distant, surface unknown', false, true, 3000, 500.0, 'Exoplanet', 2);
INSERT INTO public.planet VALUES (9, 'Gliese 581g', 'Potentially habitable', true, true, 1500, 20.0, 'Exoplanet', 2);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 'In habitable zone', true, true, 1200, 6.0, 'Exoplanet', 3);
INSERT INTO public.planet VALUES (11, 'Neptune', 'Cold, gas giant', false, true, 4600, 450.0, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (12, 'Uranus', 'Tilted gas giant', false, true, 4600, 290.0, 'Gas Giant', 1);
INSERT INTO public.planet VALUES (13, 'Proxima b', 'Exoplanet in habitable zone', true, true, 1000, 42.0, 'Exoplanet', 4);
INSERT INTO public.planet VALUES (14, 'Alpha Centauri d', 'Exoplanet in distant system', true, true, 900, 41.0, 'Exoplanet', 5);
INSERT INTO public.planet VALUES (1, 'Earth', 'Sort', true, true, 45, 456.7, 'New', 3);
INSERT INTO public.planet VALUES (2, 'Uranusss', 'Sorting', true, true, 45, 456.7, 'New', 4);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Sat 1', 'Scan', true, true);
INSERT INTO public.satellite VALUES (2, 'Sat 2', 'Monitor', true, false);
INSERT INTO public.satellite VALUES (3, 'Sat 3', 'Search', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Tango 1', 'Greatest in the univers          e', NULL, 776, 69.0, 5);
INSERT INTO public.star VALUES (2, 'Whirlpool Galaxy', 'M51', NULL, 11, 45.0, 6);
INSERT INTO public.star VALUES (3, 'Andromeda A', 'A massive spiral galaxy in the Local Group', NULL, 1000, 250.0, 3);
INSERT INTO public.star VALUES (4, 'Nebula B', 'A vibrant nebula near the galactic center', NULL, 30, 120.0, 4);
INSERT INTO public.star VALUES (5, 'Blue Giant', 'A young and massive star', NULL, 200, 500.0, 2);
INSERT INTO public.star VALUES (6, 'Tango 5', 'Highest', NULL, 776, 60.0, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 75, true);


--
-- Name: moon_moon_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq1', 60, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: star name_unique1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_unique1 UNIQUE (name);


--
-- Name: moon name_unique2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_unique2 UNIQUE (name);


--
-- Name: galaxy name_unique4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique4 UNIQUE (name);


--
-- Name: planet name_unique5; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique5 UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: satellite purpose_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT purpose_unique UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

