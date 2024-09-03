--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: shinji
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO shinji;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: academic_record; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academic_record (
    student_id integer,
    academic_year_id integer,
    roll_no character varying(15)
);


ALTER TABLE public.academic_record OWNER TO postgres;

--
-- Name: academic_years; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academic_years (
    academic_year_id integer NOT NULL,
    academic_year character varying(50)
);


ALTER TABLE public.academic_years OWNER TO postgres;

--
-- Name: academic_years_academic_year_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.academic_years_academic_year_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.academic_years_academic_year_id_seq OWNER TO postgres;

--
-- Name: academic_years_academic_year_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.academic_years_academic_year_id_seq OWNED BY public.academic_years.academic_year_id;


--
-- Name: genders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.genders (
    gender_id integer NOT NULL,
    gender_name character varying(15)
);


ALTER TABLE public.genders OWNER TO postgres;

--
-- Name: genders_gender_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.genders_gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.genders_gender_id_seq OWNER TO postgres;

--
-- Name: genders_gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.genders_gender_id_seq OWNED BY public.genders.gender_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major_name character varying(50),
    description character varying(200)
);


ALTER TABLE public.majors OWNER TO postgres;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.majors_major_id_seq OWNER TO postgres;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: matriculation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matriculation (
    matriculation_id integer NOT NULL,
    student_id integer,
    place character varying(50),
    roll_no character varying(15),
    year date
);


ALTER TABLE public.matriculation OWNER TO postgres;

--
-- Name: matriculation_marks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matriculation_marks (
    matriculation_id integer,
    subject_id integer,
    mark integer
);


ALTER TABLE public.matriculation_marks OWNER TO postgres;

--
-- Name: matriculation_matriculation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matriculation_matriculation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.matriculation_matriculation_id_seq OWNER TO postgres;

--
-- Name: matriculation_matriculation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matriculation_matriculation_id_seq OWNED BY public.matriculation.matriculation_id;


--
-- Name: matriculation_subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matriculation_subjects (
    subject_id integer NOT NULL,
    subject_name character varying(25)
);


ALTER TABLE public.matriculation_subjects OWNER TO postgres;

--
-- Name: matriculation_subjects_subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matriculation_subjects_subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.matriculation_subjects_subject_id_seq OWNER TO postgres;

--
-- Name: matriculation_subjects_subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matriculation_subjects_subject_id_seq OWNED BY public.matriculation_subjects.subject_id;


--
-- Name: nationalities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nationalities (
    nationality_id integer NOT NULL,
    nationality_name character varying(50)
);


ALTER TABLE public.nationalities OWNER TO postgres;

--
-- Name: nationalities_nationality_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nationalities_nationality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nationalities_nationality_id_seq OWNER TO postgres;

--
-- Name: nationalities_nationality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nationalities_nationality_id_seq OWNED BY public.nationalities.nationality_id;


--
-- Name: nrc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nrc (
    nrc_id integer NOT NULL,
    state_number integer,
    state integer,
    nationality integer,
    number integer
);


ALTER TABLE public.nrc OWNER TO postgres;

--
-- Name: nrc_nationality; Type: TABLE; Schema: public; Owner: shinji
--

CREATE TABLE public.nrc_nationality (
    nrc_nationality_id integer NOT NULL,
    nrc_nationality character varying(3)
);


ALTER TABLE public.nrc_nationality OWNER TO shinji;

--
-- Name: nrc_nationality_nrc_nationality_id_seq; Type: SEQUENCE; Schema: public; Owner: shinji
--

CREATE SEQUENCE public.nrc_nationality_nrc_nationality_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nrc_nationality_nrc_nationality_id_seq OWNER TO shinji;

--
-- Name: nrc_nationality_nrc_nationality_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shinji
--

ALTER SEQUENCE public.nrc_nationality_nrc_nationality_id_seq OWNED BY public.nrc_nationality.nrc_nationality_id;


--
-- Name: nrc_nrc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.nrc_nrc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nrc_nrc_id_seq OWNER TO postgres;

--
-- Name: nrc_nrc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.nrc_nrc_id_seq OWNED BY public.nrc.nrc_id;


