--
-- PostgreSQL database dump
--

-- Dumped from database version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.9 (Ubuntu 16.9-0ubuntu0.24.04.1)

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

--
-- Data for Name: main_category; Type: TABLE DATA; Schema: public; Owner: enfdb
--

COPY public.main_category (id, name, slug) FROM stdin;
1	jacket	jacket
\.


--
-- Data for Name: main_product; Type: TABLE DATA; Schema: public; Owner: enfdb
--

COPY public.main_product (id, name, slug, color, price, description, main_image, created_at, updated_at, category_id) FROM stdin;
1	THE BULLY JACKET	the-bully-jacket	BLACK	4550.00	ZIP-FRONT MOTORCYCLE JACKET IN TUMBLED COWHIDE. VISCOSE TWILL LINING. SPREAD COLLAR.SHOULDER AND ELBOW PANEL DETAILING. ZIP CLOSURE WELT POCKETS AT WAIST. LEATHER ZIP EXPANSION PANEL AT WRISTS. TONAL EMBROIDERED ARTWORK AT FRONT AND BACK. MADE IN ITALY.	products/main/bully_jacket_front.png	2025-08-27 17:21:28.717328+05	2025-08-27 17:21:28.717336+05	1
\.


--
-- Data for Name: main_productimage; Type: TABLE DATA; Schema: public; Owner: enfdb
--

COPY public.main_productimage (id, image, product_id) FROM stdin;
1	products/extra/bully_jacket_back.png	1
2	products/extra/bully_jacket_front_man.jpg	1
3	products/extra/bully_jacket_back_man.jpg.jpg	1
4	products/extra/bully_jacket_front.png	1
\.


--
-- Data for Name: main_size; Type: TABLE DATA; Schema: public; Owner: enfdb
--

COPY public.main_size (id, name) FROM stdin;
1	M
2	L
3	S
4	XL
5	XXL
\.


--
-- Data for Name: main_productsize; Type: TABLE DATA; Schema: public; Owner: enfdb
--

COPY public.main_productsize (id, stock, product_id, size_id) FROM stdin;
1	100	1	3
2	100	1	1
3	100	1	2
4	100	1	4
\.


--
-- Name: main_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enfdb
--

SELECT pg_catalog.setval('public.main_category_id_seq', 1, true);


--
-- Name: main_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enfdb
--

SELECT pg_catalog.setval('public.main_product_id_seq', 1, true);


--
-- Name: main_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enfdb
--

SELECT pg_catalog.setval('public.main_productimage_id_seq', 4, true);


--
-- Name: main_productsize_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enfdb
--

SELECT pg_catalog.setval('public.main_productsize_id_seq', 4, true);


--
-- Name: main_size_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enfdb
--

SELECT pg_catalog.setval('public.main_size_id_seq', 5, true);


--
-- PostgreSQL database dump complete
--

