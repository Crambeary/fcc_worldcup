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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO postgres;

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
    year integer NOT NULL,
    round character varying(40) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (2018, 'Final', 4, 2, 455, 337, 339);
INSERT INTO public.games VALUES (2018, 'Third Place', 2, 0, 456, 338, 342);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 2, 1, 457, 339, 342);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 1, 0, 458, 337, 338);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 3, 2, 459, 339, 350);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 460, 342, 346);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 1, 461, 338, 348);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 462, 337, 351);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 463, 342, 362);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 0, 464, 346, 378);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 3, 2, 465, 338, 379);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 0, 466, 348, 380);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 467, 339, 381);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 468, 350, 382);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 469, 351, 383);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 4, 3, 470, 337, 355);
INSERT INTO public.games VALUES (2014, 'Final', 1, 0, 471, 353, 355);
INSERT INTO public.games VALUES (2014, 'Third Place', 3, 0, 472, 354, 348);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 1, 0, 473, 355, 354);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 7, 1, 474, 353, 348);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 475, 354, 366);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 476, 355, 338);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 2, 1, 477, 348, 362);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 478, 353, 337);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 479, 348, 393);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 480, 362, 351);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 481, 337, 395);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 482, 353, 396);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 483, 354, 380);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 484, 366, 398);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 0, 485, 355, 378);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 486, 338, 400);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (337, 'France');
INSERT INTO public.teams VALUES (338, 'Belgium');
INSERT INTO public.teams VALUES (339, 'Croatia');
INSERT INTO public.teams VALUES (342, 'England');
INSERT INTO public.teams VALUES (346, 'Sweden');
INSERT INTO public.teams VALUES (348, 'Brazil');
INSERT INTO public.teams VALUES (350, 'Russia');
INSERT INTO public.teams VALUES (351, 'Uruguay');
INSERT INTO public.teams VALUES (353, 'Germany');
INSERT INTO public.teams VALUES (354, 'Netherlands');
INSERT INTO public.teams VALUES (355, 'Argentina');
INSERT INTO public.teams VALUES (362, 'Colombia');
INSERT INTO public.teams VALUES (366, 'Costa Rica');
INSERT INTO public.teams VALUES (378, 'Switzerland');
INSERT INTO public.teams VALUES (379, 'Japan');
INSERT INTO public.teams VALUES (380, 'Mexico');
INSERT INTO public.teams VALUES (381, 'Denmark');
INSERT INTO public.teams VALUES (382, 'Spain');
INSERT INTO public.teams VALUES (383, 'Portugal');
INSERT INTO public.teams VALUES (393, 'Chile');
INSERT INTO public.teams VALUES (395, 'Nigeria');
INSERT INTO public.teams VALUES (396, 'Algeria');
INSERT INTO public.teams VALUES (398, 'Greece');
INSERT INTO public.teams VALUES (400, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 486, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 400, true);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

