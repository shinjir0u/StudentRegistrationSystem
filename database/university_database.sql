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
    student_id integer NOT NULL,
    academic_year_id integer NOT NULL,
    roll_no character varying(15) NOT NULL
);


ALTER TABLE public.academic_record OWNER TO postgres;

--
-- Name: academic_years; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.academic_years (
    academic_year_id integer NOT NULL,
    academic_year character varying(50) NOT NULL
);


ALTER TABLE public.academic_years OWNER TO postgres;

--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    major integer NOT NULL,
    township integer NOT NULL,
    student_type integer NOT NULL,
    student_name character varying(100) NOT NULL,
    date_of_birth date NOT NULL,
    phone_number character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    student_card_id character varying(20),
    nrc integer NOT NULL,
    gender integer NOT NULL,
    nationality integer NOT NULL,
    religion integer NOT NULL,
    photo character varying(100) NOT NULL,
    address character varying(100) NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: academic_record_view; Type: VIEW; Schema: public; Owner: shinji
--

CREATE VIEW public.academic_record_view AS
 SELECT s.student_id,
    a.academic_year,
    ar.roll_no
   FROM public.students s,
    public.academic_years a,
    public.academic_record ar
  WHERE ((s.student_id = ar.student_id) AND (a.academic_year_id = ar.academic_year_id));


ALTER VIEW public.academic_record_view OWNER TO shinji;

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
    gender_name character varying(15) NOT NULL
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
    major_name character varying(50) NOT NULL,
    description character varying(1000)
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
    student_id integer NOT NULL,
    place character varying(50) NOT NULL,
    roll_no character varying(15) NOT NULL,
    year integer NOT NULL
);


ALTER TABLE public.matriculation OWNER TO postgres;

--
-- Name: matriculation_marks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matriculation_marks (
    matriculation_id integer NOT NULL,
    subject_id integer NOT NULL,
    mark integer NOT NULL
);


ALTER TABLE public.matriculation_marks OWNER TO postgres;

--
-- Name: matriculation_subjects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matriculation_subjects (
    subject_id integer NOT NULL,
    subject_name character varying(25) NOT NULL
);


ALTER TABLE public.matriculation_subjects OWNER TO postgres;

--
-- Name: matriculation_marks_view; Type: VIEW; Schema: public; Owner: shinji
--

CREATE VIEW public.matriculation_marks_view AS
 SELECT m.student_id,
    ms.subject_id,
    ms.subject_name,
    mm.mark
   FROM public.matriculation m,
    public.matriculation_marks mm,
    public.matriculation_subjects ms
  WHERE ((m.matriculation_id = mm.matriculation_id) AND (ms.subject_id = mm.subject_id));


ALTER VIEW public.matriculation_marks_view OWNER TO shinji;

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
    nationality_name character varying(50) NOT NULL
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
    state integer NOT NULL,
    nationality integer NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.nrc OWNER TO postgres;

--
-- Name: nrc_nationality; Type: TABLE; Schema: public; Owner: shinji
--

CREATE TABLE public.nrc_nationality (
    nrc_nationality_id integer NOT NULL,
    nrc_nationality character varying(3) NOT NULL
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
    nrc_state text NOT NULL,
    nrc_state_number integer NOT NULL
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
    nrc_state_number character varying(5) NOT NULL
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
    relative_type character varying(20) NOT NULL
);


ALTER TABLE public.relative_types OWNER TO postgres;

