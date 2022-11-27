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
    name character varying(10),
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL,
    type character varying(15)
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
    name character varying(10),
    moon_id integer NOT NULL,
    diameter numeric(5,1),
    coment text,
    planet_id integer NOT NULL
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
    name character varying(10) NOT NULL,
    is_there_life boolean,
    planet_id integer NOT NULL,
    color character varying(10),
    years integer
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
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying(10) NOT NULL,
    is_there_people boolean,
    weigth numeric(5,1),
    distance_from_earth numeric(5,1),
    years integer
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: space_station_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_station_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_station_station_id_seq OWNER TO freecodecamp;

--
-- Name: space_station_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_station_station_id_seq OWNED BY public.space_station.space_station_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(10),
    star_id integer NOT NULL,
    is_spherical boolean,
    planet_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_planet_id_seq OWNER TO freecodecamp;

--
-- Name: star_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_planet_id_seq OWNED BY public.star.planet_id;


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

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: space_station space_station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station ALTER COLUMN space_station_id SET DEFAULT nextval('public.space_station_station_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN planet_id SET DEFAULT nextval('public.star_planet_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Via Lactea', 13, 26, 1, NULL);
INSERT INTO public.galaxy VALUES ('ANDROMEDA', 22, 96, 2, NULL);
INSERT INTO public.galaxy VALUES ('ENANA', 40, 150, 3, NULL);
INSERT INTO public.galaxy VALUES ('CYGNUS', 24, 108, 4, NULL);
INSERT INTO public.galaxy VALUES ('MAGELLANIC', 88, 203, 5, NULL);
INSERT INTO public.galaxy VALUES ('VIRGO', 96, 412, 6, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, 1, NULL, NULL, 1);
INSERT INTO public.moon VALUES ('Luna', 2, 3474.8, 'La superficie de la tierra es mayor al area de la superficie de Australia', 2);
INSERT INTO public.moon VALUES ('Ninguno', 3, 0.0, 'Venus no tiene satelites', 3);
INSERT INTO public.moon VALUES ('Ganymede', 35, 2631.1, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Callisto', 36, 2400.1, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Io', 37, 2582.5, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Europa', 38, 1256.8, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Amalthea', 39, 269.4, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Himalia', 40, 789.5, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Thebe', 41, 598.3, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Elara', 42, 785.8, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Pasiphae', 43, 658.1, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Callirrhoe', 44, 2400.1, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Adrastea', 45, 2582.5, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Leda', 46, 1256.8, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Ananke', 47, 269.4, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Lysithea', 48, 789.5, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Sinope', 49, 598.3, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Carme', 50, 785.8, 'Luna de Jupiter', 5);
INSERT INTO public.moon VALUES ('Metis', 51, 658.1, 'Luna de Jupiter', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercurio', false, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('Venus', false, 3, NULL, NULL);
INSERT INTO public.planet VALUES ('Tierra', true, 2, NULL, NULL);
INSERT INTO public.planet VALUES ('Marte', false, 4, 'orange', 58);
INSERT INTO public.planet VALUES ('Jupiter', false, 5, 'yellow', 77);
INSERT INTO public.planet VALUES ('Saturno', false, 6, 'lt yellow', 88);
INSERT INTO public.planet VALUES ('Urano', false, 7, 'blue', 102);
INSERT INTO public.planet VALUES ('Neptuno', false, 8, 'lt blue', 151);
INSERT INTO public.planet VALUES ('Pluton', false, 9, 'black', 562);
INSERT INTO public.planet VALUES ('Tatooine', true, 10, 'orange', 122);
INSERT INTO public.planet VALUES ('Jakku', true, 11, 'green', 22);
INSERT INTO public.planet VALUES ('Nevarro', NULL, 12, NULL, NULL);


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'NASA', false, NULL, NULL, NULL);
INSERT INTO public.space_station VALUES (2, 'ROSCOSMOS', true, NULL, NULL, NULL);
INSERT INTO public.space_station VALUES (3, 'JAXA', true, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sol', 1, true, 1, 1);
INSERT INTO public.star VALUES ('Rigel', 2, true, 2, 2);
INSERT INTO public.star VALUES ('Procyon', 3, false, 3, 3);
INSERT INTO public.star VALUES ('POLLARIS', 4, false, 4, 4);
INSERT INTO public.star VALUES ('ORION', 5, false, 5, 5);
INSERT INTO public.star VALUES ('SIRIUS', 6, false, 6, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: space_station_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_station_station_id_seq', 1, false);


--
-- Name: star_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: space_station space_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_pkey PRIMARY KEY (space_station_id);


--
-- Name: space_station space_station_station_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_station_name_key UNIQUE (name);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

