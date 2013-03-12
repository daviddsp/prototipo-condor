--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.8
-- Dumped by pg_dump version 9.1.8
-- Started on 2013-03-05 00:15:35 VET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 188 (class 3079 OID 11644)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2021 (class 0 OID 0)
-- Dependencies: 188
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 162 (class 1259 OID 27574)
-- Dependencies: 5
-- Name: contenido; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE contenido (
    id_contenido integer NOT NULL,
    nombre_contenido character varying(50) NOT NULL,
    descripcion character varying(100) NOT NULL,
    contenido character varying(1000) NOT NULL,
    id_leccion integer NOT NULL
);


ALTER TABLE public.contenido OWNER TO postgres;

--
-- TOC entry 161 (class 1259 OID 27572)
-- Dependencies: 162 5
-- Name: contenido_id_contenido_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contenido_id_contenido_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contenido_id_contenido_seq OWNER TO postgres;

--
-- TOC entry 2022 (class 0 OID 0)
-- Dependencies: 161
-- Name: contenido_id_contenido_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contenido_id_contenido_seq OWNED BY contenido.id_contenido;


--
-- TOC entry 164 (class 1259 OID 27585)
-- Dependencies: 5
-- Name: ejemplos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ejemplos (
    id_ejemplos integer NOT NULL,
    nombre_ejemplos character varying(50) NOT NULL,
    ejemplo character varying(1000) NOT NULL,
    id_leccion integer NOT NULL
);


ALTER TABLE public.ejemplos OWNER TO postgres;

--
-- TOC entry 163 (class 1259 OID 27583)
-- Dependencies: 5 164
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejemplos_id_ejemplos_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejemplos_id_ejemplos_seq OWNER TO postgres;

--
-- TOC entry 2023 (class 0 OID 0)
-- Dependencies: 163
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejemplos_id_ejemplos_seq OWNED BY ejemplos.id_ejemplos;


--
-- TOC entry 166 (class 1259 OID 27596)
-- Dependencies: 5
-- Name: ejercicios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE ejercicios (
    id_ejercicio integer NOT NULL,
    nombre_ejercicios character varying(50) NOT NULL,
    descripcion character varying(100) NOT NULL,
    ejercicio character varying(1000) NOT NULL,
    id_leccion integer NOT NULL
);


ALTER TABLE public.ejercicios OWNER TO postgres;

--
-- TOC entry 165 (class 1259 OID 27594)
-- Dependencies: 5 166
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ejercicios_id_ejercicio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ejercicios_id_ejercicio_seq OWNER TO postgres;

--
-- TOC entry 2024 (class 0 OID 0)
-- Dependencies: 165
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ejercicios_id_ejercicio_seq OWNED BY ejercicios.id_ejercicio;


--
-- TOC entry 170 (class 1259 OID 27615)
-- Dependencies: 5
-- Name: eva_pregunta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE eva_pregunta (
    id_pregunta integer NOT NULL,
    pregunta character varying(100) NOT NULL,
    id_evaluaciones integer NOT NULL
);


ALTER TABLE public.eva_pregunta OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 27613)
-- Dependencies: 170 5
-- Name: eva_pregunta_id_pregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE eva_pregunta_id_pregunta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eva_pregunta_id_pregunta_seq OWNER TO postgres;

--
-- TOC entry 2025 (class 0 OID 0)
-- Dependencies: 169
-- Name: eva_pregunta_id_pregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE eva_pregunta_id_pregunta_seq OWNED BY eva_pregunta.id_pregunta;


--
-- TOC entry 172 (class 1259 OID 27623)
-- Dependencies: 5
-- Name: eva_respuesta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE eva_respuesta (
    id_respuesta integer NOT NULL,
    respuesta character varying(100) NOT NULL,
    id_pregunta integer NOT NULL
);


ALTER TABLE public.eva_respuesta OWNER TO postgres;

--
-- TOC entry 171 (class 1259 OID 27621)
-- Dependencies: 172 5
-- Name: eva_respuesta_id_respuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE eva_respuesta_id_respuesta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eva_respuesta_id_respuesta_seq OWNER TO postgres;

