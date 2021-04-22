--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-22 20:09:55

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
-- TOC entry 207 (class 1259 OID 16426)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16424)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3164 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 209 (class 1259 OID 16436)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16434)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3165 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 205 (class 1259 OID 16418)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16416)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 211 (class 1259 OID 16444)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16454)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16452)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 210 (class 1259 OID 16442)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 215 (class 1259 OID 16462)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16460)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 224 (class 1259 OID 16594)
-- Name: contacts_contact; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacts_contact (
    id integer NOT NULL,
    listing character varying(200) NOT NULL,
    listing_id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100) NOT NULL,
    message text NOT NULL,
    contact_date timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.contacts_contact OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16592)
-- Name: contacts_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacts_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_contact_id_seq OWNER TO postgres;

--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 223
-- Name: contacts_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacts_contact_id_seq OWNED BY public.contacts_contact.id;


--
-- TOC entry 217 (class 1259 OID 16522)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16520)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 203 (class 1259 OID 16408)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16406)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 16397)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 218 (class 1259 OID 16553)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16576)
-- Name: listings_listing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.listings_listing (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    address character varying(200) NOT NULL,
    city character varying(100) NOT NULL,
    state character varying(100) NOT NULL,
    zipcode character varying(20) NOT NULL,
    description text NOT NULL,
    price integer NOT NULL,
    bedrooms integer NOT NULL,
    bathrooms numeric(2,1) NOT NULL,
    garage integer NOT NULL,
    sqft integer NOT NULL,
    lot_size numeric(5,1) NOT NULL,
    photo_main character varying(100) NOT NULL,
    photo_1 character varying(100) NOT NULL,
    photo_2 character varying(100) NOT NULL,
    photo_3 character varying(100) NOT NULL,
    photo_4 character varying(100) NOT NULL,
    photo_5 character varying(100) NOT NULL,
    photo_6 character varying(100) NOT NULL,
    is_published boolean NOT NULL,
    list_date timestamp with time zone NOT NULL,
    realtor_id integer NOT NULL
);


ALTER TABLE public.listings_listing OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16574)
-- Name: listings_listing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.listings_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.listings_listing_id_seq OWNER TO postgres;

--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 221
-- Name: listings_listing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.listings_listing_id_seq OWNED BY public.listings_listing.id;


--
-- TOC entry 220 (class 1259 OID 16565)
-- Name: realtors_realtor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.realtors_realtor (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    photo character varying(100) NOT NULL,
    description text NOT NULL,
    phone character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    is_mvp boolean NOT NULL,
    hire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.realtors_realtor OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16563)
-- Name: realtors_realtor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.realtors_realtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.realtors_realtor_id_seq OWNER TO postgres;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 219
-- Name: realtors_realtor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.realtors_realtor_id_seq OWNED BY public.realtors_realtor.id;


--
-- TOC entry 2930 (class 2604 OID 16429)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2931 (class 2604 OID 16439)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 16421)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2932 (class 2604 OID 16447)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2933 (class 2604 OID 16457)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2934 (class 2604 OID 16465)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 16597)
-- Name: contacts_contact id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact ALTER COLUMN id SET DEFAULT nextval('public.contacts_contact_id_seq'::regclass);


--
-- TOC entry 2935 (class 2604 OID 16525)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 16411)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2927 (class 2604 OID 16400)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2938 (class 2604 OID 16579)
-- Name: listings_listing id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing ALTER COLUMN id SET DEFAULT nextval('public.listings_listing_id_seq'::regclass);


--
-- TOC entry 2937 (class 2604 OID 16568)
-- Name: realtors_realtor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor ALTER COLUMN id SET DEFAULT nextval('public.realtors_realtor_id_seq'::regclass);


--
-- TOC entry 3141 (class 0 OID 16426)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3143 (class 0 OID 16436)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3139 (class 0 OID 16418)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add listing	7	add_listing
26	Can change listing	7	change_listing
27	Can delete listing	7	delete_listing
28	Can view listing	7	view_listing
29	Can add realtor	8	add_realtor
30	Can change realtor	8	change_realtor
31	Can delete realtor	8	delete_realtor
32	Can view realtor	8	view_realtor
33	Can add contact	9	add_contact
34	Can change contact	9	change_contact
35	Can delete contact	9	delete_contact
36	Can view contact	9	view_contact
\.