--
-- Name: nrc_state; Type: TABLE; Schema: public; Owner: shinji
--

CREATE TABLE public.nrc_state (
    nrc_state_id integer NOT NULL,
    nrc_state character varying(5)
);


ALTER TABLE public.nrc_state OWNER TO shinji;

--
-- Name: nrc_state_nrc_state_id_seq; Type: SEQUENCE; Schema: public; Owner: shinji
--

CREATE SEQUENCE public.nrc_state_nrc_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nrc_state_nrc_state_id_seq OWNER TO shinji;

--
-- Name: nrc_state_nrc_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shinji
--

ALTER SEQUENCE public.nrc_state_nrc_state_id_seq OWNED BY public.nrc_state.nrc_state_id;


--
-- Name: nrc_state_number; Type: TABLE; Schema: public; Owner: shinji
--

CREATE TABLE public.nrc_state_number (
    nrc_state_number_id integer NOT NULL,
    nrc_state_number integer
);


ALTER TABLE public.nrc_state_number OWNER TO shinji;

--
-- Name: nrc_state_number_nrc_state_number_id_seq; Type: SEQUENCE; Schema: public; Owner: shinji
--

CREATE SEQUENCE public.nrc_state_number_nrc_state_number_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.nrc_state_number_nrc_state_number_id_seq OWNER TO shinji;

--
-- Name: nrc_state_number_nrc_state_number_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shinji
--

ALTER SEQUENCE public.nrc_state_number_nrc_state_number_id_seq OWNED BY public.nrc_state_number.nrc_state_number_id;


--
-- Name: relative_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relative_types (
    relative_type_id integer NOT NULL,
    relative_type character varying(20)
);


ALTER TABLE public.relative_types OWNER TO postgres;

--
-- Name: relative_types_relative_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.relative_types_relative_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.relative_types_relative_type_id_seq OWNER TO postgres;

--
-- Name: relative_types_relative_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.relative_types_relative_type_id_seq OWNED BY public.relative_types.relative_type_id;


--
-- Name: relatives; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relatives (
    relative_id integer NOT NULL,
    student_id integer,
    relative_name character varying(50),
    phone_number integer,
    email character varying(50),
    nrc integer,
    township integer,
    gender integer,
    address character varying(100),
    nationality integer,
    religion integer,
    date_of_birth date
);


ALTER TABLE public.relatives OWNER TO postgres;

--
-- Name: relatives_relative_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.relatives_relative_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.relatives_relative_id_seq OWNER TO postgres;

--
-- Name: relatives_relative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.relatives_relative_id_seq OWNED BY public.relatives.relative_id;


--
-- Name: religions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.religions (
    religion_id integer NOT NULL,
    religion_name character varying(50)
);


ALTER TABLE public.religions OWNER TO postgres;

--
-- Name: religions_religion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.religions_religion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.religions_religion_id_seq OWNER TO postgres;

--
-- Name: religions_religion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.religions_religion_id_seq OWNED BY public.religions.religion_id;


--
-- Name: states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.states (
    state_id integer NOT NULL,
    state_name character varying(50)
);


ALTER TABLE public.states OWNER TO postgres;

--
-- Name: states_state_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.states_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.states_state_id_seq OWNER TO postgres;

--
-- Name: states_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.states_state_id_seq OWNED BY public.states.state_id;


--
-- Name: student_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_types (
    student_type_id integer NOT NULL,
    student_type_name character varying(20)
);


ALTER TABLE public.student_types OWNER TO postgres;

--
-- Name: student_types_student_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_types_student_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_types_student_type_id_seq OWNER TO postgres;

--
-- Name: student_types_student_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_types_student_type_id_seq OWNED BY public.student_types.student_type_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    major integer,
    township integer,
    student_type integer,
    student_name character varying(100),
    date_of_birth date,
    phone_number integer,
    email character varying(50),
    student_card_id character varying(20),
    nrc integer,
    gender integer,
    nationality integer,
    religion integer,
    photo character varying(100),
    address character varying(100)
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_student_id_seq OWNER TO postgres;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: townships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.townships (
    township_id integer NOT NULL,
    state integer,
    township_name character varying(50)
);


ALTER TABLE public.townships OWNER TO postgres;