--
-- TOC entry 2026 (class 0 OID 0)
-- Dependencies: 171
-- Name: eva_respuesta_id_respuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE eva_respuesta_id_respuesta_seq OWNED BY eva_respuesta.id_respuesta;


--
-- TOC entry 168 (class 1259 OID 27607)
-- Dependencies: 5
-- Name: evaluaciones; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE evaluaciones (
    id_evaluaciones integer NOT NULL,
    nombre_evaluaciones character varying(100) NOT NULL,
    descripcion character varying(200) NOT NULL,
    id_tema integer NOT NULL
);


ALTER TABLE public.evaluaciones OWNER TO postgres;

--
-- TOC entry 167 (class 1259 OID 27605)
-- Dependencies: 5 168
-- Name: evaluaciones_id_evaluaciones_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE evaluaciones_id_evaluaciones_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluaciones_id_evaluaciones_seq OWNER TO postgres;

--
-- TOC entry 2027 (class 0 OID 0)
-- Dependencies: 167
-- Name: evaluaciones_id_evaluaciones_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE evaluaciones_id_evaluaciones_seq OWNED BY evaluaciones.id_evaluaciones;


--
-- TOC entry 174 (class 1259 OID 27631)
-- Dependencies: 5
-- Name: fuentes_bibliograficas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE fuentes_bibliograficas (
    id_fuentes_bibliograficas integer NOT NULL,
    nombre_fuente_bibliograficas character varying(50) NOT NULL,
    fuente_bibliografica character varying(100) NOT NULL,
    id_leccion integer NOT NULL
);


ALTER TABLE public.fuentes_bibliograficas OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 27629)
-- Dependencies: 5 174
-- Name: fuentes_bibliograficas_id_fuentes_bibliograficas_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE fuentes_bibliograficas_id_fuentes_bibliograficas_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fuentes_bibliograficas_id_fuentes_bibliograficas_seq OWNER TO postgres;

--
-- TOC entry 2028 (class 0 OID 0)
-- Dependencies: 173
-- Name: fuentes_bibliograficas_id_fuentes_bibliograficas_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE fuentes_bibliograficas_id_fuentes_bibliograficas_seq OWNED BY fuentes_bibliograficas.id_fuentes_bibliograficas;


--
-- TOC entry 176 (class 1259 OID 27639)
-- Dependencies: 5
-- Name: leccion; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE leccion (
    id_leccion integer NOT NULL,
    nombre_leccion character varying(50) NOT NULL,
    descripcion character varying(200) NOT NULL,
    leccion character varying(100) NOT NULL,
    id_tema integer NOT NULL
);


ALTER TABLE public.leccion OWNER TO postgres;

--
-- TOC entry 175 (class 1259 OID 27637)
-- Dependencies: 176 5
-- Name: leccion_id_leccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE leccion_id_leccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.leccion_id_leccion_seq OWNER TO postgres;

--
-- TOC entry 2029 (class 0 OID 0)
-- Dependencies: 175
-- Name: leccion_id_leccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE leccion_id_leccion_seq OWNED BY leccion.id_leccion;


--
-- TOC entry 177 (class 1259 OID 27645)
-- Dependencies: 5
-- Name: movimientos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE movimientos (
    fecha date NOT NULL,
    hora time without time zone,
    proceso character varying(100),
    accion character varying(100),
    id_usuario integer NOT NULL,
    usuario character varying(50) NOT NULL
);


ALTER TABLE public.movimientos OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 27660)
-- Dependencies: 5
-- Name: r_pregunta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE r_pregunta (
    id_rpregunta integer NOT NULL,
    pregunta character varying(1000) NOT NULL,
    id_remediales integer NOT NULL
);


ALTER TABLE public.r_pregunta OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 27658)
-- Dependencies: 181 5
-- Name: r_pregunta_id_rpregunta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE r_pregunta_id_rpregunta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.r_pregunta_id_rpregunta_seq OWNER TO postgres;