--
-- Name: relatives; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.relatives (
    relative_id integer NOT NULL,
    student_id integer NOT NULL,
    relative_name character varying(50) NOT NULL,
    phone_number character varying(15) NOT NULL,
    email character varying(50) NOT NULL,
    nrc integer NOT NULL,
    township integer NOT NULL,
    address character varying(100) NOT NULL,
    nationality integer NOT NULL,
    religion integer NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.relatives OWNER TO postgres;

--
-- Name: type_of_relation; Type: TABLE; Schema: public; Owner: shinji
--

CREATE TABLE public.type_of_relation (
    relative_id integer NOT NULL,
    relative_type_id integer NOT NULL
);


ALTER TABLE public.type_of_relation OWNER TO shinji;

--
-- Name: relative_type_view; Type: VIEW; Schema: public; Owner: shinji
--

CREATE VIEW public.relative_type_view AS
 SELECT r.relative_id,
    rt.relative_type
   FROM public.relatives r,
    public.relative_types rt,
    public.type_of_relation t
  WHERE ((r.relative_id = t.relative_id) AND (rt.relative_type_id = t.relative_type_id));


ALTER VIEW public.relative_type_view OWNER TO shinji;

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
-- Name: religions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.religions (
    religion_id integer NOT NULL,
    religion_name character varying(50) NOT NULL
);


ALTER TABLE public.religions OWNER TO postgres;

--
-- Name: states; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.states (
    state_id integer NOT NULL,
    state_name character varying(50) NOT NULL
);


ALTER TABLE public.states OWNER TO postgres;

--
-- Name: townships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.townships (
    township_id integer NOT NULL,
    state_id integer NOT NULL,
    township_name character varying(50) NOT NULL
);


ALTER TABLE public.townships OWNER TO postgres;

--
-- Name: relative_view; Type: VIEW; Schema: public; Owner: shinji
--

CREATE VIEW public.relative_view AS
 SELECT r.relative_id,
    s.student_id,
    r.relative_name,
    r.date_of_birth,
    r.phone_number,
    r.email,
    w.township_name,
    sta.state_name,
    r.address,
    concat(nsn.nrc_state_number, ns.nrc_state, '(', nn.nrc_nationality, ')', n.number) AS nrc,
    nat.nationality_name,
    rel.religion_name,
    rt.relative_type
   FROM public.students s,
    public.states sta,
    public.townships w,
    public.religions rel,
    public.nationalities nat,
    public.nrc n,
    public.nrc_state_number nsn,
    public.nrc_state ns,
    public.nrc_nationality nn,
    public.relative_types rt,
    public.type_of_relation tor,
    public.relatives r
  WHERE ((sta.state_id = w.state_id) AND (r.township = w.township_id) AND (r.religion = rel.religion_id) AND (r.nationality = nat.nationality_id) AND (r.nrc = n.nrc_id) AND (n.state = ns.nrc_state_id) AND (n.nationality = nn.nrc_nationality_id) AND (ns.nrc_state_number = nsn.nrc_state_number_id) AND (r.relative_id = tor.relative_id) AND (rt.relative_type_id = tor.relative_type_id) AND (s.student_id = r.student_id));


ALTER VIEW public.relative_view OWNER TO shinji;

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
    student_type_name character varying(20) NOT NULL
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
-- Name: student_view; Type: VIEW; Schema: public; Owner: shinji
--

CREATE VIEW public.student_view AS
 SELECT s.student_id,
    s.student_name,
    s.date_of_birth,
    s.phone_number,
    s.email,
    t.township_name,
    sta.state_name,
    s.address,
    s.student_card_id,
    s.photo,
    concat(nsn.nrc_state_number, ns.nrc_state, '(', nn.nrc_nationality, ')', n.number) AS nrc,
    g.gender_name,
    nat.nationality_name,
    rel.religion_name,
    m.major_name,
    st.student_type_name,
    mat.place AS matriculation_place,
    mat.roll_no AS matriculation_roll_no,
    mat.year AS matriculation_year
   FROM public.students s,
    public.majors m,
    public.student_types st,
    public.states sta,
    public.townships t,
    public.religions rel,
    public.nationalities nat,
    public.genders g,
    public.nrc n,
    public.nrc_state_number nsn,
    public.nrc_state ns,
    public.nrc_nationality nn,
    public.matriculation mat
  WHERE ((s.major = m.major_id) AND (s.student_type = st.student_type_id) AND (sta.state_id = t.state_id) AND (s.township = t.township_id) AND (s.religion = rel.religion_id) AND (s.nationality = nat.nationality_id) AND (s.gender = g.gender_id) AND (s.nrc = n.nrc_id) AND (n.state = ns.nrc_state_id) AND (n.nationality = nn.nrc_nationality_id) AND (ns.nrc_state_number = nsn.nrc_state_number_id) AND (s.student_id = mat.student_id));


ALTER VIEW public.student_view OWNER TO shinji;

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
1	2012-2013
2	2013-2014
3	2014-2015
4	2015-2016
5	2016-2017
6	2017-2018
7	2018-2019
8	2019-2020
9	2020-2021
10	2021-2022
11	2022-2023
12	2023-2024
13	2024-2025
14	2025-2026
\.


--
-- Data for Name: genders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.genders (gender_id, gender_name) FROM stdin;
1	Male
2	Female
\.


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.majors (major_id, major_name, description) FROM stdin;
1	Civil Engineering	Civil engineering is a broad field that focuses on designing, constructing, and maintaining infrastructure projects and systems. These include roads, bridges, buildings, water supply systems, sewage treatment facilities, and more. Civil engineers work to ensure that these structures are safe, efficient, and sustainable. They use principles of mathematics, physics, and materials science to solve problems related to construction and infrastructure, considering factors like environmental impact and resource management.
2	Mechanical Engineering	Mechanical engineering is a branch of engineering that involves the design, analysis, manufacturing, and maintenance of mechanical systems. It encompasses a wide range of activities, including the development of machinery, engines, and tools. Mechanical engineers apply principles of physics and mathematics to create and improve products and processes, often focusing on aspects such as energy conversion, thermodynamics, fluid dynamics, and material science. They work on various projects, from automotive and aerospace systems to HVAC systems and robotics.
3	Electrical Power Engineering	Electrical power engineering is a field focused on the generation, transmission, distribution, and utilization of electrical energy. It involves designing and managing systems that deliver electricity from power plants to homes, businesses, and industries. This branch of engineering includes work on electrical grids, power generation technologies (like turbines and solar panels), transformers, and circuit breakers. Electrical power engineers also address issues related to energy efficiency, reliability, and sustainability of electrical systems, ensuring that power is delivered safely and effectively.
4	Electronic Engineering	Electronic engineering is a branch of engineering that deals with the design, development, and application of electronic systems and devices. It involves working with components like semiconductors, transistors, and integrated circuits to create and improve electronic equipment. Electronic engineers design and develop systems for communication, computing, consumer electronics, and automation. Their work includes creating circuits, signal processing, and system integration, as well as addressing challenges related to performance, efficiency, and miniaturization in electronic devices.
5	Computer Engineering & Information Technology	Computer Engineering is a field that combines elements of electrical engineering and computer science to design and develop computer hardware and software systems. Computer engineers work on creating and improving computer systems, including processors, memory devices, and integrated circuits. They also focus on embedded systems, networking, and system architecture. Information Technology (IT) is a broader field that encompasses the use, management, and support of computer systems and networks to store, retrieve, and process information. IT professionals work on areas such as software development, database management, network administration, and cybersecurity. They focus on implementing and maintaining technology solutions that support business operations and improve efficiency.
6	Mechatronic Engineering	Mechatronic engineering is an interdisciplinary field that integrates principles from mechanical engineering, electronics, computer science, and control engineering to design and create intelligent systems and devices. It focuses on the development of automated and smart systems that combine mechanical and electronic components with software to perform complex tasks. Mechatronic engineers work on projects such as robotics, automated manufacturing systems, and advanced control systems, aiming to enhance functionality, precision, and efficiency in various applications.
7	Chemical Engineering	Chemical engineering combines principles of chemistry, physics, mathematics, and engineering to design, develop, and optimize processes for manufacturing chemicals, pharmaceuticals, and other products. Chemical engineers work on scaling up chemical reactions from the lab to industrial production, ensuring processes are efficient, safe, and environmentally friendly. They also address challenges related to chemical reactions, process control, and materials handling, often working in industries such as petrochemicals, pharmaceuticals, food and beverages, and environmental engineering.
8	Textile Engineering	Textile engineering is a field that focuses on the design, production, and optimization of textiles and related materials. It involves working with fibers, yarns, fabrics, and finishing processes to create textiles used in clothing, upholstery, and industrial applications. Textile engineers work on various aspects of textile manufacturing, including spinning, weaving, knitting, dyeing, and finishing. They also address challenges related to material properties, quality control, and sustainability, aiming to improve the performance and efficiency of textile products and processes.
9	Mining Engineering	Mining engineering is a field focused on the extraction of valuable minerals and resources from the earth. It involves designing and managing the processes and equipment used to locate, extract, and transport these resources safely and efficiently. Mining engineers work on various aspects of mining operations, including exploration, site development, drilling and blasting, and ore processing. They also address environmental and safety concerns, ensuring that mining activities minimize impact on the environment and protect the health and safety of workers.
10	Petroleum Engineering	Petroleum engineering is a branch of engineering that focuses on the exploration, extraction, and production of oil and natural gas. It involves designing and implementing methods to locate and recover hydrocarbon resources from underground reservoirs. Petroleum engineers work on drilling techniques, reservoir management, and production optimization, using specialized equipment and technologies. They also address challenges related to reservoir behavior, safety, and environmental impact, aiming to maximize the efficiency and sustainability of hydrocarbon extraction processes.
11	Metallurgical Engineering & Materials Science	Metallurgical Engineering is a branch of engineering that focuses on the study, extraction, and processing of metals and alloys. Metallurgical engineers work on developing and improving materials through processes such as smelting, refining, and alloying. They aim to enhance the properties of metals to meet specific requirements for strength, durability, and resistance to corrosion. Materials Science is a broader field that studies the properties, structure, and applications of materials, including metals, polymers, ceramics, and composites. Materials scientists investigate how the composition and structure of materials affect their performance and develop new materials with desired properties for various applications. This field combines principles from physics, chemistry, and engineering to advance material technologies and innovations.
12	Architecture	Architecture is the art and science of designing and planning buildings and other physical structures. It involves creating functional, aesthetic, and sustainable spaces that meet the needs and desires of users while considering factors such as safety, environmental impact, and cultural significance. Architects work on various aspects of building design, including spatial layout, structural integrity, and aesthetic elements. They also collaborate with engineers, planners, and clients to bring their designs to life and ensure that projects are executed effectively and efficiently.
13	Telecommunication Engineering	Telecommunication engineering is a field focused on designing, implementing, and managing communication systems that transmit data over various mediums. This includes technologies for voice, data, and video communication, such as telephone networks, satellite systems, and internet infrastructure. Telecommunication engineers work on developing and optimizing systems for signal transmission, network design, and communication protocols. They address challenges related to bandwidth, signal quality, and network reliability, ensuring efficient and secure communication across different platforms.
14	Food Engineering	Food engineering focuses on the application of engineering principles to the production, processing, packaging, and distribution of food products. It involves designing and optimizing processes and equipment used in food manufacturing, ensuring that products are safe, nutritious, and of high quality. Food engineers work on various aspects of food production, including thermal processing, refrigeration, dehydration, and packaging technologies. They also address issues related to food safety, quality control, and sustainability, aiming to improve efficiency and innovation in the food industry.
\.


--
-- Data for Name: matriculation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matriculation (matriculation_id, student_id, place, roll_no, year) FROM stdin;
1	3	Mandalay	kj-3829	2028
2	6	Mandalay	kj-3829	2028
3	7	fdf	fdf	4343
\.


--
-- Data for Name: matriculation_marks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matriculation_marks (matriculation_id, subject_id, mark) FROM stdin;
1	1	76
1	2	87
1	3	65
1	4	43
1	5	78
1	6	75
2	1	76
2	2	87
2	3	65
2	4	43
2	5	78
2	6	75
3	1	54
3	2	677
3	3	53
3	4	57
3	5	53
3	9	67
\.


--
-- Data for Name: matriculation_subjects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matriculation_subjects (subject_id, subject_name) FROM stdin;
1	Myanmar
2	English
3	Maths
4	Chemistry
5	Physics
6	Biology
7	Economics
8	History
9	Geography
10	Others
\.


--
-- Data for Name: nationalities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nationalities (nationality_id, nationality_name) FROM stdin;
1	Kachin
2	Kayah
3	Kayin
4	Chin
5	Bamar
6	Mon
7	Rakhine
8	Shan
9	Others
\.


--
-- Data for Name: nrc; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nrc (nrc_id, state, nationality, number) FROM stdin;
5	2	1	434554
6	23	1	424344
10	12	1	434554
11	16	1	424344
12	4	1	32343
13	22	1	545454
\.


--
-- Data for Name: nrc_nationality; Type: TABLE DATA; Schema: public; Owner: shinji
--

COPY public.nrc_nationality (nrc_nationality_id, nrc_nationality) FROM stdin;
1	N
2	E
3	P
\.


--
-- Data for Name: nrc_state; Type: TABLE DATA; Schema: public; Owner: shinji
--

COPY public.nrc_state (nrc_state_id, nrc_state, nrc_state_number) FROM stdin;
1	BaMaNa	1
2	KhaHpaNa	1
3	DaHpaYa	1
4	HaPaNa	1
5	HpaKaNa	1
6	AhGaYa	1
7	KaMaTa	1
8	KaPaTa	1
9	KhaLaHpa	1
10	LaGaNa	1
11	MaKhaBa	1
12	MaSaNa	1
13	MaKaTa	1
14	MaNyaNa	1
15	MaMaNa	1
16	MaKaNa	1
17	MaLaNa	1
18	NaMaNa	1
19	PaWaNa	1
20	PaNaDa	1
21	PaTaAh	1
22	SaDaNa	1
23	YaBaYa	1
24	YaKaNa	1
25	SaBaNa	1
26	SaPaYa	1
27	TaNaNa	1
28	TaSaLa	1
29	WaMaNa	1
30	BaLaKha	2
31	DaMaSa	2
32	HpaSaNa	2
33	HpaYaSa	2
34	LaKaNa	2
35	MaSaNa	2
36	YaTaNa	2
37	YaThaNa	2
38	BaGaLa	3
39	LaBaNa	3
40	BaAhNa	3
41	HpaPaNa	3
42	BaThaSa	3
43	KaMaMa	3
44	KaKaYa	3
45	KaDaNa	3
46	KaSaKa	3
47	KaDaTa	3
48	LaThaNa	3
49	MaWaTa	3
50	PaKaNa	3
51	YaYaTha	3
52	SaKaLa	3
53	ThaTaNa	3
54	ThaTaKa	3
55	WaLaMa	3
56	KaKhaNa	4
57	HpaLaNa	4
58	HaKhaNa	4
59	KaPaLa	4
60	MaTaPa	4
61	MaTaNa	4
62	PaLaWa	4
63	YaZaNa	4
64	YaKhaDa	4
65	SaMaNa	4
66	TaTaNa	4
67	HtaTaLa	4
68	TaZaNa	4
69	AhYaTa	5
70	BaMaNa	5
71	BaTaLa	5
72	KhaOuTa	5
73	KhaTaNa	5
74	HaMaLa	5
75	AhTaNa	5
76	KaLaHta	5
77	KaLaWa	5
78	KaBaLa	5
79	KaNana	5
80	KaThaNa	5
81	KaLaTa	5
82	KhaOuNa	5
83	KaLaNa	5
84	LaHaNa	5
85	LaYaNa	5
86	MaLaNa	5
87	MaKaNa	5
88	MaYaNa	5
89	MaMaNa	5
90	MaMaTa	5
91	NaYaNa	5
92	NgaZaNa	5
93	PaLaNa	5
94	HpaPaNa	5
95	PaLaBa	5
96	SaKaNa	5
97	SaLaKa	5
98	YaBaNa	5
99	DaPaYa	5
100	TaMaNa	5
101	TaSaNa	5
102	HtaKhaNa	5
103	WaLaNa	5
104	WaThaNa	5
105	YaOuNa	5
106	YaMaPa	5
107	KaMaNa	5
108	KhaPaNa	5
109	BaPaNa	6
110	HtaWaNa	6
111	KaLaAh	6
112	KaThaNa	6
113	KaSaNa	6
114	LaLaNa	6
115	MaMaNa	6
116	PaLaNa	6
117	TaThaYa	6
118	ThaYaKha	6
119	YaHpaNa	6
120	KhaMaNa	6
121	MaTaNa	6
122	PaLaTa	6
123	KaYaYa	6
124	DaOuNa	7
125	KaPaKa	7
126	KaWaNa	7
127	KakaNa	7
128	KaTaKha	7
129	LaPaTa	7
130	MaLaNa	7
131	MaNyaNa	7
132	NaTaLa	7
133	NyaLaPa	7
134	AhHpaNa	7
135	AhTaNa	7
136	PaTaNa	7
137	PaKhaTa	7
138	PaKhaNa	7
139	PaTaTa	7
140	PaNaKa	7
141	HpaMaNa	7
142	PaMaNa	7
143	YaTaNa	7
144	YaKaNa	7
145	HtaTaPa	7
146	TaNgaNa	7
147	ThaNaPa	7
148	ThaWaTa	7
149	ThaKaNa	7
150	ThaSaNa	7
151	WaMaNa	7
152	YaTaYa	7
153	ZaKaNa	7
154	PaTaSa	7
155	AhLaNa	8
156	KhaMaNa	8
157	GaGaNa	8
158	KaMaNa	8
159	MaKaNa	8
160	MaBaNa	8
161	MaTaNa	8
162	MaLaNa	8
163	MaMaNa	8
164	MaHtaNa	8
165	MaThaNa	8
166	NaMaNa	8
167	NgaHpaNa	8
168	PaKhaKa	8
169	PaMaNa	8
170	PaHpaNa	8
171	SaLaNa	8
172	SaMaNa	8
173	SaHpaNa	8
174	SaTaYa	8
175	SaPaWa	8
176	TaTaKa	8
177	ThaYaNa	8
178	HtaLaNa	8
179	YaNaKha	8
180	YaSaKa	8
181	KaHtaNa	8
182	AhMaYa	9
183	AhMaZa	9
184	KhaAhZa	9
185	KhaMaSa	9
186	KaPaTa	9
187	KaSaNa	9
188	MaTaYa	9
189	MaHaMa	9
190	MaLaNa	9
191	MaHtaLa	9
192	MaKaNa	9
193	MaKhaNa	9
194	MaThaNa	9
195	NaHtaKa	9
196	NgaThaYa	9
197	NgaZaNa	9
198	NyaOuNa	9
199	PaThaKa	9
200	PaBaNa	9
201	PaKaKha	9
202	PaOuLa	9
203	SaKaNa	9
204	SaKaTa	9
205	ThaPaKa	9
206	TaTaOu	9
207	TaThaNa	9
208	ThaSaNa	9
209	WaTaNa	9
210	YaMaTha	9
211	TaKaTa	9
212	MaMaNa	9
213	DaKhaTha	9
214	LaWaNa	9
215	OuTaTha	9
216	PaBaTha	9
217	PaMaNa	9
218	TaKaNa	9
219	ZaBaTha	9
220	ZaYaTha	9
221	BaLaNa	10
222	KhaSaNa	10
223	KhaZaNa	10
224	KaMaYa	10
225	KaHtaNa	10
226	LaMaNa	10
227	MaLaMa	10
228	MaDaNa	10
229	PaMaNa	10
230	ThaHpaYa	10
231	ThaHtaNa	10
232	YaMaNa	10
233	AhMaNa	11
234	BaThaTa	11
235	GaMaNa	11
236	KaHpaNa	11
237	KaTaNa	11
238	MaAhTa	11
239	MaTaNa	11
240	MaPaNa	11
241	MaAhNa	11
242	MaOuNa	11
243	MaPaTa	11
244	PaTaNa	11
245	PaNaTa	11
246	YaBaNa	11
247	YaThaTa	11
248	SaTaNa	11
249	ThaTaNa	11
250	TaKaNa	11
251	KaTaLa	11
252	TapaWa	11
253	AhLaNa	12
254	BaHaNa	12
255	BaTaHta	12
256	KaKaKa	12
257	DaGaYa	12
258	DaGaMa	12
259	DaGaSa	12
260	DaGaTa	12
261	DaGaNa	12
262	DaLaNa	12
263	DaPaNa	12
264	LaThaYa	12
265	LaMaNa	12
266	LaKaNa	12
267	MaBaNa	12
268	HtaTaPa	12
269	AhSaNa	12
270	KaMaYa	12
271	KaMaNa	12
272	KhaYaNa	12
273	KaKhaKa	12
274	KaTaTa	12
275	KaTaNa	12
276	KaMaTa	12
277	LaMaTa	12
278	LaThaNa	12
279	MaYaKa	12
280	MaGaDa	12
281	MaGaTa	12
282	OuKaMa	12
283	PaBaTa	12
284	PaZaTa	12
285	SaKhaNa	12
286	SaKaKha	12
287	SaKaNa	12
288	YaPaTha	12
289	OuKaTa	12
290	TaTaHta	12
291	TaKaNa	12
292	TaMaNa	12
293	ThaKaTa	12
294	ThaLaNa	12
295	ThaGaKa	12
296	ThaKhaNa	12
297	TaTaNa	12
298	YaKaNa	12
299	OuKaNa	12
300	AhKhaNa	13
301	KhaYaHa	13
302	KhaMaNa	13
303	HaTaNa	13
304	HaPaNa	13
305	HaPaTa	13
306	SaHpaNa	13
307	ThaNaNa	13
308	SaSaNa	13
309	ThaPaNa	13
310	KaLaHpa	13
311	KaLaNa	13
312	KaLaDa	13
313	KaMaSa	13
314	KaTaNa	13
315	KaYaNa	13
316	KaTaTa	13
317	KaHaNa	13
318	KaLaTa	13
319	KaKhaNa	13
320	KaMaNa	13
321	KaTaLa	13
322	KaThaNa	13
323	LaKhaNa	13
324	LaKhaTa	13
325	LaYaNa	13
326	LaKaNa	13
327	LaHaNa	13
328	LaLaNa	13
329	MaBaNa	13
330	MaMaSa	13
331	MaTaNa	13
332	MaTaTa	13
333	MaMaNa	13
334	MaMaNa	13
335	MaHpaNa	13
336	MaKaNa	13
337	MaPaNa	13
338	MaHpaNa	13
339	MaSaNa	13
340	MaYaNa	13
341	MaKaNa	13
342	MaKhaNa	13
343	MaLaNa	13
344	MaMaTa	13
345	MaMaTa	13
346	MaNaNa	13
347	MaPaNa	13
348	MaTaNa	13
349	MaYaTa	13
350	MaYaNa	13
351	MaYaNa	13
352	MaSaTa	13
353	NaKhaWa	13
354	NaTaNa	13
355	NaKhaNa	13
356	NaMaTa	13
357	NaHpaNa	13
358	NaSaNa	13
359	NaKaNa	13
360	NaWaNa	13
361	NaHpaNa	13
362	NaKhaNa	13
363	NaKhaTa	13
364	NyaYaNa	13
365	PaKhaNa	13
366	PaYaNa	13
367	PaSaNa	13
368	PaWaNa	13
369	HpaKhaNa	13
370	PaTaYa	13
371	PaLaNa	13
372	TaKhaLa	13
373	TaYaNa	13
374	TaKaNa	13
375	YaLaNa	13
376	YaSaNa	13
377	YaHpaNa	13
378	YaNgaNa	13
379	NaTaYa	13
380	PaLaTa	13
381	KhaLaNa	13
382	MaHaYa	13
383	PaPaKa	13
384	TaMaNya	13
385	MaBaTa	13
386	MaNgaNa	13
387	AhTaNa	13
388	TaLaNa	13
389	AhMaTa	14
390	BaKaLa	14
391	DaNaHpa	14
392	DaDaYa	14
393	AhMaNa	14
394	HaKaKa	14
395	HaThaTa	14
396	AhGaPa	14
397	KaKaHta	14
398	KaLaNa	14
399	KaKhaNa	14
400	KaKaNa	14
401	KaPaNa	14
402	LaPaTa	14
403	LaMaNa	14
404	MaAhPa	14
405	MaMaKa	14
406	MaAhNa	14
407	MaMaNa	14
408	NgaPaTa	14
409	NgaThaKha	14
410	NgaYaKa	14
411	NgaSaNa	14
412	NgaThaYa	14
413	NyaTaNa	14
414	PaTaNa	14
415	PaThaNa	14
416	HpaPaNa	14
417	PaSaLa	14
418	YaThaYa	14
419	ThaPaNa	14
420	WaKhaMa	14
421	YaKaNa	14
422	ZaLaNa	14
\.


--
-- Data for Name: nrc_state_number; Type: TABLE DATA; Schema: public; Owner: shinji
--

COPY public.nrc_state_number (nrc_state_number_id, nrc_state_number) FROM stdin;
1	1/
2	2/
3	3/
4	4/
5	5/
6	6/
7	7/
8	8/
9	9/
10	10/
11	11/
12	12/
13	13/
14	14/
\.


--
-- Data for Name: relative_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relative_types (relative_type_id, relative_type) FROM stdin;
1	Father
2	Mother
3	Grandfather
4	Grandmother
5	Uncle
6	Aunty
7	Brother
8	Sister
9	Cousin
10	Others
\.


--
-- Data for Name: relatives; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.relatives (relative_id, student_id, relative_name, phone_number, email, nrc, township, address, nationality, religion, date_of_birth) FROM stdin;
3	3	May May	9377483748	maymay@gmail.cm	6	25	adr2	2	1	2007-02-06
6	6	May May	9377483748	maymay@gmail.cm	11	25	adr2	2	1	2007-02-06
7	7	mama	9573748573	mama@gmail.com	13	18	adf2	8	4	1980-08-24
\.


--
-- Data for Name: religions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.religions (religion_id, religion_name) FROM stdin;
1	Buddhism
2	Christianity
3	Islam
4	Hinduism
5	Others
\.


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.states (state_id, state_name) FROM stdin;
1	Kachin
2	Kayah
3	Kayin
4	Chin
5	Sagaing
6	Tanintharyi
7	Bago
8	Magway
9	Mandalay
10	Mon
11	Rakhine
12	Yangon
13	Shan
14	Ayeyarwaddy
15	Naypyidaw
\.


--
-- Data for Name: student_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_types (student_type_id, student_type_name) FROM stdin;
1	freshman
2	returning
3	transfer
4	post-graduate
5	graduated
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.students (student_id, major, township, student_type, student_name, date_of_birth, phone_number, email, student_card_id, nrc, gender, nationality, religion, photo, address) FROM stdin;
3	2	20	2	Htoo Aung Wai	1986-02-04	9475837395	htoo@gmail.com	18/288393	5	1	2	2	null	adr
6	3	20	2	Htoo	1986-03-04	9475837395	htoo@gmail.com	18/2883	10	1	2	2	null	adr
7	5	18	2	Thant	1981-11-24	654554545	thant@gmail.com	383298	12	2	7	2	null	adfdf
\.


--
-- Data for Name: townships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.townships (township_id, state_id, township_name) FROM stdin;
1	1	Bhamo
2	1	Chipwi
3	1	Dawthponeyan
4	1	Hopin
5	1	Hpakant
6	1	Injangyang
7	1	Kamaing
8	1	Kan Paik Ti
9	1	Khaunglanhpu
10	1	Lwegel
11	1	Machanbaw
12	1	Mansi
13	1	Mogaung
14	1	Mohnyin
15	1	Momauk
16	1	Myitkyina
17	1	Myo Hla
18	1	Nawngmun
19	1	Pang War
20	1	Pannandin
21	1	Puta-O
22	1	Sadaung
23	1	Shin Bway Yang
24	1	Shwegu
25	1	Sinbo
26	1	Sumprabum
27	1	Tanai
28	1	Tsawlaw
29	1	Waingmaw
30	2	Bawlakhe
31	2	Demoso
32	2	Hpasawng
33	2	Hpruso
34	2	Loikaw
35	2	Mese
36	2	Shadaw
37	2	Ywarthit
38	3	Baw Ga Li
39	3	Hlaingbwe
40	3	Hpa-An
41	3	Hpapun
42	3	Hpayarthonesu
43	3	Kamarmaung
44	3	Kawkareik
45	3	Kyaikdon
46	3	Kyainseikgyi
47	3	Kyondoe
48	3	Leik Tho
49	3	Myawaddy
50	3	Paingkyon
51	3	Shan Ywar Thit
52	3	Su Ka Li
53	3	Thandaung
54	3	Thandaunggyi
55	3	Waw Lay Myaing
56	4	Cikha
57	4	Falam
58	4	Hakha
59	4	Kanpetlet
60	4	Matupi
61	4	Mindat
62	4	Paletwa
63	4	Rezua
64	4	Rihkhawdar
65	4	Samee
66	4	Tedim
67	4	Thantlang
68	4	Tonzang
69	5	Ayadaw
70	5	Banmauk
71	5	Budalin
72	5	Chaung-U
73	5	Hkamti
74	5	Homalin
75	5	Indaw
76	5	Kale
77	5	Kalewa
78	5	Kanbalu
79	5	Kani
80	5	Katha
81	5	Kawlin
82	5	Khin-U
83	5	Kyunhla
84	5	Lahe
85	5	Layshi
86	5	Mawlaik
87	5	Mingin
88	5	Monywa
89	5	Myaung
90	5	Myinmu
91	5	Nanyun
92	5	Ngazun
93	5	Pale
94	5	Paungbyin
95	5	Pinlebu
96	5	Sagaing
97	5	Salingyi
98	5	Shwebo
99	5	Tabayin
100	5	Tamu
101	5	Taze
102	5	Tigyaing
103	5	Wetlet
104	5	Wuntho
105	5	Ye-U
106	5	Yinmabin
107	5	Kyaukmyaung
108	5	Khampat
109	6	Bokpyin
110	6	Dawei
111	6	Kaleinaung
112	6	Kawthoung
113	6	Kyunsu
114	6	Launglon
115	6	Myeik
116	6	Palaw
117	6	Tanintharyi
118	6	Thayetchaung
119	6	Yepyu
120	6	Khamaukgyi
121	6	Myittar
122	6	Palauk
123	6	Karathuri
124	7	Daik-U
125	7	Gyobingauk
126	7	Kawa
127	7	Kyaukkyi
128	7	Kyauktaga
129	7	Letpadan
130	7	Minhla
131	7	Monyo
132	7	Nattalin
133	7	Nyaunglebin
134	7	Okpho
135	7	Oktwin
136	7	Padaung
137	7	Pauk Kaung
138	7	Bago
139	7	Paungde
140	7	Pennwegone
141	7	Phyu
142	7	Pyay
143	7	Shwedaung
144	7	Shwegyin
145	7	Tantabin
146	7	Taungoo
147	7	Thanatpin
148	7	Thayarwady
149	7	Thegon
150	7	Thonze
151	7	Waw
152	7	Yedashe
153	7	Zigon
154	7	Pyontahsar
155	8	Aunglan
156	8	Chauk
157	8	Gangaw
158	8	Kamma
159	8	Magway
160	8	Minbu
161	8	Mindon
162	8	Minhla
163	8	Myaing
164	8	MyayHtae
165	8	Myothit
166	8	Natmauk
167	8	Ngape
168	8	Pakokku
169	8	Pauk
170	8	Pwintbyu
171	8	Salin
172	8	Saw
173	8	Seikphyu
174	8	Sidoktaya
175	8	Sinbaungwe
176	8	Taungdwingyi
177	8	Thayet
178	8	Tilin
179	8	Yenangyaung
180	8	Yesagyo
181	8	Kyaukhtu
182	9	Amarapura
183	9	Aungmyaythazan
184	9	Chanayethazan
185	9	Chanmyathazi
186	9	Kyaukpadaung
187	9	Kyaukse
188	9	Madaya
189	9	Mahaaungmyay
190	9	Mahlaing
191	9	Meiktila
192	9	Mogoke
193	9	Myingyan
194	9	Myittha
195	9	Natogyi
196	9	Ngathayouk
197	9	Ngazun
198	9	Nyaung-U
199	9	Patheingyi
200	9	Pyawbwe
201	9	Pyigyitagon
202	9	Pyinoolwin
203	9	Singu
204	9	Sintgaing
205	9	Tabeikkyin
206	9	Tada-U
207	9	Thaungtha
208	9	Thazi
209	9	Wundwin
210	9	Yamethin
211	9	Tagaung
212	9	Maymyot
213	15	Dekhinathiri
214	15	Lewe
215	15	Ottarathiri
216	15	Popathiri
217	15	Pyinmana
218	15	Tatkon
219	15	Zabuthiri
220	15	Zayarthiri
221	10	Billin
222	10	Chaungzon
223	10	Khawzar
224	10	Kyaikmaraw
225	10	Kyaikto
226	10	Lamine
227	10	Mawlamyine
228	10	Mudon
229	10	Paung
230	10	Thanbyuzayat
231	10	Thaton
232	10	Ye
233	11	Ann
234	11	Buthidaung
235	11	Gwa
236	11	Kyaukpyu
237	11	Kyauktaw
238	11	Maei
239	11	Maungdaw
240	11	Minbya
241	11	Munaung
242	11	Myauk-U
243	11	Myebon
244	11	Pauktaw
245	11	Ponnagyun
246	11	Ramree
247	11	Rathedaung
248	11	Sittwe
249	11	Thandwe
250	11	Toungup
251	11	Kyeintali
252	11	Taungpyolatwae
253	12	Ahlone
254	12	Bahan
255	12	Botahtaung
256	12	Cocokyun
257	12	Dagon Myothit(East)
258	12	Dagon Myothit(North)
259	12	Dagon Myothit(Seikkan)
260	12	Dagon Myothit(South)
261	12	Dagon
262	12	Dala
263	12	Dawbon
264	12	Hlaingtharya
265	12	Hlaing
266	12	Hlegu
267	12	Hmawbi
268	12	Htantabin
269	12	Insein
270	12	Kamayut
271	12	Kawhmu
272	12	Kayan
273	12	Kungyangon
274	12	Kyauktada
275	12	Kyauktan
276	12	Kyimyindaing
277	12	Lanmadaw
278	12	Latha
279	12	Mayangone
280	12	Mingalardon
281	12	Mingalartaungnyunt
282	12	North Oakkalapa
283	12	Pabedan
284	12	Pazundaung
285	12	Sanchaung
286	12	Seikgikanaungto
287	12	Seikkan
288	12	Shwepyithar
289	12	South Oakkalapa
290	12	Tada
291	12	Taikkyi
292	12	Tamwe
293	12	Thaketa
294	12	Thanlyin
295	12	Thingangkyun
296	12	Thongwa
297	12	Twantay
298	12	Yankin
299	12	Oakkan
300	13	Aik Chan
301	13	Chinshwehaw
302	13	Hkun Mar
303	13	Ho Tawng
304	13	Hopang
305	13	Hopong
306	13	Hsawng Hpa
307	13	Hseni
308	13	Hsihseng
309	13	Hsipaw
310	13	Ka Lawng Hpar
311	13	Kalaw
312	13	Kali
313	13	Kawng Min Hsang
314	13	Kengtung
315	13	Konkyan
316	13	Kyaing Taung
317	13	Kunhing
318	13	Kuniong
319	13	Kutkai
320	13	Kyaukme
321	13	Kyauktalonegyi
322	13	Kyethi
323	13	Laihka
324	13	Langkho
325	13	Lashio
326	13	Laukkaing
327	13	Lin Haw
328	13	Loilen
329	13	Mabein
330	13	Man Man Hseng
331	13	Man Tun
332	13	Manton
333	13	Matman
334	13	Mawkmai
335	13	Mong Hpen
336	13	Mong Kar
337	13	Mong Pawk
338	13	Monghpyak
339	13	Mong Hsat
340	13	Monghsu
341	13	Mong Kung
342	13	Mongkhet
343	13	Mongla
344	13	Mongmao
345	13	Mongmit
346	13	Mongnai
347	13	Mongping
348	13	Mongton
349	13	Mongyai
350	13	Mongyang
351	13	Mongyawng
352	13	Muse
353	13	Nam Hkam Wu
354	13	Nam Tit
355	13	Namhkan
356	13	Namtu
357	13	Nan Hpai
358	13	Nanhsan
359	13	Nar Kawng
360	13	Nar Wee
361	13	Narphan
362	13	Nawng Hkit
363	13	Nawnghkio
364	13	Nyaungshwe
365	13	Pang Hkam
366	13	Pang Yang
367	13	Pangsang
368	13	Pangwaun
369	13	Pekon
370	13	Pindaya
371	13	Pinlaung
372	13	Tachileik
373	13	Tangyan
374	13	Taunggyi
375	13	Yawng Lin
376	13	Yetsawk
377	13	Yin Pang
378	13	Ywangan
379	13	Naungtayar
380	13	Pinlon
381	13	Kholan
382	13	Manhero
383	13	Ponparkyin
384	13	Tarmoenyae
385	13	Moebyae
386	13	Mongngawt
387	13	Intaw
388	13	Tarlay
389	14	Amar
390	14	Bogale
391	14	Danubyu
392	14	Dedaye
393	14	Einme
394	14	Haigyi Island
395	14	Hinthada
396	14	Ingapu
397	14	Kangyidaunt
398	14	Kyaiklat
399	14	Kyangin
400	14	Kyaunggon
401	14	Kyonpyaw
402	14	Labutta
403	14	Lemyethana
404	14	Maubin
405	14	Mawlamyinegyun
406	14	Myanaung
407	14	Myaungmya
408	14	Ngapudaw
409	14	Ngathinechaung
410	14	Ngayotekaung
411	14	Ngwesaung
412	14	Ngwethoungyan
413	14	Nyaungdon
414	14	Pantanaw
415	14	Pathein
416	14	Pyapon
417	14	Pyinsalu
418	14	Shwethoungyan
419	14	Thabaung
420	14	Wakema
421	14	Yegyi
422	14	Zalun
\.


--
-- Data for Name: type_of_relation; Type: TABLE DATA; Schema: public; Owner: shinji
--

COPY public.type_of_relation (relative_id, relative_type_id) FROM stdin;
3	2
6	2
7	8
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

SELECT pg_catalog.setval('public.matriculation_matriculation_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.nrc_nrc_id_seq', 13, true);


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

SELECT pg_catalog.setval('public.relatives_relative_id_seq', 7, true);


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

SELECT pg_catalog.setval('public.student_types_student_type_id_seq', 5, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_student_id_seq', 7, true);


--
-- Name: townships_township_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.townships_township_id_seq', 1, false);


--
-- Name: academic_record academic_record_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.academic_record
    ADD CONSTRAINT academic_record_pkey PRIMARY KEY (student_id, academic_year_id);


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
-- Name: matriculation_marks matriculation_marks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation_marks
    ADD CONSTRAINT matriculation_marks_pkey PRIMARY KEY (matriculation_id, subject_id);


--
-- Name: matriculation matriculation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation
    ADD CONSTRAINT matriculation_pkey PRIMARY KEY (matriculation_id);


--
-- Name: matriculation matriculation_student_id_place_roll_no_year_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matriculation
    ADD CONSTRAINT matriculation_student_id_place_roll_no_year_key UNIQUE (student_id, place, roll_no, year);


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
-- Name: nrc nrc_state_nationality_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nrc
    ADD CONSTRAINT nrc_state_nationality_number_key UNIQUE (state, nationality, number);


--
-- Name: nrc_state_number nrc_state_number_nrc_state_number_key; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state_number
    ADD CONSTRAINT nrc_state_number_nrc_state_number_key UNIQUE (nrc_state_number);


--
-- Name: nrc_state_number nrc_state_number_pkey; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state_number
    ADD CONSTRAINT nrc_state_number_pkey PRIMARY KEY (nrc_state_number_id);


--
-- Name: nrc_state nrc_state_pkey; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state
    ADD CONSTRAINT nrc_state_pkey PRIMARY KEY (nrc_state_id);


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
-- Name: students students_student_card_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_student_card_id_key UNIQUE (student_card_id);


--
-- Name: townships townships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.townships
    ADD CONSTRAINT townships_pkey PRIMARY KEY (township_id);


--
-- Name: townships townships_state_township_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.townships
    ADD CONSTRAINT townships_state_township_name_key UNIQUE (state_id, township_name);


--
-- Name: type_of_relation type_of_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.type_of_relation
    ADD CONSTRAINT type_of_relation_pkey PRIMARY KEY (relative_id, relative_type_id);


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
-- Name: nrc_state nrc_state_nrc_state_number_fkey; Type: FK CONSTRAINT; Schema: public; Owner: shinji
--

ALTER TABLE ONLY public.nrc_state
    ADD CONSTRAINT nrc_state_nrc_state_number_fkey FOREIGN KEY (nrc_state_number) REFERENCES public.nrc_state_number(nrc_state_number_id);


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
    ADD CONSTRAINT townships_state_fkey FOREIGN KEY (state_id) REFERENCES public.states(state_id);


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

