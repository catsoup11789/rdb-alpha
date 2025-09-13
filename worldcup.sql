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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (203, 2018, 'Final', 169, 170, 2, 4);
INSERT INTO public.games VALUES (204, 2018, 'Third Place', 171, 172, 0, 2);
INSERT INTO public.games VALUES (205, 2018, 'Semi-Final', 170, 172, 1, 2);
INSERT INTO public.games VALUES (206, 2018, 'Semi-Final', 169, 171, 0, 1);
INSERT INTO public.games VALUES (207, 2018, 'Quarter-Final', 170, 173, 2, 3);
INSERT INTO public.games VALUES (208, 2018, 'Quarter-Final', 172, 174, 0, 2);
INSERT INTO public.games VALUES (209, 2018, 'Quarter-Final', 171, 175, 1, 2);
INSERT INTO public.games VALUES (210, 2018, 'Quarter-Final', 169, 176, 0, 2);
INSERT INTO public.games VALUES (211, 2018, 'Eighth-Final', 172, 177, 1, 2);
INSERT INTO public.games VALUES (212, 2018, 'Eighth-Final', 174, 178, 0, 1);
INSERT INTO public.games VALUES (213, 2018, 'Eighth-Final', 171, 179, 2, 3);
INSERT INTO public.games VALUES (214, 2018, 'Eighth-Final', 175, 180, 0, 2);
INSERT INTO public.games VALUES (215, 2018, 'Eighth-Final', 170, 181, 1, 2);
INSERT INTO public.games VALUES (216, 2018, 'Eighth-Final', 173, 182, 1, 2);
INSERT INTO public.games VALUES (217, 2018, 'Eighth-Final', 176, 183, 1, 2);
INSERT INTO public.games VALUES (218, 2018, 'Eighth-Final', 169, 184, 3, 4);
INSERT INTO public.games VALUES (219, 2014, 'Final', 185, 184, 0, 1);
INSERT INTO public.games VALUES (220, 2014, 'Third Place', 186, 175, 0, 3);
INSERT INTO public.games VALUES (221, 2014, 'Semi-Final', 184, 186, 0, 1);
INSERT INTO public.games VALUES (222, 2014, 'Semi-Final', 185, 175, 1, 7);
INSERT INTO public.games VALUES (223, 2014, 'Quarter-Final', 186, 187, 0, 1);
INSERT INTO public.games VALUES (224, 2014, 'Quarter-Final', 184, 171, 0, 1);
INSERT INTO public.games VALUES (225, 2014, 'Quarter-Final', 175, 177, 1, 2);
INSERT INTO public.games VALUES (226, 2014, 'Quarter-Final', 185, 169, 0, 1);
INSERT INTO public.games VALUES (227, 2014, 'Eighth-Final', 175, 188, 1, 2);
INSERT INTO public.games VALUES (228, 2014, 'Eighth-Final', 177, 176, 0, 2);
INSERT INTO public.games VALUES (229, 2014, 'Eighth-Final', 169, 189, 0, 2);
INSERT INTO public.games VALUES (230, 2014, 'Eighth-Final', 185, 190, 1, 2);
INSERT INTO public.games VALUES (231, 2014, 'Eighth-Final', 186, 180, 1, 2);
INSERT INTO public.games VALUES (232, 2014, 'Eighth-Final', 187, 191, 1, 2);
INSERT INTO public.games VALUES (233, 2014, 'Eighth-Final', 184, 178, 0, 1);
INSERT INTO public.games VALUES (234, 2014, 'Eighth-Final', 171, 192, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (169, 'France');
INSERT INTO public.teams VALUES (170, 'Croatia');
INSERT INTO public.teams VALUES (171, 'Belgium');
INSERT INTO public.teams VALUES (172, 'England');
INSERT INTO public.teams VALUES (173, 'Russia');
INSERT INTO public.teams VALUES (174, 'Sweden');
INSERT INTO public.teams VALUES (175, 'Brazil');
INSERT INTO public.teams VALUES (176, 'Uruguay');
INSERT INTO public.teams VALUES (177, 'Colombia');
INSERT INTO public.teams VALUES (178, 'Switzerland');
INSERT INTO public.teams VALUES (179, 'Japan');
INSERT INTO public.teams VALUES (180, 'Mexico');
INSERT INTO public.teams VALUES (181, 'Denmark');
INSERT INTO public.teams VALUES (182, 'Spain');
INSERT INTO public.teams VALUES (183, 'Portugal');
INSERT INTO public.teams VALUES (184, 'Argentina');
INSERT INTO public.teams VALUES (185, 'Germany');
INSERT INTO public.teams VALUES (186, 'Netherlands');
INSERT INTO public.teams VALUES (187, 'Costa Rica');
INSERT INTO public.teams VALUES (188, 'Chile');
INSERT INTO public.teams VALUES (189, 'Nigeria');
INSERT INTO public.teams VALUES (190, 'Algeria');
INSERT INTO public.teams VALUES (191, 'Greece');
INSERT INTO public.teams VALUES (192, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 234, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 192, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