--
-- TOC entry 2030 (class 0 OID 0)
-- Dependencies: 180
-- Name: r_pregunta_id_rpregunta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE r_pregunta_id_rpregunta_seq OWNED BY r_pregunta.id_rpregunta;


--
-- TOC entry 183 (class 1259 OID 27671)
-- Dependencies: 5
-- Name: r_respuesta; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE r_respuesta (
    id_rrespuesta integer NOT NULL,
    respuesta character varying(1000) NOT NULL,
    id_rpregunta integer NOT NULL
);


ALTER TABLE public.r_respuesta OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 27669)
-- Dependencies: 5 183
-- Name: r_respuesta_id_rrespuesta_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE r_respuesta_id_rrespuesta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.r_respuesta_id_rrespuesta_seq OWNER TO postgres;

--
-- TOC entry 2031 (class 0 OID 0)
-- Dependencies: 182
-- Name: r_respuesta_id_rrespuesta_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE r_respuesta_id_rrespuesta_seq OWNED BY r_respuesta.id_rrespuesta;


--
-- TOC entry 179 (class 1259 OID 27652)
-- Dependencies: 5
-- Name: remediales; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE remediales (
    id_remediales integer NOT NULL,
    nombre_remediales character varying(50) NOT NULL,
    descripcion character varying(100) NOT NULL,
    id_evaluaciones integer NOT NULL
);


ALTER TABLE public.remediales OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 27650)
-- Dependencies: 179 5
-- Name: remediales_id_remediales_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE remediales_id_remediales_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.remediales_id_remediales_seq OWNER TO postgres;

--
-- TOC entry 2032 (class 0 OID 0)
-- Dependencies: 178
-- Name: remediales_id_remediales_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE remediales_id_remediales_seq OWNED BY remediales.id_remediales;


--
-- TOC entry 185 (class 1259 OID 27682)
-- Dependencies: 5
-- Name: temas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE temas (
    id_tema integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion character varying(200) NOT NULL,
    id_usuario integer NOT NULL
);


ALTER TABLE public.temas OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 27680)
-- Dependencies: 185 5
-- Name: temas_id_tema_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE temas_id_tema_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.temas_id_tema_seq OWNER TO postgres;

--
-- TOC entry 2033 (class 0 OID 0)
-- Dependencies: 184
-- Name: temas_id_tema_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE temas_id_tema_seq OWNED BY temas.id_tema;


--
-- TOC entry 187 (class 1259 OID 27690)
-- Dependencies: 5
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE usuarios (
    id_usuario integer NOT NULL,
    login character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    nombre character(50) NOT NULL,
    apellido character(50) NOT NULL,
    correo_electronico character varying(50) NOT NULL,
    profesion character varying(100) NOT NULL,
    tipo_usuario character(11) NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 27688)
-- Dependencies: 5 187
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuarios_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 2034 (class 0 OID 0)
-- Dependencies: 186
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuarios_id_usuario_seq OWNED BY usuarios.id_usuario;


--
-- TOC entry 1933 (class 2604 OID 27577)
-- Dependencies: 162 161 162
-- Name: id_contenido; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenido ALTER COLUMN id_contenido SET DEFAULT nextval('contenido_id_contenido_seq'::regclass);


--
-- TOC entry 1934 (class 2604 OID 27588)
-- Dependencies: 164 163 164
-- Name: id_ejemplos; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejemplos ALTER COLUMN id_ejemplos SET DEFAULT nextval('ejemplos_id_ejemplos_seq'::regclass);


--
-- TOC entry 1935 (class 2604 OID 27599)
-- Dependencies: 166 165 166
-- Name: id_ejercicio; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejercicios ALTER COLUMN id_ejercicio SET DEFAULT nextval('ejercicios_id_ejercicio_seq'::regclass);


--
-- TOC entry 1937 (class 2604 OID 27618)
-- Dependencies: 170 169 170
-- Name: id_pregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY eva_pregunta ALTER COLUMN id_pregunta SET DEFAULT nextval('eva_pregunta_id_pregunta_seq'::regclass);


