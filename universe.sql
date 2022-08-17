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
    description text,
    has_life boolean,
    type character varying(20)
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
    name character varying(20) NOT NULL,
    has_life boolean,
    light_level numeric(7,2),
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
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    rotation_period numeric(7,2),
    star_id integer,
    rank integer,
    age integer
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
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    light_level numeric(7,2),
    moon_id integer
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    distance_from_earth numeric(7,2),
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
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'M87', NULL, false, 'Elliptical');
INSERT INTO public.galaxy VALUES (2, 'M101', NULL, false, 'S');
INSERT INTO public.galaxy VALUES (3, 'MilkyWay', NULL, true, 'SB');
INSERT INTO public.galaxy VALUES (4, 'M83', NULL, false, 'SB');
INSERT INTO public.galaxy VALUES (5, 'NGC4945', NULL, false, 'SB');
INSERT INTO public.galaxy VALUES (6, 'M95', NULL, false, 'SB');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ju01', false, NULL, 5);
INSERT INTO public.moon VALUES (2, 'ju02', false, NULL, 5);
INSERT INTO public.moon VALUES (3, 'ju03', false, NULL, 5);
INSERT INTO public.moon VALUES (4, 'ju04', false, NULL, 5);
INSERT INTO public.moon VALUES (5, 'ju05', false, NULL, 5);
INSERT INTO public.moon VALUES (6, 'ju06', false, NULL, 5);
INSERT INTO public.moon VALUES (7, 'ju07', false, NULL, 5);
INSERT INTO public.moon VALUES (8, 'ju08', false, NULL, 5);
INSERT INTO public.moon VALUES (9, 'ju09', false, NULL, 5);
INSERT INTO public.moon VALUES (10, 'ju10', false, NULL, 5);
INSERT INTO public.moon VALUES (11, 'ju11', false, NULL, 5);
INSERT INTO public.moon VALUES (12, 'ju12', false, NULL, 5);
INSERT INTO public.moon VALUES (13, 'ju13', false, NULL, 5);
INSERT INTO public.moon VALUES (14, 'ju14', false, NULL, 5);
INSERT INTO public.moon VALUES (15, 'ju15', false, NULL, 5);
INSERT INTO public.moon VALUES (16, 'ju16', false, NULL, 5);
INSERT INTO public.moon VALUES (17, 'ju17', false, NULL, 5);
INSERT INTO public.moon VALUES (18, 'ju18', false, NULL, 5);
INSERT INTO public.moon VALUES (19, 'ju19', false, NULL, 5);
INSERT INTO public.moon VALUES (20, 'ju20', false, NULL, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 1.00, 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', false, 58.65, 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Venus', false, 243.00, 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', false, 1.02, 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 0.42, 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', false, 0.44, 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, '363', false, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (8, '304', false, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (9, '134', false, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, '94', false, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, '245', false, NULL, 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, '289', false, NULL, 2, NULL, NULL);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, '363', false, NULL, 2);
INSERT INTO public.rocket VALUES (2, '304', false, NULL, 2);
INSERT INTO public.rocket VALUES (3, '134', false, NULL, 2);
INSERT INTO public.rocket VALUES (4, '94', false, NULL, 2);
INSERT INTO public.rocket VALUES (5, '245', false, NULL, 2);
INSERT INTO public.rocket VALUES (6, '289', false, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 1.00, 3);
INSERT INTO public.star VALUES (2, 'Cen', false, 4.37, 3);
INSERT INTO public.star VALUES (3, 'NGC104', false, 13000.00, 3);
INSERT INTO public.star VALUES (4, 'NGC5904', false, 34500.00, 3);
INSERT INTO public.star VALUES (5, 'Mz3', false, 3000.00, 3);
INSERT INTO public.star VALUES (6, 'NGC6405', false, 2000.00, 3);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: rocket rocket_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_name_key UNIQUE (name);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


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
-- Name: rocket rocket_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

