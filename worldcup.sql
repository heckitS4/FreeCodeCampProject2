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
    round character varying(35) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(35) NOT NULL
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

INSERT INTO public.games VALUES (711, 2018, 'Final', 530, 531, 4, 2);
INSERT INTO public.games VALUES (712, 2018, 'Third Place', 532, 533, 2, 0);
INSERT INTO public.games VALUES (713, 2018, 'Semi-Final', 531, 533, 2, 1);
INSERT INTO public.games VALUES (714, 2018, 'Semi-Final', 530, 532, 1, 0);
INSERT INTO public.games VALUES (715, 2018, 'Quarter-Final', 531, 536, 3, 2);
INSERT INTO public.games VALUES (716, 2018, 'Quarter-Final', 533, 537, 2, 0);
INSERT INTO public.games VALUES (717, 2018, 'Quarter-Final', 532, 538, 2, 1);
INSERT INTO public.games VALUES (718, 2018, 'Quarter-Final', 530, 539, 2, 0);
INSERT INTO public.games VALUES (719, 2018, 'Eighth-Final', 533, 540, 2, 1);
INSERT INTO public.games VALUES (720, 2018, 'Eighth-Final', 537, 541, 1, 0);
INSERT INTO public.games VALUES (721, 2018, 'Eighth-Final', 532, 542, 3, 2);
INSERT INTO public.games VALUES (722, 2018, 'Eighth-Final', 538, 543, 2, 0);
INSERT INTO public.games VALUES (723, 2018, 'Eighth-Final', 531, 544, 2, 1);
INSERT INTO public.games VALUES (724, 2018, 'Eighth-Final', 536, 545, 2, 1);
INSERT INTO public.games VALUES (725, 2018, 'Eighth-Final', 539, 546, 2, 1);
INSERT INTO public.games VALUES (726, 2018, 'Eighth-Final', 530, 547, 4, 3);
INSERT INTO public.games VALUES (727, 2014, 'Final', 548, 547, 1, 0);
INSERT INTO public.games VALUES (728, 2014, 'Third Place', 550, 538, 3, 0);
INSERT INTO public.games VALUES (729, 2014, 'Semi-Final', 547, 550, 1, 0);
INSERT INTO public.games VALUES (730, 2014, 'Semi-Final', 548, 538, 7, 1);
INSERT INTO public.games VALUES (731, 2014, 'Quarter-Final', 550, 554, 1, 0);
INSERT INTO public.games VALUES (732, 2014, 'Quarter-Final', 547, 532, 1, 0);
INSERT INTO public.games VALUES (733, 2014, 'Quarter-Final', 538, 540, 2, 1);
INSERT INTO public.games VALUES (734, 2014, 'Quarter-Final', 548, 530, 1, 0);
INSERT INTO public.games VALUES (735, 2014, 'Eighth-Final', 538, 558, 2, 1);
INSERT INTO public.games VALUES (736, 2014, 'Eighth-Final', 540, 539, 2, 0);
INSERT INTO public.games VALUES (737, 2014, 'Eighth-Final', 530, 560, 2, 0);
INSERT INTO public.games VALUES (738, 2014, 'Eighth-Final', 548, 561, 2, 1);
INSERT INTO public.games VALUES (739, 2014, 'Eighth-Final', 550, 543, 2, 1);
INSERT INTO public.games VALUES (740, 2014, 'Eighth-Final', 554, 563, 2, 1);
INSERT INTO public.games VALUES (741, 2014, 'Eighth-Final', 547, 541, 1, 0);
INSERT INTO public.games VALUES (742, 2014, 'Eighth-Final', 532, 565, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (530, 'France');
INSERT INTO public.teams VALUES (531, 'Croatia');
INSERT INTO public.teams VALUES (532, 'Belgium');
INSERT INTO public.teams VALUES (533, 'England');
INSERT INTO public.teams VALUES (536, 'Russia');
INSERT INTO public.teams VALUES (537, 'Sweden');
INSERT INTO public.teams VALUES (538, 'Brazil');
INSERT INTO public.teams VALUES (539, 'Uruguay');
INSERT INTO public.teams VALUES (540, 'Colombia');
INSERT INTO public.teams VALUES (541, 'Switzerland');
INSERT INTO public.teams VALUES (542, 'Japan');
INSERT INTO public.teams VALUES (543, 'Mexico');
INSERT INTO public.teams VALUES (544, 'Denmark');
INSERT INTO public.teams VALUES (545, 'Spain');
INSERT INTO public.teams VALUES (546, 'Portugal');
INSERT INTO public.teams VALUES (547, 'Argentina');
INSERT INTO public.teams VALUES (548, 'Germany');
INSERT INTO public.teams VALUES (550, 'Netherlands');
INSERT INTO public.teams VALUES (554, 'Costa Rica');
INSERT INTO public.teams VALUES (558, 'Chile');
INSERT INTO public.teams VALUES (560, 'Nigeria');
INSERT INTO public.teams VALUES (561, 'Algeria');
INSERT INTO public.teams VALUES (563, 'Greece');
INSERT INTO public.teams VALUES (565, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 742, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 565, true);


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
-- Name: games opponent_id_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT opponent_id_key FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games team_id_key; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT team_id_key FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