--
-- TOC entry 1938 (class 2604 OID 27626)
-- Dependencies: 172 171 172
-- Name: id_respuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY eva_respuesta ALTER COLUMN id_respuesta SET DEFAULT nextval('eva_respuesta_id_respuesta_seq'::regclass);


--
-- TOC entry 1936 (class 2604 OID 27610)
-- Dependencies: 168 167 168
-- Name: id_evaluaciones; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evaluaciones ALTER COLUMN id_evaluaciones SET DEFAULT nextval('evaluaciones_id_evaluaciones_seq'::regclass);


--
-- TOC entry 1939 (class 2604 OID 27634)
-- Dependencies: 174 173 174
-- Name: id_fuentes_bibliograficas; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fuentes_bibliograficas ALTER COLUMN id_fuentes_bibliograficas SET DEFAULT nextval('fuentes_bibliograficas_id_fuentes_bibliograficas_seq'::regclass);


--
-- TOC entry 1940 (class 2604 OID 27642)
-- Dependencies: 175 176 176
-- Name: id_leccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY leccion ALTER COLUMN id_leccion SET DEFAULT nextval('leccion_id_leccion_seq'::regclass);


--
-- TOC entry 1942 (class 2604 OID 27663)
-- Dependencies: 180 181 181
-- Name: id_rpregunta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY r_pregunta ALTER COLUMN id_rpregunta SET DEFAULT nextval('r_pregunta_id_rpregunta_seq'::regclass);


--
-- TOC entry 1943 (class 2604 OID 27674)
-- Dependencies: 182 183 183
-- Name: id_rrespuesta; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY r_respuesta ALTER COLUMN id_rrespuesta SET DEFAULT nextval('r_respuesta_id_rrespuesta_seq'::regclass);


--
-- TOC entry 1941 (class 2604 OID 27655)
-- Dependencies: 178 179 179
-- Name: id_remediales; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY remediales ALTER COLUMN id_remediales SET DEFAULT nextval('remediales_id_remediales_seq'::regclass);


--
-- TOC entry 1944 (class 2604 OID 27685)
-- Dependencies: 184 185 185
-- Name: id_tema; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temas ALTER COLUMN id_tema SET DEFAULT nextval('temas_id_tema_seq'::regclass);


--
-- TOC entry 1945 (class 2604 OID 27693)
-- Dependencies: 186 187 187
-- Name: id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 1988 (class 0 OID 27574)
-- Dependencies: 162 2014
-- Data for Name: contenido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contenido (id_contenido, nombre_contenido, descripcion, contenido, id_leccion) FROM stdin;
\.


--
-- TOC entry 2035 (class 0 OID 0)
-- Dependencies: 161
-- Name: contenido_id_contenido_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contenido_id_contenido_seq', 1, false);


--
-- TOC entry 1990 (class 0 OID 27585)
-- Dependencies: 164 2014
-- Data for Name: ejemplos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ejemplos (id_ejemplos, nombre_ejemplos, ejemplo, id_leccion) FROM stdin;
\.


--
-- TOC entry 2036 (class 0 OID 0)
-- Dependencies: 163
-- Name: ejemplos_id_ejemplos_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejemplos_id_ejemplos_seq', 1, false);


--
-- TOC entry 1992 (class 0 OID 27596)
-- Dependencies: 166 2014
-- Data for Name: ejercicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ejercicios (id_ejercicio, nombre_ejercicios, descripcion, ejercicio, id_leccion) FROM stdin;
\.


--
-- TOC entry 2037 (class 0 OID 0)
-- Dependencies: 165
-- Name: ejercicios_id_ejercicio_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ejercicios_id_ejercicio_seq', 1, false);


--
-- TOC entry 1996 (class 0 OID 27615)
-- Dependencies: 170 2014
-- Data for Name: eva_pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY eva_pregunta (id_pregunta, pregunta, id_evaluaciones) FROM stdin;
\.


