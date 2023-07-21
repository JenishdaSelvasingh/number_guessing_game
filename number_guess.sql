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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    number_guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 13, 6);
INSERT INTO public.games VALUES (2, 378, 7);
INSERT INTO public.games VALUES (3, 182, 7);
INSERT INTO public.games VALUES (4, 438, 8);
INSERT INTO public.games VALUES (5, 174, 8);
INSERT INTO public.games VALUES (6, 489, 7);
INSERT INTO public.games VALUES (7, 392, 7);
INSERT INTO public.games VALUES (8, 462, 7);
INSERT INTO public.games VALUES (9, 14, 9);
INSERT INTO public.games VALUES (10, 1, 10);
INSERT INTO public.games VALUES (11, 688, 10);
INSERT INTO public.games VALUES (12, 1, 11);
INSERT INTO public.games VALUES (13, 329, 11);
INSERT INTO public.games VALUES (14, 665, 10);
INSERT INTO public.games VALUES (15, 334, 10);
INSERT INTO public.games VALUES (16, 650, 10);
INSERT INTO public.games VALUES (17, 393, 12);
INSERT INTO public.games VALUES (18, 360, 12);
INSERT INTO public.games VALUES (19, 925, 13);
INSERT INTO public.games VALUES (20, 405, 13);
INSERT INTO public.games VALUES (21, 528, 12);
INSERT INTO public.games VALUES (22, 715, 12);
INSERT INTO public.games VALUES (23, 449, 12);
INSERT INTO public.games VALUES (24, 900, 14);
INSERT INTO public.games VALUES (25, 236, 14);
INSERT INTO public.games VALUES (26, 660, 15);
INSERT INTO public.games VALUES (27, 125, 15);
INSERT INTO public.games VALUES (28, 609, 14);
INSERT INTO public.games VALUES (29, 371, 14);
INSERT INTO public.games VALUES (30, 341, 14);
INSERT INTO public.games VALUES (31, 118, 16);
INSERT INTO public.games VALUES (32, 520, 16);
INSERT INTO public.games VALUES (33, 986, 17);
INSERT INTO public.games VALUES (34, 847, 17);
INSERT INTO public.games VALUES (35, 217, 16);
INSERT INTO public.games VALUES (36, 670, 16);
INSERT INTO public.games VALUES (37, 585, 16);
INSERT INTO public.games VALUES (38, 27, 18);
INSERT INTO public.games VALUES (39, 342, 18);
INSERT INTO public.games VALUES (40, 181, 19);
INSERT INTO public.games VALUES (41, 351, 19);
INSERT INTO public.games VALUES (42, 650, 18);
INSERT INTO public.games VALUES (43, 731, 18);
INSERT INTO public.games VALUES (44, 985, 18);
INSERT INTO public.games VALUES (45, 260, 20);
INSERT INTO public.games VALUES (46, 619, 20);
INSERT INTO public.games VALUES (47, 329, 21);
INSERT INTO public.games VALUES (48, 723, 21);
INSERT INTO public.games VALUES (49, 385, 20);
INSERT INTO public.games VALUES (50, 407, 20);
INSERT INTO public.games VALUES (51, 122, 20);
INSERT INTO public.games VALUES (52, 383, 24);
INSERT INTO public.games VALUES (53, 202, 24);
INSERT INTO public.games VALUES (54, 325, 25);
INSERT INTO public.games VALUES (55, 426, 25);
INSERT INTO public.games VALUES (56, 746, 24);
INSERT INTO public.games VALUES (57, 776, 24);
INSERT INTO public.games VALUES (58, 111, 24);
INSERT INTO public.games VALUES (59, 1, 26);
INSERT INTO public.games VALUES (60, 386, 26);
INSERT INTO public.games VALUES (61, 447, 27);
INSERT INTO public.games VALUES (62, 244, 27);
INSERT INTO public.games VALUES (63, 553, 26);
INSERT INTO public.games VALUES (64, 37, 26);
INSERT INTO public.games VALUES (65, 162, 26);
INSERT INTO public.games VALUES (66, 1, 28);
INSERT INTO public.games VALUES (67, 823, 28);
INSERT INTO public.games VALUES (68, 23, 29);
INSERT INTO public.games VALUES (69, 38, 29);
INSERT INTO public.games VALUES (70, 54, 28);
INSERT INTO public.games VALUES (71, 833, 28);
INSERT INTO public.games VALUES (72, 145, 28);
INSERT INTO public.games VALUES (73, 1, 30);
INSERT INTO public.games VALUES (74, 724, 30);
INSERT INTO public.games VALUES (75, 193, 31);
INSERT INTO public.games VALUES (76, 296, 31);
INSERT INTO public.games VALUES (77, 17, 30);
INSERT INTO public.games VALUES (78, 106, 30);
INSERT INTO public.games VALUES (79, 134, 30);
INSERT INTO public.games VALUES (80, 12, 32);
INSERT INTO public.games VALUES (81, 319, 33);
INSERT INTO public.games VALUES (82, 665, 33);
INSERT INTO public.games VALUES (83, 66, 34);
INSERT INTO public.games VALUES (84, 884, 34);
INSERT INTO public.games VALUES (85, 230, 33);
INSERT INTO public.games VALUES (86, 17, 33);
INSERT INTO public.games VALUES (87, 568, 33);
INSERT INTO public.games VALUES (88, 630, 35);
INSERT INTO public.games VALUES (89, 123, 35);
INSERT INTO public.games VALUES (90, 532, 36);
INSERT INTO public.games VALUES (91, 629, 36);
INSERT INTO public.games VALUES (92, 964, 35);
INSERT INTO public.games VALUES (93, 808, 35);
INSERT INTO public.games VALUES (94, 145, 35);
INSERT INTO public.games VALUES (95, 336, 38);
INSERT INTO public.games VALUES (96, 863, 38);
INSERT INTO public.games VALUES (97, 140, 39);
INSERT INTO public.games VALUES (98, 421, 39);
INSERT INTO public.games VALUES (99, 672, 38);
INSERT INTO public.games VALUES (100, 392, 38);
INSERT INTO public.games VALUES (101, 648, 38);
INSERT INTO public.games VALUES (102, 951, 40);
INSERT INTO public.games VALUES (103, 560, 40);
INSERT INTO public.games VALUES (104, 163, 41);
INSERT INTO public.games VALUES (105, 240, 41);
INSERT INTO public.games VALUES (106, 530, 40);
INSERT INTO public.games VALUES (107, 315, 40);
INSERT INTO public.games VALUES (108, 482, 40);
INSERT INTO public.games VALUES (109, 650, 42);
INSERT INTO public.games VALUES (110, 286, 42);
INSERT INTO public.games VALUES (111, 679, 43);
INSERT INTO public.games VALUES (112, 431, 43);
INSERT INTO public.games VALUES (113, 341, 42);
INSERT INTO public.games VALUES (114, 859, 42);
INSERT INTO public.games VALUES (115, 76, 42);
INSERT INTO public.games VALUES (116, 685, 44);
INSERT INTO public.games VALUES (117, 853, 44);
INSERT INTO public.games VALUES (118, 746, 45);
INSERT INTO public.games VALUES (119, 912, 45);
INSERT INTO public.games VALUES (120, 919, 44);
INSERT INTO public.games VALUES (121, 350, 44);
INSERT INTO public.games VALUES (122, 578, 44);
INSERT INTO public.games VALUES (123, 93, 46);
INSERT INTO public.games VALUES (124, 184, 46);
INSERT INTO public.games VALUES (125, 413, 47);
INSERT INTO public.games VALUES (126, 437, 47);
INSERT INTO public.games VALUES (127, 993, 46);
INSERT INTO public.games VALUES (128, 827, 46);
INSERT INTO public.games VALUES (129, 785, 46);
INSERT INTO public.games VALUES (130, 714, 48);
INSERT INTO public.games VALUES (131, 138, 48);
INSERT INTO public.games VALUES (132, 628, 49);
INSERT INTO public.games VALUES (133, 298, 49);
INSERT INTO public.games VALUES (134, 150, 48);
INSERT INTO public.games VALUES (135, 270, 48);
INSERT INTO public.games VALUES (136, 969, 48);
INSERT INTO public.games VALUES (137, 397, 50);
INSERT INTO public.games VALUES (138, 686, 50);
INSERT INTO public.games VALUES (139, 425, 51);
INSERT INTO public.games VALUES (140, 621, 51);
INSERT INTO public.games VALUES (141, 213, 50);
INSERT INTO public.games VALUES (142, 214, 50);
INSERT INTO public.games VALUES (143, 792, 50);
INSERT INTO public.games VALUES (144, 502, 52);
INSERT INTO public.games VALUES (145, 743, 52);
INSERT INTO public.games VALUES (146, 973, 53);
INSERT INTO public.games VALUES (147, 274, 53);
INSERT INTO public.games VALUES (148, 939, 52);
INSERT INTO public.games VALUES (149, 956, 52);
INSERT INTO public.games VALUES (150, 866, 52);
INSERT INTO public.games VALUES (151, 351, 54);
INSERT INTO public.games VALUES (152, 334, 54);
INSERT INTO public.games VALUES (153, 7, 55);
INSERT INTO public.games VALUES (154, 960, 55);
INSERT INTO public.games VALUES (155, 354, 54);
INSERT INTO public.games VALUES (156, 845, 54);
INSERT INTO public.games VALUES (157, 774, 54);
INSERT INTO public.games VALUES (158, 54, 56);
INSERT INTO public.games VALUES (159, 459, 56);
INSERT INTO public.games VALUES (160, 575, 57);
INSERT INTO public.games VALUES (161, 200, 57);
INSERT INTO public.games VALUES (162, 41, 56);
INSERT INTO public.games VALUES (163, 802, 56);
INSERT INTO public.games VALUES (164, 62, 56);
INSERT INTO public.games VALUES (165, 811, 58);
INSERT INTO public.games VALUES (166, 872, 58);
INSERT INTO public.games VALUES (167, 980, 59);
INSERT INTO public.games VALUES (168, 28, 59);
INSERT INTO public.games VALUES (169, 79, 58);
INSERT INTO public.games VALUES (170, 784, 58);
INSERT INTO public.games VALUES (171, 954, 58);
INSERT INTO public.games VALUES (172, 35, 64);
INSERT INTO public.games VALUES (173, 592, 64);
INSERT INTO public.games VALUES (174, 875, 65);
INSERT INTO public.games VALUES (175, 233, 65);
INSERT INTO public.games VALUES (176, 56, 64);
INSERT INTO public.games VALUES (177, 526, 64);
INSERT INTO public.games VALUES (178, 848, 64);
INSERT INTO public.games VALUES (179, 953, 66);
INSERT INTO public.games VALUES (180, 572, 66);
INSERT INTO public.games VALUES (181, 866, 67);
INSERT INTO public.games VALUES (182, 280, 67);
INSERT INTO public.games VALUES (183, 11, 66);
INSERT INTO public.games VALUES (184, 58, 66);
INSERT INTO public.games VALUES (185, 295, 66);
INSERT INTO public.games VALUES (186, 160, 68);
INSERT INTO public.games VALUES (187, 293, 68);
INSERT INTO public.games VALUES (188, 98, 69);
INSERT INTO public.games VALUES (189, 85, 69);
INSERT INTO public.games VALUES (190, 569, 68);
INSERT INTO public.games VALUES (191, 309, 68);
INSERT INTO public.games VALUES (192, 589, 68);
INSERT INTO public.games VALUES (193, 377, 70);
INSERT INTO public.games VALUES (194, 83, 70);
INSERT INTO public.games VALUES (195, 128, 71);
INSERT INTO public.games VALUES (196, 21, 71);
INSERT INTO public.games VALUES (197, 853, 70);
INSERT INTO public.games VALUES (198, 829, 70);
INSERT INTO public.games VALUES (199, 510, 70);
INSERT INTO public.games VALUES (200, 374, 72);
INSERT INTO public.games VALUES (201, 241, 72);
INSERT INTO public.games VALUES (202, 459, 73);
INSERT INTO public.games VALUES (203, 670, 73);
INSERT INTO public.games VALUES (204, 40, 72);
INSERT INTO public.games VALUES (205, 448, 72);
INSERT INTO public.games VALUES (206, 93, 72);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1689872567717');
INSERT INTO public.users VALUES (2, 'user_1689872567716');
INSERT INTO public.users VALUES (3, 'maria');
INSERT INTO public.users VALUES (4, 'user_1689881787249');
INSERT INTO public.users VALUES (5, 'user_1689881787248');
INSERT INTO public.users VALUES (6, 'mary');
INSERT INTO public.users VALUES (7, 'user_1689882253342');
INSERT INTO public.users VALUES (8, 'user_1689882253341');
INSERT INTO public.users VALUES (9, 'jeni');
INSERT INTO public.users VALUES (10, 'user_1689882478531');
INSERT INTO public.users VALUES (11, 'user_1689882478530');
INSERT INTO public.users VALUES (12, 'user_1689882965566');
INSERT INTO public.users VALUES (13, 'user_1689882965565');
INSERT INTO public.users VALUES (14, 'user_1689883005882');
INSERT INTO public.users VALUES (15, 'user_1689883005881');
INSERT INTO public.users VALUES (16, 'user_1689883510131');
INSERT INTO public.users VALUES (17, 'user_1689883510130');
INSERT INTO public.users VALUES (18, 'user_1689883610108');
INSERT INTO public.users VALUES (19, 'user_1689883610107');
INSERT INTO public.users VALUES (20, 'user_1689884261466');
INSERT INTO public.users VALUES (21, 'user_1689884261465');
INSERT INTO public.users VALUES (22, 'virat');
INSERT INTO public.users VALUES (23, 'tyyh');
INSERT INTO public.users VALUES (24, 'user_1689884692282');
INSERT INTO public.users VALUES (25, 'user_1689884692281');
INSERT INTO public.users VALUES (26, 'user_1689884729176');
INSERT INTO public.users VALUES (27, 'user_1689884729175');
INSERT INTO public.users VALUES (28, 'user_1689884744455');
INSERT INTO public.users VALUES (29, 'user_1689884744454');
INSERT INTO public.users VALUES (30, 'user_1689884756880');
INSERT INTO public.users VALUES (31, 'user_1689884756879');
INSERT INTO public.users VALUES (32, 'pushpa');
INSERT INTO public.users VALUES (33, 'user_1689885113665');
INSERT INTO public.users VALUES (34, 'user_1689885113664');
INSERT INTO public.users VALUES (35, 'user_1689909423671');
INSERT INTO public.users VALUES (36, 'user_1689909423670');
INSERT INTO public.users VALUES (37, 'j');
INSERT INTO public.users VALUES (38, 'user_1689909751358');
INSERT INTO public.users VALUES (39, 'user_1689909751357');
INSERT INTO public.users VALUES (40, 'user_1689910842581');
INSERT INTO public.users VALUES (41, 'user_1689910842580');
INSERT INTO public.users VALUES (42, 'user_1689910858679');
INSERT INTO public.users VALUES (43, 'user_1689910858678');
INSERT INTO public.users VALUES (44, 'user_1689911143859');
INSERT INTO public.users VALUES (45, 'user_1689911143858');
INSERT INTO public.users VALUES (46, 'user_1689911167776');
INSERT INTO public.users VALUES (47, 'user_1689911167775');
INSERT INTO public.users VALUES (48, 'user_1689911219441');
INSERT INTO public.users VALUES (49, 'user_1689911219440');
INSERT INTO public.users VALUES (50, 'user_1689911403030');
INSERT INTO public.users VALUES (51, 'user_1689911403029');
INSERT INTO public.users VALUES (52, 'user_1689912076417');
INSERT INTO public.users VALUES (53, 'user_1689912076416');
INSERT INTO public.users VALUES (54, 'user_1689912132807');
INSERT INTO public.users VALUES (55, 'user_1689912132806');
INSERT INTO public.users VALUES (56, 'user_1689912992010');
INSERT INTO public.users VALUES (57, 'user_1689912992009');
INSERT INTO public.users VALUES (58, 'user_1689913246376');
INSERT INTO public.users VALUES (59, 'user_1689913246375');
INSERT INTO public.users VALUES (60, 'user_1689915477289');
INSERT INTO public.users VALUES (61, 'user_1689915477288');
INSERT INTO public.users VALUES (62, 'user_1689915604386');
INSERT INTO public.users VALUES (63, 'user_1689915604385');
INSERT INTO public.users VALUES (64, 'user_1689915645495');
INSERT INTO public.users VALUES (65, 'user_1689915645494');
INSERT INTO public.users VALUES (66, 'user_1689915667167');
INSERT INTO public.users VALUES (67, 'user_1689915667166');
INSERT INTO public.users VALUES (68, 'user_1689915684994');
INSERT INTO public.users VALUES (69, 'user_1689915684993');
INSERT INTO public.users VALUES (70, 'user_1689915695527');
INSERT INTO public.users VALUES (71, 'user_1689915695526');
INSERT INTO public.users VALUES (72, 'user_1689915749591');
INSERT INTO public.users VALUES (73, 'user_1689915749590');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 206, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 73, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