--
-- TOC entry 3145 (class 0 OID 16444)
-- Dependencies: 211
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$Yue6Vby48vNH$8rGq0Hd40+gm/x4Nk0GwyezhpmKLKEeuImOmXvFYd3s=	2021-04-22 19:12:52.005451+05:30	t	admin			admin@admin.com	t	t	2021-04-05 11:05:28.897342+05:30
2	pbkdf2_sha256$216000$9MONm4Q43yTg$hmJpvZziYAQlVs11G8rWFc6st66NmaT1h8PqkRjhYl0=	2021-04-22 19:13:48.311405+05:30	f	jaydev	Jay	Dev	jaydev@example.com	f	t	2021-04-19 21:36:13.096748+05:30
\.


--
-- TOC entry 3147 (class 0 OID 16454)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3149 (class 0 OID 16462)
-- Dependencies: 215
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3158 (class 0 OID 16594)
-- Dependencies: 224
-- Data for Name: contacts_contact; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.contacts_contact (id, listing, listing_id, name, email, phone, message, contact_date, user_id) FROM stdin;
1	12 United Road	5	Jay Dev	jaydev@example.com	1112223333	interested	2021-04-23 00:42:30.695098+05:30	2
\.


--
-- TOC entry 3151 (class 0 OID 16522)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-04-06 21:38:58.143145+05:30	1	Kyle Brown	1	[{"added": {}}]	8	1
2	2021-04-06 22:27:12.511489+05:30	2	Mark Hudson	1	[{"added": {}}]	8	1
3	2021-04-06 22:27:58.787833+05:30	3	Jenny Johnson	1	[{"added": {}}]	8	1
4	2021-04-06 22:32:28.10899+05:30	1	45 Driwood Circle	1	[{"added": {}}]	7	1
5	2021-04-09 11:06:44.344006+05:30	2	18 Jefferson Lane	1	[{"added": {}}]	7	1
6	2021-04-09 11:09:57.907026+05:30	3	187 Woodrow Street	1	[{"added": {}}]	7	1
7	2021-04-09 11:45:57.785107+05:30	4	28 Gifford Street	1	[{"added": {}}]	7	1
8	2021-04-09 11:48:27.426988+05:30	5	12 United Road	1	[{"added": {}}]	7	1
9	2021-04-09 11:50:20.646274+05:30	6	33 Essex Circle	1	[{"added": {}}]	7	1
10	2021-04-15 23:33:01.771953+05:30	3	Jenny Johnson	2	[{"changed": {"fields": ["Is mvp"]}}]	8	1
11	2021-04-15 23:52:27.053509+05:30	2	Mark Hudson	2	[{"changed": {"fields": ["Is mvp"]}}]	8	1
12	2021-04-15 23:52:27.05651+05:30	1	Kyle Brown	2	[{"changed": {"fields": ["Is mvp"]}}]	8	1
13	2021-04-15 23:59:22.785665+05:30	2	Mark Hudson	2	[{"changed": {"fields": ["Is mvp"]}}]	8	1
14	2021-04-15 23:59:22.788663+05:30	1	Kyle Brown	2	[{"changed": {"fields": ["Is mvp"]}}]	8	1
15	2021-04-16 11:15:22.786078+05:30	3	Jenny Johnson	2	[{"changed": {"fields": ["Is mvp"]}}]	8	1
16	2021-04-16 11:15:45.985475+05:30	1	Kyle Brown	2	[{"changed": {"fields": ["Is mvp"]}}]	8	1
\.


--
-- TOC entry 3137 (class 0 OID 16408)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	listings	listing
8	realtors	realtor
9	contacts	contact
\.