--
-- TOC entry 2038 (class 0 OID 0)
-- Dependencies: 169
-- Name: eva_pregunta_id_pregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('eva_pregunta_id_pregunta_seq', 1, false);


--
-- TOC entry 1998 (class 0 OID 27623)
-- Dependencies: 172 2014
-- Data for Name: eva_respuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY eva_respuesta (id_respuesta, respuesta, id_pregunta) FROM stdin;
\.


--
-- TOC entry 2039 (class 0 OID 0)
-- Dependencies: 171
-- Name: eva_respuesta_id_respuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('eva_respuesta_id_respuesta_seq', 1, false);


--
-- TOC entry 1994 (class 0 OID 27607)
-- Dependencies: 168 2014
-- Data for Name: evaluaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY evaluaciones (id_evaluaciones, nombre_evaluaciones, descripcion, id_tema) FROM stdin;
\.


--
-- TOC entry 2040 (class 0 OID 0)
-- Dependencies: 167
-- Name: evaluaciones_id_evaluaciones_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('evaluaciones_id_evaluaciones_seq', 1, false);


--
-- TOC entry 2000 (class 0 OID 27631)
-- Dependencies: 174 2014
-- Data for Name: fuentes_bibliograficas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY fuentes_bibliograficas (id_fuentes_bibliograficas, nombre_fuente_bibliograficas, fuente_bibliografica, id_leccion) FROM stdin;
\.


--
-- TOC entry 2041 (class 0 OID 0)
-- Dependencies: 173
-- Name: fuentes_bibliograficas_id_fuentes_bibliograficas_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('fuentes_bibliograficas_id_fuentes_bibliograficas_seq', 1, false);


--
-- TOC entry 2002 (class 0 OID 27639)
-- Dependencies: 176 2014
-- Data for Name: leccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY leccion (id_leccion, nombre_leccion, descripcion, leccion, id_tema) FROM stdin;
\.


--
-- TOC entry 2042 (class 0 OID 0)
-- Dependencies: 175
-- Name: leccion_id_leccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('leccion_id_leccion_seq', 1, false);


--
-- TOC entry 2003 (class 0 OID 27645)
-- Dependencies: 177 2014
-- Data for Name: movimientos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY movimientos (fecha, hora, proceso, accion, id_usuario, usuario) FROM stdin;
\.


--
-- TOC entry 2007 (class 0 OID 27660)
-- Dependencies: 181 2014
-- Data for Name: r_pregunta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY r_pregunta (id_rpregunta, pregunta, id_remediales) FROM stdin;
\.


--
-- TOC entry 2043 (class 0 OID 0)
-- Dependencies: 180
-- Name: r_pregunta_id_rpregunta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('r_pregunta_id_rpregunta_seq', 1, false);


--
-- TOC entry 2009 (class 0 OID 27671)
-- Dependencies: 183 2014
-- Data for Name: r_respuesta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY r_respuesta (id_rrespuesta, respuesta, id_rpregunta) FROM stdin;
\.


--
-- TOC entry 2044 (class 0 OID 0)
-- Dependencies: 182
-- Name: r_respuesta_id_rrespuesta_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('r_respuesta_id_rrespuesta_seq', 1, false);


--
-- TOC entry 2005 (class 0 OID 27652)
-- Dependencies: 179 2014
-- Data for Name: remediales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY remediales (id_remediales, nombre_remediales, descripcion, id_evaluaciones) FROM stdin;
\.


--
-- TOC entry 2045 (class 0 OID 0)
-- Dependencies: 178
-- Name: remediales_id_remediales_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('remediales_id_remediales_seq', 1, false);


--
-- TOC entry 2011 (class 0 OID 27682)
-- Dependencies: 185 2014
-- Data for Name: temas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY temas (id_tema, nombre, descripcion, id_usuario) FROM stdin;
1	¿Qué es una Base de datos?	En este tema se explicara que es una Base de datos así como algunos conceptos básicos de la misma	1
3	Instalación y configuración de PostgreSQL	En este temas obtendrás información acerca de como instalar y configurar PostgreSQL en nuetro ordenador teniendo en cuenta que trabajaremos con sistemas operativos GNU/LINUX	1
\.