--
-- Name: townships_township_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.townships_township_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.townships_township_id_seq OWNER TO postgres;

--
-- Name: townships_township_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.townships_township_id_seq OWNED BY public.townships.township_id;


--
-- Name: type_of_relation; Type: TABLE; Schema: public; Owner: shinji
--

CREATE TABLE public.type_of_relation (
    relative_id integer,
    relative_type_id integer
);


ALTER TABLE public.type_of_relation OWNER TO shinji;

--
-- Name: academic_years academic_year_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_years ALTER COLUMN academic_year_id SET DEFAULT nextval('public.academic_years_academic_year_id_seq'::regclass);


--
-- Name: genders gender_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genders ALTER COLUMN gender_id SET DEFAULT nextval('public.genders_gender_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: matriculation matriculation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation ALTER COLUMN matriculation_id SET DEFAULT nextval('public.matriculation_matriculation_id_seq'::regclass);


--
-- Name: matriculation_subjects subject_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation_subjects ALTER COLUMN subject_id SET DEFAULT nextval('public.matriculation_subjects_subject_id_seq'::regclass);


--
-- Name: nationalities nationality_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nationalities ALTER COLUMN nationality_id SET DEFAULT nextval('public.nationalities_nationality_id_seq'::regclass);


--
-- Name: nrc nrc_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nrc ALTER COLUMN nrc_id SET DEFAULT nextval('public.nrc_nrc_id_seq'::regclass);


--
-- Name: nrc_nationality nrc_nationality_id; Type: DEFAULT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_nationality ALTER COLUMN nrc_nationality_id SET DEFAULT nextval('public.nrc_nationality_nrc_nationality_id_seq'::regclass);


--
-- Name: nrc_state nrc_state_id; Type: DEFAULT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state ALTER COLUMN nrc_state_id SET DEFAULT nextval('public.nrc_state_nrc_state_id_seq'::regclass);


--
-- Name: nrc_state_number nrc_state_number_id; Type: DEFAULT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state_number ALTER COLUMN nrc_state_number_id SET DEFAULT nextval('public.nrc_state_number_nrc_state_number_id_seq'::regclass);


--
-- Name: relative_types relative_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relative_types ALTER COLUMN relative_type_id SET DEFAULT nextval('public.relative_types_relative_type_id_seq'::regclass);


--
-- Name: relatives relative_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relatives ALTER COLUMN relative_id SET DEFAULT nextval('public.relatives_relative_id_seq'::regclass);


--
-- Name: religions religion_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.religions ALTER COLUMN religion_id SET DEFAULT nextval('public.religions_religion_id_seq'::regclass);


--
-- Name: states state_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states ALTER COLUMN state_id SET DEFAULT nextval('public.states_state_id_seq'::regclass);


--
-- Name: student_types student_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_types ALTER COLUMN student_type_id SET DEFAULT nextval('public.student_types_student_type_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Name: townships township_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.townships ALTER COLUMN township_id SET DEFAULT nextval('public.townships_township_id_seq'::regclass);


--
-- Data for Name: academic_record; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.academic_record (student_id, academic_year_id, roll_no) FROM stdin;
\.


--
-- Data for Name: academic_years; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.academic_years (academic_year_id, academic_year) FROM stdin;
\.


--
-- Data for Name: genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genders (gender_id, gender_name) FROM stdin;
\.


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.majors (major_id, major_name, description) FROM stdin;
\.


--
-- Data for Name: matriculation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matriculation (matriculation_id, student_id, place, roll_no, year) FROM stdin;
\.


--
-- Data for Name: matriculation_marks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matriculation_marks (matriculation_id, subject_id, mark) FROM stdin;
\.


--
-- Data for Name: matriculation_subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matriculation_subjects (subject_id, subject_name) FROM stdin;
\.


--
-- Data for Name: nationalities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nationalities (nationality_id, nationality_name) FROM stdin;
\.


--
-- Data for Name: nrc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nrc (nrc_id, state_number, state, nationality, number) FROM stdin;
\.


--
-- Data for Name: nrc_nationality; Type: TABLE DATA; Schema: public; Owner: shinji
--

COPY public.nrc_nationality (nrc_nationality_id, nrc_nationality) FROM stdin;
\.


--
-- Data for Name: nrc_state; Type: TABLE DATA; Schema: public; Owner: shinji
--

COPY public.nrc_state (nrc_state_id, nrc_state) FROM stdin;
\.


--
-- Data for Name: nrc_state_number; Type: TABLE DATA; Schema: public; Owner: shinji
--

COPY public.nrc_state_number (nrc_state_number_id, nrc_state_number) FROM stdin;
\.


--
-- Data for Name: relative_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relative_types (relative_type_id, relative_type) FROM stdin;
\.


--
-- Data for Name: relatives; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relatives (relative_id, student_id, relative_name, phone_number, email, nrc, township, gender, address, nationality, religion, date_of_birth) FROM stdin;
\.


--
-- Data for Name: religions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.religions (religion_id, religion_name) FROM stdin;
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.states (state_id, state_name) FROM stdin;
\.


--
-- Data for Name: student_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_types (student_type_id, student_type_name) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, major, township, student_type, student_name, date_of_birth, phone_number, email, student_card_id, nrc, gender, nationality, religion, photo, address) FROM stdin;
\.


--
-- Data for Name: townships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.townships (township_id, state, township_name) FROM stdin;
\.


--
-- Data for Name: type_of_relation; Type: TABLE DATA; Schema: public; Owner: shinji
--

COPY public.type_of_relation (relative_id, relative_type_id) FROM stdin;
\.


--
-- Name: academic_years_academic_year_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.academic_years_academic_year_id_seq', 1, false);


--
-- Name: genders_gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genders_gender_id_seq', 1, false);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 2, true);


--
-- Name: matriculation_matriculation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matriculation_matriculation_id_seq', 1, false);


--
-- Name: matriculation_subjects_subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matriculation_subjects_subject_id_seq', 1, false);


--
-- Name: nationalities_nationality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nationalities_nationality_id_seq', 1, false);


--
-- Name: nrc_nationality_nrc_nationality_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shinji
--

SELECT pg_catalog.setval('public.nrc_nationality_nrc_nationality_id_seq', 1, false);


--
-- Name: nrc_nrc_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.nrc_nrc_id_seq', 1, false);


--
-- Name: nrc_state_nrc_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shinji
--

SELECT pg_catalog.setval('public.nrc_state_nrc_state_id_seq', 1, false);


--
-- Name: nrc_state_number_nrc_state_number_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shinji
--

SELECT pg_catalog.setval('public.nrc_state_number_nrc_state_number_id_seq', 1, false);


--
-- Name: relative_types_relative_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.relative_types_relative_type_id_seq', 1, false);


--
-- Name: relatives_relative_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.relatives_relative_id_seq', 1, false);


--
-- Name: religions_religion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.religions_religion_id_seq', 1, false);


--
-- Name: states_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.states_state_id_seq', 1, false);


--
-- Name: student_types_student_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_types_student_type_id_seq', 1, false);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 1, false);


--
-- Name: townships_township_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.townships_township_id_seq', 1, false);


--
-- Name: academic_record academic_record_student_id_academic_year_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_record
    ADD CONSTRAINT academic_record_student_id_academic_year_id_key UNIQUE (student_id, academic_year_id);


--
-- Name: academic_years academic_years_academic_year_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_years
    ADD CONSTRAINT academic_years_academic_year_key UNIQUE (academic_year);


--
-- Name: academic_years academic_years_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_years
    ADD CONSTRAINT academic_years_pkey PRIMARY KEY (academic_year_id);


--
-- Name: genders genders_gender_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genders
    ADD CONSTRAINT genders_gender_name_key UNIQUE (gender_name);


--
-- Name: genders genders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.genders
    ADD CONSTRAINT genders_pkey PRIMARY KEY (gender_id);


--
-- Name: majors majors_major_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_major_name_key UNIQUE (major_name);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: matriculation_marks matriculation_marks_matriculation_id_subject_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation_marks
    ADD CONSTRAINT matriculation_marks_matriculation_id_subject_id_key UNIQUE (matriculation_id, subject_id);


--
-- Name: matriculation matriculation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation
    ADD CONSTRAINT matriculation_pkey PRIMARY KEY (matriculation_id);


--
-- Name: matriculation matriculation_place_roll_no_year_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation
    ADD CONSTRAINT matriculation_place_roll_no_year_key UNIQUE (place, roll_no, year);


--
-- Name: matriculation_subjects matriculation_subjects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation_subjects
    ADD CONSTRAINT matriculation_subjects_pkey PRIMARY KEY (subject_id);


--
-- Name: matriculation_subjects matriculation_subjects_subject_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation_subjects
    ADD CONSTRAINT matriculation_subjects_subject_name_key UNIQUE (subject_name);


--
-- Name: nationalities nationalities_nationality_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nationalities
    ADD CONSTRAINT nationalities_nationality_name_key UNIQUE (nationality_name);


--
-- Name: nationalities nationalities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nationalities
    ADD CONSTRAINT nationalities_pkey PRIMARY KEY (nationality_id);


--
-- Name: nrc_nationality nrc_nationality_pkey; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_nationality
    ADD CONSTRAINT nrc_nationality_pkey PRIMARY KEY (nrc_nationality_id);


--
-- Name: nrc_nationality nrc_nationality_unique_key; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_nationality
    ADD CONSTRAINT nrc_nationality_unique_key UNIQUE (nrc_nationality);


--
-- Name: nrc nrc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nrc
    ADD CONSTRAINT nrc_pkey PRIMARY KEY (nrc_id);


--
-- Name: nrc_state_number nrc_state_number_pkey; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state_number
    ADD CONSTRAINT nrc_state_number_pkey PRIMARY KEY (nrc_state_number_id);


--
-- Name: nrc nrc_state_number_state_nationality_number; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nrc
    ADD CONSTRAINT nrc_state_number_state_nationality_number UNIQUE (state_number, state, nationality, number);


--
-- Name: nrc_state_number nrc_state_number_unique_key; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state_number
    ADD CONSTRAINT nrc_state_number_unique_key UNIQUE (nrc_state_number);


--
-- Name: nrc_state nrc_state_pkey; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state
    ADD CONSTRAINT nrc_state_pkey PRIMARY KEY (nrc_state_id);


--
-- Name: nrc_state nrc_state_unique_key; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state
    ADD CONSTRAINT nrc_state_unique_key UNIQUE (nrc_state);


--
-- Name: relative_types relative_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relative_types
    ADD CONSTRAINT relative_types_pkey PRIMARY KEY (relative_type_id);


--
-- Name: relative_types relative_types_relative_type_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relative_types
    ADD CONSTRAINT relative_types_relative_type_key UNIQUE (relative_type);


--
-- Name: relatives relatives_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relatives
    ADD CONSTRAINT relatives_pkey PRIMARY KEY (relative_id);


--
-- Name: religions religions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.religions
    ADD CONSTRAINT religions_pkey PRIMARY KEY (religion_id);


--
-- Name: religions religions_religion_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.religions
    ADD CONSTRAINT religions_religion_name_key UNIQUE (religion_name);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (state_id);


--
-- Name: states states_state_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_state_name_key UNIQUE (state_name);


--
-- Name: student_types student_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_types
    ADD CONSTRAINT student_types_pkey PRIMARY KEY (student_type_id);


--
-- Name: student_types student_types_student_type_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_types
    ADD CONSTRAINT student_types_student_type_name_key UNIQUE (student_type_name);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: townships townships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.townships
    ADD CONSTRAINT townships_pkey PRIMARY KEY (township_id);


--
-- Name: townships townships_township_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.townships
    ADD CONSTRAINT townships_township_name_key UNIQUE (township_name);


--
-- Name: type_of_relation type_of_relation_relative_id_relative_type_id_key; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.type_of_relation
    ADD CONSTRAINT type_of_relation_relative_id_relative_type_id_key UNIQUE (relative_id, relative_type_id);


--
-- Name: academic_record academic_record_academic_year_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_record
    ADD CONSTRAINT academic_record_academic_year_id_fkey FOREIGN KEY (academic_year_id) REFERENCES public.academic_years(academic_year_id);


--
-- Name: academic_record academic_record_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_record
    ADD CONSTRAINT academic_record_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: matriculation_marks matriculation_marks_matriculation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation_marks
    ADD CONSTRAINT matriculation_marks_matriculation_id_fkey FOREIGN KEY (matriculation_id) REFERENCES public.matriculation(matriculation_id);


--
-- Name: matriculation_marks matriculation_marks_subject_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation_marks
    ADD CONSTRAINT matriculation_marks_subject_id_fkey FOREIGN KEY (subject_id) REFERENCES public.matriculation_subjects(subject_id);


--
-- Name: matriculation matriculation_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation
    ADD CONSTRAINT matriculation_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: nrc nrc_nationality_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nrc
    ADD CONSTRAINT nrc_nationality_key FOREIGN KEY (nationality) REFERENCES public.nrc_nationality(nrc_nationality_id);


--
-- Name: nrc nrc_state_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nrc
    ADD CONSTRAINT nrc_state_key FOREIGN KEY (state) REFERENCES public.nrc_state(nrc_state_id);


--
-- Name: nrc nrc_state_number_key; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nrc
    ADD CONSTRAINT nrc_state_number_key FOREIGN KEY (state_number) REFERENCES public.nrc_state_number(nrc_state_number_id);


--
-- Name: relatives relatives_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relatives
    ADD CONSTRAINT relatives_gender_fkey FOREIGN KEY (gender) REFERENCES public.genders(gender_id);


--
-- Name: relatives relatives_nationality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relatives
    ADD CONSTRAINT relatives_nationality_fkey FOREIGN KEY (nationality) REFERENCES public.nationalities(nationality_id);


--
-- Name: relatives relatives_nrc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relatives
    ADD CONSTRAINT relatives_nrc_fkey FOREIGN KEY (nrc) REFERENCES public.nrc(nrc_id);


--
-- Name: relatives relatives_religion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relatives
    ADD CONSTRAINT relatives_religion_fkey FOREIGN KEY (religion) REFERENCES public.religions(religion_id);


--
-- Name: relatives relatives_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relatives
    ADD CONSTRAINT relatives_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(student_id);


--
-- Name: relatives relatives_township_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.relatives
    ADD CONSTRAINT relatives_township_fkey FOREIGN KEY (township) REFERENCES public.townships(township_id);


--
-- Name: students students_gender_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_gender_fkey FOREIGN KEY (gender) REFERENCES public.genders(gender_id);


--
-- Name: students students_major_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_fkey FOREIGN KEY (major) REFERENCES public.majors(major_id);


--
-- Name: students students_nationality_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_nationality_fkey FOREIGN KEY (nationality) REFERENCES public.nationalities(nationality_id);


--
-- Name: students students_nrc_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_nrc_fkey FOREIGN KEY (nrc) REFERENCES public.nrc(nrc_id);


--
-- Name: students students_religion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_religion_fkey FOREIGN KEY (religion) REFERENCES public.religions(religion_id);


--
-- Name: students students_student_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_student_type_fkey FOREIGN KEY (student_type) REFERENCES public.student_types(student_type_id);


--
-- Name: students students_township_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_township_fkey FOREIGN KEY (township) REFERENCES public.townships(township_id);


--
-- Name: townships townships_state_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.townships
    ADD CONSTRAINT townships_state_fkey FOREIGN KEY (state) REFERENCES public.states(state_id);


--
-- Name: type_of_relation type_of_relation_relative_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.type_of_relation
    ADD CONSTRAINT type_of_relation_relative_id_fkey FOREIGN KEY (relative_id) REFERENCES public.relatives(relative_id);


--
-- Name: type_of_relation type_of_relation_relative_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.type_of_relation
    ADD CONSTRAINT type_of_relation_relative_type_id_fkey FOREIGN KEY (relative_type_id) REFERENCES public.relative_types(relative_type_id);


--
-- Name: DEFAULT PRIVILEGES FOR SEQUENCES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON SEQUENCES TO shinji;


--
-- Name: DEFAULT PRIVILEGES FOR TYPES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TYPES TO shinji;


--
-- Name: DEFAULT PRIVILEGES FOR FUNCTIONS; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON FUNCTIONS TO shinji;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: -; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres GRANT ALL ON TABLES TO shinji;


--
-- PostgreSQL database dump complete
--

