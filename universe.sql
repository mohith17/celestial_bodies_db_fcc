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
-- Name: abc; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.abc (
    name character varying(40) NOT NULL,
    abc_id integer NOT NULL,
    tada integer
);


ALTER TABLE public.abc OWNER TO freecodecamp;

--
-- Name: abc_abc_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.abc_abc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.abc_abc_id_seq OWNER TO freecodecamp;

--
-- Name: abc_abc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.abc_abc_id_seq OWNED BY public.abc.abc_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    galaxy_name character varying(40),
    galaxy_description text,
    name character varying(40) NOT NULL,
    tada integer
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
    moon_name character varying(40),
    name character varying(40) NOT NULL,
    planet_id integer,
    tada integer
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
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(40),
    planet_score integer,
    planet_size numeric,
    has_moon boolean,
    name character varying(40) NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(40),
    star_score integer,
    star_size numeric,
    is_red boolean,
    name character varying(40) NOT NULL,
    galaxy_id integer
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
-- Name: abc abc_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.abc ALTER COLUMN abc_id SET DEFAULT nextval('public.abc_abc_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: abc; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.abc VALUES ('hehe1', 1, NULL);
INSERT INTO public.abc VALUES ('hehe2', 2, NULL);
INSERT INTO public.abc VALUES ('hehe3', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, 'It is a spiral galaxy located about 2.5 million light years away. It is said to collide with milkyway galaxy several billion years later', 'Andromeda Galaxy', NULL);
INSERT INTO public.galaxy VALUES (2, NULL, 'A small irregular galaxy with a mass of about a billion solar masses located approx. 25,000 light years froom sun and around 42,000 light years from center of milky way galaxy', 'Canis Major Dwarf Galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, NULL, 'An elliptical galaxy with billions of stars in its featureless oval.', 'Cygnus.A', NULL);
INSERT INTO public.galaxy VALUES (4, NULL, 'A large elliptical galaxy that is 9,800,000 light-years from us.', 'Maffei', NULL);
INSERT INTO public.galaxy VALUES (5, NULL, 'Irregular galaxy that shares a gaseous envelope and is about 22degree apart in sky from the south celestial pole.', 'Magellaric Galaxy', NULL);
INSERT INTO public.galaxy VALUES (6, NULL, 'Our galaxy is 13.61 billion years and a radius of 52,850 light years', 'Milkyway Galaxy', NULL);
INSERT INTO public.galaxy VALUES (7, NULL, 'It is located about a distance of 5x10power7 light years in direction of constillation virgo and about 2,000 galaxies reside in virgo cluster', 'Virgo.A', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 'moon1', 1, NULL);
INSERT INTO public.moon VALUES (2, NULL, 'moon2', 2, NULL);
INSERT INTO public.moon VALUES (3, NULL, 'moon3', 3, NULL);
INSERT INTO public.moon VALUES (4, NULL, 'moon4', 4, NULL);
INSERT INTO public.moon VALUES (5, NULL, 'moon5', 5, NULL);
INSERT INTO public.moon VALUES (6, NULL, 'moon6', 6, NULL);
INSERT INTO public.moon VALUES (7, NULL, 'moon7', 7, NULL);
INSERT INTO public.moon VALUES (8, NULL, 'moon8', 8, NULL);
INSERT INTO public.moon VALUES (9, NULL, 'moon9', 9, NULL);
INSERT INTO public.moon VALUES (10, NULL, 'moon10', 10, NULL);
INSERT INTO public.moon VALUES (11, NULL, 'moon11', 1, NULL);
INSERT INTO public.moon VALUES (12, NULL, 'moon12', 2, NULL);
INSERT INTO public.moon VALUES (13, NULL, 'moon19', 9, NULL);
INSERT INTO public.moon VALUES (14, NULL, 'moon18', 8, NULL);
INSERT INTO public.moon VALUES (15, NULL, 'moon17', 7, NULL);
INSERT INTO public.moon VALUES (16, NULL, 'moon16', 6, NULL);
INSERT INTO public.moon VALUES (17, NULL, 'moon15', 5, NULL);
INSERT INTO public.moon VALUES (18, NULL, 'moon14', 4, NULL);
INSERT INTO public.moon VALUES (19, NULL, 'moon13', 3, NULL);
INSERT INTO public.moon VALUES (21, NULL, 'moon20', 2, NULL);
INSERT INTO public.moon VALUES (22, NULL, 'moon21', 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, NULL, NULL, NULL, 'planet1', 1);
INSERT INTO public.planet VALUES (2, NULL, NULL, NULL, NULL, 'planet2', 2);
INSERT INTO public.planet VALUES (3, NULL, NULL, NULL, NULL, 'planet3', 3);
INSERT INTO public.planet VALUES (4, NULL, NULL, NULL, NULL, 'planet4', 4);
INSERT INTO public.planet VALUES (5, NULL, NULL, NULL, NULL, 'planet5', 5);
INSERT INTO public.planet VALUES (6, NULL, NULL, NULL, NULL, 'planet6', 6);
INSERT INTO public.planet VALUES (7, NULL, NULL, NULL, NULL, 'planet7', 7);
INSERT INTO public.planet VALUES (8, NULL, NULL, NULL, NULL, 'planet8', 8);
INSERT INTO public.planet VALUES (9, NULL, NULL, NULL, NULL, 'planet9', 9);
INSERT INTO public.planet VALUES (10, NULL, NULL, NULL, NULL, 'planet10', 1);
INSERT INTO public.planet VALUES (11, NULL, NULL, NULL, NULL, 'planet11', 2);
INSERT INTO public.planet VALUES (12, NULL, NULL, NULL, NULL, 'planet12', 3);
INSERT INTO public.planet VALUES (13, NULL, NULL, NULL, NULL, 'planet13', 4);
INSERT INTO public.planet VALUES (14, NULL, NULL, NULL, NULL, 'planet14', 5);
INSERT INTO public.planet VALUES (15, NULL, NULL, NULL, NULL, 'planet15', 6);
INSERT INTO public.planet VALUES (16, NULL, NULL, NULL, NULL, 'planet16', 7);
INSERT INTO public.planet VALUES (17, NULL, NULL, NULL, NULL, 'planet17', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, NULL, NULL, 'star1', 1);
INSERT INTO public.star VALUES (2, NULL, NULL, NULL, NULL, 'star2', 2);
INSERT INTO public.star VALUES (3, NULL, NULL, NULL, NULL, 'star3', 3);
INSERT INTO public.star VALUES (4, NULL, NULL, NULL, NULL, 'star4', 4);
INSERT INTO public.star VALUES (5, NULL, NULL, NULL, NULL, 'star5', 1);
INSERT INTO public.star VALUES (6, NULL, NULL, NULL, NULL, 'star6', 2);
INSERT INTO public.star VALUES (7, NULL, NULL, NULL, NULL, 'star7', 5);
INSERT INTO public.star VALUES (8, NULL, NULL, NULL, NULL, 'star8', 6);
INSERT INTO public.star VALUES (9, NULL, NULL, NULL, NULL, 'star9', 7);


--
-- Name: abc_abc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.abc_abc_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: abc abc_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.abc
    ADD CONSTRAINT abc_name_key UNIQUE (name);


--
-- Name: abc abc_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.abc
    ADD CONSTRAINT abc_pkey PRIMARY KEY (abc_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


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