--
-- TOC entry 2046 (class 0 OID 0)
-- Dependencies: 184
-- Name: temas_id_tema_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('temas_id_tema_seq', 3, true);


--
-- TOC entry 2013 (class 0 OID 27690)
-- Dependencies: 187 2014
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuarios (id_usuario, login, password, nombre, apellido, correo_electronico, profesion, tipo_usuario, fecha) FROM stdin;
1	daviddsp	dasdasd	david                                             	solórzano                                         	abdsp22@gmail.com	DBA Alcaldia del Caracas	admin      	2013-02-16
\.


--
-- TOC entry 2047 (class 0 OID 0)
-- Dependencies: 186
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuarios_id_usuario_seq', 1, true);


--
-- TOC entry 1947 (class 2606 OID 27582)
-- Dependencies: 162 162 2015
-- Name: contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY contenido
    ADD CONSTRAINT contenido_pkey PRIMARY KEY (id_contenido);


--
-- TOC entry 1949 (class 2606 OID 27593)
-- Dependencies: 164 164 2015
-- Name: ejemplos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_pkey PRIMARY KEY (id_ejemplos);


--
-- TOC entry 1951 (class 2606 OID 27604)
-- Dependencies: 166 166 2015
-- Name: ejercicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_pkey PRIMARY KEY (id_ejercicio);


--
-- TOC entry 1955 (class 2606 OID 27620)
-- Dependencies: 170 170 2015
-- Name: eva_pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_pregunta
    ADD CONSTRAINT eva_pregunta_pkey PRIMARY KEY (id_pregunta);


--
-- TOC entry 1957 (class 2606 OID 27628)
-- Dependencies: 172 172 2015
-- Name: eva_respuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY eva_respuesta
    ADD CONSTRAINT eva_respuesta_pkey PRIMARY KEY (id_respuesta);


--
-- TOC entry 1953 (class 2606 OID 27612)
-- Dependencies: 168 168 2015
-- Name: evaluaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_pkey PRIMARY KEY (id_evaluaciones);


--
-- TOC entry 1959 (class 2606 OID 27636)
-- Dependencies: 174 174 2015
-- Name: fuentes_bibliograficas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY fuentes_bibliograficas
    ADD CONSTRAINT fuentes_bibliograficas_pkey PRIMARY KEY (id_fuentes_bibliograficas);


--
-- TOC entry 1961 (class 2606 OID 27644)
-- Dependencies: 176 176 2015
-- Name: leccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY leccion
    ADD CONSTRAINT leccion_pkey PRIMARY KEY (id_leccion);


--
-- TOC entry 1963 (class 2606 OID 27649)
-- Dependencies: 177 177 2015
-- Name: movimientos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY movimientos
    ADD CONSTRAINT movimientos_pkey PRIMARY KEY (usuario);


--
-- TOC entry 1967 (class 2606 OID 27668)
-- Dependencies: 181 181 2015
-- Name: r_pregunta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY r_pregunta
    ADD CONSTRAINT r_pregunta_pkey PRIMARY KEY (id_rpregunta);


--
-- TOC entry 1969 (class 2606 OID 27679)
-- Dependencies: 183 183 2015
-- Name: r_respuesta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY r_respuesta
    ADD CONSTRAINT r_respuesta_pkey PRIMARY KEY (id_rrespuesta);


--
-- TOC entry 1965 (class 2606 OID 27657)
-- Dependencies: 179 179 2015
-- Name: remediales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY remediales
    ADD CONSTRAINT remediales_pkey PRIMARY KEY (id_remediales);


--
-- TOC entry 1971 (class 2606 OID 27687)
-- Dependencies: 185 185 2015
-- Name: temas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_pkey PRIMARY KEY (id_tema);