--
-- TOC entry 3135 (class 0 OID 16397)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-04-03 19:14:59.399451+05:30
2	auth	0001_initial	2021-04-03 19:14:59.489826+05:30
3	admin	0001_initial	2021-04-03 19:14:59.587197+05:30
4	admin	0002_logentry_remove_auto_add	2021-04-03 19:14:59.612142+05:30
5	admin	0003_logentry_add_action_flag_choices	2021-04-03 19:14:59.629145+05:30
6	contenttypes	0002_remove_content_type_name	2021-04-03 19:14:59.654151+05:30
7	auth	0002_alter_permission_name_max_length	2021-04-03 19:14:59.669153+05:30
8	auth	0003_alter_user_email_max_length	2021-04-03 19:14:59.685157+05:30
9	auth	0004_alter_user_username_opts	2021-04-03 19:14:59.700164+05:30
10	auth	0005_alter_user_last_login_null	2021-04-03 19:14:59.716181+05:30
11	auth	0006_require_contenttypes_0002	2021-04-03 19:14:59.719165+05:30
12	auth	0007_alter_validators_add_error_messages	2021-04-03 19:14:59.733167+05:30
13	auth	0008_alter_user_username_max_length	2021-04-03 19:14:59.772176+05:30
14	auth	0009_alter_user_last_name_max_length	2021-04-03 19:14:59.787251+05:30
15	auth	0010_alter_group_name_max_length	2021-04-03 19:14:59.803982+05:30
16	auth	0011_update_proxy_permissions	2021-04-03 19:14:59.814986+05:30
17	auth	0012_alter_user_first_name_max_length	2021-04-03 19:14:59.82599+05:30
18	sessions	0001_initial	2021-04-03 19:14:59.840007+05:30
19	realtors	0001_initial	2021-04-04 11:16:28.963679+05:30
20	listings	0001_initial	2021-04-04 11:16:28.997619+05:30
21	contacts	0001_initial	2021-04-20 09:17:55.971212+05:30
\.


--
-- TOC entry 3152 (class 0 OID 16553)
-- Dependencies: 218
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
hg236q1zy8tkuumuky8gfkdqmxu0y3pd	.eJxVjEEOwiAQRe_C2hA6OIAu3XsGMjCMVA1NSrsy3l2bdKHb_977LxVpXWpce5njyOqsBnX43RLlR2kb4Du126Tz1JZ5THpT9E67vk5cnpfd_Tuo1Ou3ThjYCoFD501hEkRvpFAYLFuDYMEUAMHEzmE-ZePFI2cEkSMGIPX-AOKjN9E:1lTHue:sB3GmMw24V0Ete8PGH3ReJ8tNC9_l-54_t42Vo-nyhM	2021-04-19 11:06:36.519752+05:30
ay6bph3cxv27ohja6svga4lqdun0iy6w	.eJxVjDsOwjAQBe_iGlnOxj8o6TmDtV6vcQDZUpxUiLuTSCmgnZn33iLgupSwdp7DlMRFgDj9soj05LqL9MB6b5JaXeYpyj2Rh-3y1hK_rkf7d1Cwl23NCXTW2ZN2yEAWbR7RQdTOK29NAqWG8wZUImUHGx0YMkScAdgRjuLzBejgN_Q:1lZZcS:Q-UAZ-ItYtgH2TeqHV55iBAvdz7EdcmCRnQNLdfIX98	2021-05-06 19:13:48.312852+05:30
\.


