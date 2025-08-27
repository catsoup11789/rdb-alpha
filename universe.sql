--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30) NOT NULL,
    constellation text,
    size_kpc numeric,
    redshift numeric
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
    name character varying(30) NOT NULL,
    planet_id integer,
    mass_kg numeric,
    days_orbit integer,
    surface_temp_k integer
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
    name character varying(30) NOT NULL,
    star_id integer,
    mass_kg numeric,
    has_liquid_water boolean,
    days_orbit integer
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
    name character varying(30) NOT NULL,
    mass_kg integer,
    galaxy_id integer,
    has_known_planets boolean
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
-- Name: supernova; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.supernova (
    supernova_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.supernova OWNER TO freecodecamp;

--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.supernova_supernova_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supernova_supernova_id_seq OWNER TO freecodecamp;

--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.supernova_supernova_id_seq OWNED BY public.supernova.supernova_id;


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
-- Name: supernova supernova_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova ALTER COLUMN supernova_id SET DEFAULT nextval('public.supernova_supernova_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Sagittarius', 26.8, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromedia', 'Andromeda', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cigar Galaxy', 'Ursa Major', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Godzilla  Galaxy', 'Perseus', 134.31, NULL);
INSERT INTO public.galaxy VALUES (5, 'Starfish Galaxy', 'Ophiuchus', 74.48, NULL);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool Galaxy', 'Canes Venatici', 23.58, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 2, 3476, 27, 216);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 11.1, 1, 269);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 12.5, 1, 233);
INSERT INTO public.moon VALUES (4, 'Europa', 5, 3122, 4, 140);
INSERT INTO public.moon VALUES (5, 'Io', 5, 3643, 2, 110);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 5268, 7, 160);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 4821, 17, 134);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 5149, 16, 94);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 1527, 5, 99);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 1469, 79, 130);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 1122, 3, 87);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 1062, 2, 86);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 504, 1, 75);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 396, 1, 64);
INSERT INTO public.moon VALUES (15, 'Hyperion', 6, 270, 21, 93);
INSERT INTO public.moon VALUES (16, 'Phoebe', 6, 213, 551, 75);
INSERT INTO public.moon VALUES (17, 'Janus', 6, 179, 1, 75);
INSERT INTO public.moon VALUES (18, 'Epimetheus', 6, 115, 1, 75);
INSERT INTO public.moon VALUES (19, 'Titania', 7, 1578, 9, 60);
INSERT INTO public.moon VALUES (20, 'Oberon', 7, 1523, 13, 60);
INSERT INTO public.moon VALUES (21, 'Umbriel', 7, 1169, 4, 60);
INSERT INTO public.moon VALUES (22, 'Ariel', 7, 1157, 3, 60);
INSERT INTO public.moon VALUES (23, 'Miranda', 7, 471, 1, 60);
INSERT INTO public.moon VALUES (24, 'Puck', 7, 162, 1, 65);
INSERT INTO public.moon VALUES (25, 'Portia', 7, 135, 1, 65);
INSERT INTO public.moon VALUES (26, 'Rosalind', 7, 72, 1, 65);
INSERT INTO public.moon VALUES (27, 'Belinda', 7, 45, 1, 65);
INSERT INTO public.moon VALUES (28, 'Cressida', 7, 80, 0, 65);
INSERT INTO public.moon VALUES (29, 'Desdemona', 7, 64, 0, 65);
INSERT INTO public.moon VALUES (30, 'Triton', 8, 2706, 6, 38);
INSERT INTO public.moon VALUES (31, 'Proteus', 8, 420, 1, 51);
INSERT INTO public.moon VALUES (32, 'Nereid', 8, 340, 360, 50);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4, 2440, false, 88);
INSERT INTO public.planet VALUES (2, 'Earth', 4, 5.97, true, 365);
INSERT INTO public.planet VALUES (3, 'Venus', 4, 12014, false, 225);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 3390, true, 687);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4, 69911, false, 4333);
INSERT INTO public.planet VALUES (6, 'Saturn', 4, 120500, true, 10756);
INSERT INTO public.planet VALUES (7, 'Uranus', 4, 51118, true, 30687);
INSERT INTO public.planet VALUES (8, 'Neptune', 4, 49528, true, 1);
INSERT INTO public.planet VALUES (9, 'Ceres', 4, 950, true, 1682);
INSERT INTO public.planet VALUES (10, 'Pluto', 4, 2370, true, 6387);
INSERT INTO public.planet VALUES (11, 'Haumea', 4, 310, false, 103000);
INSERT INTO public.planet VALUES (12, 'Makemake', 4, 1430, true, 111766);
INSERT INTO public.planet VALUES (13, 'Eris', 4, 2326, true, 203810);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Rigel', 18, 1, false);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 17, 1, false);
INSERT INTO public.star VALUES (3, 'Regulus', 8, 1, false);
INSERT INTO public.star VALUES (4, 'Sun', 2, 1, true);
INSERT INTO public.star VALUES (5, 'Polaris', 2, 1, false);
INSERT INTO public.star VALUES (6, 'Kepler-90', 1, 1, true);


--
-- Data for Name: supernova; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.supernova VALUES (1, 'SN 1604', 1);
INSERT INTO public.supernova VALUES (2, 'SN 1054', 1);
INSERT INTO public.supernova VALUES (3, 'SN 1006', 1);
INSERT INTO public.supernova VALUES (4, 'SN 1572', 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 32, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: supernova_supernova_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.supernova_supernova_id_seq', 4, true);


--
-- Name: galaxy galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: supernova supernova_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_name UNIQUE (name);


--
-- Name: supernova supernova_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.supernova
    ADD CONSTRAINT supernova_pkey PRIMARY KEY (supernova_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