--
-- TOC entry 1973 (class 2606 OID 27695)
-- Dependencies: 187 187 2015
-- Name: usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 1974 (class 2606 OID 27711)
-- Dependencies: 162 176 1960 2015
-- Name: contenido_id_leccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contenido
    ADD CONSTRAINT contenido_id_leccion_fkey FOREIGN KEY (id_leccion) REFERENCES leccion(id_leccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1975 (class 2606 OID 27716)
-- Dependencies: 1960 164 176 2015
-- Name: ejemplos_id_leccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejemplos
    ADD CONSTRAINT ejemplos_id_leccion_fkey FOREIGN KEY (id_leccion) REFERENCES leccion(id_leccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1976 (class 2606 OID 27721)
-- Dependencies: 176 166 1960 2015
-- Name: ejercicios_id_leccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ejercicios
    ADD CONSTRAINT ejercicios_id_leccion_fkey FOREIGN KEY (id_leccion) REFERENCES leccion(id_leccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1978 (class 2606 OID 27696)
-- Dependencies: 168 1952 170 2015
-- Name: eva_pregunta_id_evaluaciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY eva_pregunta
    ADD CONSTRAINT eva_pregunta_id_evaluaciones_fkey FOREIGN KEY (id_evaluaciones) REFERENCES evaluaciones(id_evaluaciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1979 (class 2606 OID 27706)
-- Dependencies: 1954 172 170 2015
-- Name: eva_respuesta_id_pregunta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY eva_respuesta
    ADD CONSTRAINT eva_respuesta_id_pregunta_fkey FOREIGN KEY (id_pregunta) REFERENCES eva_pregunta(id_pregunta) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1977 (class 2606 OID 27741)
-- Dependencies: 1970 168 185 2015
-- Name: evaluaciones_id_tema_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY evaluaciones
    ADD CONSTRAINT evaluaciones_id_tema_fkey FOREIGN KEY (id_tema) REFERENCES temas(id_tema) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1980 (class 2606 OID 27726)
-- Dependencies: 176 174 1960 2015
-- Name: fuentes_bibliograficas_id_leccion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY fuentes_bibliograficas
    ADD CONSTRAINT fuentes_bibliograficas_id_leccion_fkey FOREIGN KEY (id_leccion) REFERENCES leccion(id_leccion) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1981 (class 2606 OID 27746)
-- Dependencies: 1970 185 176 2015
-- Name: leccion_id_tema_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY leccion
    ADD CONSTRAINT leccion_id_tema_fkey FOREIGN KEY (id_tema) REFERENCES temas(id_tema) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1982 (class 2606 OID 27751)
-- Dependencies: 1972 177 187 2015
-- Name: movimientos_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY movimientos
    ADD CONSTRAINT movimientos_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1984 (class 2606 OID 27731)
-- Dependencies: 1964 179 181 2015
-- Name: r_pregunta_id_remediales_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY r_pregunta
    ADD CONSTRAINT r_pregunta_id_remediales_fkey FOREIGN KEY (id_remediales) REFERENCES remediales(id_remediales) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1985 (class 2606 OID 27736)
-- Dependencies: 181 183 1966 2015
-- Name: r_respuesta_id_rpregunta_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY r_respuesta
    ADD CONSTRAINT r_respuesta_id_rpregunta_fkey FOREIGN KEY (id_rpregunta) REFERENCES r_pregunta(id_rpregunta) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1983 (class 2606 OID 27701)
-- Dependencies: 179 1952 168 2015
-- Name: remediales_id_evaluaciones_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY remediales
    ADD CONSTRAINT remediales_id_evaluaciones_fkey FOREIGN KEY (id_evaluaciones) REFERENCES evaluaciones(id_evaluaciones) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1986 (class 2606 OID 27756)
-- Dependencies: 185 1972 187 2015
-- Name: temas_id_usuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY temas
    ADD CONSTRAINT temas_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 2020 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-03-05 00:15:35 VET

--
-- PostgreSQL database dump complete
--

