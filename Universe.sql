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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    discovered_year integer,
    light_year numeric,
    galaxy_type character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    is_spherical boolean,
    name character varying(20) NOT NULL,
    planet_id integer,
    moon_phase character varying(20),
    month character varying(20)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_types character varying(20),
    distance_from_earth integer,
    age_in_millions_of_years numeric,
    has_life boolean,
    name character varying(20) NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    spectral_type text,
    galaxy_id integer NOT NULL,
    constellation character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: sun; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.sun (
    sun_id integer NOT NULL,
    element character varying(50),
    name character varying(20) NOT NULL
);


ALTER TABLE public.sun OWNER TO freecodecamp;

--
-- Name: sun_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.sun_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sun_id_seq OWNER TO freecodecamp;

--
-- Name: sun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.sun_id_seq OWNED BY public.sun.sun_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: sun sun_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun ALTER COLUMN sun_id SET DEFAULT nextval('public.sun_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 965, 2.537, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Barred spiral', 1798, 3.8, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Pinwheel', 1781, 21, 'Spiral');
INSERT INTO public.galaxy VALUES (4, 'Cartwheel', 1941, 400, 'Lenticular');
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 1779, 17, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Comet', 2007, 3.2, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, true, 'New Moon', 1, 'Primary', NULL);
INSERT INTO public.moon VALUES (2, false, 'Waxing Crescent Moon', 1, 'Intermediate', NULL);
INSERT INTO public.moon VALUES (3, false, 'Third Quarter Moon', 1, 'primary', NULL);
INSERT INTO public.moon VALUES (4, false, 'Waxing Gibbous', 1, 'Intermediate', NULL);
INSERT INTO public.moon VALUES (5, true, 'Full Moon', 1, 'Primary', NULL);
INSERT INTO public.moon VALUES (6, false, 'Waning Gibbous', 1, 'Intermediate', NULL);
INSERT INTO public.moon VALUES (7, false, 'First Quarter Moon', 1, 'Primary', NULL);
INSERT INTO public.moon VALUES (8, false, 'Waning Crescent', 1, 'Intermediate', NULL);
INSERT INTO public.moon VALUES (9, NULL, 'Wolf Moon', NULL, NULL, 'January');
INSERT INTO public.moon VALUES (10, NULL, 'Snow Moon', NULL, NULL, 'February');
INSERT INTO public.moon VALUES (11, NULL, 'Worm Moon', NULL, NULL, 'March');
INSERT INTO public.moon VALUES (12, NULL, 'Pink Moon', NULL, NULL, 'April');
INSERT INTO public.moon VALUES (13, NULL, 'Flower Moon', NULL, NULL, 'May');
INSERT INTO public.moon VALUES (14, NULL, 'Strawberry Moon', NULL, NULL, 'June');
INSERT INTO public.moon VALUES (15, NULL, 'Buck Moon', NULL, NULL, 'July');
INSERT INTO public.moon VALUES (16, NULL, 'Sturgeon Moon', NULL, NULL, 'August');
INSERT INTO public.moon VALUES (17, NULL, 'Full Corn Moon', NULL, NULL, 'September');
INSERT INTO public.moon VALUES (18, NULL, 'Hunter Moon', NULL, NULL, 'October');
INSERT INTO public.moon VALUES (19, NULL, 'Beaver Moon', NULL, NULL, 'November');
INSERT INTO public.moon VALUES (20, NULL, 'Cold Moon', NULL, NULL, 'December');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, 50, true, 'Earth', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 81, 4600, false, 'Venus', 6);
INSERT INTO public.planet VALUES (3, 'Mars', 327, 4603, false, 'Mars', NULL);
INSERT INTO public.planet VALUES (4, 'Mercury', 193, 4503, false, 'Mercury', NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 817, 4603, false, 'Jupiter', NULL);
INSERT INTO public.planet VALUES (6, 'Neptune', 4454, 4503, false, 'Neptune', NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', 1389, 4503, false, 'Saturn', NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', 3048, 4503, false, 'Uranus', NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 5068, 4600, false, 'Pluto', NULL);
INSERT INTO public.planet VALUES (10, 'Sun', 152, 4603, false, 'Sun', NULL);
INSERT INTO public.planet VALUES (11, 'Moon', 0, 4510, false, 'Moon', 6);
INSERT INTO public.planet VALUES (12, 'Ceres', 7863, 4560, false, 'Ceres', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 'M', 2, 'Orion');
INSERT INTO public.star VALUES (2, 'Vega', 'A', 2, 'Lyra');
INSERT INTO public.star VALUES (3, 'Altair', 'A', 2, 'Aquila');
INSERT INTO public.star VALUES (4, 'Rigel', 'B', 2, 'Orion');
INSERT INTO public.star VALUES (5, 'Achernar', 'B', 2, 'Eridanus');
INSERT INTO public.star VALUES (6, 'Aldebaran', 'K', 2, 'Taurus');


--
-- Data for Name: sun; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.sun VALUES (1, 'Hydrogen', 'Hydrogen');
INSERT INTO public.sun VALUES (2, 'Oxygen', 'Oxygen');
INSERT INTO public.sun VALUES (3, 'Helium', 'Helium');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: sun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.sun_id_seq', 3, true);


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
-- Name: planet planet_planet_types_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_types_key UNIQUE (planet_types);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


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
-- Name: sun sun_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_name_key UNIQUE (name);


--
-- Name: sun sun_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.sun
    ADD CONSTRAINT sun_pkey PRIMARY KEY (sun_id);


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

