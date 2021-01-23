--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

-- Started on 2021-01-23 16:25:24

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 79350)
-- Name: weather; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.weather (
    id integer NOT NULL,
    weather character varying(60),
    temperature double precision,
    tempmin double precision,
    tempmax double precision,
    feelslike double precision,
    pressure double precision,
    humidity double precision,
    visibility double precision,
    windspeed double precision,
    winddeg double precision,
    cloudiness double precision,
    dt timestamp without time zone
);


ALTER TABLE public.weather OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 79353)
-- Name: weather_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.weather_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weather_id_seq OWNER TO postgres;

--
-- TOC entry 2800 (class 0 OID 0)
-- Dependencies: 197
-- Name: weather_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.weather_id_seq OWNED BY public.weather.id;


--
-- TOC entry 2669 (class 2604 OID 79355)
-- Name: weather id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weather ALTER COLUMN id SET DEFAULT nextval('public.weather_id_seq'::regclass);


--
-- TOC entry 2793 (class 0 OID 79350)
-- Dependencies: 196
-- Data for Name: weather; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.weather VALUES (1, 'Clear', 23.239999999999998, 20, 25, 23.800000000000001, 1017, 64, 10000, 2.0600000000000001, 320, 0, '2021-01-19 07:43:09');
INSERT INTO public.weather VALUES (2, 'Clear', 24.329999999999998, 23, 26.109999999999999, 23.469999999999999, 1017, 53, 10000, 3.0899999999999999, 330, 0, '2021-01-19 08:13:09');
INSERT INTO public.weather VALUES (3, 'Clear', 25.109999999999999, 23, 26.109999999999999, 24.510000000000002, 1017, 53, 10000, 3.0899999999999999, 330, 0, '2021-01-19 08:43:10');
INSERT INTO public.weather VALUES (4, 'Clear', 26.109999999999999, 26.109999999999999, 26.109999999999999, 26.18, 1019, 45, 10000, 1.3400000000000001, 359, 0, '2021-01-19 09:13:09');
INSERT INTO public.weather VALUES (5, 'Clear', 27.739999999999998, 27, 28.329999999999998, 26.25, 1018, 47, 10000, 4.6299999999999999, 320, 0, '2021-01-19 10:36:29');
INSERT INTO public.weather VALUES (6, 'Clear', 28.460000000000001, 27, 29.440000000000001, 27.219999999999999, 1018, 47, 10000, 4.6299999999999999, 320, 0, '2021-01-19 11:06:29');
INSERT INTO public.weather VALUES (7, 'Clear', 29.809999999999999, 29.440000000000001, 30, 27.039999999999999, 1018, 35, 10000, 5.1399999999999997, 321, 0, '2021-01-19 11:36:29');
INSERT INTO public.weather VALUES (8, 'Clear', 30, 30, 30, 27.289999999999999, 1018, 35, 10000, 5.1399999999999997, 321, 0, '2021-01-19 12:06:32');
INSERT INTO public.weather VALUES (9, 'Clear', 30.789999999999999, 30, 31.670000000000002, 29.309999999999999, 1018, 37, 10000, 4.1200000000000001, 340, 0, '2021-01-19 12:36:29');
INSERT INTO public.weather VALUES (10, 'Clear', 31.18, 30, 32.219999999999999, 29.82, 1018, 37, 10000, 4.1200000000000001, 340, 0, '2021-01-19 13:06:29');
INSERT INTO public.weather VALUES (11, 'Clear', 32.159999999999997, 31.670000000000002, 32.780000000000001, 31.25, 1017, 31, 10000, 2.5699999999999998, 360, 0, '2021-01-19 15:36:29');
INSERT INTO public.weather VALUES (12, 'Clear', 32.450000000000003, 32, 32.780000000000001, 31.620000000000001, 1017, 31, 10000, 2.5699999999999998, 360, 0, '2021-01-19 16:06:32');
INSERT INTO public.weather VALUES (13, 'Clear', 32.450000000000003, 32, 32.780000000000001, 31.579999999999998, 1016, 33, 10000, 3.0899999999999999, 50, 0, '2021-01-19 16:36:29');
INSERT INTO public.weather VALUES (14, 'Clear', 32.450000000000003, 32, 32.780000000000001, 31.579999999999998, 1016, 33, 10000, 3.0899999999999999, 50, 0, '2021-01-19 17:06:29');
INSERT INTO public.weather VALUES (15, 'Clear', 32.299999999999997, 31.670000000000002, 33.329999999999998, 31.07, 1016, 31, 10000, 3.0899999999999999, 50, 0, '2021-01-19 17:36:29');
INSERT INTO public.weather VALUES (16, 'Clear', 32.880000000000003, 32, 33.329999999999998, 31.809999999999999, 1016, 31, 10000, 3.0899999999999999, 50, 0, '2021-01-19 18:06:29');
INSERT INTO public.weather VALUES (17, 'Clear', 32.450000000000003, 32, 32.780000000000001, 31.699999999999999, 1015, 27, 10000, 1.54, 0, 0, '2021-01-19 18:31:40');
INSERT INTO public.weather VALUES (18, 'Clear', 31.440000000000001, 30, 32.780000000000001, 29.050000000000001, 1015, 32, 10000, 4.6299999999999999, 90, 0, '2021-01-19 19:06:29');
INSERT INTO public.weather VALUES (19, 'Clear', 30.780000000000001, 30, 32.219999999999999, 28.210000000000001, 1015, 32, 10000, 4.6299999999999999, 90, 0, '2021-01-19 19:36:29');
INSERT INTO public.weather VALUES (20, 'Clear', 29.57, 28.890000000000001, 30.559999999999999, 27.68, 1016, 34, 10000, 3.6000000000000001, 70, 0, '2021-01-19 20:06:30');
INSERT INTO public.weather VALUES (21, 'Clear', 28.899999999999999, 28.329999999999998, 30, 26.829999999999998, 1016, 34, 10000, 3.6000000000000001, 70, 0, '2021-01-19 20:36:29');
INSERT INTO public.weather VALUES (22, 'Clear', 28.370000000000001, 27.780000000000001, 29.440000000000001, 27.440000000000001, 1016, 44, 10000, 3.6000000000000001, 80, 0, '2021-01-19 21:06:30');
INSERT INTO public.weather VALUES (23, 'Clear', 28.030000000000001, 27.219999999999999, 28.890000000000001, 26.989999999999998, 1016, 44, 10000, 3.6000000000000001, 80, 0, '2021-01-19 21:36:30');
INSERT INTO public.weather VALUES (24, 'Clear', 27.510000000000002, 26.670000000000002, 28.329999999999998, 27.030000000000001, 1017, 47, 10000, 3.0899999999999999, 70, 0, '2021-01-19 22:06:30');
INSERT INTO public.weather VALUES (25, 'Clear', 27.280000000000001, 26.670000000000002, 28.329999999999998, 26.719999999999999, 1017, 47, 10000, 3.0899999999999999, 70, 0, '2021-01-19 22:36:30');
INSERT INTO public.weather VALUES (26, 'Clear', 26.870000000000001, 26, 27.780000000000001, 26.260000000000002, 1017, 57, 10000, 4.6299999999999999, 70, 0, '2021-01-19 23:06:31');
INSERT INTO public.weather VALUES (27, 'Clear', 26.66, 25.559999999999999, 27.780000000000001, 25.969999999999999, 1017, 57, 10000, 4.6299999999999999, 70, 0, '2021-01-19 23:36:29');
INSERT INTO public.weather VALUES (28, 'Clear', 26.420000000000002, 25.559999999999999, 27.780000000000001, 26, 1017, 57, 10000, 4.1200000000000001, 70, 0, '2021-01-20 00:06:30');
INSERT INTO public.weather VALUES (29, 'Clear', 26.32, 25.559999999999999, 27.219999999999999, 25.859999999999999, 1017, 57, 10000, 4.1200000000000001, 70, 0, '2021-01-20 00:36:30');
INSERT INTO public.weather VALUES (30, 'Clear', 25.899999999999999, 25, 26.670000000000002, 25.719999999999999, 1017, 61, 10000, 4.1200000000000001, 60, 0, '2021-01-20 01:06:30');
INSERT INTO public.weather VALUES (31, 'Clear', 25.789999999999999, 25, 26.670000000000002, 25.57, 1017, 61, 10000, 4.1200000000000001, 60, 0, '2021-01-20 01:36:30');
INSERT INTO public.weather VALUES (32, 'Clear', 25.25, 24, 26.109999999999999, 25.800000000000001, 1017, 60, 10000, 2.5699999999999998, 40, 0, '2021-01-20 02:06:31');
INSERT INTO public.weather VALUES (33, 'Clear', 25.149999999999999, 24, 26.109999999999999, 25.66, 1017, 60, 10000, 2.5699999999999998, 40, 0, '2021-01-20 02:36:29');
INSERT INTO public.weather VALUES (34, 'Clear', 24.32, 22, 25.559999999999999, 25.68, 1017, 68, 10000, 2.0600000000000001, 50, 0, '2021-01-20 03:06:29');
INSERT INTO public.weather VALUES (35, 'Clear', 24.23, 22, 25.559999999999999, 25.559999999999999, 1017, 68, 10000, 2.0600000000000001, 50, 0, '2021-01-20 03:36:30');
INSERT INTO public.weather VALUES (36, 'Clear', 23.960000000000001, 22, 25.559999999999999, 25.539999999999999, 1017, 68, 10000, 1.54, 50, 0, '2021-01-20 04:04:24');
INSERT INTO public.weather VALUES (37, 'Clear', 23.640000000000001, 22, 25.559999999999999, 25.100000000000001, 1017, 68, 10000, 1.54, 50, 0, '2021-01-20 04:36:30');
INSERT INTO public.weather VALUES (38, 'Clear', 23.02, 20, 25, 25.43, 1017, 77, 10000, 1.03, 30, 0, '2021-01-20 05:06:30');
INSERT INTO public.weather VALUES (39, 'Clear', 23.050000000000001, 20, 25, 25.469999999999999, 1017, 77, 10000, 1.03, 30, 0, '2021-01-20 05:36:29');
INSERT INTO public.weather VALUES (40, 'Clear', 22.57, 20, 24.440000000000001, 24.420000000000002, 1018, 73, 10000, 1.03, 30, 0, '2021-01-20 06:06:29');
INSERT INTO public.weather VALUES (41, 'Clear', 22.84, 20, 24.440000000000001, 24.800000000000001, 1018, 73, 10000, 1.03, 30, 0, '2021-01-20 06:36:29');
INSERT INTO public.weather VALUES (42, 'Clear', 23.870000000000001, 22, 25, 25.77, 1019, 68, 10000, 1.03, 50, 0, '2021-01-20 07:06:30');
INSERT INTO public.weather VALUES (43, 'Clear', 24.32, 22, 25.559999999999999, 26.399999999999999, 1019, 68, 10000, 1.03, 50, 0, '2021-01-20 07:36:29');
INSERT INTO public.weather VALUES (44, 'Clear', 25.57, 25, 26.109999999999999, 25.48, 1019, 53, 10000, 2.5699999999999998, 20, 0, '2021-01-20 08:06:29');
INSERT INTO public.weather VALUES (45, 'Clear', 26.010000000000002, 25, 26.670000000000002, 26.079999999999998, 1019, 53, 10000, 2.5699999999999998, 20, 0, '2021-01-20 08:36:29');
INSERT INTO public.weather VALUES (46, 'Clear', 26.370000000000001, 25, 27.219999999999999, 26.559999999999999, 1019, 53, 10000, 2.5699999999999998, 20, 0, '2021-01-20 09:06:29');
INSERT INTO public.weather VALUES (47, 'Clear', 27.52, 26, 28.890000000000001, 25.960000000000001, 1009, 44, 10000, 4.1200000000000001, 10, 0, '2021-01-20 09:36:29');
INSERT INTO public.weather VALUES (48, 'Clear', 28.399999999999999, 27.780000000000001, 28.890000000000001, 26.100000000000001, 1019, 36, 10000, 4.1200000000000001, 20, 0, '2021-01-20 10:06:30');
INSERT INTO public.weather VALUES (49, 'Clear', 29.52, 28, 32.219999999999999, 27.52, 1019, 36, 10000, 4.1200000000000001, 20, 0, '2021-01-20 10:36:29');
INSERT INTO public.weather VALUES (50, 'Clear', 29.32, 28.890000000000001, 30, 28.030000000000001, 1019, 39, 10000, 3.6000000000000001, 50, 0, '2021-01-20 11:06:40');
INSERT INTO public.weather VALUES (51, 'Clear', 30.489999999999998, 29, 32.780000000000001, 29.57, 1019, 39, 10000, 3.6000000000000001, 50, 0, '2021-01-20 11:36:30');
INSERT INTO public.weather VALUES (52, 'Clear', 30.329999999999998, 29.440000000000001, 31, 29.789999999999999, 1019, 37, 10000, 2.5699999999999998, 50, 0, '2021-01-20 12:06:30');
INSERT INTO public.weather VALUES (53, 'Clear', 31.079999999999998, 30.559999999999999, 31.670000000000002, 30.77, 1019, 37, 10000, 2.5699999999999998, 50, 0, '2021-01-20 12:36:30');
INSERT INTO public.weather VALUES (54, 'Clear', 31.370000000000001, 31, 31.670000000000002, 31.239999999999998, 1018, 40, 10000, 3.0899999999999999, 70, 0, '2021-01-20 13:06:30');
INSERT INTO public.weather VALUES (55, 'Clear', 32.079999999999998, 31, 32.780000000000001, 32.200000000000003, 1018, 40, 10000, 3.0899999999999999, 70, 0, '2021-01-20 13:36:30');
INSERT INTO public.weather VALUES (56, 'Clear', 32.439999999999998, 32, 32.780000000000001, 31.57, 1018, 33, 10000, 3.0899999999999999, 60, 0, '2021-01-20 14:06:30');
INSERT INTO public.weather VALUES (57, 'Clear', 32.590000000000003, 32, 33.329999999999998, 31.760000000000002, 1018, 33, 10000, 3.0899999999999999, 60, 0, '2021-01-20 14:36:30');
INSERT INTO public.weather VALUES (58, 'Clear', 32.670000000000002, 31.670000000000002, 33.329999999999998, 31.219999999999999, 1017, 29, 10000, 3.0899999999999999, 80, 0, '2021-01-20 15:06:29');
INSERT INTO public.weather VALUES (59, 'Clear', 32.670000000000002, 31.670000000000002, 33.329999999999998, 31.219999999999999, 1017, 29, 10000, 3.0899999999999999, 80, 0, '2021-01-20 15:36:30');
INSERT INTO public.weather VALUES (60, 'Clear', 32.009999999999998, 31.109999999999999, 32.780000000000001, 29.93, 1017, 33, 10000, 4.6299999999999999, 100, 0, '2021-01-20 16:06:30');
INSERT INTO public.weather VALUES (61, 'Clear', 31.859999999999999, 30.559999999999999, 32.780000000000001, 29.739999999999998, 1017, 33, 10000, 4.6299999999999999, 100, 0, '2021-01-20 16:36:29');
INSERT INTO public.weather VALUES (62, 'Clear', 31.48, 30.559999999999999, 32.780000000000001, 27.719999999999999, 1017, 30, 10000, 6.1699999999999999, 100, 0, '2021-01-20 17:06:29');
INSERT INTO public.weather VALUES (63, 'Clear', 31.199999999999999, 30, 32.219999999999999, 27.359999999999999, 1017, 30, 10000, 6.1699999999999999, 100, 0, '2021-01-20 17:36:29');
INSERT INTO public.weather VALUES (64, 'Clear', 30.109999999999999, 28.890000000000001, 31.109999999999999, 26.899999999999999, 1016, 39, 10000, 6.6900000000000004, 100, 0, '2021-01-20 18:06:29');
INSERT INTO public.weather VALUES (65, 'Clear', 29.760000000000002, 28.329999999999998, 30.559999999999999, 26.440000000000001, 1016, 39, 10000, 6.6900000000000004, 100, 0, '2021-01-20 18:36:33');
INSERT INTO public.weather VALUES (66, 'Clear', 28.469999999999999, 27.219999999999999, 29.440000000000001, 27.02, 1016, 51, 10000, 5.6600000000000001, 90, 0, '2021-01-20 19:06:29');
INSERT INTO public.weather VALUES (67, 'Clear', 27.91, 26.670000000000002, 28.890000000000001, 26.260000000000002, 1016, 51, 10000, 5.6600000000000001, 90, 0, '2021-01-20 19:36:29');
INSERT INTO public.weather VALUES (68, 'Clear', 27.170000000000002, 26.109999999999999, 27.780000000000001, 24.050000000000001, 1016, 50, 10000, 7.2000000000000002, 90, 0, '2021-01-20 20:06:30');
INSERT INTO public.weather VALUES (69, 'Clear', 26.829999999999998, 26.109999999999999, 27.219999999999999, 23.600000000000001, 1016, 50, 10000, 7.2000000000000002, 90, 0, '2021-01-20 20:36:29');
INSERT INTO public.weather VALUES (70, 'Clear', 26.300000000000001, 25.559999999999999, 26.670000000000002, 24.030000000000001, 1017, 57, 10000, 6.6900000000000004, 90, 0, '2021-01-20 21:06:31');
INSERT INTO public.weather VALUES (71, 'Clear', 26.079999999999998, 25.559999999999999, 26.670000000000002, 23.73, 1017, 57, 10000, 6.6900000000000004, 90, 0, '2021-01-20 21:36:29');
INSERT INTO public.weather VALUES (72, 'Clear', 25.75, 25, 26.109999999999999, 22.920000000000002, 1017, 57, 10000, 7.2000000000000002, 90, 0, '2021-01-20 22:06:30');
INSERT INTO public.weather VALUES (73, 'Clear', 25.739999999999998, 25, 26.109999999999999, 22.91, 1017, 57, 10000, 7.2000000000000002, 90, 0, '2021-01-20 22:36:30');
INSERT INTO public.weather VALUES (74, 'Clear', 25.620000000000001, 25, 26.109999999999999, 22.739999999999998, 1017, 57, 10000, 7.2000000000000002, 90, 0, '2021-01-20 23:06:38');
INSERT INTO public.weather VALUES (75, 'Clear', 25.75, 25, 26.109999999999999, 25.16, 1018, 61, 10000, 4.6299999999999999, 90, 0, '2021-01-20 23:36:30');
INSERT INTO public.weather VALUES (76, 'Clear', 25.760000000000002, 25, 26.109999999999999, 24.09, 1018, 61, 10000, 6.1699999999999999, 70, 0, '2021-01-21 00:06:30');
INSERT INTO public.weather VALUES (77, 'Clear', 25.75, 25, 26.109999999999999, 24.079999999999998, 1018, 61, 10000, 6.1699999999999999, 70, 0, '2021-01-21 00:36:29');
INSERT INTO public.weather VALUES (78, 'Clear', 25.440000000000001, 25, 26.109999999999999, 24.370000000000001, 1018, 61, 10000, 5.1399999999999997, 50, 0, '2021-01-21 01:06:30');
INSERT INTO public.weather VALUES (79, 'Clear', 25.219999999999999, 24.440000000000001, 26.109999999999999, 24.059999999999999, 1018, 61, 10000, 5.1399999999999997, 50, 0, '2021-01-21 01:36:32');
INSERT INTO public.weather VALUES (80, 'Clear', 24.920000000000002, 24, 25.559999999999999, 24.32, 1018, 64, 10000, 4.6299999999999999, 30, 0, '2021-01-21 02:06:30');
INSERT INTO public.weather VALUES (81, 'Clear', 24.59, 23.890000000000001, 25.559999999999999, 23.859999999999999, 1018, 64, 10000, 4.6299999999999999, 30, 0, '2021-01-21 02:36:29');
INSERT INTO public.weather VALUES (82, 'Clear', 23.75, 22, 25, 23.09, 1018, 68, 10000, 4.6299999999999999, 40, 0, '2021-01-21 03:06:30');
INSERT INTO public.weather VALUES (83, 'Clear', 23.539999999999999, 22, 25, 22.789999999999999, 1018, 68, 10000, 4.6299999999999999, 40, 0, '2021-01-21 03:36:29');
INSERT INTO public.weather VALUES (84, 'Clear', 23.170000000000002, 22, 24.440000000000001, 23.829999999999998, 1018, 73, 10000, 3.0899999999999999, 40, 0, '2021-01-21 04:05:34');
INSERT INTO public.weather VALUES (85, 'Rain', 22.739999999999998, 21.670000000000002, 23.890000000000001, 23.219999999999999, 1018, 73, 10000, 3.0899999999999999, 40, 0, '2021-01-21 04:36:34');
INSERT INTO public.weather VALUES (86, 'Clear', 22.43, 21, 23.890000000000001, 23.23, 1018, 78, 10000, 3.0899999999999999, 50, 0, '2021-01-21 05:06:30');
INSERT INTO public.weather VALUES (87, 'Clear', 22.100000000000001, 21, 23.329999999999998, 22.77, 1018, 78, 10000, 3.0899999999999999, 50, 0, '2021-01-21 05:32:48');
INSERT INTO public.weather VALUES (88, 'Rain', 21.68, 20, 23.329999999999998, 22.960000000000001, 1019, 83, 10000, 2.5699999999999998, 50, 0, '2021-01-21 06:06:31');
INSERT INTO public.weather VALUES (89, 'Rain', 21.899999999999999, 20, 23.329999999999998, 23.280000000000001, 1019, 83, 10000, 2.5699999999999998, 50, 0, '2021-01-21 06:36:30');
INSERT INTO public.weather VALUES (90, 'Clear', 22.300000000000001, 21, 23.329999999999998, 23.859999999999999, 1020, 83, 10000, 2.5699999999999998, 30, 0, '2021-01-21 07:06:30');
INSERT INTO public.weather VALUES (91, 'Rain', 22.440000000000001, 21, 23.329999999999998, 24.059999999999999, 1020, 83, 10000, 2.5699999999999998, 30, 0, '2021-01-21 07:33:28');
INSERT INTO public.weather VALUES (92, 'Rain', 23.010000000000002, 22, 23.329999999999998, 23.34, 1020, 78, 10000, 4.1200000000000001, 30, 0, '2021-01-21 08:06:30');
INSERT INTO public.weather VALUES (93, 'Clear', 23.460000000000001, 22, 24.440000000000001, 23.989999999999998, 1020, 78, 10000, 4.1200000000000001, 30, 0, '2021-01-21 08:36:30');
INSERT INTO public.weather VALUES (94, 'Clear', 24.620000000000001, 24, 25, 25.489999999999998, 1020, 69, 10000, 3.0899999999999999, 50, 0, '2021-01-21 09:06:30');
INSERT INTO public.weather VALUES (95, 'Clear', 24.77, 24, 25.559999999999999, 25.699999999999999, 1020, 69, 10000, 3.0899999999999999, 50, 0, '2021-01-21 09:36:30');
INSERT INTO public.weather VALUES (96, 'Clear', 25.780000000000001, 25, 27.219999999999999, 25.120000000000001, 1020, 57, 10000, 4.1200000000000001, 50, 0, '2021-01-21 10:06:30');
INSERT INTO public.weather VALUES (97, 'Clear', 25.920000000000002, 25, 27.219999999999999, 25.309999999999999, 1020, 57, 10000, 4.1200000000000001, 50, 0, '2021-01-21 10:36:30');
INSERT INTO public.weather VALUES (98, 'Clear', 27.359999999999999, 26, 28.890000000000001, 27.899999999999999, 1020, 65, 10000, 4.6299999999999999, 70, 0, '2021-01-21 12:06:34');
INSERT INTO public.weather VALUES (99, 'Clear', 28.640000000000001, 27, 30.559999999999999, 28.030000000000001, 1020, 57, 10000, 5.6600000000000001, 70, 0, '2021-01-21 12:36:31');
INSERT INTO public.weather VALUES (100, 'Clear', 28.300000000000001, 27, 29.440000000000001, 27.550000000000001, 1020, 57, 10000, 5.6600000000000001, 70, 0, '2021-01-21 13:02:58');
INSERT INTO public.weather VALUES (101, 'Clear', 29.289999999999999, 28.890000000000001, 30, 28.120000000000001, 1019, 48, 10000, 5.1399999999999997, 70, 0, '2021-01-21 13:36:30');
INSERT INTO public.weather VALUES (102, 'Clear', 30.260000000000002, 29.440000000000001, 31.109999999999999, 27.170000000000002, 1019, 42, 10000, 7.2000000000000002, 70, 0, '2021-01-21 14:06:30');
INSERT INTO public.weather VALUES (103, 'Clear', 30.149999999999999, 29.440000000000001, 31.109999999999999, 27.02, 1019, 42, 10000, 7.2000000000000002, 70, 0, '2021-01-21 14:36:30');
INSERT INTO public.weather VALUES (104, 'Clear', 30.52, 29.440000000000001, 31.670000000000002, 29.390000000000001, 1018, 45, 10000, 5.1399999999999997, 110, 0, '2021-01-21 15:06:31');
INSERT INTO public.weather VALUES (105, 'Clear', 30.370000000000001, 30, 31.109999999999999, 28.460000000000001, 1018, 45, 10000, 6.1699999999999999, 90, 0, '2021-01-21 16:36:33');
INSERT INTO public.weather VALUES (106, 'Clear', 30.559999999999999, 30, 31.670000000000002, 28.719999999999999, 1018, 45, 10000, 6.1699999999999999, 90, 0, '2021-01-21 17:02:47');
INSERT INTO public.weather VALUES (107, 'Clear', 30.350000000000001, 29.440000000000001, 31.670000000000002, 28.07, 1017, 45, 10000, 6.6900000000000004, 90, 0, '2021-01-21 17:36:14');
INSERT INTO public.weather VALUES (108, 'Clear', 29.960000000000001, 28.890000000000001, 31.109999999999999, 27.539999999999999, 1017, 45, 10000, 6.6900000000000004, 90, 0, '2021-01-21 18:05:48');
INSERT INTO public.weather VALUES (109, 'Clear', 29.309999999999999, 27.780000000000001, 30.559999999999999, 25.989999999999998, 1017, 48, 10000, 8.2300000000000004, 90, 0, '2021-01-21 18:36:30');
INSERT INTO public.weather VALUES (110, 'Clear', 28.879999999999999, 27.780000000000001, 29.440000000000001, 25.399999999999999, 1017, 48, 10000, 8.2300000000000004, 90, 0, '2021-01-21 19:05:23');
INSERT INTO public.weather VALUES (111, 'Clear', 28.09, 27.219999999999999, 28.890000000000001, 26.170000000000002, 1017, 57, 10000, 7.2000000000000002, 90, 0, '2021-01-21 19:36:30');
INSERT INTO public.weather VALUES (112, 'Clear', 26.899999999999999, 26, 28.329999999999998, 26.73, 1017, 73, 10000, 6.6900000000000004, 90, 0, '2021-01-21 20:06:38');
INSERT INTO public.weather VALUES (113, 'Clear', 26.68, 25.559999999999999, 27.780000000000001, 26.399999999999999, 1017, 73, 10000, 6.6900000000000004, 90, 0, '2021-01-21 20:36:14');
INSERT INTO public.weather VALUES (114, 'Clear', 26.440000000000001, 25.559999999999999, 27.219999999999999, 26.609999999999999, 1018, 78, 10000, 6.6900000000000004, 110, 0, '2021-01-21 21:06:30');
INSERT INTO public.weather VALUES (115, 'Clear', 26.210000000000001, 25.559999999999999, 26.670000000000002, 26.260000000000002, 1018, 78, 10000, 6.6900000000000004, 110, 0, '2021-01-21 21:36:30');
INSERT INTO public.weather VALUES (116, 'Clear', 26.210000000000001, 25.559999999999999, 26.670000000000002, 26.620000000000001, 1018, 78, 10000, 6.1699999999999999, 100, 0, '2021-01-21 22:06:30');
INSERT INTO public.weather VALUES (117, 'Clear', 26.109999999999999, 25.559999999999999, 26.670000000000002, 26.469999999999999, 1018, 78, 10000, 6.1699999999999999, 100, 0, '2021-01-21 22:36:41');
INSERT INTO public.weather VALUES (118, 'Clear', 26.219999999999999, 25.559999999999999, 26.670000000000002, 26.280000000000001, 1019, 78, 10000, 6.6900000000000004, 100, 0, '2021-01-21 23:06:46');
INSERT INTO public.weather VALUES (119, 'Clear', 25.579999999999998, 25, 26.109999999999999, 24.989999999999998, 1019, 65, 10000, 5.1399999999999997, 60, 0, '2021-01-22 01:28:02');
INSERT INTO public.weather VALUES (120, 'Clear', 25.129999999999999, 24.440000000000001, 25.559999999999999, 24.359999999999999, 1019, 65, 10000, 5.1399999999999997, 60, 0, '2021-01-22 01:58:08');
INSERT INTO public.weather VALUES (121, 'Clear', 24.710000000000001, 24, 25.559999999999999, 23.460000000000001, 1019, 69, 10000, 6.1699999999999999, 60, 0, '2021-01-22 02:27:29');
INSERT INTO public.weather VALUES (122, 'Clear', 24.379999999999999, 23.890000000000001, 25, 22.989999999999998, 1019, 69, 10000, 6.1699999999999999, 60, 0, '2021-01-22 02:57:59');
INSERT INTO public.weather VALUES (123, 'Clear', 23.739999999999998, 23, 24.440000000000001, 22.829999999999998, 1019, 73, 10000, 5.6600000000000001, 50, 0, '2021-01-22 03:27:59');
INSERT INTO public.weather VALUES (124, 'Clear', 23.510000000000002, 22.780000000000001, 24.440000000000001, 22.510000000000002, 1019, 73, 10000, 5.6600000000000001, 50, 0, '2021-01-22 03:58:00');
INSERT INTO public.weather VALUES (125, 'Clear', 22.690000000000001, 21, 23.890000000000001, 21.809999999999999, 1019, 78, 10000, 5.6600000000000001, 40, 0, '2021-01-22 04:25:52');
INSERT INTO public.weather VALUES (126, 'Clear', 22.350000000000001, 21, 23.329999999999998, 21.32, 1019, 78, 10000, 5.6600000000000001, 40, 0, '2021-01-22 04:58:04');
INSERT INTO public.weather VALUES (127, 'Clear', 22.239999999999998, 21, 23.329999999999998, 21.25, 1019, 83, 10000, 6.1699999999999999, 50, 0, '2021-01-22 05:28:00');
INSERT INTO public.weather VALUES (128, 'Clear', 22, 21, 23.329999999999998, 20.899999999999999, 1019, 83, 10000, 6.1699999999999999, 50, 0, '2021-01-22 05:57:59');
INSERT INTO public.weather VALUES (129, 'Clear', 22.02, 21, 23.329999999999998, 21.649999999999999, 1020, 83, 10000, 5.1399999999999997, 40, 0, '2021-01-22 06:26:13');
INSERT INTO public.weather VALUES (130, 'Clear', 22.710000000000001, 21, 24.440000000000001, 22.649999999999999, 1020, 83, 10000, 5.1399999999999997, 40, 0, '2021-01-22 06:58:00');
INSERT INTO public.weather VALUES (131, 'Clear', 22.719999999999999, 21, 24.440000000000001, 24.199999999999999, 1020, 88, 10000, 3.6000000000000001, 40, 0, '2021-01-22 07:28:01');
INSERT INTO public.weather VALUES (132, 'Clear', 23.300000000000001, 21, 25, 25.059999999999999, 1020, 88, 10000, 3.6000000000000001, 40, 0, '2021-01-22 07:58:00');
INSERT INTO public.weather VALUES (133, 'Clear', 23.870000000000001, 23, 25, 23.870000000000001, 1021, 78, 10000, 5.1399999999999997, 50, 0, '2021-01-22 08:28:00');
INSERT INTO public.weather VALUES (134, 'Clear', 24.460000000000001, 23, 26.109999999999999, 24.73, 1021, 78, 10000, 5.1399999999999997, 50, 0, '2021-01-22 08:57:59');
INSERT INTO public.weather VALUES (135, 'Clear', 24.969999999999999, 23.890000000000001, 26.670000000000002, 25.68, 1021, 73, 10000, 4.1200000000000001, 40, 0, '2021-01-22 09:27:59');
INSERT INTO public.weather VALUES (136, 'Clear', 25.68, 24, 27.219999999999999, 26.719999999999999, 1021, 73, 10000, 4.1200000000000001, 40, 0, '2021-01-22 09:53:30');
INSERT INTO public.weather VALUES (137, 'Clear', 26.690000000000001, 25.559999999999999, 27.780000000000001, 27.289999999999999, 1021, 65, 10000, 4.1200000000000001, 20, 0, '2021-01-22 10:28:00');
INSERT INTO public.weather VALUES (138, 'Clear', 27.280000000000001, 26, 28.890000000000001, 28.149999999999999, 1021, 65, 10000, 4.1200000000000001, 20, 0, '2021-01-22 10:57:59');
INSERT INTO public.weather VALUES (139, 'Clear', 28.210000000000001, 27, 29.440000000000001, 28.649999999999999, 1021, 61, 10000, 4.6299999999999999, 40, 0, '2021-01-22 11:27:09');
INSERT INTO public.weather VALUES (140, 'Clear', 28.510000000000002, 27, 30, 29.079999999999998, 1021, 61, 10000, 4.6299999999999999, 40, 0, '2021-01-22 11:57:59');
INSERT INTO public.weather VALUES (141, 'Clouds', 29.370000000000001, 28.329999999999998, 30.559999999999999, 30.289999999999999, 1020, 58, 10000, 4.1200000000000001, 50, 20, '2021-01-22 12:23:16');
INSERT INTO public.weather VALUES (142, 'Clouds', 29.809999999999999, 28.329999999999998, 31.109999999999999, 30.93, 1020, 58, 10000, 4.1200000000000001, 50, 20, '2021-01-22 12:57:59');
INSERT INTO public.weather VALUES (143, 'Clouds', 30.149999999999999, 29.440000000000001, 30.559999999999999, 30.870000000000001, 1019, 54, 10000, 4.1200000000000001, 50, 20, '2021-01-22 13:28:00');
INSERT INTO public.weather VALUES (144, 'Clouds', 30.600000000000001, 29.440000000000001, 31.670000000000002, 31.510000000000002, 1019, 54, 10000, 4.1200000000000001, 50, 20, '2021-01-22 13:58:00');
INSERT INTO public.weather VALUES (145, 'Clear', 31.09, 30, 31.670000000000002, 30.440000000000001, 1019, 42, 10000, 4.1200000000000001, 40, 0, '2021-01-22 14:28:04');
INSERT INTO public.weather VALUES (146, 'Clear', 31.699999999999999, 31, 32.780000000000001, 31.27, 1019, 42, 10000, 4.1200000000000001, 40, 0, '2021-01-22 14:58:00');
INSERT INTO public.weather VALUES (147, 'Clear', 31.690000000000001, 31, 32.780000000000001, 31.620000000000001, 1018, 42, 10000, 3.6000000000000001, 60, 0, '2021-01-22 15:28:00');
INSERT INTO public.weather VALUES (148, 'Clear', 31.850000000000001, 31, 33.329999999999998, 31.84, 1018, 42, 10000, 3.6000000000000001, 60, 0, '2021-01-22 15:54:06');
INSERT INTO public.weather VALUES (149, 'Clear', 31.920000000000002, 30, 33.329999999999998, 32.090000000000003, 1018, 43, 10000, 3.6000000000000001, 70, 0, '2021-01-22 16:25:21');
INSERT INTO public.weather VALUES (150, 'Clear', 31.920000000000002, 30, 33.329999999999998, 32.090000000000003, 1018, 43, 10000, 3.6000000000000001, 70, 0, '2021-01-22 16:57:59');
INSERT INTO public.weather VALUES (151, 'Clear', 31.699999999999999, 30, 33.329999999999998, 30.920000000000002, 1017, 42, 10000, 4.6299999999999999, 90, 0, '2021-01-22 17:28:00');
INSERT INTO public.weather VALUES (152, 'Clear', 31.129999999999999, 29.440000000000001, 32.780000000000001, 30.140000000000001, 1017, 42, 10000, 4.6299999999999999, 90, 0, '2021-01-22 17:57:59');
INSERT INTO public.weather VALUES (153, 'Clear', 30.390000000000001, 28.890000000000001, 32.219999999999999, 29.280000000000001, 1017, 48, 10000, 5.6600000000000001, 90, 0, '2021-01-22 18:26:23');
INSERT INTO public.weather VALUES (154, 'Clear', 29.859999999999999, 28.329999999999998, 31.670000000000002, 28.539999999999999, 1017, 48, 10000, 5.6600000000000001, 90, 0, '2021-01-22 18:58:00');
INSERT INTO public.weather VALUES (155, 'Clear', 28.77, 27.219999999999999, 30, 28.02, 1016, 61, 10000, 6.6900000000000004, 90, 0, '2021-01-22 19:27:59');
INSERT INTO public.weather VALUES (156, 'Clear', 27.920000000000002, 26.670000000000002, 28.890000000000001, 26.789999999999999, 1016, 61, 10000, 6.6900000000000004, 90, 0, '2021-01-22 19:57:59');
INSERT INTO public.weather VALUES (157, 'Clear', 27.149999999999999, 26, 28.329999999999998, 27.829999999999998, 1016, 73, 10000, 5.6600000000000001, 90, 0, '2021-01-22 20:27:59');
INSERT INTO public.weather VALUES (158, 'Clear', 26.870000000000001, 26, 27.780000000000001, 27.399999999999999, 1016, 73, 10000, 5.6600000000000001, 90, 0, '2021-01-22 20:55:51');
INSERT INTO public.weather VALUES (159, 'Clear', 26.579999999999998, 26, 27.219999999999999, 27.91, 1016, 78, 10000, 5.1399999999999997, 90, 0, '2021-01-22 21:27:59');
INSERT INTO public.weather VALUES (160, 'Clear', 26.579999999999998, 26, 27.219999999999999, 27.91, 1016, 78, 10000, 5.1399999999999997, 90, 0, '2021-01-22 21:57:59');
INSERT INTO public.weather VALUES (161, 'Clear', 26.579999999999998, 26, 27.219999999999999, 28.77, 1017, 73, 10000, 3.0899999999999999, 90, 0, '2021-01-22 22:27:59');
INSERT INTO public.weather VALUES (162, 'Clear', 26.649999999999999, 26, 27.219999999999999, 28.870000000000001, 1017, 73, 10000, 3.0899999999999999, 90, 0, '2021-01-22 22:58:00');
INSERT INTO public.weather VALUES (163, 'Clear', 26.66, 26, 27.780000000000001, 28.530000000000001, 1017, 73, 10000, 3.6000000000000001, 90, 0, '2021-01-22 23:27:59');
INSERT INTO public.weather VALUES (164, 'Clear', 26.75, 26, 27.780000000000001, 28.670000000000002, 1017, 73, 10000, 3.6000000000000001, 90, 0, '2021-01-22 23:58:00');
INSERT INTO public.weather VALUES (165, 'Rain', 26.52, 25, 27.780000000000001, 29.620000000000001, 1017, 78, 10000, 2.5699999999999998, 50, 0, '2021-01-23 00:27:59');
INSERT INTO public.weather VALUES (166, 'Clear', 26.620000000000001, 25, 27.780000000000001, 29.77, 1017, 78, 10000, 2.5699999999999998, 50, 0, '2021-01-23 00:56:17');
INSERT INTO public.weather VALUES (167, 'Clear', 26.579999999999998, 25.559999999999999, 27.219999999999999, 26.780000000000001, 1017, 65, 10000, 4.6299999999999999, 50, 0, '2021-01-23 01:27:59');
INSERT INTO public.weather VALUES (168, 'Clear', 26.289999999999999, 25.559999999999999, 26.670000000000002, 26.359999999999999, 1017, 65, 10000, 4.6299999999999999, 50, 0, '2021-01-23 01:57:59');
INSERT INTO public.weather VALUES (169, 'Clear', 25.870000000000001, 25, 26.670000000000002, 28.079999999999998, 1016, 73, 10000, 2.5699999999999998, 50, 0, '2021-01-23 02:27:59');
INSERT INTO public.weather VALUES (170, 'Clear', 25.579999999999998, 24.440000000000001, 26.109999999999999, 27.66, 1016, 73, 10000, 2.5699999999999998, 50, 0, '2021-01-23 02:57:59');
INSERT INTO public.weather VALUES (171, 'Clear', 25.140000000000001, 24, 26.109999999999999, 25.57, 1016, 73, 10000, 4.6299999999999999, 50, 0, '2021-01-23 03:28:03');
INSERT INTO public.weather VALUES (172, 'Clear', 25.039999999999999, 24, 26.109999999999999, 25.43, 1016, 73, 10000, 4.6299999999999999, 50, 0, '2021-01-23 03:57:59');
INSERT INTO public.weather VALUES (173, 'Clear', 24.760000000000002, 24, 25.559999999999999, 25.690000000000001, 1015, 83, 10000, 5.1399999999999997, 20, 0, '2021-01-23 04:26:40');
INSERT INTO public.weather VALUES (174, 'Clear', 24.579999999999998, 23.890000000000001, 25.559999999999999, 25.420000000000002, 1015, 83, 10000, 5.1399999999999997, 20, 0, '2021-01-23 04:57:59');
INSERT INTO public.weather VALUES (175, 'Clear', 24.219999999999999, 23, 25, 26.09, 1015, 88, 10000, 4.1200000000000001, 50, 0, '2021-01-23 05:27:59');
INSERT INTO public.weather VALUES (176, 'Clear', 23.949999999999999, 23, 25, 25.68, 1015, 88, 10000, 4.1200000000000001, 50, 0, '2021-01-23 05:58:03');
INSERT INTO public.weather VALUES (177, 'Clear', 23.949999999999999, 23, 25, 25.190000000000001, 1015, 83, 10000, 4.1200000000000001, 20, 0, '2021-01-23 06:27:59');
INSERT INTO public.weather VALUES (178, 'Clear', 24.620000000000001, 23, 26.670000000000002, 26.190000000000001, 1015, 83, 10000, 4.1200000000000001, 20, 0, '2021-01-23 06:57:59');
INSERT INTO public.weather VALUES (179, 'Clear', 24.850000000000001, 24, 26.109999999999999, 26.18, 1016, 83, 10000, 4.6299999999999999, 20, 0, '2021-01-23 07:26:36');
INSERT INTO public.weather VALUES (180, 'Clear', 25.210000000000001, 24, 26.670000000000002, 26.73, 1016, 83, 10000, 4.6299999999999999, 20, 0, '2021-01-23 07:57:59');
INSERT INTO public.weather VALUES (181, 'Clear', 25.859999999999999, 25, 27.780000000000001, 26.98, 1016, 73, 10000, 4.1200000000000001, 20, 0, '2021-01-23 08:27:59');
INSERT INTO public.weather VALUES (182, 'Clear', 26.43, 25, 28.329999999999998, 27.829999999999998, 1016, 73, 10000, 4.1200000000000001, 20, 0, '2021-01-23 08:57:59');
INSERT INTO public.weather VALUES (183, 'Clear', 27.300000000000001, 25.559999999999999, 29.440000000000001, 29.129999999999999, 1017, 73, 10000, 4.1200000000000001, 20, 0, '2021-01-23 09:27:59');
INSERT INTO public.weather VALUES (184, 'Clear', 27.859999999999999, 26, 30, 29.98, 1017, 73, 10000, 4.1200000000000001, 20, 0, '2021-01-23 09:58:00');
INSERT INTO public.weather VALUES (185, 'Clear', 29.02, 27.219999999999999, 31.109999999999999, 31.960000000000001, 1016, 69, 10000, 3.0899999999999999, 350, 0, '2021-01-23 10:27:59');
INSERT INTO public.weather VALUES (186, 'Clear', 29.600000000000001, 27.780000000000001, 31.670000000000002, 32.850000000000001, 1016, 69, 10000, 3.0899999999999999, 350, 0, '2021-01-23 10:57:59');
INSERT INTO public.weather VALUES (187, 'Clear', 30.75, 28.890000000000001, 32.780000000000001, 34.340000000000003, 1016, 62, 10000, 2.0600000000000001, 0, 0, '2021-01-23 11:27:59');
INSERT INTO public.weather VALUES (188, 'Clear', 31.350000000000001, 30, 32.780000000000001, 35.25, 1016, 62, 10000, 2.0600000000000001, 0, 0, '2021-01-23 11:57:59');
INSERT INTO public.weather VALUES (189, 'Clear', 31.98, 31, 32.780000000000001, 34.149999999999999, 1015, 58, 10000, 4.1200000000000001, 10, 0, '2021-01-23 12:27:34');
INSERT INTO public.weather VALUES (190, 'Clear', 32.140000000000001, 31, 33.329999999999998, 34.399999999999999, 1015, 58, 10000, 4.1200000000000001, 10, 0, '2021-01-23 12:57:59');
INSERT INTO public.weather VALUES (191, 'Clear', 32.119999999999997, 31, 32.780000000000001, 34.729999999999997, 1015, 58, 10000, 3.6000000000000001, 40, 0, '2021-01-23 13:26:42');
INSERT INTO public.weather VALUES (192, 'Clear', 32.549999999999997, 31, 33.329999999999998, 35.380000000000003, 1015, 58, 10000, 3.6000000000000001, 40, 0, '2021-01-23 13:57:59');
INSERT INTO public.weather VALUES (193, 'Clear', 33, 32, 33.890000000000001, 34.780000000000001, 1014, 48, 10000, 3.0899999999999999, 50, 0, '2021-01-23 14:28:00');


--
-- TOC entry 2801 (class 0 OID 0)
-- Dependencies: 197
-- Name: weather_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.weather_id_seq', 193, true);


--
-- TOC entry 2671 (class 2606 OID 79357)
-- Name: weather weather_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.weather
    ADD CONSTRAINT weather_pkey PRIMARY KEY (id);


-- Completed on 2021-01-23 16:25:24

--
-- PostgreSQL database dump complete
--