--
-- TOC entry 3156 (class 0 OID 16576)
-- Dependencies: 222
-- Data for Name: listings_listing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.listings_listing (id, title, address, city, state, zipcode, description, price, bedrooms, bathrooms, garage, sqft, lot_size, photo_main, photo_1, photo_2, photo_3, photo_4, photo_5, photo_6, is_published, list_date, realtor_id) FROM stdin;
1	45 Driwood Circle	45 Driwood Circle	Norwood	MA	02062	Sed quis lacus molestie lectus venenatis eleifend. Proin scelerisque orci eu mauris condimentum consequat. Donec consequat ante est, id ullamcorper nunc aliquet et. Donec lacus quam, pulvinar eu dui sed, lobortis ullamcorper purus. Nunc vel purus eu lectus faucibus facilisis vel in erat. Mauris vulputate magna dui, eu aliquet nisl posuere a. Sed scelerisque turpis dolor, et ornare turpis ultrices vel. Donec aliquam tellus id arcu venenatis mollis.	490000	3	2.0	2	3298	2.3	photos/2021/04/06/home-1.jpg	photos/2021/04/06/home-inside-1.jpg	photos/2021/04/06/home-inside-2.jpg	photos/2021/04/06/home-inside-3.jpg	photos/2021/04/06/home-inside-4.jpg	photos/2021/04/06/home-inside-5.jpg	photos/2021/04/06/home-inside-6.jpg	t	2021-04-07 03:58:09+05:30	1
2	18 Jefferson Lane	18 Jefferson Lane	Woburn	MA	01801	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet felis mauris. Maecenas molestie velit eleifend lacus tincidunt efficitur. Fusce at rhoncus diam, at maximus libero. Cras eget ultricies lectus. Donec in ullamcorper mi. Donec in ex enim. Curabitur vel dapibus urna, in condimentum erat.	550000	4	1.5	1	3200	5.5	photos/2021/04/09/home-2.jpg	photos/2021/04/09/home-inside-1.jpg	photos/2021/04/09/home-inside-2.jpg	photos/2021/04/09/home-inside-3.jpg				t	2021-04-09 16:32:39+05:30	2
3	187 Woodrow Street	187 Woodrow Street	Salem	MA	01915	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet felis mauris. Maecenas molestie velit eleifend lacus tincidunt efficitur. Fusce at rhoncus diam, at maximus libero. Cras eget ultricies lectus. Donec in ullamcorper mi. Donec in ex enim. Curabitur vel dapibus urna, in condimentum erat.	580000	4	3.0	0	3107	2.8	photos/2021/04/09/home-3.jpg	photos/2021/04/09/home-inside-1_OFvxjql.jpg						t	2021-04-09 16:37:20+05:30	2
4	28 Gifford Street	28 Gifford Street	Bedford	NH	03103	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet felis mauris. Maecenas molestie velit eleifend lacus tincidunt efficitur. Fusce at rhoncus diam, at maximus libero. Cras eget ultricies lectus. Donec in ullamcorper mi. Donec in ex enim. Curabitur vel dapibus urna, in condimentum erat.	380000	4	2.0	2	2927	3.0	photos/2021/04/09/home-4.jpg	photos/2021/04/09/home-inside-6.jpg	photos/2021/04/09/home-inside-5.jpg	photos/2021/04/09/home-inside-4.jpg				t	2021-04-09 16:40:31+05:30	3
5	12 United Road	12 United Road	South Hampton	NH	03827	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet felis mauris. Maecenas molestie velit eleifend lacus tincidunt efficitur. Fusce at rhoncus diam, at maximus libero. Cras eget ultricies lectus. Donec in ullamcorper mi. Donec in ex enim. Curabitur vel dapibus urna, in condimentum erat.	230000	3	1.5	1	2207	3.0	photos/2021/04/09/home-5.jpg							t	2021-04-09 17:16:30+05:30	1
6	33 Essex Circle	33 Essex Circle	Lexington	MA	01731	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sit amet felis mauris. Maecenas molestie velit eleifend lacus tincidunt efficitur. Fusce at rhoncus diam, at maximus libero. Cras eget ultricies lectus. Donec in ullamcorper mi. Donec in ex enim. Curabitur vel dapibus urna, in condimentum erat.	780000	5	3.5	1	4121	3.0	photos/2021/04/09/home-6.jpg	photos/2021/04/09/home-inside-5_yhga9Fq.jpg						t	2021-04-09 17:18:30+05:30	1
\.


--
-- TOC entry 3154 (class 0 OID 16565)
-- Dependencies: 220
-- Data for Name: realtors_realtor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.realtors_realtor (id, name, photo, description, phone, email, is_mvp, hire_date) FROM stdin;
2	Mark Hudson	photos/2021/04/06/mark.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum mollis nisi, eget scelerisque sapien blandit ac. Donec vitae tincidunt magna, eu sagittis tortor. Sed sem augue, blandit non lectus vel, luctus tincidunt diam. Sed nec felis at arcu aliquet eleifend dapibus id lectus.	444-444-4444	mark@example.com	f	2020-12-02 03:56:08+05:30
3	Jenny Johnson	photos/2021/04/06/jenny.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum mollis nisi, eget scelerisque sapien blandit ac. Donec vitae tincidunt magna, eu sagittis tortor. Sed sem augue, blandit non lectus vel, luctus tincidunt diam. Sed nec felis at arcu aliquet eleifend dapibus id lectus.	333-333-3333	jenny@example.com	f	2021-04-07 03:57:15+05:30
1	Kyle Brown	photos/2021/04/06/kyle.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam bibendum mollis nisi, eget scelerisque sapien blandit ac. Donec vitae tincidunt magna, eu sagittis tortor. Sed sem augue, blandit non lectus vel, luctus tincidunt diam. Sed nec felis at arcu aliquet eleifend dapibus id lectus.	555-555-5555	kyle@example.com	t	2019-08-02 03:05:19+05:30
\.


--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 223
-- Name: contacts_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacts_contact_id_seq', 1, true);


--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 221
-- Name: listings_listing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.listings_listing_id_seq', 6, true);


--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 219
-- Name: realtors_realtor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.realtors_realtor_id_seq', 3, true);


--
-- TOC entry 2953 (class 2606 OID 16551)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2958 (class 2606 OID 16478)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2961 (class 2606 OID 16441)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2955 (class 2606 OID 16431)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2948 (class 2606 OID 16469)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2950 (class 2606 OID 16423)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2969 (class 2606 OID 16459)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2972 (class 2606 OID 16493)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2963 (class 2606 OID 16449)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2975 (class 2606 OID 16467)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2978 (class 2606 OID 16507)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2966 (class 2606 OID 16545)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2993 (class 2606 OID 16602)
-- Name: contacts_contact contacts_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacts_contact
    ADD CONSTRAINT contacts_contact_pkey PRIMARY KEY (id);


--
-- TOC entry 2981 (class 2606 OID 16531)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2943 (class 2606 OID 16415)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2945 (class 2606 OID 16413)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2941 (class 2606 OID 16405)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2985 (class 2606 OID 16560)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2990 (class 2606 OID 16584)
-- Name: listings_listing listings_listing_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_pkey PRIMARY KEY (id);


--
-- TOC entry 2988 (class 2606 OID 16573)
-- Name: realtors_realtor realtors_realtor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.realtors_realtor
    ADD CONSTRAINT realtors_realtor_pkey PRIMARY KEY (id);


--
-- TOC entry 2951 (class 1259 OID 16552)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2956 (class 1259 OID 16489)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2959 (class 1259 OID 16490)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2946 (class 1259 OID 16475)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2967 (class 1259 OID 16505)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2970 (class 1259 OID 16504)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2973 (class 1259 OID 16519)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2976 (class 1259 OID 16518)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2964 (class 1259 OID 16546)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2979 (class 1259 OID 16542)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2982 (class 1259 OID 16543)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2983 (class 1259 OID 16562)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2986 (class 1259 OID 16561)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2991 (class 1259 OID 16590)
-- Name: listings_listing_realtor_id_90583529; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX listings_listing_realtor_id_90583529 ON public.listings_listing USING btree (realtor_id);


--
-- TOC entry 2996 (class 2606 OID 16484)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2995 (class 2606 OID 16479)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2994 (class 2606 OID 16470)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2998 (class 2606 OID 16499)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2997 (class 2606 OID 16494)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3000 (class 2606 OID 16513)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2999 (class 2606 OID 16508)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3001 (class 2606 OID 16532)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3002 (class 2606 OID 16537)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3003 (class 2606 OID 16585)
-- Name: listings_listing listings_listing_realtor_id_90583529_fk_realtors_realtor_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.listings_listing
    ADD CONSTRAINT listings_listing_realtor_id_90583529_fk_realtors_realtor_id FOREIGN KEY (realtor_id) REFERENCES public.realtors_realtor(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-04-22 20:09:56

--
-- PostgreSQL database dump complete
--

