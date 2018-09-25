--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4 (Debian 10.4-2.pgdg90+1)
-- Dumped by pg_dump version 10.4 (Debian 10.4-2.pgdg90+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: bond; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.bond (
    id integer NOT NULL,
    "offerType" character varying,
    ticker character varying,
    "shortName" character varying,
    "fullName" character varying,
    "publicName" character varying,
    "latName" character varying,
    "unicIssuerName" character varying,
    "catalogId" character varying,
    currency character varying NOT NULL,
    info character varying(700),
    "offerLink" character varying,
    status character varying NOT NULL,
    "minDailyPrice" real,
    "maxDailyPrice" real,
    "yieldToMaturity" real,
    "yieldToPut" real,
    "accruedCouponYield" real,
    "couponValue" real,
    "faceValue" real,
    "couponYieldCicle" integer,
    "issuerId" integer,
    "supplierId" integer,
    "bondMaturityDate" timestamp with time zone,
    "buyBackDate" timestamp with time zone,
    "couponPaymentDate" timestamp with time zone,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now(),
    "lastDealPrice" real,
    "couponPercent" real,
    "lotSize" integer
);


ALTER TABLE public.bond OWNER TO gorod;

--
-- Name: bond_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.bond_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bond_id_seq OWNER TO gorod;

--
-- Name: bond_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.bond_id_seq OWNED BY public.bond.id;


--
-- Name: etf; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.etf (
    id integer NOT NULL,
    "supplierId" integer,
    "issuerId" integer,
    "offerType" character varying,
    name character varying,
    status character varying NOT NULL,
    logo character varying,
    "sharePrice" real NOT NULL,
    "yearOneYield" real,
    "yearThreeYield" real,
    "minAmount" real NOT NULL,
    currency character varying NOT NULL,
    info character varying(700),
    "offerLink" character varying,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now(),
    ticker character varying,
    "shortName" character varying,
    "fullName" character varying,
    "oneMonthYield" real,
    "sixMonthYield" real,
    "yearYield" real,
    "lastPrice" real,
    "bidPrice" real,
    "offerPrice" real,
    "lotSize" integer
);


ALTER TABLE public.etf OWNER TO gorod;

--
-- Name: etf_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.etf_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.etf_id_seq OWNER TO gorod;

--
-- Name: etf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.etf_id_seq OWNED BY public.etf.id;


--
-- Name: issuer; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.issuer (
    id integer NOT NULL,
    ticker character varying,
    name character varying,
    status character varying NOT NULL,
    logo character varying,
    "coverLogo" character varying,
    info character varying(700),
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now(),
    "unicIssuerName" character varying,
    "publicName" character varying,
    color integer
);


ALTER TABLE public.issuer OWNER TO gorod;

--
-- Name: issuer_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.issuer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.issuer_id_seq OWNER TO gorod;

--
-- Name: issuer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.issuer_id_seq OWNED BY public.issuer.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.migrations OWNER TO gorod;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO gorod;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: mutualfund; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.mutualfund (
    id integer NOT NULL,
    "supplierId" integer,
    "issuerId" integer,
    "offerType" character varying,
    name character varying,
    status character varying NOT NULL,
    logo character varying,
    "sharePrice" integer NOT NULL,
    "yearOneYield" integer,
    "yearThreeYield" integer,
    "minAmount" integer NOT NULL,
    currency character varying NOT NULL,
    info character varying(700),
    "offerLink" character varying,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now(),
    color integer
);


ALTER TABLE public.mutualfund OWNER TO gorod;

--
-- Name: mutualfund_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.mutualfund_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mutualfund_id_seq OWNER TO gorod;

--
-- Name: mutualfund_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.mutualfund_id_seq OWNED BY public.mutualfund.id;


--
-- Name: offer; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.offer (
    id integer NOT NULL,
    "supplierId" integer NOT NULL,
    name character varying,
    status character varying NOT NULL,
    type character varying,
    logo character varying,
    "minAmount" integer,
    "expProfit" double precision,
    "currentProfit" double precision,
    "maxAmount" integer,
    "minPeriod" integer,
    "maxPeriod" integer,
    "depositionAllowed" boolean,
    "depositionMinAmount" integer,
    "depositionMaxAmount" integer,
    "earlyWithdrawalCash" boolean,
    "earlyWithdrawalInterest" boolean,
    currency character varying NOT NULL,
    "taxDeductionAllowed" boolean,
    "investmentProtection" boolean,
    info character varying(700),
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now()
);


ALTER TABLE public.offer OWNER TO gorod;

--
-- Name: offer_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.offer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.offer_id_seq OWNER TO gorod;

--
-- Name: offer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.offer_id_seq OWNED BY public.offer.id;


--
-- Name: pif; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.pif (
    id integer NOT NULL,
    "supplierId" integer,
    name character varying,
    status character varying NOT NULL,
    logo character varying,
    "minAmount" integer,
    "maxAmount" integer,
    "bidPrice" integer,
    "sixMonthYield" double precision,
    "oneYearYield" double precision,
    "minPeriod" integer,
    "maxPeriod" integer,
    "depositionAllowed" boolean,
    "depositionMinAmount" integer,
    "depositionMaxAmount" integer,
    "earlyWithdrawalCash" boolean,
    "earlyWithdrawalInterest" boolean,
    currency character varying NOT NULL,
    "taxDeductionAllowed" boolean,
    "investmentProtection" boolean,
    info character varying(700),
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now(),
    color integer,
    "offerType" character varying
);


ALTER TABLE public.pif OWNER TO gorod;

--
-- Name: pif_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.pif_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pif_id_seq OWNER TO gorod;

--
-- Name: pif_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.pif_id_seq OWNED BY public.pif.id;


--
-- Name: stock; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.stock (
    id integer NOT NULL,
    "supplierId" integer,
    "issuerId" integer,
    "offerType" character varying,
    ticker character varying,
    "shortName" character varying,
    "fullName" character varying,
    "latName" character varying,
    "unicIssuerName" character varying,
    status character varying,
    logo character varying,
    "oneMonthYield" real,
    "sixMonthYield" real,
    "yearYield" real,
    "lastPrice" real,
    "bidPrice" real,
    "offerPrice" real,
    "lotSize" integer,
    "minAmount" real,
    currency character varying,
    info character varying(700),
    "offerLink" character varying,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now(),
    "publicName" character varying
);


ALTER TABLE public.stock OWNER TO gorod;

--
-- Name: stock_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stock_id_seq OWNER TO gorod;

--
-- Name: stock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.stock_id_seq OWNED BY public.stock.id;


--
-- Name: supplier; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.supplier (
    id integer NOT NULL,
    name character varying,
    status character varying NOT NULL,
    logo character varying,
    "coverLogo" character varying,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now()
);


ALTER TABLE public.supplier OWNER TO gorod;

--
-- Name: supplier_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.supplier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supplier_id_seq OWNER TO gorod;

--
-- Name: supplier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.supplier_id_seq OWNED BY public.supplier.id;


--
-- Name: user_profile; Type: TABLE; Schema: public; Owner: gorod
--

CREATE TABLE public.user_profile (
    id integer NOT NULL,
    email character varying,
    password character varying,
    status character varying NOT NULL,
    role character varying NOT NULL,
    "facebookId" character varying,
    "odnoklassnikiId" character varying,
    "twitterId" character varying,
    "vkontakteId" character varying,
    "createdAt" timestamp with time zone DEFAULT now(),
    "updatedAt" timestamp with time zone DEFAULT now()
);


ALTER TABLE public.user_profile OWNER TO gorod;

--
-- Name: user_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: gorod
--

CREATE SEQUENCE public.user_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_profile_id_seq OWNER TO gorod;

--
-- Name: user_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: gorod
--

ALTER SEQUENCE public.user_profile_id_seq OWNED BY public.user_profile.id;


--
-- Name: bond id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.bond ALTER COLUMN id SET DEFAULT nextval('public.bond_id_seq'::regclass);


--
-- Name: etf id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.etf ALTER COLUMN id SET DEFAULT nextval('public.etf_id_seq'::regclass);


--
-- Name: issuer id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.issuer ALTER COLUMN id SET DEFAULT nextval('public.issuer_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: mutualfund id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.mutualfund ALTER COLUMN id SET DEFAULT nextval('public.mutualfund_id_seq'::regclass);


--
-- Name: offer id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.offer ALTER COLUMN id SET DEFAULT nextval('public.offer_id_seq'::regclass);


--
-- Name: pif id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.pif ALTER COLUMN id SET DEFAULT nextval('public.pif_id_seq'::regclass);


--
-- Name: stock id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.stock ALTER COLUMN id SET DEFAULT nextval('public.stock_id_seq'::regclass);


--
-- Name: supplier id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.supplier ALTER COLUMN id SET DEFAULT nextval('public.supplier_id_seq'::regclass);


--
-- Name: user_profile id; Type: DEFAULT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.user_profile ALTER COLUMN id SET DEFAULT nextval('public.user_profile_id_seq'::regclass);


--
-- Data for Name: bond; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.bond (id, "offerType", ticker, "shortName", "fullName", "publicName", "latName", "unicIssuerName", "catalogId", currency, info, "offerLink", status, "minDailyPrice", "maxDailyPrice", "yieldToMaturity", "yieldToPut", "accruedCouponYield", "couponValue", "faceValue", "couponYieldCicle", "issuerId", "supplierId", "bondMaturityDate", "buyBackDate", "couponPaymentDate", "createdAt", "updatedAt", "lastDealPrice", "couponPercent", "lotSize") FROM stdin;
1	bond	RU000A0JNYN1	МГор48-об	Гор.Обл.Займ Москвы 48 в.	\N	Moscow-48	moscow	RU000A0JNYN1	RUB	\N	\N	PUBLISHED	\N	\N	8.31000042	8.31000042	17.4200001	30.0799999	1000	183	197	1	2022-06-11 03:00:00+03	1970-01-01 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:08.977263+03	2018-09-25 17:54:08.977263+03	93220	6	1
2	bond	RU000A0JPJE6	ДОМ.РФ10об	ДОМ.РФ (АО) обл. сер.А10	\N	DOM.RF - 10	dom.rf 	RU000A0JPJE6	RUB	\N	\N	PUBLISHED	\N	\N	0.870000005	0.870000005	2.25999999	5.07000017	250	92	198	1	2018-11-15 03:00:00+03	1970-01-01 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:08.998472+03	2018-09-25 17:54:08.998472+03	0	8.05000019	1
3	bond	RU000A0JQ1H3	РСХБ 5	"Россельхозбанк" (АО) обл.05	\N	Rosselhozbank 05	rosselhozbank 	RU000A0JQ1H3	RUB	\N	\N	PUBLISHED	\N	\N	-0.930000007	-0.930000007	24.7800007	37.9000015	1000	182	199	1	2018-11-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:09.013448+03	2018-09-25 17:54:09.013448+03	0	7.5999999	1
4	bond	RU000A0JQ557	Газпрнефт4	Газпром нефть ПАО 04 об	\N	Gazprom neft 04	gazprom neft 	RU000A0JQ557	RUB	\N	\N	PUBLISHED	\N	\N	6.92999983	6.92999983	0.460000008	0.5	1000	182	200	1	2019-04-09 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:09.036164+03	2018-09-25 17:54:09.036164+03	96520	0.100000001	1
5	bond	RU000A0JQ5C5	НПФ 01	"НПФ" ООО об.сер. 01	\N	NPF 01	npf 	RU000A0JQ5C5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	469.589996	1000.54999	1000	7304	201	1	2029-05-06 03:00:00+03	1970-01-01 03:00:00+03	2029-05-06 03:00:00+03	2018-09-25 17:54:09.048482+03	2018-09-25 17:54:09.048482+03	0	5	1
6	bond	RU000A0JQ5Q5	РЖД-12обл	"Российские ЖД" ОАО 12 обл.	\N	RZhD 12	rzhd 	RU000A0JQ5Q5	RUB	\N	\N	PUBLISHED	\N	\N	3.31999993	3.31999993	0.360000014	0.5	1000	182	202	1	2019-05-16 03:00:00+03	1970-01-01 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:09.060419+03	2018-09-25 17:54:09.060419+03	98000	0.100000001	1
7	bond	RU000A0JQ7X7	РЖД-18 обл	"Российские ЖД" ОАО 18 обл.	\N	RZhD 18	rzhd 	RU000A0JQ7X7	RUB	\N	\N	PUBLISHED	\N	\N	7.69999981	7.69999981	16.4400005	42.1300011	1000	182	202	1	2019-07-15 03:00:00+03	1970-01-01 03:00:00+03	2019-01-14 03:00:00+03	2018-09-25 17:54:09.073549+03	2018-09-25 17:54:09.073549+03	0	8.44999981	1
8	bond	RU000A0JQ7Z2	РЖД-19 обл	"Российские ЖД" ОАО 19 обл.	\N	RZhD 19	rzhd 	RU000A0JQ7Z2	RUB	\N	\N	PUBLISHED	\N	\N	7.78000021	7.78000021	14.1000004	36.1500015	1000	182	202	1	2024-07-08 03:00:00+03	2019-07-15 03:00:00+03	2019-01-14 03:00:00+03	2018-09-25 17:54:09.084288+03	2018-09-25 17:54:09.084288+03	0	7.25	1
9	bond	RU000A0JQ8V9	Мечел  4об	Мечел ПАО 04 обл.	\N	Mechel 4	mechel 	RU000A0JQ8V9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	11.6000004	15.5200005	600	91	203	1	2021-07-15 03:00:00+03	1970-01-01 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:09.096136+03	2018-09-25 17:54:09.096136+03	0	10.375	1
10	bond	RU000A0JQAL8	ДОМ.РФ14об	ДОМ.РФ (АО) обл. сер. А14	\N	DOM.RF-14	dom.rf	RU000A0JQAL8	RUB	\N	\N	PUBLISHED	\N	\N	-35.5400009	-35.5400009	35.5299988	49.1500015	1000	184	204	1	2023-05-15 03:00:00+03	2018-11-15 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:09.10828+03	2018-09-25 17:54:09.10828+03	0	9.75	1
11	bond	RU000A0JQAM6	ДОМ.РФ15об	ДОМ.РФ (АО) обл. сер. А15	\N	DOM.RF-15	dom.rf	RU000A0JQAM6	RUB	\N	\N	PUBLISHED	\N	\N	-15.9399996	-15.9399996	2.67000008	48.3499985	1000	181	204	1	2028-09-15 03:00:00+03	2019-03-15 03:00:00+03	2019-03-15 03:00:00+03	2018-09-25 17:54:09.120314+03	2018-09-25 17:54:09.120314+03	0	9.75	1
12	bond	RU000A0JQCR1	Транснф 03	Транснефть ПАО об.сер. 03	\N	Transneft 03	transneft 	RU000A0JQCR1	RUB	\N	\N	PUBLISHED	\N	\N	8.13000011	8.13000011	1.98000002	120.169998	1000	364	205	1	2019-09-18 03:00:00+03	1970-01-01 03:00:00+03	2019-09-18 03:00:00+03	2018-09-25 17:54:09.132222+03	2018-09-25 17:54:09.132222+03	0	12.0500002	1
13	bond	RU000A0JQHM1	МГор66-об	Гор.Обл.Займ Москвы 66 в.	\N	Moscow-66	moscow	RU000A0JQHM1	RUB	\N	\N	PUBLISHED	\N	\N	8	8	9.03999996	25.2099991	1000	92	197	1	2018-11-23 03:00:00+03	1970-01-01 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:09.144107+03	2018-09-25 17:54:09.144107+03	100350	10	1
14	bond	RU000A0JQK64	РСХБ 8	"Россельхозбанк" (АО) обл.08	\N	Rosselhozbank 08	rosselhozbank 	RU000A0JQK64	RUB	\N	\N	PUBLISHED	\N	\N	8.03999996	8.03999996	25.1200008	34.9000015	1000	182	199	1	2019-11-14 03:00:00+03	1970-01-01 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:09.155874+03	2018-09-25 17:54:09.155874+03	0	7	1
15	bond	RU000A0JQK72	РСХБ 9	"Россельхозбанк" (АО) обл.09	\N	Rosselhozbank 09	rosselhozbank 	RU000A0JQK72	RUB	\N	\N	PUBLISHED	\N	\N	8.56999969	8.56999969	25.1200008	34.9000015	1000	182	199	1	2019-11-14 03:00:00+03	1970-01-01 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:09.17212+03	2018-09-25 17:54:09.17212+03	0	7	1
16	bond	RU000A0JQRD9	РЖД-23 обл	"Российские ЖД" ОАО 23 обл.	\N	RZhD 23	rzhd 	RU000A0JQRD9	RUB	\N	\N	PUBLISHED	\N	\N	7.42999983	7.42999983	12.1199999	36.1500015	1000	182	202	1	2025-01-16 03:00:00+03	2019-07-25 03:00:00+03	2019-01-24 03:00:00+03	2018-09-25 17:54:09.184019+03	2018-09-25 17:54:09.184019+03	99950	7.25	1
17	bond	RU000A0JQS09	РСХБ 10	"Россельхозбанк" (АО) обл.10	\N	Rosselhozbank 10	rosselhozbank 	RU000A0JQS09	RUB	\N	\N	PUBLISHED	\N	\N	8.46000004	8.46000004	12.5100002	41.3899994	1000	182	199	1	2020-01-29 03:00:00+03	1970-01-01 03:00:00+03	2019-01-30 03:00:00+03	2018-09-25 17:54:09.195807+03	2018-09-25 17:54:09.195807+03	0	8.30000019	1
18	bond	RU000A0JQS74	РСХБ 11	"Россельхозбанк" (АО) обл.11	\N	Rosselhozbank 11	rosselhozbank 	RU000A0JQS74	RUB	\N	\N	PUBLISHED	\N	\N	8.07999992	8.07999992	12.2799997	41.3899994	1000	182	199	1	2020-01-30 03:00:00+03	1970-01-01 03:00:00+03	2019-01-31 03:00:00+03	2018-09-25 17:54:09.20885+03	2018-09-25 17:54:09.20885+03	0	8.30000019	1
19	bond	RU000A0JQXG0	ДОМ.РФ16об	ДОМ.РФ (АО) обл. сер. А16	\N	DOM.RF - 16	dom.rf 	RU000A0JQXG0	RUB	\N	\N	PUBLISHED	\N	\N	7.76000023	7.76000023	1.36000001	12.3400002	600	91	198	1	2021-09-15 03:00:00+03	1970-01-01 03:00:00+03	2018-12-15 03:00:00+03	2018-09-25 17:54:09.219886+03	2018-09-25 17:54:09.219886+03	0	8.25	1
20	bond	RU000A0JQXR7	СУЭК-Фин01	СУЭК-Финанс ООО об. 01	\N	SUEK-Finans OOO 01	suek-finans ooo 	RU000A0JQXR7	RUB	\N	\N	PUBLISHED	\N	\N	6.19999981	6.19999981	0.0199999996	0.0500000007	1000	182	206	1	2020-06-26 03:00:00+03	1970-01-01 03:00:00+03	2018-12-28 03:00:00+03	2018-09-25 17:54:09.231903+03	2018-09-25 17:54:09.231903+03	0	0.00999999978	1
21	bond	RU000A0JQY35	АИЖК-10 А2	ИА АИЖК 2010-1 об.кл.А2	\N	Ipotech.agent AIZHK 2010-01 A2	ipotech.agent aizhk 	RU000A0JQY35	RUB	\N	\N	PUBLISHED	\N	\N	7.15999985	7.15999985	0.569999993	1.45000005	63.7900009	92	207	1	2042-11-20 03:00:00+03	2018-11-20 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:09.243552+03	2018-09-25 17:54:09.243552+03	0	9	1
22	bond	RU000A0JQYU9	НефГазХол3	Нефтегазхолдинг АО обл.серия03	\N	NefGazHol-03	nefgazhol	RU000A0JQYU9	RUB	\N	\N	PUBLISHED	\N	\N	0.0299999993	0.0299999993	0.0199999996	0.0500000007	1000	182	208	1	2020-07-21 03:00:00+03	1970-01-01 03:00:00+03	2019-01-22 03:00:00+03	2018-09-25 17:54:09.255704+03	2018-09-25 17:54:09.255704+03	0	0.00999999978	1
23	bond	RU000A0JR043	ЕАБР02	Евразийский банк развития 02	\N	Evraziyskiy bank razvitiya 02	evraziyskiy bank razvitiya 	RU000A0JR043	RUB	\N	\N	PUBLISHED	\N	\N	8.14999962	8.14999962	7.5	20.6900005	1000	91	209	1	2019-02-21 03:00:00+03	1970-01-01 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:09.267667+03	2018-09-25 17:54:09.267667+03	0	\N	1
24	bond	RU000A0JR050	ЕАБР01	Евразийский банк развития 01	\N	Evraziyskiy bank razvitiya 01	evraziyskiy bank razvitiya 	RU000A0JR050	RUB	\N	\N	PUBLISHED	\N	\N	3.92000008	3.92000008	14.5200005	23.1900005	1000	91	209	1	2019-01-28 03:00:00+03	1970-01-01 03:00:00+03	2018-10-29 03:00:00+03	2018-09-25 17:54:09.285317+03	2018-09-25 17:54:09.285317+03	0	\N	1
25	bond	RU000A0JR0J0	Мечел 14об	Мечел ПАО 14 обл.	\N	Mechel 14	mechel 	RU000A0JR0J0	RUB	\N	\N	PUBLISHED	\N	\N	11.6999998	11.6999998	5.17000008	33.5999985	550	182	203	1	2020-02-25 03:00:00+03	2019-02-26 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:09.295775+03	2018-09-25 17:54:09.295775+03	55181.5	12.25	1
26	bond	RU000A0JR0K8	Мечел 13об	Мечел ПАО 13 обл.	\N	Mechel 13	mechel 	RU000A0JR0K8	RUB	\N	\N	PUBLISHED	\N	\N	11.5200005	11.5200005	5.17000008	33.5999985	550	182	203	1	2020-02-25 03:00:00+03	2019-02-26 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:09.307689+03	2018-09-25 17:54:09.307689+03	55220	12.25	1
27	bond	RU000A0JR183	ЕБРР 06обл	ЕБРР 06	\N	EBRR-06	ebrr	RU000A0JR183	RUB	\N	\N	PUBLISHED	\N	\N	0	0	520684.938	525000	3.5e+09	365	210	1	2018-09-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:09.319611+03	2018-09-25 17:54:09.319611+03	0	\N	1
28	bond	RU000A0JR191	ЕБРР 07обл	ЕБРР 07	\N	EBRR-07	ebrr	RU000A0JR191	RUB	\N	\N	PUBLISHED	\N	\N	0	0	520684.938	525000	3.5e+09	365	210	1	2018-09-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:09.335991+03	2018-09-25 17:54:09.335991+03	0	\N	1
29	bond	RU000A0JR1A7	ЕБРР 08обл	ЕБРР 08	\N	EBRR-08	ebrr	RU000A0JR1A7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	640547.938	700000	7e+09	365	210	1	2018-10-26 03:00:00+03	1970-01-01 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:09.347557+03	2018-09-25 17:54:09.347557+03	0	\N	1
30	bond	RU000A0JR1Y7	ФСК ЕЭС-06	"ФСК ЕЭС"(ПАО)-обл. сер.06	\N	FSK EES 06	fsk ees 	RU000A0JR1Y7	RUB	\N	\N	PUBLISHED	\N	\N	6.96000004	6.96000004	1.58000004	41.1399994	1000	182	211	1	2020-09-15 03:00:00+03	1970-01-01 03:00:00+03	2019-03-19 03:00:00+03	2018-09-25 17:54:09.359608+03	2018-09-25 17:54:09.359608+03	0	8.25	1
31	bond	RU000A0JR1Z4	ФСК ЕЭС-07	"ФСК ЕЭС"(ПАО)-обл. сер.07	\N	FSK EES 07	fsk ees 	RU000A0JR1Z4	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	32.4700012	37.4000015	1000	182	211	1	2020-10-16 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:09.371428+03	2018-09-25 17:54:09.371428+03	0	7.5	1
32	bond	RU000A0JR209	ФСК ЕЭС-08	"ФСК ЕЭС"(ПАО)-обл. сер.08	\N	FSK EES 08	fsk ees 	RU000A0JR209	RUB	\N	\N	PUBLISHED	\N	\N	8.13000011	8.13000011	1.58000004	41.1399994	1000	182	211	1	2020-09-15 03:00:00+03	1970-01-01 03:00:00+03	2019-03-19 03:00:00+03	2018-09-25 17:54:09.384093+03	2018-09-25 17:54:09.384093+03	0	8.25	1
33	bond	RU000A0JR217	ФСК ЕЭС-10	"ФСК ЕЭС"(ПАО)-обл. сер.10	\N	FSK EES 10	fsk ees 	RU000A0JR217	RUB	\N	\N	PUBLISHED	\N	\N	7.21000004	7.21000004	1.49000001	38.6399994	1000	182	211	1	2020-09-15 03:00:00+03	1970-01-01 03:00:00+03	2019-03-19 03:00:00+03	2018-09-25 17:54:09.395194+03	2018-09-25 17:54:09.395194+03	0	7.75	1
34	bond	RU000A0JR3G0	ВЭБ 08	Внешэкономбанк об. сер. 08	\N	Vneshekonombank 08	vneshekonombank 	RU000A0JR3G0	RUB	\N	\N	PUBLISHED	\N	\N	8.96000004	8.96000004	42.7900009	48.3699989	1000	182	212	1	2020-10-13 03:00:00+03	1970-01-01 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:09.416183+03	2018-09-25 17:54:09.416183+03	0	9.69999981	1
35	bond	RU000A0JR3H8	ВЭБ 06	Внешэкономбанк об. сер. 06	\N	Vneshekonombank 06	vneshekonombank 	RU000A0JR3H8	RUB	\N	\N	PUBLISHED	\N	\N	8.64000034	8.64000034	36.9599991	41.7900009	1000	182	212	1	2020-10-13 03:00:00+03	1970-01-01 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:09.43243+03	2018-09-25 17:54:09.43243+03	99850	8.38000011	1
36	bond	RU000A0JR3L0	ФСК ЕЭС-11	"ФСК ЕЭС"(ПАО)-обл. сер.11	\N	FSK EES 11	fsk ees 	RU000A0JR3L0	RUB	\N	\N	PUBLISHED	\N	\N	2.68000007	2.68000007	0.430000007	0.5	1000	182	211	1	2020-10-16 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:09.44865+03	2018-09-25 17:54:09.44865+03	0	0.100000001	1
37	bond	RU000A0JR3M8	ФСК ЕЭС-09	"ФСК ЕЭС"(ПАО)-обл. сер.09	\N	FSK EES 09	fsk ees 	RU000A0JR3M8	RUB	\N	\N	PUBLISHED	\N	\N	0.109999999	0.109999999	0.430000007	0.5	1000	182	211	1	2020-10-16 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:09.469096+03	2018-09-25 17:54:09.469096+03	0	0.100000001	1
38	bond	RU000A0JR4J2	МТС 08	Мобильные ТелеСистемы ПАО об 8	\N	MTS 08	mts 	RU000A0JR4J2	RUB	\N	\N	PUBLISHED	\N	\N	26.2199993	26.2199993	28.7700005	37.4000015	1000	182	213	1	2020-11-03 03:00:00+03	2018-11-06 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:09.484691+03	2018-09-25 17:54:09.484691+03	98120	7.5	1
39	bond	RU000A0JR4U9	ГлДорога 3	Главная дорога АО об.сер. 03	\N	Glavnaya doroga 03	glavnaya doroga 	RU000A0JR4U9	RUB	\N	\N	PUBLISHED	\N	\N	272.109985	272.109985	38.9599991	44.8800011	1000	364	214	1	2028-10-30 03:00:00+03	2018-11-12 03:00:00+03	2018-11-12 03:00:00+03	2018-09-25 17:54:09.500653+03	2018-09-25 17:54:09.500653+03	0	4.5	1
40	bond	RU000A0JR4Z8	ЕвроХим 03	ЕвроХим МХК АО об. 03	\N	EvroHim MHK AO 03	evrohim mhk ao 	RU000A0JR4Z8	RUB	\N	\N	PUBLISHED	\N	\N	7	7	29.8400002	41.1399994	1000	182	215	1	2018-11-14 03:00:00+03	1970-01-01 03:00:00+03	2018-11-14 03:00:00+03	2018-09-25 17:54:09.516711+03	2018-09-25 17:54:09.516711+03	0	8.25	1
41	bond	RU000A0JR5F7	ДОМ.РФ17об	ДОМ.РФ (АО) обл. сер.А17	\N	DOM.RF - 17	dom.rf 	RU000A0JR5F7	RUB	\N	\N	PUBLISHED	\N	\N	7.94000006	7.94000006	17.8500004	22.8099995	1000	92	198	1	2022-04-15 03:00:00+03	1970-01-01 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:09.53724+03	2018-09-25 17:54:09.53724+03	0	9.05000019	1
42	bond	RU000A0JR6S8	ДОМ.РФ20об	ДОМ.РФ (АО) обл. сер.А20	\N	DOM.RF - 20	dom.rf 	RU000A0JR6S8	RUB	\N	\N	PUBLISHED	\N	\N	7.98999977	7.98999977	2.3599999	21.4400005	1000	91	198	1	2027-12-15 03:00:00+03	1970-01-01 03:00:00+03	2018-12-15 03:00:00+03	2018-09-25 17:54:09.552107+03	2018-09-25 17:54:09.552107+03	0	8.60000038	1
43	bond	RU000A0JR878	Газпрнеф10	Газпром нефть ПАО 10 об	\N	Gazprom neft 10	gazprom neft 	RU000A0JR878	RUB	\N	\N	PUBLISHED	\N	\N	7.78999996	7.78999996	11.6599998	37.9000015	1000	182	200	1	2021-01-26 03:00:00+03	1970-01-01 03:00:00+03	2019-01-29 03:00:00+03	2018-09-25 17:54:09.568528+03	2018-09-25 17:54:09.568528+03	99900	7.5999999	1
44	bond	RU000A0JR8L9	Мечел 15об	Мечел ПАО 15 обл.	\N	Mechel 15	mechel 	RU000A0JR8L9	RUB	\N	\N	PUBLISHED	\N	\N	9.14999962	9.14999962	9.21000004	39.8899994	1000	182	203	1	2021-02-09 03:00:00+03	1970-01-01 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:09.600446+03	2018-09-25 17:54:09.600446+03	0	8	1
45	bond	RU000A0JR8P0	Мечел 16об	Мечел ПАО 16 обл.	\N	Mechel 16	mechel 	RU000A0JR8P0	RUB	\N	\N	PUBLISHED	\N	\N	13.0900002	13.0900002	9.21000004	39.8899994	1000	182	203	1	2021-02-09 03:00:00+03	1970-01-01 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:09.616113+03	2018-09-25 17:54:09.616113+03	90610	8	1
46	bond	RU000A0JRA65	ОАК1	Объед.авиастр.корп. ПАО обл.01	\N	Ob.aviastroitelnaya korp. 01	ob.aviastroitelnaya korp.	RU000A0JRA65	RUB	\N	\N	PUBLISHED	\N	\N	8.14999962	8.14999962	4.5999999	39.8899994	1000	182	70	1	2020-03-17 03:00:00+03	1970-01-01 03:00:00+03	2019-03-05 03:00:00+03	2018-09-25 17:54:09.631855+03	2018-09-25 17:54:09.631855+03	0	8	1
47	bond	RU000A0JRCX7	ВЭБ 09	Внешэкономбанк об. сер. 09	\N	Vneshekonombank 09	vneshekonombank 	RU000A0JRCX7	RUB	\N	\N	PUBLISHED	\N	\N	8.72000027	8.72000027	1.22000003	44.3800011	1000	182	212	1	2021-03-18 03:00:00+03	1970-01-01 03:00:00+03	2019-03-21 03:00:00+03	2018-09-25 17:54:09.65666+03	2018-09-25 17:54:09.65666+03	100800	8.89999962	1
48	bond	RU000A0JRDY3	ДОМ.РФ18об	ДОМ.РФ (АО) обл. сер.А18	\N	DOM.RF - 18	dom.rf 	RU000A0JRDY3	RUB	\N	\N	PUBLISHED	\N	\N	6.86999989	6.86999989	13.2200003	16.8899994	1000	92	198	1	2023-07-15 03:00:00+03	2019-07-15 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:09.671733+03	2018-09-25 17:54:09.671733+03	0	6.69999981	1
49	bond	RU000A0JREW5	ВЭБлизинг3	ВЭБ-лизинг АО об. 03	\N	VEB-leasing AO 03	veb-leasing ao 	RU000A0JREW5	RUB	\N	\N	PUBLISHED	\N	\N	10.5600004	10.5600004	34.2599983	36.25	1000	182	216	1	2021-04-02 03:00:00+03	1970-01-01 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:09.688417+03	2018-09-25 17:54:09.688417+03	93430	7.26999998	1
50	bond	RU000A0JREX3	ВЭБлизинг4	ВЭБ-лизинг АО об. 04	\N	VEB-leasing AO 04	veb-leasing ao 	RU000A0JREX3	RUB	\N	\N	PUBLISHED	\N	\N	7.48999977	7.48999977	34.2599983	36.25	1000	182	216	1	2021-04-02 03:00:00+03	1970-01-01 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:09.707869+03	2018-09-25 17:54:09.707869+03	99800	7.26999998	1
51	bond	RU000A0JREZ8	ВЭБлизинг5	ВЭБ-лизинг АО об. 05	\N	VEB-leasing AO 05	veb-leasing ao 	RU000A0JREZ8	RUB	\N	\N	PUBLISHED	\N	\N	8.80000019	8.80000019	34.2599983	36.25	1000	182	216	1	2021-04-02 03:00:00+03	1970-01-01 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:09.727915+03	2018-09-25 17:54:09.727915+03	0	7.26999998	1
52	bond	RU000A0JRF11	РУСАЛБАл08	РУСАЛ Братский алюм. з-д об 08	\N	RUSAL Bratskiy al. zavod 08	rusal bratskiy al.	RU000A0JRF11	RUB	\N	\N	PUBLISHED	\N	\N	-0.340000004	-0.340000004	41.6699982	44.8800011	1000	182	217	1	2021-04-05 03:00:00+03	2019-04-08 03:00:00+03	2018-10-08 03:00:00+03	2018-09-25 17:54:09.743581+03	2018-09-25 17:54:09.743581+03	0	9	1
53	bond	RU000A0JRF37	ДОМ.РФ19об	ДОМ.РФ (АО) обл. сер.А19	\N	DOM.RF - 19	dom.rf 	RU000A0JRF37	RUB	\N	\N	PUBLISHED	\N	\N	7.86999989	7.86999989	6.4000001	14.3699999	600	92	198	1	2024-11-15 03:00:00+03	2018-11-15 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:09.759407+03	2018-09-25 17:54:09.759407+03	0	9.5	1
54	bond	RU000A0JRFN1	РусГидро01	РусГидро (ПАО) 01	\N	RusGidro(PAO) 01	rusgidro(pao)	RU000A0JRFN1	RUB	\N	\N	PUBLISHED	\N	\N	7.44000006	7.44000006	42.1599998	47.3699989	1000	182	218	1	2021-04-12 03:00:00+03	1970-01-01 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:09.782668+03	2018-09-25 17:54:09.782668+03	0	9.5	1
55	bond	RU000A0JRFP6	РусГидро02	РусГидро (ПАО) 02	\N	RusGidro(PAO) 02	rusgidro(pao)	RU000A0JRFP6	RUB	\N	\N	PUBLISHED	\N	\N	6.84000015	6.84000015	42.1599998	47.3699989	1000	182	218	1	2021-04-12 03:00:00+03	1970-01-01 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:09.795529+03	2018-09-25 17:54:09.795529+03	0	9.5	1
56	bond	RU000A0JRHF3	Акрон 04	Акрон (ПАО) об. сер. 04	\N	Acron 04	acron 	RU000A0JRHF3	RUB	\N	\N	PUBLISHED	\N	\N	6.92000008	6.92000008	35.2099991	50.8600006	1000	182	219	1	2021-05-18 03:00:00+03	2020-05-19 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:09.810799+03	2018-09-25 17:54:09.810799+03	0	10.1999998	1
57	bond	RU000A0JRHG1	Акрон 05	Акрон (ПАО) об. сер. 05	\N	Acron 05	acron 	RU000A0JRHG1	RUB	\N	\N	PUBLISHED	\N	\N	6.92000008	6.92000008	35.2099991	50.8600006	1000	182	219	1	2021-05-18 03:00:00+03	2020-05-19 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:09.823126+03	2018-09-25 17:54:09.823126+03	0	10.1999998	1
58	bond	RU000A0JRJB8	ЗСД 01	Запад.скор.диаметр АО об.01	\N	ZSD AO 01	zsd ao 	RU000A0JRJB8	RUB	\N	\N	PUBLISHED	\N	\N	10.8599997	10.8599997	34.0400009	52.0600014	1000	182	220	1	2031-05-13 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:09.835863+03	2018-09-25 17:54:09.835863+03	0	10.4399996	1
59	bond	RU000A0JRJC6	ВолгСпорт1	Волга-Спорт АО обл. 01	\N	Volga-Sport 01	volga-sport 	RU000A0JRJC6	RUB	\N	\N	PUBLISHED	\N	\N	5.13999987	5.13999987	7.07000017	51.5999985	1000	365	221	1	2022-04-04 03:00:00+03	2019-08-06 03:00:00+03	2019-08-06 03:00:00+03	2018-09-25 17:54:09.855174+03	2018-09-25 17:54:09.855174+03	0	5.15999985	1
60	bond	RU000A0JRJL7	ЗСД 02	Запад.скор.диаметр АО об.02	\N	ZSD AO 02	zsd ao 	RU000A0JRJL7	RUB	\N	\N	PUBLISHED	\N	\N	10.71	10.71	34.0400009	52.0600014	1000	182	220	1	2031-05-13 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:09.870314+03	2018-09-25 17:54:09.870314+03	0	10.4399996	1
61	bond	RU000A0JRJS2	Мечел 17об	Мечел ПАО 17 обл.	\N	Mechel 17	mechel 	RU000A0JRJS2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	20.0599995	30.4599991	550	182	203	1	2021-05-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:09.88263+03	2018-09-25 17:54:09.88263+03	0	10.625	1
62	bond	RU000A0JRJT0	Мечел 18об	Мечел ПАО 18 обл.	\N	Mechel 18	mechel 	RU000A0JRJT0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	20.0599995	30.4599991	550	182	203	1	2021-05-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:09.894196+03	2018-09-25 17:54:09.894196+03	53185	10.625	1
63	bond	RU000A0JRJV6	НефГазХол4	Нефтегазхолдинг АО обл.серия04	\N	NefGazHold-04	nefgazhold	RU000A0JRJV6	RUB	\N	\N	PUBLISHED	\N	\N	116.639999	116.639999	29.1499996	47.3699989	1000	182	222	1	2021-06-01 03:00:00+03	2018-12-04 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:09.906197+03	2018-09-25 17:54:09.906197+03	87390	9.5	1
64	bond	RU000A0JRJY0	Мечел 19об	Мечел ПАО 19 обл.	\N	Mechel 19	mechel 	RU000A0JRJY0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	19.2600002	30.4599991	550	182	203	1	2021-06-01 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:09.918159+03	2018-09-25 17:54:09.918159+03	53240	10.625	1
65	bond	RU000A0JRK22	НефГазХол6	Нефтегазхолдинг АО обл.серия06	\N	NefGazHold-06	nefgazhold	RU000A0JRK22	RUB	\N	\N	PUBLISHED	\N	\N	73.2300034	73.2300034	28.3700008	47.3699989	1000	182	222	1	2021-06-04 03:00:00+03	2018-12-07 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:09.937926+03	2018-09-25 17:54:09.937926+03	91000	9.5	1
66	bond	RU000A0JRKC4	СПбТел 01	Санкт-Пет.Телеком ОАО обл. 01	\N	Sankt-Pet.Telekom OAO 01	sankt-pet.telekom oao 	RU000A0JRKC4	RUB	\N	\N	PUBLISHED	\N	\N	10.4300003	10.4300003	23.75	42.3800011	1000	182	223	1	2021-06-11 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:09.950243+03	2018-09-25 17:54:09.950243+03	96100	8.5	1
67	bond	RU000A0JRKD2	СПбТел 02	Санкт-Пет.Телеком ОАО обл. 02	\N	Sankt-Pet.Telekom OAO 02	sankt-pet.telekom oao 	RU000A0JRKD2	RUB	\N	\N	PUBLISHED	\N	\N	8.06000042	8.06000042	31.5799999	56.3499985	1000	182	223	1	2021-06-11 03:00:00+03	2019-06-14 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:09.96165+03	2018-09-25 17:54:09.96165+03	102300	11.3000002	1
68	bond	RU000A0JRKM3	СПбТел 03	Санкт-Пет.Телеком ОАО обл. 03	\N	Sankt-Pet.Telekom OAO 03	sankt-pet.telekom oao 	RU000A0JRKM3	RUB	\N	\N	PUBLISHED	\N	\N	7.88000011	7.88000011	31.5799999	56.3499985	1000	182	223	1	2021-06-11 03:00:00+03	2019-06-14 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:09.973576+03	2018-09-25 17:54:09.973576+03	0	11.3000002	1
69	bond	RU000A0JRL96	ФСК ЕЭС-13	"ФСК ЕЭС"(ПАО)-обл. сер.13	\N	FSK EES 13	fsk ees 	RU000A0JRL96	RUB	\N	\N	PUBLISHED	\N	\N	9.06000042	9.06000042	21.1900005	42.3800011	1000	182	211	1	2021-06-22 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:09.990701+03	2018-09-25 17:54:09.990701+03	0	8.5	1
70	bond	RU000A0JRLE8	РСХБ 14	"Россельхозбанк" (АО) обл.14	\N	Rosselhozbank 14	rosselhozbank 	RU000A0JRLE8	RUB	\N	\N	PUBLISHED	\N	\N	8.93000031	8.93000031	17.9500008	38.8899994	1000	182	199	1	2021-06-29 03:00:00+03	2019-07-02 03:00:00+03	2019-01-01 03:00:00+03	2018-09-25 17:54:10.001663+03	2018-09-25 17:54:10.001663+03	0	7.80000019	1
71	bond	RU000A0JRMB2	РСХБ 12	"Россельхозбанк" (АО) обл.12	\N	Rosselhozbank 12	rosselhozbank 	RU000A0JRMB2	RUB	\N	\N	PUBLISHED	\N	\N	6.55999994	6.55999994	17.5200005	38.8899994	1000	182	199	1	2021-07-01 03:00:00+03	2019-07-04 03:00:00+03	2019-01-03 03:00:00+03	2018-09-25 17:54:10.014315+03	2018-09-25 17:54:10.014315+03	0	7.80000019	1
72	bond	RU000A0JRMC0	РСХБ 13	"Россельхозбанк" (АО) обл.13	\N	Rosselhozbank 13	rosselhozbank 	RU000A0JRMC0	RUB	\N	\N	PUBLISHED	\N	\N	7.94999981	7.94999981	17.3099995	38.8899994	1000	182	199	1	2021-07-02 03:00:00+03	2019-07-05 03:00:00+03	2019-01-04 03:00:00+03	2018-09-25 17:54:10.025505+03	2018-09-25 17:54:10.025505+03	0	7.80000019	1
73	bond	RU000A0JRMW8	АИЖК-11 А2	ИА АИЖК 2011-2 об.кл.А2	\N	Ipotech.agent AIZHK 2011-2 A2	ipotech.agent aizhk 	RU000A0JRMW8	RUB	\N	\N	PUBLISHED	\N	\N	2.23000002	2.23000002	0.430000007	3.95000005	176.050003	91	207	1	2043-09-15 03:00:00+03	2018-12-15 03:00:00+03	2018-12-15 03:00:00+03	2018-09-25 17:54:10.037383+03	2018-09-25 17:54:10.037383+03	0	9	1
74	bond	RU000A0JRSW5	ВТБ 2ИПА	ВТБ об. 2-ИП класса "А"	\N	VTB 2-IP A	vtb 	RU000A0JRSW5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.42999995	4.38999987	193.369995	91	224	1	2043-11-26 03:00:00+03	1970-01-01 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:10.06051+03	2018-09-25 17:54:10.06051+03	0	9	1
75	bond	RU000A0JRSX3	ВТБ 2ИПБ	ВТБ об. 2-ИП класса "Б"	\N	VTB 2-IP B	vtb 	RU000A0JRSX3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.479999989	1.46000004	193.410004	91	224	1	2043-11-26 03:00:00+03	1970-01-01 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:10.073078+03	2018-09-25 17:54:10.073078+03	0	3	1
76	bond	RU000A0JRTN2	ВЭБ 10	Внешэкономбанк об. сер. 10	\N	Vneshekonombank 10	vneshekonombank 	RU000A0JRTN2	RUB	\N	\N	PUBLISHED	\N	\N	7.32999992	7.32999992	0	49.1199989	1000	182	212	1	2021-09-21 03:00:00+03	2020-03-24 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:10.085024+03	2018-09-25 17:54:10.085024+03	0	9.85000038	1
77	bond	RU000A0JRTS1	Uranium 01	Uranium One Inc. 01	\N	Uranium One Inc. 01	uranium one inc.	RU000A0JRTS1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	225	1	2021-11-24 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:10.097074+03	2018-09-25 17:54:10.097074+03	0	0	1
78	bond	RU000A0JRTT9	Uranium 02	Uranium One Inc. 02	\N	Uranium One Inc. 02	uranium one inc.	RU000A0JRTT9	RUB	\N	\N	PUBLISHED	\N	\N	10.1999998	10.1999998	10.9499998	51.1100006	1000	182	225	1	2023-08-11 03:00:00+03	2020-08-14 03:00:00+03	2019-02-15 03:00:00+03	2018-09-25 17:54:10.109319+03	2018-09-25 17:54:10.109319+03	0	10.25	1
79	bond	RU000A0JRU20	СЗКК 03	Северо-Зап.концес.комп. сер.03	\N	SZKC-03	szkc	RU000A0JRU20	RUB	\N	\N	PUBLISHED	\N	\N	60.6800003	60.6800003	23.4200001	25.8299999	1000	182	226	1	2031-09-26 03:00:00+03	2018-10-12 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:10.126619+03	2018-09-25 17:54:10.126619+03	0	5.17999983	1
80	bond	RU000A0JRU46	СЗКК 04	Северо-Зап.концес.комп. сер.04	\N	SZKC-04	szkc	RU000A0JRU46	RUB	\N	\N	PUBLISHED	\N	\N	99.2300034	99.2300034	23.4200001	25.8299999	1000	182	226	1	2031-09-26 03:00:00+03	2018-10-12 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:10.145118+03	2018-09-25 17:54:10.145118+03	0	5.17999983	1
81	bond	RU000A0JRUS9	ФСК ЕЭС-15	"ФСК ЕЭС"(ПАО)-обл. сер.15	\N	FSK EES 15	fsk ees 	RU000A0JRUS9	RUB	\N	\N	PUBLISHED	\N	\N	-19.6499996	-19.6499996	38.1199989	43.6300011	1000	182	211	1	2023-10-12 03:00:00+03	2018-10-18 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:10.156957+03	2018-09-25 17:54:10.156957+03	0	8.75	1
82	bond	RU000A0JRUY7	ВЭБлизинг8	ВЭБ-лизинг АО об. 08	\N	VEB-leasing AO 08	veb-leasing ao 	RU000A0JRUY7	RUB	\N	\N	PUBLISHED	\N	\N	9.18999958	9.18999958	42.6100006	50.3600006	1000	182	216	1	2021-10-19 03:00:00+03	2019-10-22 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:10.169048+03	2018-09-25 17:54:10.169048+03	101100	10.1000004	1
83	bond	RU000A0JRV52	ВЭБлизинг9	ВЭБ-лизинг АО об. 09	\N	VEB-leasing AO 09	veb-leasing ao 	RU000A0JRV52	RUB	\N	\N	PUBLISHED	\N	\N	9.30000019	9.30000019	42.3400002	50.3600006	1000	182	216	1	2021-10-20 03:00:00+03	2019-10-23 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:10.180847+03	2018-09-25 17:54:10.180847+03	0	10.1000004	1
84	bond	RU000A0JRVN8	РСХБ 15	"Россельхозбанк" (АО) обл.15	\N	Rosselhozbank 15	rosselhozbank 	RU000A0JRVN8	RUB	\N	\N	PUBLISHED	\N	\N	7.96999979	7.96999979	32.2200012	39.8899994	1000	182	199	1	2021-10-26 03:00:00+03	2020-04-28 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:10.201946+03	2018-09-25 17:54:10.201946+03	0	8	1
85	bond	RU000A0JRVU3	СПбТел 07	Санкт-Пет.Телеком ОАО обл. 07	\N	Sankt-Pet.Telekom OAO 07	sankt-pet.telekom oao 	RU000A0JRVU3	RUB	\N	\N	PUBLISHED	\N	\N	9.65999985	9.65999985	45.7999992	49.6100006	1000	182	223	1	2022-04-05 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:10.218418+03	2018-09-25 17:54:10.218418+03	101490	9.94999981	1
86	bond	RU000A0JRZ74	БинбанкБ03	БИНБАНК ПАО БО-03	\N	BINBANK BO-03	binbank bo	RU000A0JRZ74	RUB	\N	\N	PUBLISHED	\N	\N	8.10000038	8.10000038	0.0199999996	0.0500000007	1000	184	227	1	2025-07-16 03:00:00+03	1970-01-01 03:00:00+03	2019-01-16 03:00:00+03	2018-09-25 17:54:10.233925+03	2018-09-25 17:54:10.233925+03	58890	0.00999999978	1
87	bond	RU000A0JRZK5	ФСК ЕЭС-18	"ФСК ЕЭС"(ПАО)-обл. сер.18	\N	FSK EES 18	fsk ees 	RU000A0JRZK5	RUB	\N	\N	PUBLISHED	\N	\N	6.07000017	6.07000017	26.3199997	42.3800011	1000	182	211	1	2023-11-27 03:00:00+03	2019-06-03 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:10.250078+03	2018-09-25 17:54:10.250078+03	0	8.5	1
88	bond	RU000A0JS1A6	АИЖ11-1А1	ИА АИЖК 2011-1 ЗАО кл.А1/11	\N	AIZhK 2011-1 A1/11	aizhk 	RU000A0JS1A6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.34000003	3.00999999	132.770004	92	228	1	2044-02-15 03:00:00+03	2018-11-15 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:10.274525+03	2018-09-25 17:54:10.274525+03	0	9	1
89	bond	RU000A0JS1B4	АИЖ11-1А2	ИА АИЖК 2011-1 ЗАО кл.А2/11	\N	AIZhK 2011-1 A2/11	aizhk 	RU000A0JS1B4	RUB	\N	\N	PUBLISHED	\N	\N	2.99000001	2.99000001	0.449999988	1	132.770004	92	228	1	2044-02-15 03:00:00+03	2018-11-15 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:10.289489+03	2018-09-25 17:54:10.289489+03	0	3	1
90	bond	RU000A0JS1F5	СвязьБанк3	"Связь-Банк" АКБ ПАО обл.03	\N	Svyaz-Bank 03	svyaz-bank 	RU000A0JS1F5	RUB	\N	\N	PUBLISHED	\N	\N	7.21999979	7.21999979	20.0900002	35.5	1000	182	229	1	2021-12-09 03:00:00+03	2019-06-13 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:10.305481+03	2018-09-25 17:54:10.305481+03	0	7.11999989	1
91	bond	RU000A0JS1J7	Приам 01	Приам ПАО обл.01	\N	Priam 01	priam 	RU000A0JS1J7	RUB	\N	\N	PUBLISHED	\N	\N	17.8799992	17.8799992	85.8899994	109.699997	1000	364	230	1	2026-12-03 03:00:00+03	2018-12-13 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:10.321579+03	2018-09-25 17:54:10.321579+03	0	11	1
92	bond	RU000A0JS1S8	Веста 01	ПАО Веста сер.01	\N	Vesta 01	vesta 	RU000A0JS1S8	RUB	\N	\N	PUBLISHED	\N	\N	10.54	10.54	85.5899963	109.699997	1000	364	231	1	2026-12-04 03:00:00+03	2018-12-14 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:10.333237+03	2018-09-25 17:54:10.333237+03	0	11	1
93	bond	RU000A0JS1W0	ТГК-1 03	ТГК-1 ПАО обл.03	\N	TGK-1  03	tgk	RU000A0JS1W0	RUB	\N	\N	PUBLISHED	\N	\N	4.01999998	4.01999998	10.7399998	19.9500008	1000	182	232	1	2021-12-14 03:00:00+03	2018-12-18 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:10.345112+03	2018-09-25 17:54:10.345112+03	0	4	1
94	bond	RU000A0JS264	ОткрХОЛ 2	Открытие Холдинг АО обл. 02	\N	Otkritie Holding 02	otkritie holding 	RU000A0JS264	RUB	\N	\N	PUBLISHED	\N	\N	650301.938	650301.938	148.639999	177.270004	1000	546	233	1	2026-12-10 03:00:00+03	2018-12-20 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:10.36312+03	2018-09-25 17:54:10.36312+03	10	12.1499996	1
95	bond	RU000A0JS3L9	СПбТел 05	Санкт-Пет.Телеком ОАО обл. 05	\N	Sankt-Pet.Telekom OAO 05	sankt-pet.telekom oao 	RU000A0JS3L9	RUB	\N	\N	PUBLISHED	\N	\N	8.97000027	8.97000027	14.6599998	53.3499985	1000	182	223	1	2022-01-31 03:00:00+03	1970-01-01 03:00:00+03	2019-02-04 03:00:00+03	2018-09-25 17:54:10.377321+03	2018-09-25 17:54:10.377321+03	0	10.6999998	1
96	bond	RU000A0JS3M7	СПбТел 04	Санкт-Пет.Телеком ОАО обл. 04	\N	Sankt-Pet.Telekom OAO 04	sankt-pet.telekom oao 	RU000A0JS3M7	RUB	\N	\N	PUBLISHED	\N	\N	9.86999989	9.86999989	14.6599998	53.3499985	1000	182	223	1	2022-01-31 03:00:00+03	2020-08-03 03:00:00+03	2019-02-04 03:00:00+03	2018-09-25 17:54:10.389029+03	2018-09-25 17:54:10.389029+03	101740	10.6999998	1
97	bond	RU000A0JS3U0	Башнефть04	ПАО "АНК "Башнефть" об. 04	\N	Bashneft ANK 04	bashneft ank 	RU000A0JS3U0	RUB	\N	\N	PUBLISHED	\N	\N	8.5	8.5	8.81999969	34.9000015	1000	182	234	1	2022-02-04 03:00:00+03	2019-02-08 03:00:00+03	2019-02-08 03:00:00+03	2018-09-25 17:54:10.400969+03	2018-09-25 17:54:10.400969+03	0	7	1
98	bond	RU000A0JS470	ТГК-1 04	ТГК-1 ПАО обл.04	\N	TGK-1  04	tgk	RU000A0JS470	RUB	\N	\N	PUBLISHED	\N	\N	4.03000021	4.03000021	3.95000005	19.9500008	1000	182	232	1	2022-02-14 03:00:00+03	2019-02-18 03:00:00+03	2019-02-18 03:00:00+03	2018-09-25 17:54:10.412949+03	2018-09-25 17:54:10.412949+03	0	4	1
99	bond	RU000A0JS488	ДОМ.РФ21об	ДОМ.РФ (АО) обл. сер.А21	\N	DOM.RF - 21	dom.rf 	RU000A0JS488	RUB	\N	\N	PUBLISHED	\N	\N	8.32999992	8.32999992	2.97000003	6.6500001	300	92	198	1	2020-02-15 03:00:00+03	1970-01-01 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:10.424888+03	2018-09-25 17:54:10.424888+03	0	8.80000019	1
100	bond	RU000A0JS4J1	ЗСД 03	Запад.скор.диаметр АО об.03	\N	ZSD AO 03	zsd ao 	RU000A0JS4J1	RUB	\N	\N	PUBLISHED	\N	\N	9.13000011	9.13000011	8.63000011	49.0699997	1000	182	220	1	2032-02-06 03:00:00+03	1970-01-01 03:00:00+03	2019-02-22 03:00:00+03	2018-09-25 17:54:10.436666+03	2018-09-25 17:54:10.436666+03	0	9.84000015	1
101	bond	RU000A0JS4K9	ЗСД 04	Запад.скор.диаметр АО об.04	\N	ZSD AO 04	zsd ao 	RU000A0JS4K9	RUB	\N	\N	PUBLISHED	\N	\N	9.13000011	9.13000011	8.63000011	49.0699997	1000	182	220	1	2032-02-06 03:00:00+03	1970-01-01 03:00:00+03	2019-02-22 03:00:00+03	2018-09-25 17:54:10.448613+03	2018-09-25 17:54:10.448613+03	0	9.84000015	1
102	bond	RU000A0JS4L7	ЗСД 05	Запад.скор.диаметр АО об.05	\N	ZSD AO 05	zsd ao 	RU000A0JS4L7	RUB	\N	\N	PUBLISHED	\N	\N	9.13000011	9.13000011	8.63000011	49.0699997	1000	182	220	1	2032-02-06 03:00:00+03	1970-01-01 03:00:00+03	2019-02-22 03:00:00+03	2018-09-25 17:54:10.46127+03	2018-09-25 17:54:10.46127+03	0	9.84000015	1
103	bond	RU000A0JS4Z7	ВЭБ 21	Внешэкономбанк об. сер. 21	\N	Vneshekonombank 21	vneshekonombank 	RU000A0JS4Z7	RUB	\N	\N	PUBLISHED	\N	\N	8.15999985	8.15999985	5.75	49.8600006	1000	182	212	1	2032-02-17 03:00:00+03	2019-03-05 03:00:00+03	2019-03-05 03:00:00+03	2018-09-25 17:54:10.477084+03	2018-09-25 17:54:10.477084+03	0	10	1
104	bond	RU000A0JS5A7	МЕТАЛИНВ 5	МЕТАЛЛОИНВЕСТ ХК АО обл. 05	\N	METALLOINVEST HK AO 05	metalloinvest hk ao 	RU000A0JS5A7	RUB	\N	\N	PUBLISHED	\N	\N	13.3199997	13.3199997	0	0.0500000007	1000	182	235	1	2022-03-07 03:00:00+03	1970-01-01 03:00:00+03	2019-03-11 03:00:00+03	2018-09-25 17:54:10.518833+03	2018-09-25 17:54:10.518833+03	0	0.00999999978	1
105	bond	RU000A0JS5B5	МЕТАЛИНВ 1	МЕТАЛЛОИНВЕСТ ХК АО обл. 01	\N	METALLOINVEST HK AO 01	metalloinvest hk ao 	RU000A0JS5B5	RUB	\N	\N	PUBLISHED	\N	\N	0.00999999978	0.00999999978	0	0.0500000007	1000	182	235	1	2022-03-07 03:00:00+03	1970-01-01 03:00:00+03	2019-03-11 03:00:00+03	2018-09-25 17:54:10.540655+03	2018-09-25 17:54:10.540655+03	0	0.00999999978	1
106	bond	RU000A0JS5E9	ВымпелКом1	Вымпел-Коммуникации ПАО обл.01	\N	VimpelKom01	vimpelkom	RU000A0JS5E9	RUB	\N	\N	PUBLISHED	\N	\N	9.06000042	9.06000042	2.68000007	34.9000015	1000	182	236	1	2022-03-08 03:00:00+03	2020-03-10 03:00:00+03	2019-03-12 03:00:00+03	2018-09-25 17:54:10.552326+03	2018-09-25 17:54:10.552326+03	0	7	1
107	bond	RU000A0JS5F6	ВымпелКом4	Вымпел-Коммуникации ПАО обл.04	\N	VimpelKom04	vimpelkom	RU000A0JS5F6	RUB	\N	\N	PUBLISHED	\N	\N	8.59000015	8.59000015	2.68000007	34.9000015	1000	182	236	1	2022-03-08 03:00:00+03	2020-03-10 03:00:00+03	2019-03-12 03:00:00+03	2018-09-25 17:54:10.565552+03	2018-09-25 17:54:10.565552+03	98100	7	1
108	bond	RU000A0JS5L4	МЕТАЛИНВ 6	МЕТАЛЛОИНВЕСТ ХК АО обл. 06	\N	METALLOINVEST HK AO 06	metalloinvest hk ao 	RU000A0JS5L4	RUB	\N	\N	PUBLISHED	\N	\N	18.7299995	18.7299995	0	0.0500000007	1000	182	235	1	2022-03-10 03:00:00+03	1970-01-01 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:10.580956+03	2018-09-25 17:54:10.580956+03	0	0.00999999978	1
109	bond	RU000A0JS5M2	ВымпелКом2	Вымпел-Коммуникации ПАО обл.02	\N	VimpelKom02	vimpelkom	RU000A0JS5M2	RUB	\N	\N	PUBLISHED	\N	\N	7.13999987	7.13999987	1.52999997	34.9000015	1000	182	236	1	2022-03-14 03:00:00+03	2020-03-16 03:00:00+03	2019-03-18 03:00:00+03	2018-09-25 17:54:10.592499+03	2018-09-25 17:54:10.592499+03	0	7	1
110	bond	RU000A0JS5R1	МСП Банк 1	МСП Банк АО 01	\N	MSP Bank 01	msp bank 	RU000A0JS5R1	RUB	\N	\N	PUBLISHED	\N	\N	7.61000013	7.61000013	0.959999979	34.9000015	1000	182	237	1	2022-03-17 03:00:00+03	2021-03-18 03:00:00+03	2019-03-21 03:00:00+03	2018-09-25 17:54:10.604646+03	2018-09-25 17:54:10.604646+03	0	7	1
111	bond	RU000A0JS603	МСП Банк 2	МСП Банк АО 02	\N	MSP Bank 02	msp bank 	RU000A0JS603	RUB	\N	\N	PUBLISHED	\N	\N	7.88000011	7.88000011	8.22000027	37.4000015	1000	182	237	1	2022-08-11 03:00:00+03	2021-02-11 03:00:00+03	2019-02-14 03:00:00+03	2018-09-25 17:54:10.616477+03	2018-09-25 17:54:10.616477+03	0	7.5	1
112	bond	RU000A0JS6M0	ДельтКрБО5	КБ ДельтаКредит АО БО-05	\N	DeltaCredit CB BO-05	deltacredit cb bo	RU000A0JS6M0	RUB	\N	\N	PUBLISHED	\N	\N	9.10000038	9.10000038	42.3699989	49.3800011	1000	183	238	1	2023-10-21 03:00:00+03	2020-04-21 03:00:00+03	2018-10-21 03:00:00+03	2018-09-25 17:54:10.628473+03	2018-09-25 17:54:10.628473+03	0	9.85000038	1
113	bond	RU000A0JS6N8	РСХБ 16	"Россельхозбанк" (АО) обл.16	\N	Rosselhozbank 16	rosselhozbank 	RU000A0JS6N8	RUB	\N	\N	PUBLISHED	\N	\N	8.22000027	8.22000027	30.5599995	32.9099998	1000	182	199	1	2022-04-04 03:00:00+03	2019-04-08 03:00:00+03	2018-10-08 03:00:00+03	2018-09-25 17:54:10.644468+03	2018-09-25 17:54:10.644468+03	0	6.5999999	1
114	bond	RU000A0JS6S7	iРОСНАНО 4	РОСНАНО АО обл. 04	\N	ROSNANO 4	rosnano 	RU000A0JS6S7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	21.5	23.4400005	1000	182	239	1	2019-04-10 03:00:00+03	1970-01-01 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:10.662988+03	2018-09-25 17:54:10.662988+03	0	4.69999981	1
115	bond	RU000A0JS6T5	iРОСНАНО 5	РОСНАНО АО обл. 05	\N	ROSNANO 5	rosnano 	RU000A0JS6T5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	21.5	23.4400005	1000	182	239	1	2019-04-10 03:00:00+03	1970-01-01 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:10.676089+03	2018-09-25 17:54:10.676089+03	0	4.69999981	1
116	bond	RU000A0JS710	СвязьБанк5	"Связь-Банк" АКБ ПАО обл.05	\N	Svyaz-Bank 05	svyaz-bank 	RU000A0JS710	RUB	\N	\N	PUBLISHED	\N	\N	7.09000015	7.09000015	31.7399998	34.7999992	1000	182	229	1	2022-04-07 03:00:00+03	2019-04-11 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:10.687948+03	2018-09-25 17:54:10.687948+03	0	6.98000002	1
117	bond	RU000A0JS793	СвязьБанк4	"Связь-Банк" АКБ ПАО обл.04	\N	Svyaz-Bank 04	svyaz-bank 	RU000A0JS793	RUB	\N	\N	PUBLISHED	\N	\N	19.6900005	19.6900005	30.8199997	35.0499992	1000	182	229	1	2022-04-13 03:00:00+03	2019-04-17 03:00:00+03	2018-10-17 03:00:00+03	2018-09-25 17:54:10.700198+03	2018-09-25 17:54:10.700198+03	0	7.03000021	1
118	bond	RU000A0JS7H8	ФСК ЕЭС-12	"ФСК ЕЭС"(ПАО)-обл. сер.12	\N	FSK EES 12	fsk ees 	RU000A0JS7H8	RUB	\N	\N	PUBLISHED	\N	\N	6.67000008	6.67000008	35.0600014	40.3899994	1000	182	211	1	2019-04-19 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:10.712173+03	2018-09-25 17:54:10.712173+03	0	8.10000038	1
119	bond	RU000A0JS8R5	ФинСтанд01	"ФинСтандарт" ООО обл. 01	\N	FinStandart 01	finstandart 	RU000A0JS8R5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1832.62	208.960007	1000	728	240	1	2020-05-22 03:00:00+03	1970-01-01 03:00:00+03	2020-05-22 03:00:00+03	2018-09-25 17:54:10.724014+03	2018-09-25 17:54:10.724014+03	0	8.22000027	1
120	bond	RU000A0JS8X3	ЕАБР05	Евразийский банк развития 05	\N	Evraziyskiy bank razvitiya 05	evraziyskiy bank razvitiya 	RU000A0JS8X3	RUB	\N	\N	PUBLISHED	\N	\N	6.28999996	6.28999996	17.9599991	47.3699989	1000	182	209	1	2020-07-15 03:00:00+03	2019-07-17 03:00:00+03	2019-01-16 03:00:00+03	2018-09-25 17:54:10.735245+03	2018-09-25 17:54:10.735245+03	0	\N	1
121	bond	RU000A0JS8Y1	ЕАБР06	Евразийский банк развития 06	\N	Evraziyskiy bank razvitiya 06	evraziyskiy bank razvitiya 	RU000A0JS8Y1	RUB	\N	\N	PUBLISHED	\N	\N	7.42999983	7.42999983	36.2000008	36.4000015	1000	182	209	1	2020-09-23 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:10.747239+03	2018-09-25 17:54:10.747239+03	0	\N	1
122	bond	RU000A0JS8Z8	ЕАБР07	Евразийский банк развития 07	\N	Evraziyskiy bank razvitiya 07	evraziyskiy bank razvitiya 	RU000A0JS8Z8	RUB	\N	\N	PUBLISHED	\N	\N	8.77000046	8.77000046	46.3699989	46.6199989	1000	182	209	1	2020-09-23 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:10.7591+03	2018-09-25 17:54:10.7591+03	0	\N	1
123	bond	RU000A0JS900	ЕАБР08	Евразийский банк развития 08	\N	Evraziyskiy bank razvitiya 08	evraziyskiy bank razvitiya 	RU000A0JS900	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	37.5200005	40.8899994	1000	182	209	1	2020-10-07 03:00:00+03	1970-01-01 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:10.771194+03	2018-09-25 17:54:10.771194+03	0	\N	1
124	bond	RU000A0JS918	ЕАБР09	Евразийский банк развития 09	\N	Evraziyskiy bank razvitiya 09	evraziyskiy bank razvitiya 	RU000A0JS918	RUB	\N	\N	PUBLISHED	\N	\N	6.92999983	6.92999983	25.6399994	38.8899994	1000	182	209	1	2021-05-24 03:00:00+03	2018-11-26 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:10.789051+03	2018-09-25 17:54:10.789051+03	0	\N	1
125	bond	RU000A0JS926	ЕАБР10	Евразийский банк развития 10	\N	Evraziyskiy bank razvitiya 10	evraziyskiy bank razvitiya 	RU000A0JS926	RUB	\N	\N	PUBLISHED	\N	\N	0	0	23.4899998	61.0800018	1000	182	209	1	2023-01-10 03:00:00+03	1970-01-01 03:00:00+03	2019-01-15 03:00:00+03	2018-09-25 17:54:10.803659+03	2018-09-25 17:54:10.803659+03	0	\N	1
126	bond	RU000A0JS934	ЕАБР11	Евразийский банк развития 11	\N	Evraziyskiy bank razvitiya 11	evraziyskiy bank razvitiya 	RU000A0JS934	RUB	\N	\N	PUBLISHED	\N	\N	9.06999969	9.06999969	11.25	38.6399994	1000	182	209	1	2025-01-24 03:00:00+03	2021-07-30 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:10.815218+03	2018-09-25 17:54:10.815218+03	0	\N	1
127	bond	RU000A0JS9X1	УпрОтходНН	Управление отходами - НН ЗАО	\N	ZAO Upravlenie Othodami - NN	zao upravlenie othodami 	RU000A0JS9X1	RUB	\N	\N	PUBLISHED	\N	\N	18.0300007	18.0300007	14.3500004	26.9300003	1000	182	241	1	2022-06-15 03:00:00+03	2018-12-19 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:10.827108+03	2018-09-25 17:54:10.827108+03	0	5.4000001	1
128	bond	RU000A0JSGV0	РЖД-32 обл	"Российские ЖД" ОАО 32 обл.	\N	RZhD 32	rzhd 	RU000A0JSGV0	RUB	\N	\N	PUBLISHED	\N	\N	18.9300003	18.9300003	9.11999989	22.4400005	1000	182	202	1	2032-06-25 03:00:00+03	2019-01-11 03:00:00+03	2019-01-11 03:00:00+03	2018-09-25 17:54:10.839535+03	2018-09-25 17:54:10.839535+03	96220	4.5	1
129	bond	RU000A0JSKJ7	АИЖК-12 А2	ИА АИЖК 2012-1 об.кл.А2	\N	Ipotech.agent AIZHK 2012-1 A2	ipotech.agent aizhk 	RU000A0JSKJ7	RUB	\N	\N	PUBLISHED	\N	\N	2.19000006	2.19000006	4.82999992	6.82999992	301.25	92	207	1	2044-01-22 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:10.85058+03	2018-09-25 17:54:10.85058+03	0	9	1
130	bond	RU000A0JSQ58	ФСК ЕЭС-22	"ФСК ЕЭС"(ПАО)-обл. сер.22	\N	FSK EES 22	fsk ees 	RU000A0JSQ58	RUB	\N	\N	PUBLISHED	\N	\N	19.2000008	19.2000008	7.23000002	23.9300003	1000	182	211	1	2027-07-21 03:00:00+03	2019-01-30 03:00:00+03	2019-01-30 03:00:00+03	2018-09-25 17:54:10.86275+03	2018-09-25 17:54:10.86275+03	0	4.80000019	1
131	bond	RU000A0JSZF3	ВТБ 3ИПА	ВТБ об. 3-ИП класса "А"	\N	VTB 3-IP A	vtb 	RU000A0JSZF3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.52999997	5.01999998	221.279999	91	224	1	2044-09-15 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:10.874763+03	2018-09-25 17:54:10.874763+03	0	9	1
132	bond	RU000A0JSZG1	ВТБ 3ИПБ	ВТБ об. 3-ИП класса "Б"	\N	VTB 3-IP B	vtb 	RU000A0JSZG1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.50999999	1.66999996	221.279999	91	224	1	2044-09-15 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:10.886683+03	2018-09-25 17:54:10.886683+03	0	3	1
133	bond	RU000A0JT1B3	РЕСО-Гар02	РЕСО-Гарантия СПАО 02 об.	\N	RESO-Garantia 02	reso-garantia 	RU000A0JT1B3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.100000001	1000	182	242	1	2022-09-13 03:00:00+03	1970-01-01 03:00:00+03	2019-03-19 03:00:00+03	2018-09-25 17:54:10.898528+03	2018-09-25 17:54:10.898528+03	0	0.0199999996	1
134	bond	RU000A0JT2K2	ФСК ЕЭС-25	"ФСК ЕЭС"(ПАО)-обл. сер.25	\N	FSK EES 25	fsk ees 	RU000A0JT2K2	RUB	\N	\N	PUBLISHED	\N	\N	7.53000021	7.53000021	0	44.8800011	1000	182	211	1	2027-09-14 03:00:00+03	2019-10-01 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:10.916396+03	2018-09-25 17:54:10.916396+03	0	9	1
135	bond	RU000A0JT3J2	ОткрХОЛ 3	Открытие Холдинг АО обл. 03	\N	Otkritie Holding 03	otkritie holding 	RU000A0JT3J2	RUB	\N	\N	PUBLISHED	\N	\N	438152.344	438152.344	105.220001	132.949997	1000	455	233	1	2027-09-17 03:00:00+03	2018-12-28 03:00:00+03	2018-12-28 03:00:00+03	2018-09-25 17:54:11.005327+03	2018-09-25 17:54:11.005327+03	0	10.7700005	1
136	bond	RU000A0JT403	ВЭБ 18	Внешэкономбанк об. сер. 18	\N	Vneshekonombank 18	vneshekonombank 	RU000A0JT403	RUB	\N	\N	PUBLISHED	\N	\N	8.59000015	8.59000015	46.1800003	48.8699989	1000	182	212	1	2032-09-17 03:00:00+03	2019-10-04 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:11.019009+03	2018-09-25 17:54:11.019009+03	0	9.80000019	1
137	bond	RU000A0JT593	ВолгСпорт2	Волга-Спорт АО обл. 02	\N	Volga-Sport 02	volga-sport 	RU000A0JT593	RUB	\N	\N	PUBLISHED	\N	\N	8.97000027	8.97000027	6.15999985	90	1000	365	221	1	2024-02-29 03:00:00+03	2019-08-31 03:00:00+03	2019-08-31 03:00:00+03	2018-09-25 17:54:11.031018+03	2018-09-25 17:54:11.031018+03	0	9	1
138	bond	RU000A0JT6B2	ВЭБ 19	Внешэкономбанк об. сер. 19	\N	Vneshekonombank 19	vneshekonombank 	RU000A0JT6B2	RUB	\N	\N	PUBLISHED	\N	\N	8.93000031	8.93000031	44.3400002	48.6199989	1000	182	212	1	2032-09-23 03:00:00+03	2021-04-08 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:11.042921+03	2018-09-25 17:54:11.042921+03	0	9.75	1
139	bond	RU000A0JT6G1	ГПБ 11	ГПБ (АО) об. сер.11	\N	Gazprombank 11	gazprombank 	RU000A0JT6G1	RUB	\N	\N	PUBLISHED	\N	\N	5.28000021	5.28000021	28.2000008	30.9200001	1000	182	243	1	2019-10-10 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:11.054889+03	2018-09-25 17:54:11.054889+03	0	6.19999981	1
140	bond	RU000A0JT6J5	ГПБ 12	ГПБ (АО) об. сер.12	\N	Gazprombank 12	gazprombank 	RU000A0JT6J5	RUB	\N	\N	PUBLISHED	\N	\N	7.44999981	7.44999981	34.2000008	37.5	1000	182	243	1	2022-10-06 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:11.066827+03	2018-09-25 17:54:11.066827+03	0	7.51999998	1
141	bond	RU000A0JT7M7	РСХБ 17	"Россельхозбанк" (АО) обл.17	\N	Rosselhozbank 17	rosselhozbank 	RU000A0JT7M7	RUB	\N	\N	PUBLISHED	\N	\N	8.88000011	8.88000011	37.4900017	42.3800011	1000	182	199	1	2022-10-11 03:00:00+03	2018-10-16 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:11.07965+03	2018-09-25 17:54:11.07965+03	0	8.5	1
142	bond	RU000A0JT7T2	ФСК ЕЭС-21	"ФСК ЕЭС"(ПАО)-обл. сер.21	\N	FSK EES 21	fsk ees 	RU000A0JT7T2	RUB	\N	\N	PUBLISHED	\N	\N	8.81000042	8.81000042	32.4399986	36.9000015	1000	182	211	1	2027-10-06 03:00:00+03	2024-04-10 03:00:00+03	2018-10-17 03:00:00+03	2018-09-25 17:54:11.095208+03	2018-09-25 17:54:11.095208+03	0	7.4000001	1
143	bond	RU000A0JT874	РСХБ 18	"Россельхозбанк" (АО) обл.18	\N	Rosselhozbank 18	rosselhozbank 	RU000A0JT874	RUB	\N	\N	PUBLISHED	\N	\N	8	8	40.7299995	46.6199989	1000	182	199	1	2022-10-13 03:00:00+03	2019-04-18 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:11.106991+03	2018-09-25 17:54:11.106991+03	0	9.35000038	1
144	bond	RU000A0JT8N3	ПочтаРос02	Почта России (ФГУП) обл.02	\N	Pochta Rossii 02	pochta rossii 	RU000A0JT8N3	RUB	\N	\N	PUBLISHED	\N	\N	6.38000011	6.38000011	41.1199989	47.3699989	1000	182	244	1	2019-10-18 03:00:00+03	2018-10-19 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:11.118882+03	2018-09-25 17:54:11.118882+03	100200	9.5	1
145	bond	RU000A0JT8R4	ПочтаРос03	Почта России (ФГУП) обл.03	\N	Pochta Rossii 03	pochta rossii 	RU000A0JT8R4	RUB	\N	\N	PUBLISHED	\N	\N	8.02999973	8.02999973	40.9099998	47.1199989	1000	182	244	1	2019-10-18 03:00:00+03	2019-04-19 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:11.131764+03	2018-09-25 17:54:11.131764+03	0	9.44999981	1
146	bond	RU000A0JT8T0	ПочтаРос04	Почта России (ФГУП) обл.04	\N	Pochta Rossii 04	pochta rossii 	RU000A0JT8T0	RUB	\N	\N	PUBLISHED	\N	\N	8	8	40.4700012	46.6199989	1000	182	244	1	2019-10-18 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:11.152031+03	2018-09-25 17:54:11.152031+03	101500	9.35000038	1
147	bond	RU000A0JT940	Роснефть04	ПАО НК Роснефть обл.04	\N	Rosneft 04	rosneft 	RU000A0JT940	RUB	\N	\N	PUBLISHED	\N	\N	7.71999979	7.71999979	33.5499992	39.3899994	1000	182	245	1	2022-10-17 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:11.168318+03	2018-09-25 17:54:11.168318+03	0	7.9000001	1
148	bond	RU000A0JT965	Роснефть05	ПАО НК Роснефть обл.05	\N	Rosneft 05	rosneft 	RU000A0JT965	RUB	\N	\N	PUBLISHED	\N	\N	8.42000008	8.42000008	33.5499992	39.3899994	1000	182	245	1	2022-10-17 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:11.185155+03	2018-09-25 17:54:11.185155+03	0	7.9000001	1
149	bond	RU000A0JTB96	ГлДорога 7	Главная дорога АО об.сер. 07	\N	Glavnaya doroga 07	glavnaya doroga 	RU000A0JTB96	RUB	\N	\N	PUBLISHED	\N	\N	1700.06995	1700.06995	38.8400002	44.8800011	1000	364	214	1	2029-10-30 03:00:00+03	2018-11-13 03:00:00+03	2018-11-13 03:00:00+03	2018-09-25 17:54:11.198944+03	2018-09-25 17:54:11.198944+03	67000	4.5	1
150	bond	RU000A0JTCV7	АИЖ11А1/12	ИА АИЖК 2011-1 об.кл.А1/12	\N	Ipotech.agent AIZHK 2011-1 A1	ipotech.agent aizhk 	RU000A0JTCV7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.70000005	5.05000019	222.5	92	207	1	2045-05-25 03:00:00+03	2018-11-25 03:00:00+03	2018-11-25 03:00:00+03	2018-09-25 17:54:11.215381+03	2018-09-25 17:54:11.215381+03	0	9	1
151	bond	RU000A0JTD37	Меркурий-1	Меркурий ФК ООО диск.об. 01	\N	FK Mercury OOO 01	fk mercury ooo 	RU000A0JTD37	RUB	\N	\N	PUBLISHED	\N	\N	391.829987	391.829987	0	0	1000	0	246	1	2019-11-28 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	2018-09-25 17:54:11.230742+03	2018-09-25 17:54:11.230742+03	0	\N	1
152	bond	RU000A0JTD52	АИЖ11А2/12	ИА АИЖК 2011-1 об.кл.А2/12	\N	Ipotech.agent AIZHK 2011-1 A2	ipotech.agent aizhk 	RU000A0JTD52	RUB	\N	\N	PUBLISHED	\N	\N	3.00999999	3.00999999	0.569999993	1.67999995	222.5	92	207	1	2045-05-25 03:00:00+03	2018-11-25 03:00:00+03	2018-11-25 03:00:00+03	2018-09-25 17:54:11.243047+03	2018-09-25 17:54:11.243047+03	0	3	1
153	bond	RU000A0JTDX1	ДОМ.РФ24об	ДОМ.РФ (АО) обл. сер.А24	\N	DOM.RF - 24	dom.rf 	RU000A0JTDX1	RUB	\N	\N	PUBLISHED	\N	\N	7.92000008	7.92000008	11.6800003	19.5300007	1000	92	198	1	2022-11-01 03:00:00+03	2018-11-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:11.258957+03	2018-09-25 17:54:11.258957+03	0	7.75	1
154	bond	RU000A0JTER1	Правоурми1	Правоурмийское ООО сер. 01	\N	Pravourmiiskoe OOO 01	pravourmiiskoe ooo 	RU000A0JTER1	RUB	\N	\N	PUBLISHED	\N	\N	7.75	7.75	7.88999987	30.5799999	1000	124	247	1	2019-12-26 03:00:00+03	1970-01-01 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:11.274936+03	2018-09-25 17:54:11.274936+03	101630	9	1
155	bond	RU000A0JTFB2	ГлДорога 6	Главная дорога АО об.сер. 06	\N	Glavnaya doroga 06	glavnaya doroga 	RU000A0JTFB2	RUB	\N	\N	PUBLISHED	\N	\N	162.369995	162.369995	36.1199989	44.8800011	1000	364	214	1	2028-11-22 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:11.297344+03	2018-09-25 17:54:11.297344+03	0	4.5	1
156	bond	RU000A0JTH82	ОткрХОЛ 4	Открытие Холдинг АО обл. 04	\N	Otkritie Holding 04	otkritie holding 	RU000A0JTH82	RUB	\N	\N	PUBLISHED	\N	\N	33725.3594	33725.3594	121.080002	149.240005	1000	455	233	1	2027-12-08 03:00:00+03	2018-12-19 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:11.311062+03	2018-09-25 17:54:11.311062+03	0	12.0900002	1
157	bond	RU000A0JTHU8	ИА АТБ А	Ипотечный агент АТБ кл.А	\N	Ipotechnii agent ATB A	ipotechnii agent atb a	RU000A0JTHU8	RUB	\N	\N	PUBLISHED	\N	\N	8.40999985	8.40999985	0.310000002	0.469999999	21.3799992	92	248	1	2045-04-26 03:00:00+03	2018-10-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:11.327046+03	2018-09-25 17:54:11.327046+03	0	8.75	1
158	bond	RU000A0JTKA4	ФСК ЕЭС-24	"ФСК ЕЭС"(ПАО)-обл. сер.24	\N	FSK EES 24	fsk ees 	RU000A0JTKA4	RUB	\N	\N	PUBLISHED	\N	\N	8.39000034	8.39000034	14.6800003	39.8899994	1000	182	211	1	2028-01-07 03:00:00+03	2020-01-17 03:00:00+03	2019-01-18 03:00:00+03	2018-09-25 17:54:11.344108+03	2018-09-25 17:54:11.344108+03	0	8	1
159	bond	RU000A0JTLJ3	МЕТАЛИНВ 2	МЕТАЛЛОИНВЕСТ ХК АО обл. 02	\N	METALLOINVEST HK AO 02	metalloinvest hk ao 	RU000A0JTLJ3	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	11.1099997	38.1500015	1000	182	235	1	2023-01-27 03:00:00+03	1970-01-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:11.35884+03	2018-09-25 17:54:11.35884+03	96690	7.6500001	1
160	bond	RU000A0JTLL9	МЕТАЛИНВ 3	МЕТАЛЛОИНВЕСТ ХК АО обл. 03	\N	METALLOINVEST HK AO 03	metalloinvest hk ao 	RU000A0JTLL9	RUB	\N	\N	PUBLISHED	\N	\N	8.52000046	8.52000046	11.1099997	38.1500015	1000	182	235	1	2023-01-27 03:00:00+03	1970-01-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:11.374385+03	2018-09-25 17:54:11.374385+03	0	7.6500001	1
161	bond	RU000A0JTM28	Башнефть06	ПАО "АНК "Башнефть" об. 06	\N	Bashneft ANK 06	bashneft ank 	RU000A0JTM28	RUB	\N	\N	PUBLISHED	\N	\N	8.75	8.75	10.3400002	38.3899994	1000	182	234	1	2023-01-31 03:00:00+03	1970-01-01 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:11.396321+03	2018-09-25 17:54:11.396321+03	96900	7.69999981	1
162	bond	RU000A0JTM36	Башнефть07	ПАО "АНК "Башнефть" об. 07	\N	Bashneft ANK 07	bashneft ank 	RU000A0JTM36	RUB	\N	\N	PUBLISHED	\N	\N	6.61000013	6.61000013	11.8800001	44.1300011	1000	182	234	1	2023-01-31 03:00:00+03	2020-02-04 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:11.411442+03	2018-09-25 17:54:11.411442+03	0	8.85000038	1
163	bond	RU000A0JTM44	Башнефть08	ПАО "АНК "Башнефть" об. 08	\N	Bashneft ANK 08	bashneft ank 	RU000A0JTM44	RUB	\N	\N	PUBLISHED	\N	\N	8.27999973	8.27999973	10.3400002	38.3899994	1000	182	234	1	2023-01-31 03:00:00+03	1970-01-01 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:11.426586+03	2018-09-25 17:54:11.426586+03	0	7.69999981	1
164	bond	RU000A0JTM51	Башнефть09	ПАО "АНК "Башнефть" об. 09	\N	Bashneft ANK 09	bashneft ank 	RU000A0JTM51	RUB	\N	\N	PUBLISHED	\N	\N	6.92000008	6.92000008	11.8800001	44.1300011	1000	182	234	1	2023-01-31 03:00:00+03	2020-02-04 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:11.443415+03	2018-09-25 17:54:11.443415+03	0	8.85000038	1
165	bond	RU000A0JTMG7	РусГидро07	РусГидро (ПАО) 07	\N	RusGidro(PAO) 07	rusgidro(pao)	RU000A0JTMG7	RUB	\N	\N	PUBLISHED	\N	\N	7.94999981	7.94999981	0.129999995	0.5	1000	182	218	1	2023-02-02 03:00:00+03	1970-01-01 03:00:00+03	2019-02-07 03:00:00+03	2018-09-25 17:54:11.466173+03	2018-09-25 17:54:11.466173+03	0	0.100000001	1
166	bond	RU000A0JTMK9	РусГидро08	РусГидро (ПАО) 08	\N	RusGidro(PAO) 08	rusgidro(pao)	RU000A0JTMK9	RUB	\N	\N	PUBLISHED	\N	\N	8.30000019	8.30000019	0.129999995	0.5	1000	182	218	1	2023-02-02 03:00:00+03	1970-01-01 03:00:00+03	2019-02-07 03:00:00+03	2018-09-25 17:54:11.477855+03	2018-09-25 17:54:11.477855+03	0	0.100000001	1
167	bond	RU000A0JTPG0	Европлан-4	АО ЛК Европлан об.сер. 04	\N	Evroplan 4	evroplan 	RU000A0JTPG0	RUB	\N	\N	PUBLISHED	\N	\N	12.29	12.29	11.1800003	59.8400002	1000	182	249	1	2019-02-20 03:00:00+03	1970-01-01 03:00:00+03	2019-02-20 03:00:00+03	2018-09-25 17:54:11.493562+03	2018-09-25 17:54:11.493562+03	0	12	1
168	bond	RU000A0JTQB9	Лента 3 об	Лента ООО 3 об.	\N	Lenta OOO 3 ob.	lenta ooo 	RU000A0JTQB9	RUB	\N	\N	PUBLISHED	\N	\N	9.44999981	9.44999981	0.0799999982	0.5	1000	182	250	1	2020-02-25 03:00:00+03	1970-01-01 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:11.506206+03	2018-09-25 17:54:11.506206+03	88100	0.100000001	1
169	bond	RU000A0JTR72	Лента 1 об	Лента ООО 1 об.	\N	Lenta OOO 1 ob.	lenta ooo 	RU000A0JTR72	RUB	\N	\N	PUBLISHED	\N	\N	3.75999999	3.75999999	0.0599999987	0.5	1000	182	250	1	2020-03-03 03:00:00+03	1970-01-01 03:00:00+03	2019-03-05 03:00:00+03	2018-09-25 17:54:11.517595+03	2018-09-25 17:54:11.517595+03	0	0.100000001	1
170	bond	RU000A0JTR80	Лента 2 об	Лента ООО 2 об.	\N	Lenta OOO 2 ob.	lenta ooo 	RU000A0JTR80	RUB	\N	\N	PUBLISHED	\N	\N	4.48999977	4.48999977	6.32999992	54.8499985	1000	182	250	1	2020-03-03 03:00:00+03	2019-03-05 03:00:00+03	2019-03-05 03:00:00+03	2018-09-25 17:54:11.534576+03	2018-09-25 17:54:11.534576+03	0	11	1
171	bond	RU000A0JTS06	Роснефть07	ПАО НК Роснефть обл.07	\N	Rosneft 07	rosneft 	RU000A0JTS06	RUB	\N	\N	PUBLISHED	\N	\N	8.85999966	8.85999966	2.20000005	36.4000015	1000	182	245	1	2023-03-10 03:00:00+03	1970-01-01 03:00:00+03	2019-03-15 03:00:00+03	2018-09-25 17:54:11.549788+03	2018-09-25 17:54:11.549788+03	95000	7.30000019	1
172	bond	RU000A0JTS22	Роснефть08	ПАО НК Роснефть обл.08	\N	Rosneft 08	rosneft 	RU000A0JTS22	RUB	\N	\N	PUBLISHED	\N	\N	8.51000023	8.51000023	2.20000005	36.4000015	1000	182	245	1	2023-03-10 03:00:00+03	1970-01-01 03:00:00+03	2019-03-15 03:00:00+03	2018-09-25 17:54:11.56577+03	2018-09-25 17:54:11.56577+03	96200	7.30000019	1
173	bond	RU000A0JTT13	Европлан-5	АО ЛК Европлан об.сер. 05	\N	Evroplan 5	evroplan 	RU000A0JTT13	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	0	46.3699989	1000	182	249	1	2019-03-26 03:00:00+03	1970-01-01 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:11.577581+03	2018-09-25 17:54:11.577581+03	0	9.30000019	1
174	bond	RU000A0JTTA5	МТС БО-01	Мобильные ТелеСистемы ПАО БО-1	\N	MTS BO-01	mts bo	RU000A0JTTA5	RUB	\N	\N	PUBLISHED	\N	\N	8.05000019	8.05000019	33.9700012	34.1599998	1000	182	251	1	2023-03-22 03:00:00+03	2020-03-25 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:11.58945+03	2018-09-25 17:54:11.58945+03	98550	6.8499999	1
175	bond	RU000A0JTTV1	РЕСО-Гар03	РЕСО-Гарантия СПАО 03 об.	\N	RESO-Garantia 03	reso-garantia 	RU000A0JTTV1	RUB	\N	\N	PUBLISHED	\N	\N	7.80000019	7.80000019	57.6199989	58.5900002	1000	182	242	1	2023-03-24 03:00:00+03	2019-03-29 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:11.605182+03	2018-09-25 17:54:11.605182+03	0	11.75	1
176	bond	RU000A0JTU85	РЖД-28 обл	"Российские ЖД" ОАО 28 обл.	\N	RZhD 28	rzhd 	RU000A0JTU85	RUB	\N	\N	PUBLISHED	\N	\N	7.71999979	7.71999979	39.3199997	40.8899994	1000	182	202	1	2028-03-21 03:00:00+03	2020-03-31 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:11.617328+03	2018-09-25 17:54:11.617328+03	100870	8.19999981	1
177	bond	RU000A0JTV50	ОбКонФ БО1	Об.Кондитеры-Фин.ООО БО-01	\N	Ob'ed. Konditery-Finans BO-01	ob'ed.	RU000A0JTV50	RUB	\N	\N	PUBLISHED	\N	\N	8.05000019	8.05000019	37.0400009	39.8899994	1000	182	252	1	2023-04-03 03:00:00+03	2021-04-05 03:00:00+03	2018-10-08 03:00:00+03	2018-09-25 17:54:11.643245+03	2018-09-25 17:54:11.643245+03	0	8	1
178	bond	RU000A0JTVE3	УБРиР БО-5	УБРиР (ПАО) БО-05	\N	UBRiR (PAO) BO-05	ubrir (	RU000A0JTVE3	RUB	\N	\N	PUBLISHED	\N	\N	2.27999997	2.27999997	0.449999988	0.5	1000	182	253	1	2020-04-10 03:00:00+03	2018-10-12 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:11.65711+03	2018-09-25 17:54:11.65711+03	99900	0.100000001	1
179	bond	RU000A0JTVJ2	РСХБ 20	"Россельхозбанк" (АО) обл.20	\N	Rosselhozbank 20	rosselhozbank 	RU000A0JTVJ2	RUB	\N	\N	PUBLISHED	\N	\N	8.64999962	8.64999962	29.1100006	32.9099998	1000	182	199	1	2023-04-11 03:00:00+03	2019-04-16 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:11.669619+03	2018-09-25 17:54:11.669619+03	99000	6.5999999	1
180	bond	RU000A0JTVZ8	ЛипецкОбл8	Липецкая обл.-2013 (35008)	\N	Lipetsk reg.-2013	lipetsk reg.	RU000A0JTVZ8	RUB	\N	\N	PUBLISHED	\N	\N	6.65999985	6.65999985	8.14000034	11.0500002	600	91	254	1	2020-04-17 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:11.681282+03	2018-09-25 17:54:11.681282+03	60606	7.38999987	1
181	bond	RU000A0JTW83	ДОМ.РФ25об	ДОМ.РФ (АО) обл. сер.А25	\N	DOM.RF - 25	dom.rf 	RU000A0JTW83	RUB	\N	\N	PUBLISHED	\N	\N	8.98999977	8.98999977	15.79	16.8899994	1000	92	198	1	2026-10-01 03:00:00+03	2019-04-01 03:00:00+03	2018-10-01 03:00:00+03	2018-09-25 17:54:11.692693+03	2018-09-25 17:54:11.692693+03	0	6.69999981	1
182	bond	RU000A0JTWT9	ВерЦемЗав1	Верхбак цемент завод ОАО 1об.	\N	Verhnebak cement zavod 1 ob.	verhnebak cement zavod 	RU000A0JTWT9	RUB	\N	\N	PUBLISHED	\N	\N	8.5	8.5	0.670000017	1.25	1000	91	255	1	2021-05-04 03:00:00+03	1970-01-01 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:11.704562+03	2018-09-25 17:54:11.704562+03	0	0.5	1
183	bond	RU000A0JTX09	ОткрХОЛ 5	Открытие Холдинг АО обл. 05	\N	Otkritie Holding 05	otkritie holding 	RU000A0JTX09	RUB	\N	\N	PUBLISHED	\N	\N	646400	646400	141.25	155.770004	1000	455	233	1	2028-04-25 03:00:00+03	2018-11-06 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:11.716863+03	2018-09-25 17:54:11.716863+03	10	12.6199999	1
184	bond	RU000A0JTXP5	ВТБ 4ИПА	ВТБ об. 4-ИП класса "А"	\N	VTB 4-IP A	vtb 	RU000A0JTXP5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.78999996	6.76999998	301.700012	90	224	1	2044-09-01 03:00:00+03	1970-01-01 03:00:00+03	2018-12-01 03:00:00+03	2018-09-25 17:54:11.728303+03	2018-09-25 17:54:11.728303+03	0	9	1
185	bond	RU000A0JTXQ3	ВТБ 4ИПБ	ВТБ об. 4-ИП класса "Б"	\N	VTB 4-IP B	vtb 	RU000A0JTXQ3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.600000024	2.25999999	301.700012	90	224	1	2044-09-01 03:00:00+03	1970-01-01 03:00:00+03	2018-12-01 03:00:00+03	2018-09-25 17:54:11.74364+03	2018-09-25 17:54:11.74364+03	0	3	1
186	bond	RU000A0JTY57	РЖД БО-18	"Российские ЖД" ОАО БО-18	\N	RZhD BO-18	rzhd bo	RU000A0JTY57	RUB	\N	\N	PUBLISHED	\N	\N	0	0	10.9899998	16.9500008	1000	182	256	1	2043-04-29 03:00:00+03	2018-11-28 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:11.756728+03	2018-09-25 17:54:11.756728+03	0	3.4000001	1
187	bond	RU000A0JTYJ6	ФСК ЕЭС-23	"ФСК ЕЭС"(ПАО)-обл. сер.23	\N	FSK EES 23	fsk ees 	RU000A0JTYJ6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	2.1099999	8.72999954	1000	91	211	1	2048-04-27 03:00:00+03	2018-12-03 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:11.768207+03	2018-09-25 17:54:11.768207+03	0	3.5	1
188	bond	RU000A0JTYK4	ФСК ЕЭС-28	"ФСК ЕЭС"(ПАО)-обл. сер.28	\N	FSK EES 28	fsk ees 	RU000A0JTYK4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	2.1099999	8.72999954	1000	91	211	1	2048-04-27 03:00:00+03	2018-12-03 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:11.784816+03	2018-09-25 17:54:11.784816+03	0	3.5	1
189	bond	RU000A0JTYL2	Роснефть06	ПАО НК Роснефть обл.06	\N	Rosneft 06	rosneft 	RU000A0JTYL2	RUB	\N	\N	PUBLISHED	\N	\N	7.25	7.25	21.4799995	34.9000015	1000	182	245	1	2023-05-30 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:11.796559+03	2018-09-25 17:54:11.796559+03	0	7	1
190	bond	RU000A0JTYM0	Роснефть09	ПАО НК Роснефть обл.09	\N	Rosneft 09	rosneft 	RU000A0JTYM0	RUB	\N	\N	PUBLISHED	\N	\N	7.11999989	7.11999989	21.4799995	34.9000015	1000	182	245	1	2023-05-30 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:11.808535+03	2018-09-25 17:54:11.808535+03	0	7	1
191	bond	RU000A0JTYN8	Роснефть10	ПАО НК Роснефть обл.10	\N	Rosneft 10	rosneft 	RU000A0JTYN8	RUB	\N	\N	PUBLISHED	\N	\N	8.19999981	8.19999981	21.4799995	34.9000015	1000	182	245	1	2023-05-30 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:11.820134+03	2018-09-25 17:54:11.820134+03	0	7	1
192	bond	RU000A0JTYQ1	ТКБ БО-2	"ТКБ" ПАО БО-2	\N	TKB BO-2	tkb bo	RU000A0JTYQ1	RUB	\N	\N	PUBLISHED	\N	\N	54.1199989	54.1199989	27.6200008	44.8800011	1000	182	257	1	2023-05-30 03:00:00+03	2019-06-04 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:11.831925+03	2018-09-25 17:54:11.831925+03	0	9	1
193	bond	RU000A0JTZ49	Совком 02	ИКБ Совкомбанк ПАО обл.02	\N	Sovkombank 02	sovkombank 	RU000A0JTZ49	RUB	\N	\N	PUBLISHED	\N	\N	7.82000017	7.82000017	20.1700001	38.8600006	1000	183	258	1	2021-06-24 03:00:00+03	2018-12-22 03:00:00+03	2018-12-22 03:00:00+03	2018-09-25 17:54:11.843792+03	2018-09-25 17:54:11.843792+03	0	7.75	1
194	bond	RU000A0JTZ98	ИАРайф01-А	ЗАО "ИА Райффайзен 01" кл.А	\N	CJSC "MA Raiffeisen 01" "A"	cjsc "	RU000A0JTZ98	RUB	\N	\N	PUBLISHED	\N	\N	39.0499992	39.0499992	0.00999999978	0.159999996	7.92000008	91	259	1	2040-06-20 03:00:00+03	2018-12-20 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:11.856174+03	2018-09-25 17:54:11.856174+03	0	7.8499999	1
195	bond	RU000A0JTZF1	ДОМ.РФ26об	ДОМ.РФ (АО) обл. сер.А26	\N	DOM.RF - 26	dom.rf 	RU000A0JTZF1	RUB	\N	\N	PUBLISHED	\N	\N	3.17000008	3.17000008	23.0499992	38.5600014	1000	92	198	1	2029-11-01 03:00:00+03	2020-02-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:11.872631+03	2018-09-25 17:54:11.872631+03	0	15.3000002	1
196	bond	RU000A0JTZG9	Экспобанк3	Экспобанк ООО об. 03	\N	Expobank OOO 03	expobank ooo 	RU000A0JTZG9	RUB	\N	\N	PUBLISHED	\N	\N	101.519997	101.519997	17.1000004	20.1599998	1000	92	260	1	2019-07-12 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:11.884295+03	2018-09-25 17:54:11.884295+03	0	8	1
197	bond	RU000A0JTZK1	ОренОбл 02	Оренбургская область 35001 об.	\N	Orenburgskaya obl.  35001	orenburgskaya obl.	RU000A0JTZK1	RUB	\N	\N	PUBLISHED	\N	\N	6.53999996	6.53999996	0.419999987	6.36000013	300	91	261	1	2019-06-19 03:00:00+03	1970-01-01 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:11.900442+03	2018-09-25 17:54:11.900442+03	0	8.5	1
198	bond	RU000A0JTZM7	РЖД БО-09	"Российские ЖД" ОАО БО-09	\N	RZhD BO-09	rzhd bo	RU000A0JTZM7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.93999958	16.9500008	1000	182	256	1	2028-06-08 03:00:00+03	2018-12-20 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:11.916936+03	2018-09-25 17:54:11.916936+03	0	3.4000001	1
199	bond	RU000A0JTZN5	ИА ПСБ2013	ИА ПСБ 2013 ЗАО об. кл. А	\N	Ipotechniy agent PSB 2013	ipotechniy agent psb 	RU000A0JTZN5	RUB	\N	\N	PUBLISHED	\N	\N	9.18000031	9.18000031	0.959999979	1.88	87.6299973	92	262	1	2040-02-09 03:00:00+03	2018-11-09 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:11.928624+03	2018-09-25 17:54:11.928624+03	0	8.5	1
200	bond	RU000A0JU0B2	ДержаваБ01	АКБ "Держава" БО-01	\N	Dergava BO-01	dergava bo	RU000A0JU0B2	RUB	\N	\N	PUBLISHED	\N	\N	449.720001	449.720001	17.9300003	21.4200001	1000	92	263	1	2023-07-10 03:00:00+03	2018-10-10 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:11.944935+03	2018-09-25 17:54:11.944935+03	0	8.5	1
201	bond	RU000A0JU0N7	БинбанкБ02	БИНБАНК ПАО БО-02	\N	BINBANK BO-02	binbank bo	RU000A0JU0N7	RUB	\N	\N	PUBLISHED	\N	\N	1.52999997	1.52999997	0	0.0500000007	1000	181	227	1	2025-09-24 03:00:00+03	1970-01-01 03:00:00+03	2019-03-24 03:00:00+03	2018-09-25 17:54:11.956192+03	2018-09-25 17:54:11.956192+03	90000	0.00999999978	1
202	bond	RU000A0JU0S6	УВЗ Б01	Уралвагонзавод НПК БО-01	\N	Uralvagonzavod NPK BO-01	uralvagonzavod npk bo	RU000A0JU0S6	RUB	\N	\N	PUBLISHED	\N	\N	9.05000019	9.05000019	17.9799995	43.6300011	1000	182	264	1	2020-07-09 03:00:00+03	2019-07-11 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:11.968255+03	2018-09-25 17:54:11.968255+03	99900	8.75	1
203	bond	RU000A0JU0T4	УВЗ Б02	Уралвагонзавод НПК БО-02	\N	Uralvagonzavod NPK BO-02	uralvagonzavod npk bo	RU000A0JU0T4	RUB	\N	\N	PUBLISHED	\N	\N	9.11999989	9.11999989	17.9799995	43.6300011	1000	182	264	1	2020-07-09 03:00:00+03	2019-07-11 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:11.980211+03	2018-09-25 17:54:11.980211+03	99850	8.75	1
204	bond	RU000A0JU0U2	НацСтдБО-2	Национальный стандарт Банк Б-2	\N	Nacionalniy Standart BO-2	nacionalniy standart bo	RU000A0JU0U2	RUB	\N	\N	PUBLISHED	\N	\N	9.11999989	9.11999989	17.0100002	45.3699989	1000	184	265	1	2023-07-18 03:00:00+03	2019-01-18 03:00:00+03	2019-01-18 03:00:00+03	2018-09-25 17:54:11.996149+03	2018-09-25 17:54:11.996149+03	0	9	1
205	bond	RU000A0JU1Q8	РСХБ 21	"Россельхозбанк" (АО) обл.21	\N	Rosselhozbank 21	rosselhozbank 	RU000A0JU1Q8	RUB	\N	\N	PUBLISHED	\N	\N	8.52999973	8.52999973	12.7700005	36.9000015	1000	182	199	1	2023-07-18 03:00:00+03	2021-01-19 03:00:00+03	2019-01-22 03:00:00+03	2018-09-25 17:54:12.011763+03	2018-09-25 17:54:12.011763+03	0	7.4000001	1
206	bond	RU000A0JU1T2	Новсиб 6об	Новосибирск  мун.обл. 2013	\N	Novosibirsk 6	novosibirsk 	RU000A0JU1T2	RUB	\N	\N	PUBLISHED	\N	\N	8.13000011	8.13000011	3.54999995	5.19999981	250	91	266	1	2020-07-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:12.028013+03	2018-09-25 17:54:12.028013+03	0	8.35000038	1
207	bond	RU000A0JU1V8	Карелия 16	Республика Карелия 34016	\N	Karelia 16	karelia 	RU000A0JU1V8	RUB	\N	\N	PUBLISHED	\N	\N	7.30000019	7.30000019	1.15999997	1.84000003	100	92	267	1	2019-01-29 03:00:00+03	1970-01-01 03:00:00+03	2018-10-29 03:00:00+03	2018-09-25 17:54:12.039881+03	2018-09-25 17:54:12.039881+03	10006	7.28999996	1
208	bond	RU000A0JU286	БелгОб2013	Белгородская обл.2013 обл.	\N	Belgorodskaya obl. 2013	belgorodskaya obl.	RU000A0JU286	RUB	\N	\N	PUBLISHED	\N	\N	7.73000002	7.73000002	6.36999989	10.3500004	500	91	268	1	2020-07-28 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:12.055572+03	2018-09-25 17:54:12.055572+03	0	8.30000019	1
209	bond	RU000A0JU2H5	СамарОбл 9	Самарская область 2013	\N	Samara reg.-09	samara reg.	RU000A0JU2H5	RUB	\N	\N	PUBLISHED	\N	\N	7.92999983	7.92999983	4.73000002	8.13000011	400	91	269	1	2020-07-31 03:00:00+03	1970-01-01 03:00:00+03	2018-11-02 03:00:00+03	2018-09-25 17:54:12.068019+03	2018-09-25 17:54:12.068019+03	40116	8.14999962	1
210	bond	RU000A0JU2K9	ФСК ЕЭС-26	"ФСК ЕЭС"(ПАО)-обл. сер.26	\N	FSK EES 26	fsk ees 	RU000A0JU2K9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.42999983	8.22999954	1000	91	211	1	2048-06-30 03:00:00+03	2018-11-06 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:12.079495+03	2018-09-25 17:54:12.079495+03	0	3.29999995	1
211	bond	RU000A0JU2L7	ФСК ЕЭС-27	"ФСК ЕЭС"(ПАО)-обл. сер.27	\N	FSK EES 27	fsk ees 	RU000A0JU2L7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.42999983	8.22999954	1000	91	211	1	2048-06-30 03:00:00+03	2018-11-06 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:12.09163+03	2018-09-25 17:54:12.09163+03	0	3.29999995	1
212	bond	RU000A0JU2N3	ОткрХОЛ 6	Открытие Холдинг АО обл. 06	\N	Otkritie Holding 06	otkritie holding 	RU000A0JU2N3	RUB	\N	\N	PUBLISHED	\N	\N	9356800	9356800	128.770004	142.699997	1000	455	233	1	2028-07-27 03:00:00+03	2018-11-08 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:12.103436+03	2018-09-25 17:54:12.103436+03	10	11.5600004	1
213	bond	RU000A0JU336	СУЭК-Фин05	СУЭК-Финанс ООО об. 05	\N	SUEK-Finans OOO 05	suek-finans ooo 	RU000A0JU336	RUB	\N	\N	PUBLISHED	\N	\N	8.27999973	8.27999973	9.03999996	41.1399994	1000	182	206	1	2023-08-10 03:00:00+03	2019-08-15 03:00:00+03	2019-02-14 03:00:00+03	2018-09-25 17:54:12.11518+03	2018-09-25 17:54:12.11518+03	100100	8.25	1
214	bond	RU000A0JU3B6	НижгорОбл9	Нижегородская обл. 34009	\N	Nizhniy Novgorod reg.-09	nizhniy novgorod reg.	RU000A0JU3B6	RUB	\N	\N	PUBLISHED	\N	\N	8.36999989	8.36999989	2.72000003	13.7299995	350	182	270	1	2020-08-26 03:00:00+03	1970-01-01 03:00:00+03	2019-02-18 03:00:00+03	2018-09-25 17:54:12.127518+03	2018-09-25 17:54:12.127518+03	34853	7.86999989	1
215	bond	RU000A0JU3J9	АИЖК-13 А2	ИА АИЖК 2013-1 об.кл.А2	\N	Ipotech.agent AIZHK 2013-01 A2	ipotech.agent aizhk 	RU000A0JU3J9	RUB	\N	\N	PUBLISHED	\N	\N	11.9799995	11.9799995	3.54999995	20.1900005	900	91	207	1	2045-09-09 03:00:00+03	2018-12-09 03:00:00+03	2018-12-09 03:00:00+03	2018-09-25 17:54:12.143503+03	2018-09-25 17:54:12.143503+03	0	9	1
216	bond	RU000A0JU542	РЖД БО-12	"Российские ЖД" ОАО БО-12	\N	RZhD BO-12	rzhd bo	RU000A0JU542	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.82000005	17.4500008	1000	182	256	1	2033-08-18 03:00:00+03	2019-03-07 03:00:00+03	2019-03-07 03:00:00+03	2018-09-25 17:54:12.155475+03	2018-09-25 17:54:12.155475+03	0	3.5	1
217	bond	RU000A0JU5W7	МГор69-об	Гор.Обл.Займ Москвы 69 в.	\N	Moscow-69	moscow	RU000A0JU5W7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	25.8899994	37.4000015	1000	182	197	1	2021-05-18 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:12.167577+03	2018-09-25 17:54:12.167577+03	0	7.5	1
218	bond	RU000A0JU5X5	МГор70-об	Гор.Обл.Займ Москвы 70 в.	\N	Moscow-70	moscow	RU000A0JU5X5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	22.25	36.1500015	1000	182	197	1	2019-06-04 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:12.179038+03	2018-09-25 17:54:12.179038+03	0	7.25	1
219	bond	RU000A0JU674	Башкорт8об	Республика Башкортостан 34008	\N	Bashkortostan-8	bashkortostan	RU000A0JU674	RUB	\N	\N	PUBLISHED	\N	\N	8.61999989	8.61999989	0.340000004	7.73000002	400	91	271	1	2020-09-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:12.194932+03	2018-09-25 17:54:12.194932+03	39600	7.75	1
220	bond	RU000A0JU6A1	РСХБ 22	"Россельхозбанк" (АО) обл.22	\N	Rosselhozbank 22	rosselhozbank 	RU000A0JU6A1	RUB	\N	\N	PUBLISHED	\N	\N	6.07000017	6.07000017	0.180000007	32.9099998	1000	182	199	1	2023-09-18 03:00:00+03	2019-03-25 03:00:00+03	2019-03-25 03:00:00+03	2018-09-25 17:54:12.206726+03	2018-09-25 17:54:12.206726+03	0	6.5999999	1
221	bond	RU000A0JU6G8	ЕвропланБ1	АО ЛК Европлан БО-01	\N	Evroplan BO-1	evroplan bo	RU000A0JU6G8	RUB	\N	\N	PUBLISHED	\N	\N	9.44999981	9.44999981	61.9900017	62.3300018	1000	182	272	1	2019-09-25 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:12.218823+03	2018-09-25 17:54:12.218823+03	0	12.5	1
222	bond	RU000A0JU6K0	ВЭБ Б14	Внешэкономбанк БО-14	\N	Vneshekonombank BO-14	vneshekonombank bo	RU000A0JU6K0	RUB	\N	\N	PUBLISHED	\N	\N	8.18999958	8.18999958	19.75	20.1900005	1000	91	273	1	2018-09-27 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:12.230876+03	2018-09-25 17:54:12.230876+03	100000	8.10000038	1
223	bond	RU000A0JU6M6	РЕСОЛизБ01	РЕСО-Лизинг ООО БО1	\N	RESO-Lizing B01	reso-lizing b	RU000A0JU6M6	RUB	\N	\N	PUBLISHED	\N	\N	8.34000015	8.34000015	45.6199989	46.1199989	1000	182	274	1	2023-09-21 03:00:00+03	2019-03-28 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:12.242732+03	2018-09-25 17:54:12.242732+03	0	9.25	1
224	bond	RU000A0JU6N4	КостромОб7	Костромская обл. вып.007	\N	Kostroma reg.-007	kostroma reg.	RU000A0JU6N4	RUB	\N	\N	PUBLISHED	\N	\N	5.78999996	5.78999996	1.23000002	1.33000004	150	42	275	1	2018-09-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:12.254955+03	2018-09-25 17:54:12.254955+03	15003	7.69999981	1
225	bond	RU000A0JU6P9	ВлгОб35004	Волгоградская обл. 35004 обл.	\N	Volgograd reg.- 35004	volgograd reg.	RU000A0JU6P9	RUB	\N	\N	PUBLISHED	\N	\N	4.36000013	4.36000013	1.08000004	1.82000005	100	91	276	1	2018-11-01 03:00:00+03	1970-01-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:12.283243+03	2018-09-25 17:54:12.283243+03	10030	7.30000019	1
226	bond	RU000A0JU6U9	Русфинан15	Русфинанс Банк (ООО) обл.15	\N	Rusfinans Bank 15	rusfinans bank 	RU000A0JU6U9	RUB	\N	\N	PUBLISHED	\N	\N	-63.4300003	-63.4300003	38.5999985	40.1399994	1000	182	277	1	2018-10-02 03:00:00+03	1970-01-01 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:12.295046+03	2018-09-25 17:54:12.295046+03	0	8.05000019	1
227	bond	RU000A0JU716	СилМашины2	Силовые машины ПАО об. 2	\N	Silovye mashiny 02	silovye mashiny 	RU000A0JU716	RUB	\N	\N	PUBLISHED	\N	\N	12.8800001	12.8800001	44.0800018	46.3699989	1000	182	278	1	2023-09-28 03:00:00+03	2020-10-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:12.30673+03	2018-09-25 17:54:12.30673+03	94450	9.30000019	1
228	bond	RU000A0JU740	Удмуртия-7	Удмуртская респ. 2013 обл.	\N	Udmurtia-7	udmurtia	RU000A0JU740	RUB	\N	\N	PUBLISHED	\N	\N	7.69999981	7.69999981	17.6599998	18.5699997	500	182	279	1	2020-10-01 03:00:00+03	1970-01-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:12.318787+03	2018-09-25 17:54:12.318787+03	0	7.44999981	1
229	bond	RU000A0JU773	ВТБ БО-43	Банк ВТБ (ПАО) БО-43	\N	Bank VTB BO-43	bank vtb bo	RU000A0JU773	RUB	\N	\N	PUBLISHED	\N	\N	7.80000019	7.80000019	16.0900002	18.0799999	1000	91	280	1	2023-09-29 03:00:00+03	2019-07-05 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:12.330888+03	2018-09-25 17:54:12.330888+03	99750	7.25	1
230	bond	RU000A0JU7B7	РЖД БО-13	"Российские ЖД" ОАО БО-13	\N	RZhD BO-13	rzhd bo	RU000A0JU7B7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	14.8199997	15.96	1000	182	256	1	2033-09-19 03:00:00+03	2018-10-08 03:00:00+03	2018-10-08 03:00:00+03	2018-09-25 17:54:12.342651+03	2018-09-25 17:54:12.342651+03	0	3.20000005	1
231	bond	RU000A0JU7J0	О'КЕЙ-Б04	"О'КЕЙ" ООО БО-04	\N	O'KEY OOO BO-04	o'key ooo bo	RU000A0JU7J0	RUB	\N	\N	PUBLISHED	\N	\N	8.93000031	8.93000031	40.9599991	44.3800011	1000	182	281	1	2018-10-09 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:12.366478+03	2018-09-25 17:54:12.366478+03	100000	8.89999962	1
232	bond	RU000A0JU7L6	ТГК-2 БО-2	ТГК-2 ПАО обл. БО-02	\N	TGK-2 BO-02	tgk	RU000A0JU7L6	RUB	\N	\N	PUBLISHED	\N	\N	11.1199999	11.1199999	12.4099998	14.96	250	182	232	1	2019-04-26 03:00:00+03	1970-01-01 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:12.382491+03	2018-09-25 17:54:12.382491+03	25087.5	12	1
233	bond	RU000A0JU7N2	БанкСОЮЗ06	СОЮЗ Банк (АО) с.06	\N	SOYUZ-06	soyuz	RU000A0JU7N2	RUB	\N	\N	PUBLISHED	\N	\N	7.65999985	7.65999985	33.6500015	36.9000015	1000	182	282	1	2018-10-11 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:12.394573+03	2018-09-25 17:54:12.394573+03	0	7.4000001	1
234	bond	RU000A0JU7R3	СмолОб2013	Смоленская обл.2013 34001 обл.	\N	Smolensk region - 2013	smolensk region 	RU000A0JU7R3	RUB	\N	\N	PUBLISHED	\N	\N	7.26000023	7.26000023	3.46000004	4.67999983	200	96	283	1	2018-10-20 03:00:00+03	1970-01-01 03:00:00+03	2018-10-20 03:00:00+03	2018-09-25 17:54:12.411735+03	2018-09-25 17:54:12.411735+03	20024	8.89999962	1
235	bond	RU000A0JU7S1	ФСК ЕЭС-29	"ФСК ЕЭС"(ПАО)-обл. сер.29	\N	FSK EES 29	fsk ees 	RU000A0JU7S1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	6.61000013	8.47999954	1000	91	211	1	2048-09-07 03:00:00+03	2018-10-15 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:12.431271+03	2018-09-25 17:54:12.431271+03	0	3.4000001	1
236	bond	RU000A0JU7X1	Зенит 11об	"Зенит" (ПАО) обл.11	\N	Zenit-11	zenit	RU000A0JU7X1	RUB	\N	\N	PUBLISHED	\N	\N	6.71000004	6.71000004	37.4900017	42.3800011	1000	182	284	1	2018-10-16 03:00:00+03	1970-01-01 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:12.44461+03	2018-09-25 17:54:12.44461+03	0	8.5	1
237	bond	RU000A0JU7Y9	ГПБ БО-07	ГПБ (АО) БО-07	\N	Gazprombank BO-07	gazprombank bo	RU000A0JU7Y9	RUB	\N	\N	PUBLISHED	\N	\N	71.2300034	71.2300034	31.4099998	36.8499985	1000	183	285	1	2023-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:12.459829+03	2018-09-25 17:54:12.459829+03	0	7.3499999	1
238	bond	RU000A0JU807	ГеотекС 1	"ГЕОТЕК Сейсм" (ПАО) обл.01	\N	Geotek Seismorazvedka 01	geotek seismorazvedka 	RU000A0JU807	RUB	\N	\N	PUBLISHED	\N	\N	266.859985	266.859985	11.8199997	15.5900002	610	91	286	1	2019-10-16 03:00:00+03	2018-10-17 03:00:00+03	2018-10-17 03:00:00+03	2018-09-25 17:54:12.47508+03	2018-09-25 17:54:12.47508+03	56662.8984	10.25	1
239	bond	RU000A0JU823	ВржОб34006	Воронежская обл. 34006 обл.	\N	Voronezh. reg.- 06	voronezh.	RU000A0JU823	RUB	\N	\N	PUBLISHED	\N	\N	6.9000001	6.9000001	1.27999997	1.83000004	100	92	287	1	2018-10-23 03:00:00+03	1970-01-01 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:12.486072+03	2018-09-25 17:54:12.486072+03	10003	7.28000021	1
240	bond	RU000A0JU872	ОткрФКБ9	ПАО ОТКРЫТИЕ ФК Банк 9	\N	OTKRITIE FK Bank 9	otkritie fk bank 	RU000A0JU872	RUB	\N	\N	PUBLISHED	\N	\N	8.14999962	8.14999962	32.8800011	40.1100006	1000	183	288	1	2023-11-11 03:00:00+03	2019-10-31 03:00:00+03	2018-10-28 03:00:00+03	2018-09-25 17:54:12.498033+03	2018-09-25 17:54:12.498033+03	0	8	1
241	bond	RU000A0JU880	МКБ БО-06	"МКБ" ПАО БО-06	\N	MKB BO-06	mkb bo	RU000A0JU880	RUB	\N	\N	PUBLISHED	\N	\N	8.86999989	8.86999989	42.8199997	50.8899994	1000	183	289	1	2018-10-24 03:00:00+03	1970-01-01 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:12.510395+03	2018-09-25 17:54:12.510395+03	0	10.1499996	1
242	bond	RU000A0JU898	МКБ БО-09	"МКБ" ПАО БО-09	\N	MKB BO-09	mkb bo	RU000A0JU898	RUB	\N	\N	PUBLISHED	\N	\N	9.18999958	9.18999958	0	50.8300018	1000	181	289	1	2020-03-25 03:00:00+03	1970-01-01 03:00:00+03	2019-03-25 03:00:00+03	2018-09-25 17:54:12.52231+03	2018-09-25 17:54:12.52231+03	101740	10.25	1
243	bond	RU000A0JU8Q3	Мордовия01	Мордовия 34001 обл.	\N	Respublika Mordovia - 01	respublika mordovia 	RU000A0JU8Q3	RUB	\N	\N	PUBLISHED	\N	\N	7.32000017	7.32000017	4.86999989	6.92000008	300	91	290	1	2018-10-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:12.538895+03	2018-09-25 17:54:12.538895+03	30045	9.25	1
244	bond	RU000A0JU8R1	Хакас2013	Хакасия 2013 об.35003	\N	Hakasiya 2013 (35003)	hakasiya 	RU000A0JU8R1	RUB	\N	\N	PUBLISHED	\N	\N	8.61999989	8.61999989	6.07999992	12.5699997	600	91	291	1	2020-10-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-11 03:00:00+03	2018-09-25 17:54:12.550294+03	2018-09-25 17:54:12.550294+03	60030	8.39999962	1
245	bond	RU000A0JU8S9	ДомДен БО1	Домашние деньги БО-01	\N	Domashnie dengi BO-01	domashnie dengi bo	RU000A0JU8S9	RUB	\N	\N	PUBLISHED	\N	\N	1596800.62	1596800.62	168767.125	199452.047	2000000	182	292	1	2018-10-23 03:00:00+03	1970-01-01 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:12.566265+03	2018-09-25 17:54:12.566265+03	0	20	1
246	bond	RU000A0JU8T7	Райфб-БО1	Райффайзенбанк АО обл. БО-01	\N	Raiffeisenbank BO-01	raiffeisenbank bo	RU000A0JU8T7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.0399999991	0.0500000007	1000	183	293	1	2018-10-29 03:00:00+03	1970-01-01 03:00:00+03	2018-10-29 03:00:00+03	2018-09-25 17:54:12.577727+03	2018-09-25 17:54:12.577727+03	0	0.00999999978	1
247	bond	RU000A0JU8W1	МКБ БО-07	"МКБ" ПАО БО-07	\N	MKB BO-07	mkb bo	RU000A0JU8W1	RUB	\N	\N	PUBLISHED	\N	\N	8.15999985	8.15999985	41.7599983	51.6399994	1000	183	289	1	2018-10-30 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:12.591023+03	2018-09-25 17:54:12.591023+03	100200	10.3000002	1
248	bond	RU000A0JU963	Новсиб2013	Новосибирская область 2013	\N	Novosibirskaya oblast' 2013	novosibirskaya oblast'	RU000A0JU963	RUB	\N	\N	PUBLISHED	\N	\N	7.42000008	7.42000008	3.25	5.11999989	250	96	294	1	2018-10-30 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:12.602519+03	2018-09-25 17:54:12.602519+03	25012.5	7.78999996	1
249	bond	RU000A0JU9G2	СтаврКрай2	Ставропольский край 2013 обл.2	\N	Stavropolsky kray 02	stavropolsky kray 	RU000A0JU9G2	RUB	\N	\N	PUBLISHED	\N	\N	9.27999973	9.27999973	4.88000011	8.06999969	400	91	295	1	2020-11-04 03:00:00+03	1970-01-01 03:00:00+03	2018-10-31 03:00:00+03	2018-09-25 17:54:12.618294+03	2018-09-25 17:54:12.618294+03	39720	8.09000015	1
250	bond	RU000A0JU9K4	УпрОтход01	Управление отходами АО обл.01	\N	Upravlenie othodami 01	upravlenie othodami 	RU000A0JU9K4	RUB	\N	\N	PUBLISHED	\N	\N	10.0200005	10.0200005	31.8700008	82.5	1000	365	296	1	2024-05-07 03:00:00+03	2019-05-07 03:00:00+03	2019-05-07 03:00:00+03	2018-09-25 17:54:12.630057+03	2018-09-25 17:54:12.630057+03	0	8.25	1
251	bond	RU000A0JU9M0	РЖД БО-15	"Российские ЖД" ОАО БО-15	\N	RZhD BO-15	rzhd bo	RU000A0JU9M0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	13.1300001	16.9500008	1000	182	256	1	2038-10-11 03:00:00+03	2018-11-05 03:00:00+03	2018-11-05 03:00:00+03	2018-09-25 17:54:12.642195+03	2018-09-25 17:54:12.642195+03	0	3.4000001	1
252	bond	RU000A0JU9S7	ВЭБЛиз 12	ВЭБ-лизинг АО об. 12	\N	VEB-lizing AO 12	veb-lizing ao 	RU000A0JU9S7	RUB	\N	\N	PUBLISHED	\N	\N	7.69000006	7.69000006	3.96000004	5.13999987	125	182	297	1	2018-11-06 03:00:00+03	1970-01-01 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:12.655818+03	2018-09-25 17:54:12.655818+03	12507.5	8.25	1
253	bond	RU000A0JU9T5	ВЭБЛиз 13	ВЭБ-лизинг АО об. 13	\N	VEB-lizing AO 13	veb-lizing ao 	RU000A0JU9T5	RUB	\N	\N	PUBLISHED	\N	\N	8.68999958	8.68999958	3.96000004	5.13999987	125	182	297	1	2018-11-06 03:00:00+03	1970-01-01 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:12.670068+03	2018-09-25 17:54:12.670068+03	12493.75	8.25	1
254	bond	RU000A0JUA45	ИРКУТ БО-4	Корпорация "ИРКУТ" ПАО БО-04	\N	IRKUT BO-04	irkut bo	RU000A0JUA45	RUB	\N	\N	PUBLISHED	\N	\N	8.25	8.25	33.0400009	44.8800011	1000	182	298	1	2023-11-06 03:00:00+03	2018-11-12 03:00:00+03	2018-11-12 03:00:00+03	2018-09-25 17:54:12.681997+03	2018-09-25 17:54:12.681997+03	0	9	1
255	bond	RU000A0JUA60	ЦентрИнБО7	Центр-инвест ПАО об.с.БО-07	\N	Centre Invest BO-07	centre invest bo	RU000A0JUA60	RUB	\N	\N	PUBLISHED	\N	\N	2873.37012	2873.37012	30.9699993	42.3800011	1000	182	299	1	2018-11-13 03:00:00+03	1970-01-01 03:00:00+03	2018-11-13 03:00:00+03	2018-09-25 17:54:12.696636+03	2018-09-25 17:54:12.696636+03	0	8.5	1
256	bond	RU000A0JUAD7	РСХБ 23	"Россельхозбанк" (АО) обл.23	\N	Rosselhozbank 23	rosselhozbank 	RU000A0JUAD7	RUB	\N	\N	PUBLISHED	\N	\N	8.55000019	8.55000019	30.2700005	42.3800011	1000	182	199	1	2023-11-10 03:00:00+03	2018-11-16 03:00:00+03	2018-11-16 03:00:00+03	2018-09-25 17:54:12.709855+03	2018-09-25 17:54:12.709855+03	100000	8.5	1
257	bond	RU000A0JUAG0	РСГ-ФинБ01	РСГ-Финанс ООО обл. БО-01	\N	RSG-Finance BO-01	rsg-finance bo	RU000A0JUAG0	RUB	\N	\N	PUBLISHED	\N	\N	13.7600002	13.7600002	36.0699997	52.1100006	1000	182	300	1	2025-11-11 03:00:00+03	2019-11-19 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:12.722063+03	2018-09-25 17:54:12.722063+03	0	10.4499998	1
258	bond	RU000A0JUAH8	РЖД-30 обл	"Российские ЖД" ОАО 30 обл.	\N	RZhD 30	rzhd 	RU000A0JUAH8	RUB	\N	\N	PUBLISHED	\N	\N	7.59000015	7.59000015	26.4099998	38.1500015	1000	182	202	1	2028-11-07 03:00:00+03	2019-11-19 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:12.73407+03	2018-09-25 17:54:12.73407+03	100200	7.6500001	1
259	bond	RU000A0JUAJ4	ЮнКрБанБ10	"ЮниКредит Банк" АО БО-10	\N	UniKredit Bank BO-10	unikredit bank bo	RU000A0JUAJ4	RUB	\N	\N	PUBLISHED	\N	\N	8.56999969	8.56999969	31.7600002	45.8699989	1000	182	301	1	2018-11-20 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:12.745902+03	2018-09-25 17:54:12.745902+03	0	9.19999981	1
260	bond	RU000A0JUAN6	ГазпромБ19	"Газпром" ПАО БО-19	\N	GazpromBO-19	gazprombo	RU000A0JUAN6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	11.6400003	16.9500008	1000	182	302	1	2043-10-21 03:00:00+03	2018-11-21 03:00:00+03	2018-11-21 03:00:00+03	2018-09-25 17:54:12.757953+03	2018-09-25 17:54:12.757953+03	0	3.4000001	1
261	bond	RU000A0JUAP1	ГазпромБ20	"Газпром" ПАО БО-20	\N	Gazprom BO-20	gazprom bo	RU000A0JUAP1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	11.6400003	16.9500008	1000	182	303	1	2043-10-21 03:00:00+03	2018-11-21 03:00:00+03	2018-11-21 03:00:00+03	2018-09-25 17:54:12.769696+03	2018-09-25 17:54:12.769696+03	0	3.4000001	1
262	bond	RU000A0JUAT3	ВертолетБ2	Вертолеты России об. БО-02	\N	Russian Helicopter BO-02	russian helicopter bo	RU000A0JUAT3	RUB	\N	\N	PUBLISHED	\N	\N	9.31000042	9.31000042	25.4799995	37.4000015	1000	182	304	1	2023-11-16 03:00:00+03	1970-01-01 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:12.781764+03	2018-09-25 17:54:12.781764+03	93500	7.5	1
263	bond	RU000A0JUAX5	ТверОбл 13	Тверская область 2013	\N	Tverskaya obl. 2013	tverskaya obl.	RU000A0JUAX5	RUB	\N	\N	PUBLISHED	\N	\N	8.60000038	8.60000038	2.02999997	5.61000013	250	91	305	1	2018-11-22 03:00:00+03	1970-01-01 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:12.793582+03	2018-09-25 17:54:12.793582+03	25025	9	1
264	bond	RU000A0JUAZ0	КемерОбл13	Кемеровская область 2013	\N	Kemerovskaya obl. 2013	kemerovskaya obl.	RU000A0JUAZ0	RUB	\N	\N	PUBLISHED	\N	\N	8.42000008	8.42000008	3.58999991	10.7799997	500	96	306	1	2018-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:12.805864+03	2018-09-25 17:54:12.805864+03	50000	8.19999981	1
265	bond	RU000A0JUB02	АльфаБО-05	Альфа-Банк АО обл. БО-05	\N	Alfa-Bank BO-05	alfa-bank bo	RU000A0JUB02	RUB	\N	\N	PUBLISHED	\N	\N	8.01000023	8.01000023	35.2799988	40.8600006	1000	183	307	1	2018-10-20 03:00:00+03	1970-01-01 03:00:00+03	2018-10-20 03:00:00+03	2018-09-25 17:54:12.8207+03	2018-09-25 17:54:12.8207+03	100010	8.14999962	1
266	bond	RU000A0JUBA1	ВЭБ 31	Внешэкономбанк об. сер. 31	\N	Vneshekonombank 31	vneshekonombank 	RU000A0JUBA1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	6.40999985	20.8199997	1000	91	212	1	2020-11-24 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:12.841879+03	2018-09-25 17:54:12.841879+03	0	8.35000038	1
267	bond	RU000A0JUBD5	ОВК Фин01	ОВК Финанс ООО об. сер.01	\N	UWC Finance LLC 01	uwc finance llc 	RU000A0JUBD5	RUB	\N	\N	PUBLISHED	\N	\N	163.960007	163.960007	21.6000004	33.3100014	1000	182	308	1	2021-11-24 03:00:00+03	2018-11-28 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:12.853303+03	2018-09-25 17:54:12.853303+03	0	6.67999983	1
268	bond	RU000A0JUBT1	АИЖ11А1/13	ИА АИЖК 2011-1 об.кл.А1/13	\N	Ipotech.agent AIZHK2011-1A1/13	ipotech.agent aizhk	RU000A0JUBT1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.209999993	6.26999998	279.410004	91	309	1	2046-06-22 03:00:00+03	2018-12-22 03:00:00+03	2018-12-22 03:00:00+03	2018-09-25 17:54:12.865469+03	2018-09-25 17:54:12.865469+03	0	9	1
269	bond	RU000A0JUC19	АИЖ11А2/13	ИА АИЖК 2011-1 об.кл.А2/13	\N	Ipotech.agent AIZHK2011-1A2/13	ipotech.agent aizhk	RU000A0JUC19	RUB	\N	\N	PUBLISHED	\N	\N	3.02999997	3.02999997	0.0700000003	2.08999991	279.410004	91	309	1	2046-06-22 03:00:00+03	2018-12-22 03:00:00+03	2018-12-22 03:00:00+03	2018-09-25 17:54:12.877242+03	2018-09-25 17:54:12.877242+03	0	3	1
270	bond	RU000A0JUC92	ФСК ЕЭС-30	"ФСК ЕЭС"(ПАО)-обл. сер.30	\N	FSK EES 30	fsk ees 	RU000A0JUC92	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.73000002	8.72999954	1000	91	211	1	2048-10-30 03:00:00+03	2018-12-07 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:12.890182+03	2018-09-25 17:54:12.890182+03	0	3.5	1
271	bond	RU000A0JUCA9	ФСК ЕЭС-34	"ФСК ЕЭС"(ПАО)-обл. сер.34	\N	FSK EES 34	fsk ees 	RU000A0JUCA9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.73000002	8.72999954	1000	91	211	1	2048-10-30 03:00:00+03	2018-12-07 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:12.901169+03	2018-09-25 17:54:12.901169+03	0	3.5	1
272	bond	RU000A0JUCG6	РЖД БО-10	"Российские ЖД" ОАО БО-10	\N	RZhD BO-10	rzhd bo	RU000A0JUCG6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	9.68999958	16.9500008	1000	182	256	1	2028-11-29 03:00:00+03	2018-12-12 03:00:00+03	2018-12-12 03:00:00+03	2018-09-25 17:54:12.912953+03	2018-09-25 17:54:12.912953+03	0	3.4000001	1
273	bond	RU000A0JUCH4	ВТБ 5ИПА	ВТБ 5-ИП  класса "А"	\N	VTB 5-IP A	vtb 	RU000A0JUCH4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.63	6.75	300.950012	91	224	1	2046-09-18 03:00:00+03	2018-12-03 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:12.925289+03	2018-09-25 17:54:12.925289+03	0	9	1
274	bond	RU000A0JUCJ0	ВТБ 5ИПБ	ВТБ 5-ИП  класса "Б"	\N	VTB 5-IP B	vtb 	RU000A0JUCJ0	RUB	\N	\N	PUBLISHED	\N	\N	2.76999998	2.76999998	0.540000021	2.25	300.950012	91	224	1	2046-09-18 03:00:00+03	2018-12-03 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:12.936973+03	2018-09-25 17:54:12.936973+03	0	3	1
275	bond	RU000A0JUCP7	ИААбсолют2	ИА Абсолют 2 (ЗАО) класс А	\N	Ipotechniy agent Absolut 2 A	ipotechniy agent absolut 	RU000A0JUCP7	RUB	\N	\N	PUBLISHED	\N	\N	7.88999987	7.88999987	1.42999995	2.98000002	132.919998	92	310	1	2041-08-12 03:00:00+03	2018-11-12 03:00:00+03	2018-11-12 03:00:00+03	2018-09-25 17:54:12.953214+03	2018-09-25 17:54:12.953214+03	0	8.89999962	1
276	bond	RU000A0JUCR3	РоснефтьБ6	ПАО НК Роснефть БО-06	\N	Rosneft  BO-06	rosneft  	RU000A0JUCR3	RUB	\N	\N	PUBLISHED	\N	\N	7.55999994	7.55999994	21.5599995	39.6399994	1000	182	311	1	2023-12-11 03:00:00+03	2018-12-17 03:00:00+03	2018-12-17 03:00:00+03	2018-09-25 17:54:12.96508+03	2018-09-25 17:54:12.96508+03	0	7.94999981	1
277	bond	RU000A0JUCS1	РоснефтьБ5	ПАО НК Роснефть БО-05	\N	Rosneft  BO-05	rosneft  	RU000A0JUCS1	RUB	\N	\N	PUBLISHED	\N	\N	6.86999989	6.86999989	21.5599995	39.6399994	1000	182	311	1	2023-12-11 03:00:00+03	2018-12-17 03:00:00+03	2018-12-17 03:00:00+03	2018-09-25 17:54:12.977179+03	2018-09-25 17:54:12.977179+03	100250	7.94999981	1
278	bond	RU000A0JUCW3	ИАбсолют2Б	ИА Абсолют 2 (ЗАО) класс Б	\N	Ipotechniy agent Absolut 2 B	ipotechniy agent absolut 	RU000A0JUCW3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	92	310	1	2041-08-12 03:00:00+03	1970-01-01 03:00:00+03	2018-11-12 03:00:00+03	2018-09-25 17:54:12.989077+03	2018-09-25 17:54:12.989077+03	0	0	1
279	bond	RU000A0JUCX1	ИА ПСПб А	ИА ПСПб ЗАО об.кл.А	\N	IA PSPb A	ia pspb a	RU000A0JUCX1	RUB	\N	\N	PUBLISHED	\N	\N	-5.76000023	-5.76000023	5.23999977	6.69999981	312.5	92	312	1	2041-07-15 03:00:00+03	2018-10-15 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:13.001083+03	2018-09-25 17:54:13.001083+03	0	8.5	1
280	bond	RU000A0JUCZ6	ТомскОб 48	Томская обл. 48 вып.(с аморт.)	\N	Tomsk reg.-48	tomsk reg.	RU000A0JUCZ6	RUB	\N	\N	PUBLISHED	\N	\N	7.57999992	7.57999992	0.839999974	10.9099998	500	91	313	1	2018-12-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:13.012872+03	2018-09-25 17:54:13.012872+03	50155	8.75	1
281	bond	RU000A0JUD00	ВСИА2012 А	Вост.-Сиб.ипот.агент 2012 кл.А	\N	East.-Sib.mort.agent 2012 A	east.	RU000A0JUD00	RUB	\N	\N	PUBLISHED	\N	\N	11.9499998	11.9499998	3.18000007	6.48999977	294.399994	92	314	1	2046-08-11 03:00:00+03	2018-11-11 03:00:00+03	2018-11-11 03:00:00+03	2018-09-25 17:54:13.024803+03	2018-09-25 17:54:13.024803+03	0	8.75	1
282	bond	RU000A0JUD34	ВСИА2012 Б	Вост.-Сиб.ипот.агент 2012 кл.Б	\N	East.-Sib.mort.agent 2012 B	east.	RU000A0JUD34	RUB	\N	\N	PUBLISHED	\N	\N	0	0	13.5600004	27.7299995	1000	92	314	1	2046-08-11 03:00:00+03	2018-11-11 03:00:00+03	2018-11-11 03:00:00+03	2018-09-25 17:54:13.036906+03	2018-09-25 17:54:13.036906+03	0	11	1
283	bond	RU000A0JUD42	ГлобэксБО9	АО "ГЛОБЭКСБАНК" об.БО-9	\N	Globeksbank BO 09	globeksbank bo 	RU000A0JUD42	RUB	\N	\N	PUBLISHED	\N	\N	11.9499998	11.9499998	18.8999996	37.5999985	1000	183	315	1	2021-12-25 03:00:00+03	2018-12-25 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:13.04885+03	2018-09-25 17:54:13.04885+03	0	7.5	1
284	bond	RU000A0JUD83	ВЭБ Б04	Внешэкономбанк БО-04	\N	Vneshekonombank BO-04	vneshekonombank bo	RU000A0JUD83	RUB	\N	\N	PUBLISHED	\N	\N	8.65999985	8.65999985	1.14999998	20.9400005	1000	91	273	1	2018-12-20 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:13.061013+03	2018-09-25 17:54:13.061013+03	100000	8.39999962	1
285	bond	RU000A0JUDX9	Финстоун01	Финстоун ООО об. 01	\N	Finstone OOO ob. 01	finstone ooo ob.	RU000A0JUDX9	RUB	\N	\N	PUBLISHED	\N	\N	9.64000034	9.64000034	56.4599991	0	1000	2184	316	1	2024-01-04 03:00:00+03	2019-01-10 03:00:00+03	2024-01-04 03:00:00+03	2018-09-25 17:54:13.076525+03	2018-09-25 17:54:13.076525+03	0	0	1
286	bond	RU000A0JUEE7	ВЭБлизБ01	ВЭБ-лизинг АО БО-01	\N	VEB-lizing AO BO-01	veb-lizing ao bo	RU000A0JUEE7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	14.9300003	43.1300011	1000	182	317	1	2024-01-16 03:00:00+03	2019-01-22 03:00:00+03	2019-01-22 03:00:00+03	2018-09-25 17:54:13.089113+03	2018-09-25 17:54:13.089113+03	0	8.64999962	1
287	bond	RU000A0JUFL9	Совком БО1	ИКБ Совкомбанк ПАО обл. БО-01	\N	Sovkombank B0-01	sovkombank b	RU000A0JUFL9	RUB	\N	\N	PUBLISHED	\N	\N	8.19999981	8.19999981	10.6199999	41.1399994	1000	182	318	1	2019-02-07 03:00:00+03	1970-01-01 03:00:00+03	2019-02-07 03:00:00+03	2018-09-25 17:54:13.100426+03	2018-09-25 17:54:13.100426+03	100060	8.25	1
288	bond	RU000A0JUFP0	БинбанкБ04	БИНБАНК ПАО БО-04	\N	BINBANK BO-04	binbank bo	RU000A0JUFP0	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	0.00999999978	0.0500000007	1000	182	227	1	2020-02-07 03:00:00+03	1970-01-01 03:00:00+03	2019-02-08 03:00:00+03	2018-09-25 17:54:13.112703+03	2018-09-25 17:54:13.112703+03	88300	0.00999999978	1
289	bond	RU000A0JUFQ8	БинбанкБ08	БИНБАНК ПАО БО-08	\N	BINBANK BO-08	binbank bo	RU000A0JUFQ8	RUB	\N	\N	PUBLISHED	\N	\N	9.96000004	9.96000004	0.49000001	0.5	1000	182	227	1	2021-03-26 03:00:00+03	2019-03-29 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:13.12455+03	2018-09-25 17:54:13.12455+03	0	0.100000001	1
290	bond	RU000A0JUFU0	РоснефтьБ1	ПАО НК Роснефть БО-01	\N	Rosneft  BO-01	rosneft  	RU000A0JUFU0	RUB	\N	\N	PUBLISHED	\N	\N	7.38000011	7.38000011	10.2399998	44.3800011	1000	182	311	1	2024-02-06 03:00:00+03	2019-02-12 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:13.136534+03	2018-09-25 17:54:13.136534+03	0	8.89999962	1
291	bond	RU000A0JUFV8	РоснефтьБ7	ПАО НК Роснефть БО-07	\N	Rosneft  BO-07	rosneft  	RU000A0JUFV8	RUB	\N	\N	PUBLISHED	\N	\N	7.57000017	7.57000017	10.2399998	44.3800011	1000	182	311	1	2024-02-06 03:00:00+03	2019-02-12 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:13.14822+03	2018-09-25 17:54:13.14822+03	0	8.89999962	1
292	bond	RU000A0JUG15	ИА АТБ 2 А	Ипотечный агент АТБ 2 кл. А	\N	Ipotechnii agent ATB 2 cl.A	ipotechnii agent atb 	RU000A0JUG15	RUB	\N	\N	PUBLISHED	\N	\N	-1.52999997	-1.52999997	3.69000006	5.57000017	245.429993	92	319	1	2046-10-01 03:00:00+03	2018-10-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:13.159949+03	2018-09-25 17:54:13.159949+03	0	9	1
293	bond	RU000A0JUG56	МежИнБанк1	Международный инвест. банк 01	\N	International Invest. Bank 1	international invest.	RU000A0JUG56	RUB	\N	\N	PUBLISHED	\N	\N	0.270000011	0.270000011	0.0399999991	0.0500000007	1000	182	320	1	2024-04-16 03:00:00+03	2018-10-23 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:13.171786+03	2018-09-25 17:54:13.171786+03	0	\N	1
294	bond	RU000A0JUG72	МежИнБанк2	Международный инвест. банк 02	\N	International Invest. Bank 2	international invest.	RU000A0JUG72	RUB	\N	\N	PUBLISHED	\N	\N	6.53999996	6.53999996	39.8199997	47.3699989	1000	182	320	1	2025-04-16 03:00:00+03	2019-04-24 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:13.183937+03	2018-09-25 17:54:13.183937+03	0	\N	1
295	bond	RU000A0JUG80	МежИнБанк3	Международный инвест. банк 03	\N	International Invest. Bank 3	international invest.	RU000A0JUG80	RUB	\N	\N	PUBLISHED	\N	\N	9.18000031	9.18000031	24.7800007	37.9000015	1000	182	320	1	2024-11-19 03:00:00+03	2018-11-27 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:13.198952+03	2018-09-25 17:54:13.198952+03	0	\N	1
296	bond	RU000A0JUG98	МежИнБанк4	Международный инвест. банк 04	\N	International Invest. Bank 4	international invest.	RU000A0JUG98	RUB	\N	\N	PUBLISHED	\N	\N	7.51000023	7.51000023	29.25	40.6399994	1000	182	320	1	2025-11-06 03:00:00+03	2020-11-12 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:13.211831+03	2018-09-25 17:54:13.211831+03	0	\N	1
297	bond	RU000A0JUGY0	ЗенитБО-11	"Банк Зенит" (ПАО) БО-11	\N	Zenit BO-11	zenit bo	RU000A0JUGY0	RUB	\N	\N	PUBLISHED	\N	\N	8.88000011	8.88000011	5.34000015	37.4000015	1000	182	321	1	2019-02-28 03:00:00+03	1970-01-01 03:00:00+03	2019-02-28 03:00:00+03	2018-09-25 17:54:13.223917+03	2018-09-25 17:54:13.223917+03	99500	7.5	1
298	bond	RU000A0JUH89	ХорусФин01	ХОРУС ФИНАНС АО 01	\N	Horus Finans 01	horus finans 	RU000A0JUH89	RUB	\N	\N	PUBLISHED	\N	\N	10.8800001	10.8800001	7.11999989	64.8199997	1000	182	322	1	2019-03-06 03:00:00+03	1970-01-01 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:13.243845+03	2018-09-25 17:54:13.243845+03	0	13	1
299	bond	RU000A0JUH97	УниверКап1	УНИВЕР Капитал ООО об.01	\N	Univer Capital Ltd  01	univer capital ltd  	RU000A0JUH97	RUB	\N	\N	PUBLISHED	\N	\N	21.6399994	21.6399994	6.57999992	59.8400002	1000	182	323	1	2019-03-06 03:00:00+03	1970-01-01 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:13.263482+03	2018-09-25 17:54:13.263482+03	0	12	1
300	bond	RU000A0JUHV4	ВейлФин1	Вейл Финанс ООО 01 обл.	\N	Veil Finance 01 ob.	veil finance 	RU000A0JUHV4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	3.55999994	49.8600006	1000	182	324	1	2023-03-08 03:00:00+03	1970-01-01 03:00:00+03	2019-03-13 03:00:00+03	2018-09-25 17:54:13.275493+03	2018-09-25 17:54:13.275493+03	0	10	1
301	bond	RU000A0JUHY8	ИАПетрок1А	ИА Петрокоммерц-1 кл.А	\N	IA Petrokommerc-1 cl.A	ia petrokommerc	RU000A0JUHY8	RUB	\N	\N	PUBLISHED	\N	\N	9.02000046	9.02000046	0.460000008	2.61999989	120.190002	91	325	1	2046-12-09 03:00:00+03	2018-12-09 03:00:00+03	2018-12-09 03:00:00+03	2018-09-25 17:54:13.287419+03	2018-09-25 17:54:13.287419+03	0	8.75	1
302	bond	RU000A0JUJ87	АИЖК2014А3	ИА АИЖК 2014-1 А3	\N	IA AIZHK 2014-1 A3	ia aizhk 	RU000A0JUJ87	RUB	\N	\N	PUBLISHED	\N	\N	7.73999977	7.73999977	3.06999993	19.9699993	942.419983	91	326	1	2046-06-11 03:00:00+03	2018-12-11 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:13.299963+03	2018-09-25 17:54:13.299963+03	0	8.5	1
303	bond	RU000A0JUJE6	ИАВ 3 А	ИА Возрождение 3 ЗАО об. кл.А	\N	Ipotechniy agent Vozrojdenie3A	ipotechniy agent vozrojdenie	RU000A0JUJE6	RUB	\N	\N	PUBLISHED	\N	\N	9.40999985	9.40999985	1.37	1.41999996	185.330002	31	327	1	2046-10-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:13.311904+03	2018-09-25 17:54:13.311904+03	0	9	1
304	bond	RU000A0JUJG1	Дельта14ИП	КБ ДельтаКредит АО обл.14-ИП	\N	DeltaCredit CB 14-IP	deltacredit cb 	RU000A0JUJG1	RUB	\N	\N	PUBLISHED	\N	\N	8.10999966	8.10999966	29.5900002	30.25	1000	92	328	1	2024-03-27 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:13.32412+03	2018-09-25 17:54:13.32412+03	0	12	1
305	bond	RU000A0JUJP2	ТБС 01	Трансбалтстрой ООО об. 01	\N	Transbaltstroy 01 ob.	transbaltstroy 	RU000A0JUJP2	RUB	\N	\N	PUBLISHED	\N	\N	10.9200001	10.9200001	35.2599983	54.8499985	1000	182	329	1	2020-11-26 03:00:00+03	2018-11-29 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:13.339996+03	2018-09-25 17:54:13.339996+03	0	11	1
306	bond	RU000A0JUJW8	АрчерФин01	Арчер Финанс ООО об.01	\N	OOO Archer Finance Ltd.  01	ooo archer finance ltd.	RU000A0JUJW8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	96.5299988	1042.96997	1000	3458	330	1	2027-03-23 03:00:00+03	1970-01-01 03:00:00+03	2027-03-23 03:00:00+03	2018-09-25 17:54:13.351531+03	2018-09-25 17:54:13.351531+03	0	11.1400003	1
725	bond	RU000A0JWHA4	RUS-26	ГОВОЗ РФ 12840077V (RU)	\N	RUS-26	rus	RU000A0JWHA4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	206013.016	4750	200000	184	497	1	2026-05-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:19.713697+03	2018-09-25 17:54:19.713697+03	0	4.75	1
307	bond	RU000A0JUK84	ПолиплБ01	Полипласт АО БО-01	\N	Polyplast AO BO-01	polyplast ao bo	RU000A0JUK84	RUB	\N	\N	PUBLISHED	\N	\N	0.910000026	0.910000026	64.4400024	69.8099976	1000	182	331	1	2019-04-09 03:00:00+03	2018-10-09 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:13.363334+03	2018-09-25 17:54:13.363334+03	100500	14	1
308	bond	RU000A0JUKA2	ТрансФБО26	ТрансФин-М ПАО БО-26	\N	TransFin-M BO-26	transfin-m bo	RU000A0JUKA2	RUB	\N	\N	PUBLISHED	\N	\N	10.7600002	10.7600002	47.75	52.3600006	1000	182	332	1	2019-04-11 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:13.375123+03	2018-09-25 17:54:13.375123+03	0	10.5	1
309	bond	RU000A0JUKS4	НацКап Б06	Национальный капитал АО БО-06	\N	Natsionalniy Kapital BO-06	natsionalniy kapital bo	RU000A0JUKS4	RUB	\N	\N	PUBLISHED	\N	\N	9.43999958	9.43999958	39.2799988	46.1199989	1000	182	333	1	2019-04-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:13.38718+03	2018-09-25 17:54:13.38718+03	0	9.25	1
310	bond	RU000A0JUKT2	НацКап Б07	Национальный капитал АО БО-07	\N	Natsionalniy Kapital BO-07	natsionalniy kapital bo	RU000A0JUKT2	RUB	\N	\N	PUBLISHED	\N	\N	9.43999958	9.43999958	39.2799988	46.1199989	1000	182	333	1	2019-04-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:13.399246+03	2018-09-25 17:54:13.399246+03	0	9.25	1
311	bond	RU000A0JUKX4	ДОМ.РФ30об	ДОМ.РФ (АО) обл. сер. А30	\N	DOM.RF - 30	dom.rf 	RU000A0JUKX4	RUB	\N	\N	PUBLISHED	\N	\N	-0.140000001	-0.140000001	7.07000017	26.7999992	1000	91	198	1	2033-03-01 03:00:00+03	2018-12-01 03:00:00+03	2018-12-01 03:00:00+03	2018-09-25 17:54:13.411473+03	2018-09-25 17:54:13.411473+03	0	10.75	1
312	bond	RU000A0JUL18	ИнТехЭл Б1	Интертехэлектро-Нов.Ген. БО-01	\N	Intertechelectro New Gen. B01	intertechelectro new gen.	RU000A0JUL18	RUB	\N	\N	PUBLISHED	\N	\N	8.67000008	8.67000008	35.8600006	42.3800011	1000	182	334	1	2020-04-21 03:00:00+03	1970-01-01 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:13.423074+03	2018-09-25 17:54:13.423074+03	0	8.5	1
313	bond	RU000A0JUL67	РосбнБСО12	РОСБАНК ПАО обл.БСО-12	\N	Rosbank BSO-12	rosbank bso	RU000A0JUL67	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.0599999987	0.100000001	1000	92	335	1	2024-04-30 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:13.435157+03	2018-09-25 17:54:13.435157+03	0	0.0399999991	1
314	bond	RU000A0JUL91	РосбнБСО13	РОСБАНК ПАО обл.БСО-13	\N	Rosbank BSO-13	rosbank bso	RU000A0JUL91	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.0500000007	0.0799999982	1000	92	335	1	2024-04-30 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:13.450477+03	2018-09-25 17:54:13.450477+03	0	0.0299999993	1
315	bond	RU000A0JULA0	РосбнБСО14	РОСБАНК ПАО обл.БСО-14	\N	Rosbank BSO-14	rosbank bso	RU000A0JULA0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.0299999993	0.0500000007	1000	92	335	1	2024-04-30 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:13.539309+03	2018-09-25 17:54:13.539309+03	0	0.0199999996	1
316	bond	RU000A0JULC6	РосбнБСО15	РОСБАНК ПАО обл.БСО-15	\N	Rosbank BSO-15	rosbank bso	RU000A0JULC6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.0199999996	0.0299999993	1000	92	335	1	2024-04-30 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:13.557949+03	2018-09-25 17:54:13.557949+03	0	0.00999999978	1
317	bond	RU000A0JUMH3	ГПБ БО-08	ГПБ (АО) БО-08	\N	Gazprombank BO-08	gazprombank bo	RU000A0JUMH3	RUB	\N	\N	PUBLISHED	\N	\N	8.57999992	8.57999992	24.5499992	36.1399994	1000	184	285	1	2024-05-23 03:00:00+03	2018-11-23 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:13.577979+03	2018-09-25 17:54:13.577979+03	0	7.17000008	1
318	bond	RU000A0JUMJ9	ЮнКрБанБ21	"ЮниКредит Банк" АО БО-21	\N	UniKredit Bank BO-21	unikredit bank bo	RU000A0JUMJ9	RUB	\N	\N	PUBLISHED	\N	\N	-7.4000001	-7.4000001	32.0499992	44.8800011	1000	182	301	1	2019-05-17 03:00:00+03	1970-01-01 03:00:00+03	2018-11-16 03:00:00+03	2018-09-25 17:54:13.592241+03	2018-09-25 17:54:13.592241+03	0	9	1
319	bond	RU000A0JUML5	БашнфтБО5	ПАО "АНК "Башнефть" БО-05	\N	Bashneft ANK BO-05	bashneft ank bo	RU000A0JUML5	RUB	\N	\N	PUBLISHED	\N	\N	-3.56999993	-3.56999993	37.2299995	53.3499985	1000	182	336	1	2024-05-13 03:00:00+03	2018-11-19 03:00:00+03	2018-11-19 03:00:00+03	2018-09-25 17:54:13.60798+03	2018-09-25 17:54:13.60798+03	0	10.6999998	1
320	bond	RU000A0JUMX0	ЦентрИнБ10	Центр-инвест ПАО об.с.БО-10	\N	Centre Invest BO-10	centre invest bo	RU000A0JUMX0	RUB	\N	\N	PUBLISHED	\N	\N	8.30000019	8.30000019	28.25	41.1399994	1000	182	299	1	2019-05-22 03:00:00+03	2018-11-21 03:00:00+03	2018-11-21 03:00:00+03	2018-09-25 17:54:13.623703+03	2018-09-25 17:54:13.623703+03	0	8.25	1
321	bond	RU000A0JUN08	ЭлемЛизБО3	Элемент Лизинг ООО обл.БО-03	\N	Element Lizing BO- 03	element lizing bo	RU000A0JUN08	RUB	\N	\N	PUBLISHED	\N	\N	15.0900002	15.0900002	0.00999999978	0.0199999996	1000	91	337	1	2019-05-28 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:13.636236+03	2018-09-25 17:54:13.636236+03	91000	0.00999999978	1
322	bond	RU000A0JUN81	КОМИ 11 об	Республика Коми 2014 11 обл.	\N	Komi-11	komi	RU000A0JUN81	RUB	\N	\N	PUBLISHED	\N	\N	7.94000006	7.94000006	0.790000021	2.76999998	100	91	338	1	2019-11-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:13.652213+03	2018-09-25 17:54:13.652213+03	0	11.1000004	1
323	bond	RU000A0JUNK5	ЛипецкОбл9	Липецкая обл.-2014 (34009)	\N	Lipetsk reg.-2014	lipetsk reg.	RU000A0JUNK5	RUB	\N	\N	PUBLISHED	\N	\N	7.69999981	7.69999981	1.80999994	7.8499999	300	91	254	1	2019-06-04 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:13.68248+03	2018-09-25 17:54:13.68248+03	0	10.5	1
324	bond	RU000A0JUNU4	ИАМКБ2014А	ИА МКБ ЗАО 2014 кл.А	\N	IA MKB ZAO 02	ia mkb zao 	RU000A0JUNU4	RUB	\N	\N	PUBLISHED	\N	\N	1.58000004	1.58000004	0.50999999	2.54999995	96.1800003	91	339	1	2039-06-07 03:00:00+03	2018-12-07 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:13.696032+03	2018-09-25 17:54:13.696032+03	0	10.6499996	1
325	bond	RU000A0JUP63	ЗапСибКБ-2	"Запсибкомбанк" ПАО обл. 02	\N	Zapsibkombank 02	zapsibkombank 	RU000A0JUP63	RUB	\N	\N	PUBLISHED	\N	\N	11.5900002	11.5900002	0.419999987	0.74000001	10	182	340	1	2019-12-12 03:00:00+03	1970-01-01 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:13.716446+03	2018-09-25 17:54:13.716446+03	1038.80005	14.8500004	1
326	bond	RU000A0JUP89	ВлгОб35005	Волгоградская обл. 35005 обл.	\N	Volgograd reg.-35005	volgograd reg.	RU000A0JUP89	RUB	\N	\N	PUBLISHED	\N	\N	6.44999981	6.44999981	0.800000012	6.07999992	250	91	276	1	2019-07-13 03:00:00+03	1970-01-01 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:13.73659+03	2018-09-25 17:54:13.73659+03	25375	9.75	1
327	bond	RU000A0JUPE3	Оренб35002	Оренбургская область 35002 об.	\N	Orenburg reg.-35002	orenburg reg.	RU000A0JUPE3	RUB	\N	\N	PUBLISHED	\N	\N	8.60999966	8.60999966	0.720000029	8.22999954	300	91	341	1	2021-06-14 03:00:00+03	1970-01-01 03:00:00+03	2018-12-17 03:00:00+03	2018-09-25 17:54:13.758288+03	2018-09-25 17:54:13.758288+03	0	11	1
328	bond	RU000A0JUPF0	ИАСанр2А	ЗАО ИА Санрайз-2  класса "А"	\N	ZAO IA Sanraiz-2 klassa "A"	zao ia sanraiz	RU000A0JUPF0	RUB	\N	\N	PUBLISHED	\N	\N	1.09000003	1.09000003	1.12	1.24000001	153.410004	31	342	1	2046-02-28 03:00:00+03	2018-10-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:13.77163+03	2018-09-25 17:54:13.77163+03	15456.0576	9.5	1
329	bond	RU000A0JUPS3	ВТБ 6ИПА	ВТБ 6-ИП  класса "А"	\N	VTB 6-IP A	vtb 	RU000A0JUPS3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.88999999	8.59000015	382.769989	91	224	1	2043-08-14 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:13.795537+03	2018-09-25 17:54:13.795537+03	0	9	1
330	bond	RU000A0JUPT1	ВТБ 6ИПБ	ВТБ 6-ИП  класса "Б"	\N	VTB 6-IP B	vtb 	RU000A0JUPT1	RUB	\N	\N	PUBLISHED	\N	\N	2.75999999	2.75999999	0.629999995	2.8599999	382.769989	91	224	1	2043-08-14 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:13.811586+03	2018-09-25 17:54:13.811586+03	0	3	1
331	bond	RU000A0JUPU9	ИАСанр1А	ЗАО ИА Санрайз-1  класса "А"	\N	ZAO IA Sanraiz-1 klassa "A"	zao ia sanraiz	RU000A0JUPU9	RUB	\N	\N	PUBLISHED	\N	\N	4.11999989	4.11999989	1.23000002	1.37	173.970001	31	342	1	2044-07-28 03:00:00+03	2018-10-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:13.831422+03	2018-09-25 17:54:13.831422+03	0	9.25	1
332	bond	RU000A0JUPW5	ЗенитБО-13	"Банк Зенит" (ПАО) БО-13	\N	Zenit BO-13	zenit bo	RU000A0JUPW5	RUB	\N	\N	PUBLISHED	\N	\N	7.6500001	7.6500001	19.7299995	37.4000015	1000	182	321	1	2024-06-13 03:00:00+03	2019-06-20 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:13.84799+03	2018-09-25 17:54:13.84799+03	0	7.5	1
333	bond	RU000A0JUPZ8	РЖД БО-19	"Российские ЖД" ОАО БО-19	\N	RZhD BO-19	rzhd bo	RU000A0JUPZ8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.85000038	16.9500008	1000	182	256	1	2044-05-20 03:00:00+03	2018-12-21 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:13.864372+03	2018-09-25 17:54:13.864372+03	0	3.4000001	1
334	bond	RU000A0JUQ13	БалтЛиз1	Балтийский лизинг ООО 01	\N	Baltic Leasing 01	baltic leasing 	RU000A0JUQ13	RUB	\N	\N	PUBLISHED	\N	\N	10.1199999	10.1199999	0.75	17.1000004	700	91	343	1	2020-06-19 03:00:00+03	2019-06-21 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:13.879494+03	2018-09-25 17:54:13.879494+03	0	9.80000019	1
335	bond	RU000A0JUQ39	ГПБ БО-09	ГПБ (АО) БО-09	\N	Gazprombank BO-09	gazprombank bo	RU000A0JUQ39	RUB	\N	\N	PUBLISHED	\N	\N	8.11999989	8.11999989	17.8299999	36.25	1000	183	285	1	2024-06-27 03:00:00+03	2018-12-27 03:00:00+03	2018-12-27 03:00:00+03	2018-09-25 17:54:13.899399+03	2018-09-25 17:54:13.899399+03	0	7.23000002	1
336	bond	RU000A0JUQ54	ИА МТСБ А	ЗАО ИА МТСБ  класса "А"	\N	ZAO IA MTSB klassa "A"	zao ia mtsb klassa "	RU000A0JUQ54	RUB	\N	\N	PUBLISHED	\N	\N	6.76000023	6.76000023	1.38	4.23999977	160.279999	92	344	1	2041-11-26 03:00:00+03	2018-11-26 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:13.915229+03	2018-09-25 17:54:13.915229+03	0	10.5	1
337	bond	RU000A0JUQ96	ТрансФБО29	ТрансФин-М ПАО БО-29	\N	TransFin-M BO-29	transfin-m bo	RU000A0JUQ96	RUB	\N	\N	PUBLISHED	\N	\N	10.7299995	10.7299995	26.4699993	52.3600006	1000	182	332	1	2024-06-17 03:00:00+03	2019-06-24 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:13.930815+03	2018-09-25 17:54:13.930815+03	0	10.5	1
338	bond	RU000A0JUQB7	БелгОб2014	Белгородская обл.2014 обл.	\N	Belgorodskaya obl. 2014	belgorodskaya obl.	RU000A0JUQB7	RUB	\N	\N	PUBLISHED	\N	\N	7.82000017	7.82000017	0.0700000003	6.63999987	250	91	268	1	2021-06-21 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:13.942288+03	2018-09-25 17:54:13.942288+03	25670	10.6499996	1
339	bond	RU000A0JUQC5	АшинМЗ БО1	Ашинский метзавод ПАО БО-01	\N	Ashinckiy metzavod PAO BO-01	ashinckiy metzavod pao bo	RU000A0JUQC5	RUB	\N	\N	PUBLISHED	\N	\N	138.789993	138.789993	22.0499992	43.6300011	1000	182	345	1	2024-06-17 03:00:00+03	2018-12-24 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:13.95428+03	2018-09-25 17:54:13.95428+03	82000	8.75	1
340	bond	RU000A0JUQE1	ВТБ БО-26	Банк ВТБ (ПАО) БО-26	\N	Bank VTB BO-26	bank vtb bo	RU000A0JUQE1	RUB	\N	\N	PUBLISHED	\N	\N	7.21999979	7.21999979	0	18.75	1000	91	280	1	2020-06-23 03:00:00+03	2018-12-25 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:13.970779+03	2018-09-25 17:54:13.970779+03	0	7.51999998	1
341	bond	RU000A0JUQF8	ЯрОбл 2014	Ярославская обл. об.2014г.	\N	Yaroslavl region 2014	yaroslavl region 	RU000A0JUQF8	RUB	\N	\N	PUBLISHED	\N	\N	8.22999954	8.22999954	0	5.09000015	200	91	346	1	2019-09-24 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:13.986457+03	2018-09-25 17:54:13.986457+03	20370	10.1999998	1
342	bond	RU000A0JUQH4	Якут 35006	Респ. Саха(Якутия) об. 35006	\N	Sakha (Yakutia)-35006	sakha (	RU000A0JUQH4	RUB	\N	\N	PUBLISHED	\N	\N	8.02000046	8.02000046	7.46999979	7.55000019	300	91	347	1	2021-07-02 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:13.998922+03	2018-09-25 17:54:13.998922+03	0	10.1000004	1
343	bond	RU000A0JUQN2	Росинтруд1	"Росинтруд" ООО обл.01	\N	Rosintrud OOO obl.01	rosintrud ooo obl.	RU000A0JUQN2	RUB	\N	\N	PUBLISHED	\N	\N	9.07999992	9.07999992	12.5799999	45.3699989	1000	184	348	1	2021-02-05 03:00:00+03	2019-02-05 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:14.014+03	2018-09-25 17:54:14.014+03	0	9	1
344	bond	RU000A0JUQP7	СамарОбл10	Самарская область 2014	\N	Samara reg.-10	samara reg.	RU000A0JUQP7	RUB	\N	\N	PUBLISHED	\N	\N	7.94999981	7.94999981	6.73999977	7.48000002	300	91	269	1	2021-07-01 03:00:00+03	1970-01-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:14.026028+03	2018-09-25 17:54:14.026028+03	30957	10	1
345	bond	RU000A0JUQQ5	МКБ БО-10	"МКБ" ПАО БО-10	\N	MKB BO-10	mkb bo	RU000A0JUQQ5	RUB	\N	\N	PUBLISHED	\N	\N	8.65999985	8.65999985	17.9300003	42.8499985	1000	184	289	1	2019-07-10 03:00:00+03	1970-01-01 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:14.040623+03	2018-09-25 17:54:14.040623+03	99990	8.5	1
346	bond	RU000A0JUQR3	МКБ БО-11	"МКБ" ПАО БО-11	\N	MKB BO-11	mkb bo	RU000A0JUQR3	RUB	\N	\N	PUBLISHED	\N	\N	9.60999966	9.60999966	19.2999992	46.1300011	1000	184	289	1	2019-07-10 03:00:00+03	1970-01-01 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:14.054814+03	2018-09-25 17:54:14.054814+03	99800	9.14999962	1
347	bond	RU000A0JUQW3	Стржилинв1	ООО "Стройжилинвест" 01 обл.	\N	Stroi'jilinvest 01 obl.	stroi'jilinvest 	RU000A0JUQW3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	36.6500015	1000	182	349	1	2019-07-10 03:00:00+03	1970-01-01 03:00:00+03	2019-01-09 03:00:00+03	2018-09-25 17:54:14.070433+03	2018-09-25 17:54:14.070433+03	0	7.3499999	1
348	bond	RU000A0JUR04	ТрансФБО30	ТрансФин-М ПАО БО-30	\N	TransFin-M BO-30	transfin-m bo	RU000A0JUR04	RUB	\N	\N	PUBLISHED	\N	\N	10.7600002	10.7600002	21.2900009	52.3600006	1000	182	332	1	2024-07-05 03:00:00+03	2019-07-12 03:00:00+03	2019-01-11 03:00:00+03	2018-09-25 17:54:14.082079+03	2018-09-25 17:54:14.082079+03	0	10.5	1
349	bond	RU000A0JUR46	Новсиб2014	Новосибирская область 2014	\N	Novosibirskaya oblast' 2014	novosibirskaya oblast'	RU000A0JUR46	RUB	\N	\N	PUBLISHED	\N	\N	6.67000008	6.67000008	5.69999981	7.11000013	250	91	294	1	2019-10-08 03:00:00+03	1970-01-01 03:00:00+03	2018-10-13 03:00:00+03	2018-09-25 17:54:14.104793+03	2018-09-25 17:54:14.104793+03	0	11.3999996	1
350	bond	RU000A0JURL4	ВТБЛизФБО4	ВТБ Лизинг Финанс БО-4	\N	VTB Lising Finans BO-4	vtb lising finans bo	RU000A0JURL4	RUB	\N	\N	PUBLISHED	\N	\N	8.60000038	8.60000038	8.96000004	13.1499996	631.590027	91	350	1	2024-07-17 03:00:00+03	2019-01-23 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:14.118036+03	2018-09-25 17:54:14.118036+03	0	8.35000038	1
351	bond	RU000A0JURM2	ОткрХОЛБО3	Открытие Холдинг АО обл. БО-3	\N	Otkritie Holding BO-3	otkritie holding bo	RU000A0JURM2	RUB	\N	\N	PUBLISHED	\N	\N	83781.7891	83781.7891	140.369995	181.199997	1000	546	351	1	2027-07-14 03:00:00+03	2019-01-23 03:00:00+03	2019-01-23 03:00:00+03	2018-09-25 17:54:14.130111+03	2018-09-25 17:54:14.130111+03	0	12.4200001	1
352	bond	RU000A0JURP5	ПрГарант 2	Профит-Гарант ООО обл.02	\N	Profit-Garant 02	profit-garant 	RU000A0JURP5	RUB	\N	\N	PUBLISHED	\N	\N	14.5799999	14.5799999	10.9300003	70	1000	365	352	1	2019-07-30 03:00:00+03	1970-01-01 03:00:00+03	2019-07-30 03:00:00+03	2018-09-25 17:54:14.146328+03	2018-09-25 17:54:14.146328+03	0	7	1
353	bond	RU000A0JURQ3	Промкап 02	Промкапитал ООО обл.02	\N	Promkapital 02	promkapital 	RU000A0JURQ3	RUB	\N	\N	PUBLISHED	\N	\N	16.3099995	16.3099995	10.9300003	70	1000	365	353	1	2019-07-30 03:00:00+03	1970-01-01 03:00:00+03	2019-07-30 03:00:00+03	2018-09-25 17:54:14.162248+03	2018-09-25 17:54:14.162248+03	0	7	1
354	bond	RU000A0JURT7	ИНВЕКТОР 2	ИНВЕКТОР ООО обл.02	\N	INVECTOR 02	invector 	RU000A0JURT7	RUB	\N	\N	PUBLISHED	\N	\N	14.7200003	14.7200003	10.9300003	70	1000	365	354	1	2019-07-30 03:00:00+03	1970-01-01 03:00:00+03	2019-07-30 03:00:00+03	2018-09-25 17:54:14.178012+03	2018-09-25 17:54:14.178012+03	0	7	1
355	bond	RU000A0JUS37	ХорусФ БО1	ХОРУС ФИНАНС АО БО-01	\N	Horus Finance BO-01	horus finance bo	RU000A0JUS37	RUB	\N	\N	PUBLISHED	\N	\N	15.7700005	15.7700005	19.9500008	64.8199997	1000	182	355	1	2019-07-30 03:00:00+03	1970-01-01 03:00:00+03	2019-01-29 03:00:00+03	2018-09-25 17:54:14.198093+03	2018-09-25 17:54:14.198093+03	0	13	1
356	bond	RU000A0JUSH0	ЮнКрБанБ22	"ЮниКредит Банк" АО БО-22	\N	UniKredit Bank BO-22	unikredit bank bo	RU000A0JUSH0	RUB	\N	\N	PUBLISHED	\N	\N	30.5499992	30.5499992	12.0799999	44.8800011	1000	182	301	1	2019-08-06 03:00:00+03	1970-01-01 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:14.219359+03	2018-09-25 17:54:14.219359+03	0	9	1
357	bond	RU000A0JUSJ6	ХорусФ БО2	ХОРУС ФИНАНС АО БО-02	\N	Horus Finance BO-02	horus finance bo	RU000A0JUSJ6	RUB	\N	\N	PUBLISHED	\N	\N	15.6800003	15.6800003	14.25	64.8199997	1000	182	355	1	2019-08-15 03:00:00+03	1970-01-01 03:00:00+03	2019-02-14 03:00:00+03	2018-09-25 17:54:14.237739+03	2018-09-25 17:54:14.237739+03	0	13	1
358	bond	RU000A0JUSQ1	ВТБЛизФБО2	ВТБ Лизинг Финанс БО-2	\N	VTB Lising Finans BO-2	vtb lising finans bo	RU000A0JUSQ1	RUB	\N	\N	PUBLISHED	\N	\N	8.06000042	8.06000042	6.17000008	12.1999998	615.400024	91	350	1	2022-08-05 03:00:00+03	2018-11-09 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:14.250251+03	2018-09-25 17:54:14.250251+03	0	7.94999981	1
359	bond	RU000A0JUT69	Русфинан12	Русфинанс Банк (ООО) обл.12	\N	Rusfinance Bank 12	rusfinance bank 	RU000A0JUT69	RUB	\N	\N	PUBLISHED	\N	\N	6.03000021	6.03000021	9	49.6100006	1000	182	356	1	2019-08-22 03:00:00+03	1970-01-01 03:00:00+03	2019-02-21 03:00:00+03	2018-09-25 17:54:14.267091+03	2018-09-25 17:54:14.267091+03	0	9.94999981	1
360	bond	RU000A0JUT85	ПЕРЕСВЕТБ2	АКБ АО "ПЕРЕСВЕТ" БО-02	\N	AKB AO "PERESVET" BO-02	akb ao "	RU000A0JUT85	RUB	\N	\N	PUBLISHED	\N	\N	10.2399998	10.2399998	6.6500001	87.5800018	1000	6268	357	1	2034-08-04 03:00:00+03	1970-01-01 03:00:00+03	2034-08-04 03:00:00+03	2018-09-25 17:54:14.281811+03	2018-09-25 17:54:14.281811+03	0	0.50999999	1
361	bond	RU000A0JUTB1	ВЭБ Б11	Внешэкономбанк БО-11	\N	Vneshekonombank BO-11	vneshekonombank bo	RU000A0JUTB1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	6.94999981	24.3099995	1000	91	273	1	2029-08-16 03:00:00+03	1970-01-01 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:14.297853+03	2018-09-25 17:54:14.297853+03	0	9.75	1
362	bond	RU000A0JUTC9	ТМэнерго 1	ТМ-энерго финанс ООО 01 обл.	\N	TM-energo finance 01 obl.	tm-energo finance 	RU000A0JUTC9	RUB	\N	\N	PUBLISHED	\N	\N	16.0100002	16.0100002	34.1899986	299.179993	1000	1820	358	1	2030-02-14 03:00:00+03	1970-01-01 03:00:00+03	2023-02-23 03:00:00+03	2018-09-25 17:54:14.313665+03	2018-09-25 17:54:14.313665+03	0	6	1
363	bond	RU000A0JUU25	ОВК Фин Б1	ОВК Финанс ООО БО-01	\N	UWC Finance LLC BO-01	uwc finance llc bo	RU000A0JUU25	RUB	\N	\N	PUBLISHED	\N	\N	11.8500004	11.8500004	4.5999999	59.8400002	1000	182	359	1	2019-09-10 03:00:00+03	2019-03-12 03:00:00+03	2019-03-12 03:00:00+03	2018-09-25 17:54:14.330079+03	2018-09-25 17:54:14.330079+03	100200	12	1
364	bond	RU000A0JUU90	АльфаБО-13	Альфа-Банк АО обл. БО-13	\N	Alfa-Bank BO-13	alfa-bank bo	RU000A0JUU90	RUB	\N	\N	PUBLISHED	\N	\N	7.8499999	7.8499999	3.06999993	46.6199989	1000	182	307	1	2029-08-30 03:00:00+03	2019-09-12 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:14.349343+03	2018-09-25 17:54:14.349343+03	0	9.35000038	1
365	bond	RU000A0JUUA1	АльфаБО-14	Альфа-Банк АО обл. БО-14	\N	Alfa-Bank BO-14	alfa-bank bo	RU000A0JUUA1	RUB	\N	\N	PUBLISHED	\N	\N	8.43999958	8.43999958	2.71000004	41.1399994	1000	182	307	1	2029-08-30 03:00:00+03	2021-09-09 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:14.369677+03	2018-09-25 17:54:14.369677+03	0	8.25	1
366	bond	RU000A0JUUB9	РегИнв 01	РЕГИОН-ИНВЕСТ ООО 01 обл.	\N	REGION-INVEST 01 obl.	region-invest 	RU000A0JUUB9	RUB	\N	\N	PUBLISHED	\N	\N	44896.8789	44896.8789	3.45000005	52.3600006	1000	182	360	1	2019-09-12 03:00:00+03	1970-01-01 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:14.386101+03	2018-09-25 17:54:14.386101+03	0	10.5	1
367	bond	RU000A0JUUG8	ТрансФБО28	ТрансФин-М ПАО БО-28	\N	TransFin-M BO-28	transfin-m bo	RU000A0JUUG8	RUB	\N	\N	PUBLISHED	\N	\N	10.7399998	10.7399998	2.00999999	52.3600006	1000	182	332	1	2019-09-17 03:00:00+03	1970-01-01 03:00:00+03	2019-03-19 03:00:00+03	2018-09-25 17:54:14.402429+03	2018-09-25 17:54:14.402429+03	0	10.5	1
368	bond	RU000A0JUUU9	МОЭСК БО-4	ПАО "МОЭСК" БО-04	\N	MOESK BO-04	moesk bo	RU000A0JUUU9	RUB	\N	\N	PUBLISHED	\N	\N	9.15999985	9.15999985	1.13999999	41.3899994	1000	182	361	1	2024-09-12 03:00:00+03	2020-09-17 03:00:00+03	2019-03-21 03:00:00+03	2018-09-25 17:54:14.417941+03	2018-09-25 17:54:14.417941+03	0	8.30000019	1
369	bond	RU000A0JUV08	ГПБ БО-10	ГПБ (АО) БО-10	\N	Gazprombank BO-10	gazprombank bo	RU000A0JUV08	RUB	\N	\N	PUBLISHED	\N	\N	6.92999983	6.92999983	34.4900017	34.6800003	1000	184	285	1	2024-09-26 03:00:00+03	2018-09-26 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:14.437608+03	2018-09-25 17:54:14.437608+03	0	6.88000011	1
370	bond	RU000A0JUV57	Росбанк-А7	РОСБАНК ПАО обл.с.А7	\N	Rosbank A7	rosbank a	RU000A0JUV57	RUB	\N	\N	PUBLISHED	\N	\N	2.57999992	2.57999992	23.9699993	25.0699997	1000	183	362	1	2024-10-07 03:00:00+03	2019-10-04 03:00:00+03	2018-10-03 03:00:00+03	2018-09-25 17:54:14.453611+03	2018-09-25 17:54:14.453611+03	0	5	1
371	bond	RU000A0JUV81	Дельта13ИП	КБ ДельтаКредит АО обл.13-ИП	\N	DeltaCredit CB 13-IP	deltacredit cb 	RU000A0JUV81	RUB	\N	\N	PUBLISHED	\N	\N	8.46000004	8.46000004	46.7999992	48.3800011	1000	183	328	1	2024-10-01 03:00:00+03	2021-10-01 03:00:00+03	2018-10-01 03:00:00+03	2018-09-25 17:54:14.469329+03	2018-09-25 17:54:14.469329+03	0	9.64999962	1
372	bond	RU000A0JUVF8	ПромсвбБО6	Промсвязьбанк ПАО БО-06	\N	Promsvyazbank PAO BO-06	promsvyazbank pao bo	RU000A0JUVF8	RUB	\N	\N	PUBLISHED	\N	\N	8.97000027	8.97000027	44.3600006	46.1300011	1000	183	363	1	2019-10-02 03:00:00+03	1970-01-01 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:14.485273+03	2018-09-25 17:54:14.485273+03	99700	9.19999981	1
373	bond	RU000A0JUVG6	ПромсвбБО8	Промсвязьбанк ПАО БО-08	\N	Promsvyazbank PAO BO-08	promsvyazbank pao bo	RU000A0JUVG6	RUB	\N	\N	PUBLISHED	\N	\N	9.06999969	9.06999969	50.5800018	51.4199982	1000	184	363	1	2021-03-28 03:00:00+03	2020-03-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:14.501383+03	2018-09-25 17:54:14.501383+03	101830	10.1999998	1
374	bond	RU000A0JUVM4	КраснЯрКр9	Красноярский край  обл.09	\N	Krasnoyarsk reg.- 34009	krasnoyarsk reg.	RU000A0JUVM4	RUB	\N	\N	PUBLISHED	\N	\N	2.92000008	2.92000008	33.2700005	34.4099998	600	182	364	1	2018-10-01 03:00:00+03	1970-01-01 03:00:00+03	2018-10-01 03:00:00+03	2018-09-25 17:54:14.517037+03	2018-09-25 17:54:14.517037+03	60084	11.5	1
375	bond	RU000A0JUVT9	СоломЛес01	СОЛОМЕНСКИЙ ЛЕСОЗАВОД ПАО 01об	\N	Solomensky Lesozavod 01	solomensky lesozavod 	RU000A0JUVT9	RUB	\N	\N	PUBLISHED	\N	\N	10.25	10.25	47.6699982	49.8600006	1000	182	365	1	2021-09-29 03:00:00+03	1970-01-01 03:00:00+03	2018-10-03 03:00:00+03	2018-09-25 17:54:14.539908+03	2018-09-25 17:54:14.539908+03	0	10	1
376	bond	RU000A0JUW23	Дельта15ИП	КБ ДельтаКредит АО обл.15-ИП	\N	DeltaCredit CB 15-IP	deltacredit cb 	RU000A0JUW23	RUB	\N	\N	PUBLISHED	\N	\N	7.78999996	7.78999996	25.1499996	30.0400009	1000	92	328	1	2024-10-10 03:00:00+03	1970-01-01 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:14.556662+03	2018-09-25 17:54:14.556662+03	0	11.9200001	1
377	bond	RU000A0JUW31	РСХБ БО13	"Россельхозбанк" (АО) БО-13	\N	Rosselhozbank BO-13	rosselhozbank bo	RU000A0JUW31	RUB	\N	\N	PUBLISHED	\N	\N	8.21000004	8.21000004	24.6299992	27.6700001	1000	91	366	1	2024-09-27 03:00:00+03	2019-10-04 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:14.572916+03	2018-09-25 17:54:14.572916+03	0	11.1000004	1
378	bond	RU000A0JUW72	РСХБ БО14	"Россельхозбанк" (АО) БО-14	\N	Rosselhozbank BO-14	rosselhozbank bo	RU000A0JUW72	RUB	\N	\N	PUBLISHED	\N	\N	8.22999954	8.22999954	23.7199993	27.6700001	1000	91	366	1	2024-09-30 03:00:00+03	2019-10-07 03:00:00+03	2018-10-08 03:00:00+03	2018-09-25 17:54:14.589545+03	2018-09-25 17:54:14.589545+03	0	11.1000004	1
379	bond	RU000A0JUWA7	ТрансФБО34	ТрансФин-М ПАО БО-34	\N	TransFin-M BO-34	transfin-m bo	RU000A0JUWA7	RUB	\N	\N	PUBLISHED	\N	\N	10.0100002	10.0100002	46.2999992	49.8600006	1000	182	332	1	2024-09-30 03:00:00+03	2018-10-08 03:00:00+03	2018-10-08 03:00:00+03	2018-09-25 17:54:14.605713+03	2018-09-25 17:54:14.605713+03	0	10	1
380	bond	RU000A0JUWB5	ХМАО 09	ХМАО-Югры об. 34001	\N	HMAO-Yugra ob. 34001	hmao-yugra ob.	RU000A0JUWB5	RUB	\N	\N	PUBLISHED	\N	\N	8.89999962	8.89999962	6.75	8.52999973	300	91	367	1	2019-10-13 03:00:00+03	1970-01-01 03:00:00+03	2018-10-14 03:00:00+03	2018-09-25 17:54:14.62076+03	2018-09-25 17:54:14.62076+03	30303	11.3999996	1
381	bond	RU000A0JUWJ8	Карелия 17	Республика Карелия 35017	\N	Karelia 17	karelia 	RU000A0JUWJ8	RUB	\N	\N	PUBLISHED	\N	\N	8.28999996	8.28999996	2.22000003	3.04999995	100	91	267	1	2020-04-08 03:00:00+03	1970-01-01 03:00:00+03	2018-10-20 03:00:00+03	2018-09-25 17:54:14.636814+03	2018-09-25 17:54:14.636814+03	10600	12.25	1
382	bond	RU000A0JUWK6	ВоронежОб7	Воронежская обл.07обл.	\N	Voronezh reg.-07	voronezh reg.	RU000A0JUWK6	RUB	\N	\N	PUBLISHED	\N	\N	8.35999966	8.35999966	11.75	14.8100004	500	92	368	1	2019-10-14 03:00:00+03	1970-01-01 03:00:00+03	2018-10-14 03:00:00+03	2018-09-25 17:54:14.652436+03	2018-09-25 17:54:14.652436+03	51475	11.75	1
383	bond	RU000A0JUWT7	Башкорт9об	Республика Башкортостан 34009	\N	Bashkortostan-9	bashkortostan	RU000A0JUWT7	RUB	\N	\N	PUBLISHED	\N	\N	4.36000013	4.36000013	7.03000021	8.52999973	300	91	271	1	2019-04-11 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:14.664552+03	2018-09-25 17:54:14.664552+03	0	11.3999996	1
384	bond	RU000A0JUWU5	Волгогр 07	городск. займ Волгограда 34007	\N	Volgograd 34007	volgograd 	RU000A0JUWU5	RUB	\N	\N	PUBLISHED	\N	\N	8.09000015	8.09000015	8.80000019	12.3299999	400	91	369	1	2019-10-10 03:00:00+03	1970-01-01 03:00:00+03	2018-10-21 03:00:00+03	2018-09-25 17:54:14.696666+03	2018-09-25 17:54:14.696666+03	40936	12.3599997	1
385	bond	RU000A0JUWV3	ОткрХОЛБО4	Открытие Холдинг АО обл. БО-4	\N	Otkritie Holding BO-4	otkritie holding bo	RU000A0JUWV3	RUB	\N	\N	PUBLISHED	\N	\N	7340800	7340800	179.669998	185.240005	1000	546	351	1	2027-09-30 03:00:00+03	2018-10-11 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:14.724532+03	2018-09-25 17:54:14.724532+03	17270	12.6999998	1
386	bond	RU000A0JUWW1	ТрансФБО32	ТрансФин-М ПАО БО-32	\N	TransFin-M BO-32	transfin-m bo	RU000A0JUWW1	RUB	\N	\N	PUBLISHED	\N	\N	10.2399998	10.2399998	45.4799995	49.8600006	1000	182	332	1	2024-10-03 03:00:00+03	2020-10-08 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:14.740714+03	2018-09-25 17:54:14.740714+03	0	10	1
387	bond	RU000A0JUX30	ТрансФБО33	ТрансФин-М ПАО БО-33	\N	TransFin-M BO-33	transfin-m bo	RU000A0JUX30	RUB	\N	\N	PUBLISHED	\N	\N	0	0	44.1100006	49.8600006	1000	182	332	1	2024-10-08 03:00:00+03	2020-10-13 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:14.756508+03	2018-09-25 17:54:14.756508+03	0	10	1
388	bond	RU000A0JUX71	РЖД БО-16	"Российские ЖД" ОАО БО-16	\N	RZhD BO-16	rzhd bo	RU000A0JUX71	RUB	\N	\N	PUBLISHED	\N	\N	0	0	14.1199999	15.96	1000	182	256	1	2039-09-20 03:00:00+03	2018-10-16 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:14.772206+03	2018-09-25 17:54:14.772206+03	0	3.20000005	1
389	bond	RU000A0JUX89	ОмскОб2014	Омская обл. 34002 обл.	\N	Omsk region - 2014	omsk region 	RU000A0JUX89	RUB	\N	\N	PUBLISHED	\N	\N	7.98999977	7.98999977	9.43999958	12.2700005	400	91	370	1	2019-10-15 03:00:00+03	1970-01-01 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:14.788212+03	2018-09-25 17:54:14.788212+03	0	12.3000002	1
390	bond	RU000A0JUXT5	ТрансФБО35	ТрансФин-М ПАО БО-35	\N	TransFin-M BO-35	transfin-m bo	RU000A0JUXT5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	42.4700012	49.8600006	1000	182	332	1	2024-10-14 03:00:00+03	2020-10-19 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:14.803936+03	2018-09-25 17:54:14.803936+03	0	10	1
391	bond	RU000A0JUXW9	Хакас2014	Хакасия 2014 об.35004	\N	Hakasiya 2014 (35004)	hakasiya 	RU000A0JUXW9	RUB	\N	\N	PUBLISHED	\N	\N	7.88999987	7.88999987	6.55000019	9.56999969	300	92	291	1	2019-10-27 03:00:00+03	1970-01-01 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:14.815965+03	2018-09-25 17:54:14.815965+03	31545	12.6499996	1
392	bond	RU000A0JUYC9	ТрансФБО36	ТрансФин-М ПАО БО-36	\N	TransFin-M BO-36	transfin-m bo	RU000A0JUYC9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	40	49.8600006	1000	182	332	1	2024-10-23 03:00:00+03	2021-10-27 03:00:00+03	2018-10-31 03:00:00+03	2018-09-25 17:54:14.831931+03	2018-09-25 17:54:14.831931+03	0	10	1
393	bond	RU000A0JUYJ4	ЛадьяФ БО2	Ладья-Финанс АО БО-02	\N	Ladya-Finans BO-02	ladya-finans bo	RU000A0JUYJ4	RUB	\N	\N	PUBLISHED	\N	\N	7.11999989	7.11999989	27.6200008	34.9000015	1000	182	371	1	2021-10-29 03:00:00+03	1970-01-01 03:00:00+03	2018-11-02 03:00:00+03	2018-09-25 17:54:14.848043+03	2018-09-25 17:54:14.848043+03	0	7	1
394	bond	RU000A0JUZN3	НоябрПГЭ01	ООО "Ноябрьская ПГЭ" 01 обл.	\N	Noyabrskaya PGE 01	noyabrskaya pge 	RU000A0JUZN3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	30.9699993	42.3800011	1000	182	372	1	2020-11-10 03:00:00+03	1970-01-01 03:00:00+03	2018-11-13 03:00:00+03	2018-09-25 17:54:14.862926+03	2018-09-25 17:54:14.862926+03	0	8.5	1
395	bond	RU000A0JUZZ7	ТрансФБО37	ТрансФин-М ПАО БО-37	\N	TransFin-M BO-37	transfin-m bo	RU000A0JUZZ7	RUB	\N	\N	PUBLISHED	\N	\N	10.7700005	10.7700005	36.5299988	52.3600006	1000	182	332	1	2024-11-11 03:00:00+03	2021-11-15 03:00:00+03	2018-11-19 03:00:00+03	2018-09-25 17:54:14.877194+03	2018-09-25 17:54:14.877194+03	0	10.5	1
396	bond	RU000A0JV052	ЮнКрБанБ11	"ЮниКредит Банк" АО БО-11	\N	UniKredit Bank BO-11	unikredit bank bo	RU000A0JV052	RUB	\N	\N	PUBLISHED	\N	\N	9.18999958	9.18999958	31.1599998	45.3800011	1000	182	301	1	2019-11-20 03:00:00+03	1970-01-01 03:00:00+03	2018-11-21 03:00:00+03	2018-09-25 17:54:14.890772+03	2018-09-25 17:54:14.890772+03	0	9.10000038	1
397	bond	RU000A0JV0N6	РоссКапБ02	АКБ Российский Капитал БО-02	\N	Rossiiskij Kapital BO-02	rossiiskij kapital bo	RU000A0JV0N6	RUB	\N	\N	PUBLISHED	\N	\N	46.8199997	46.8199997	26.1200008	38.6399994	1000	182	373	1	2019-11-22 03:00:00+03	2018-11-23 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:14.903106+03	2018-09-25 17:54:14.903106+03	0	7.75	1
398	bond	RU000A0JV0P1	СОЮЗ БО-01	СОЮЗ Банк (АО) БО-01	\N	SOYUZ BO-01	soyuz bo	RU000A0JV0P1	RUB	\N	\N	PUBLISHED	\N	\N	16.3700008	16.3700008	32.0099983	47.3699989	1000	182	374	1	2019-11-22 03:00:00+03	2018-11-23 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:14.914631+03	2018-09-25 17:54:14.914631+03	0	9.5	1
399	bond	RU000A0JV0Q9	СОЮЗ БО-06	СОЮЗ Банк (АО) БО-06	\N	SOYUZ BO-06	soyuz bo	RU000A0JV0Q9	RUB	\N	\N	PUBLISHED	\N	\N	9.31000042	9.31000042	32.0099983	47.3699989	1000	182	374	1	2019-11-22 03:00:00+03	2018-11-23 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:14.927945+03	2018-09-25 17:54:14.927945+03	0	9.5	1
400	bond	RU000A0JV0T3	УпрОтход02	Управление отходами АО обл.02	\N	Upravlenie othodami 02	upravlenie othodami 	RU000A0JV0T3	RUB	\N	\N	PUBLISHED	\N	\N	9.97999954	9.97999954	5.19999981	82.5	1000	365	296	1	2025-06-01 03:00:00+03	2019-09-02 03:00:00+03	2019-09-02 03:00:00+03	2018-09-25 17:54:14.938451+03	2018-09-25 17:54:14.938451+03	0	8.25	1
401	bond	RU000A0JV0U1	АльфаБО-15	Альфа-Банк АО обл. БО-15	\N	Alfa-Bank BO-15	alfa-bank bo	RU000A0JV0U1	RUB	\N	\N	PUBLISHED	\N	\N	8.68000031	8.68000031	23.9599991	36.6500015	1000	182	307	1	2029-11-13 03:00:00+03	2021-05-25 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:14.950519+03	2018-09-25 17:54:14.950519+03	97300	7.3499999	1
402	bond	RU000A0JV102	ВостЭксБ 3	Вост.ЭкспрессБанк ПАО об.3	\N	Vostochniy Express Bank 03 ob.	vostochniy express bank 	RU000A0JV102	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	0.00999999978	182	375	1	2020-05-28 03:00:00+03	1970-01-01 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:14.962285+03	2018-09-25 17:54:14.962285+03	0	18	100000
403	bond	RU000A0JV110	ВТБЛизФБО8	ВТБ Лизинг Финанс БО-8	\N	VTB Lising Finans BO-8	vtb lising finans bo	RU000A0JV110	RUB	\N	\N	PUBLISHED	\N	\N	8.17000008	8.17000008	4.4000001	15.4200001	777.780029	91	350	1	2021-11-25 03:00:00+03	2018-11-29 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:14.974565+03	2018-09-25 17:54:14.974565+03	0	7.94999981	1
404	bond	RU000A0JV169	ИА ХМБ-2 А	ИА ХМБ-2 ЗАО класс А	\N	Ipotechnii Agent KHMB-2 classA	ipotechnii agent khmb	RU000A0JV169	RUB	\N	\N	PUBLISHED	\N	\N	0	0	3.03999996	9.65999985	425.690002	92	376	1	2047-07-01 03:00:00+03	2018-11-27 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:14.986481+03	2018-09-25 17:54:14.986481+03	0	9	1
405	bond	RU000A0JV185	ИА ХМБ-2 Б	ИА ХМБ-2 ЗАО класс Б	\N	Ipotechnii Agent KHMB-2 classB	ipotechnii agent khmb	RU000A0JV185	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.00999999	3.22000003	425.690002	92	376	1	2047-07-01 03:00:00+03	2018-11-27 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:15.000736+03	2018-09-25 17:54:15.000736+03	0	3	1
406	bond	RU000A0JV1B9	АИЖК14-3А2	ИА АИЖК 2014-3 А2	\N	IA AIZHK 2014-3 A2	ia aizhk 	RU000A0JV1B9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.280000001	2.8599999	382.350006	91	326	1	2047-06-16 03:00:00+03	2018-12-16 03:00:00+03	2018-12-16 03:00:00+03	2018-09-25 17:54:15.014628+03	2018-09-25 17:54:15.014628+03	0	3	1
407	bond	RU000A0JV1C7	АИЖК14-3А1	ИА АИЖК 2014-3 А1	\N	IA AIZHK 2014-3 A1	ia aizhk 	RU000A0JV1C7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.850000024	8.57999992	382.350006	91	326	1	2047-06-16 03:00:00+03	2018-12-16 03:00:00+03	2018-12-16 03:00:00+03	2018-09-25 17:54:15.026763+03	2018-09-25 17:54:15.026763+03	0	9	1
408	bond	RU000A0JV1D5	БинбанкБ05	БИНБАНК ПАО БО-05	\N	BINBANK BO-05	binbank bo	RU000A0JV1D5	RUB	\N	\N	PUBLISHED	\N	\N	9.61999989	9.61999989	27.3700008	44.8800011	1000	182	227	1	2020-12-02 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:15.043397+03	2018-09-25 17:54:15.043397+03	0	9	1
409	bond	RU000A0JV1E3	ВТБ 7ИПА	ВТБ 7-ИП  класса "А"	\N	VTB 7-IP A	vtb 	RU000A0JV1E3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.85000002	8.86999989	395.369995	91	224	1	2044-12-06 03:00:00+03	2018-12-06 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.055332+03	2018-09-25 17:54:15.055332+03	0	9	1
410	bond	RU000A0JV1F0	ВТБ 7ИПБ	ВТБ 7-ИП  класса "Б"	\N	VTB 7-IP B	vtb 	RU000A0JV1F0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.620000005	2.96000004	395.329987	91	224	1	2044-12-06 03:00:00+03	2018-12-06 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.071069+03	2018-09-25 17:54:15.071069+03	0	3	1
411	bond	RU000A0JV1H6	ГПБ 1-ИП-А	ГПБ (АО) 1-ИП класса А	\N	Gazprombank 1-IP-A	gazprombank 	RU000A0JV1H6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	3.70000005	10.9700003	483.779999	92	243	1	2048-04-27 03:00:00+03	2018-11-25 03:00:00+03	2018-11-25 03:00:00+03	2018-09-25 17:54:15.082899+03	2018-09-25 17:54:15.082899+03	0	9	1
412	bond	RU000A0JV1N4	ГПБ 1-ИП-Б	ГПБ (АО) 1-ИП класса Б	\N	Gazprombank 1-IP-B	gazprombank 	RU000A0JV1N4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.23000002	3.66000009	483.779999	92	243	1	2048-04-27 03:00:00+03	2018-11-25 03:00:00+03	2018-11-25 03:00:00+03	2018-09-25 17:54:15.09462+03	2018-09-25 17:54:15.09462+03	0	3	1
413	bond	RU000A0JV1U9	ИА ИТБ 14А	Ипотечный агент ИТБ 2014  кл.A	\N	Ipotechnii agent ITB 2014 A	ipotechnii agent itb 	RU000A0JV1U9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	3.30999994	5.73999977	253.199997	92	377	1	2047-03-31 03:00:00+03	2018-11-03 03:00:00+03	2018-11-03 03:00:00+03	2018-09-25 17:54:15.106384+03	2018-09-25 17:54:15.106384+03	0	9	1
414	bond	RU000A0JV1V7	ИА ИТБ 14Б	Ипотечный агент ИТБ 2014  кл.Б	\N	Ipotechnii agent ITB 2014 B	ipotechnii agent itb 	RU000A0JV1V7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.10000002	1.90999997	253.199997	92	377	1	2047-03-31 03:00:00+03	2018-11-03 03:00:00+03	2018-11-03 03:00:00+03	2018-09-25 17:54:15.123855+03	2018-09-25 17:54:15.123855+03	0	3	1
415	bond	RU000A0JV1W5	РоснфтБО2	ПАО НК Роснефть БО-02	\N	Rosneft  BO-02	rosneft  	RU000A0JV1W5	RUB	\N	\N	PUBLISHED	\N	\N	7.86000013	7.86000013	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.141434+03	2018-09-25 17:54:15.141434+03	0	9.39999962	1
416	bond	RU000A0JV1X3	РоснфтБО3	ПАО НК Роснефть БО-03	\N	Rosneft  BO-03	rosneft  	RU000A0JV1X3	RUB	\N	\N	PUBLISHED	\N	\N	9.36999989	9.36999989	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.154915+03	2018-09-25 17:54:15.154915+03	0	9.39999962	1
417	bond	RU000A0JV1Y1	РоснфтБО4	ПАО НК Роснефть БО-04	\N	Rosneft  BO-04	rosneft  	RU000A0JV1Y1	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.167211+03	2018-09-25 17:54:15.167211+03	0	9.39999962	1
418	bond	RU000A0JV201	РоснфтБО8	ПАО НК Роснефть БО-08	\N	Rosneft  BO-08	rosneft  	RU000A0JV201	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.178573+03	2018-09-25 17:54:15.178573+03	0	9.39999962	1
419	bond	RU000A0JV219	РоснфтБО9	ПАО НК Роснефть БО-09	\N	Rosneft  BO-09	rosneft  	RU000A0JV219	RUB	\N	\N	PUBLISHED	\N	\N	9.11999989	9.11999989	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.190521+03	2018-09-25 17:54:15.190521+03	0	9.39999962	1
420	bond	RU000A0JV227	РоснфтБО14	ПАО НК Роснефть БО-14	\N	Rosneft  BO-14	rosneft  	RU000A0JV227	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.202739+03	2018-09-25 17:54:15.202739+03	0	9.39999962	1
421	bond	RU000A0JV235	РоснфтБО10	ПАО НК Роснефть БО-10	\N	Rosneft  BO-10	rosneft  	RU000A0JV235	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.215183+03	2018-09-25 17:54:15.215183+03	0	9.39999962	1
422	bond	RU000A0JV243	РоснфтБО11	ПАО НК Роснефть БО-11	\N	Rosneft  BO-11	rosneft  	RU000A0JV243	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.231101+03	2018-09-25 17:54:15.231101+03	0	9.39999962	1
423	bond	RU000A0JV250	РоснфтБО12	ПАО НК Роснефть БО-12	\N	Rosneft  BO-12	rosneft  	RU000A0JV250	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.246579+03	2018-09-25 17:54:15.246579+03	0	9.39999962	1
424	bond	RU000A0JV268	РоснфтБО13	ПАО НК Роснефть БО-13	\N	Rosneft  BO-13	rosneft  	RU000A0JV268	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	28.3299999	46.8699989	1000	182	311	1	2024-11-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.25821+03	2018-09-25 17:54:15.25821+03	0	9.39999962	1
425	bond	RU000A0JV276	РоснфтБО15	ПАО НК Роснефть БО-15	\N	Rosneft  BO-15	rosneft  	RU000A0JV276	RUB	\N	\N	PUBLISHED	\N	\N	8.07999992	8.07999992	4.09000015	19.5699997	1000	91	311	1	2020-12-03 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.287404+03	2018-09-25 17:54:15.287404+03	0	7.8499999	1
426	bond	RU000A0JV284	РоснфтБО17	ПАО НК Роснефть БО-17	\N	Rosneft  BO-17	rosneft  	RU000A0JV284	RUB	\N	\N	PUBLISHED	\N	\N	7.55000019	7.55000019	4.09000015	19.5699997	1000	91	311	1	2020-12-03 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.302433+03	2018-09-25 17:54:15.302433+03	0	7.8499999	1
427	bond	RU000A0JV292	РоснфтБО16	ПАО НК Роснефть БО-16	\N	Rosneft  BO-16	rosneft  	RU000A0JV292	RUB	\N	\N	PUBLISHED	\N	\N	7.28999996	7.28999996	4.09000015	19.5699997	1000	91	311	1	2020-12-03 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.314159+03	2018-09-25 17:54:15.314159+03	0	7.8499999	1
428	bond	RU000A0JV2A9	РоснфтБО24	ПАО НК Роснефть БО-24	\N	Rosneft  BO-24	rosneft  	RU000A0JV2A9	RUB	\N	\N	PUBLISHED	\N	\N	7.01000023	7.01000023	4.09000015	19.5699997	1000	91	311	1	2020-12-03 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:15.326159+03	2018-09-25 17:54:15.326159+03	0	7.8499999	1
429	bond	RU000A0JV2B7	ИАбсолют3Б	ИА Абсолют 3 (ООО) класс Б	\N	Ipotechniy agent Absolut 3 B	ipotechniy agent absolut 	RU000A0JV2B7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	91	310	1	2042-09-11 03:00:00+03	1970-01-01 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:15.338208+03	2018-09-25 17:54:15.338208+03	0	0	1
430	bond	RU000A0JV2C5	ИААбсолют3	ИА Абсолют 3 (ООО) класс А	\N	Ipotechniy agent Absolut 3 A	ipotechniy agent absolut 	RU000A0JV2C5	RUB	\N	\N	PUBLISHED	\N	\N	8.39999962	8.39999962	0.75	4.86000013	192.970001	91	310	1	2042-09-11 03:00:00+03	2018-12-11 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:15.350058+03	2018-09-25 17:54:15.350058+03	0	10.1000004	1
431	bond	RU000A0JV2H4	ТомскАдм 5	Адм. г.Томск 2014	\N	TomskAdm 05	tomskadm 	RU000A0JV2H4	RUB	\N	\N	PUBLISHED	\N	\N	7.98999977	7.98999977	1.61000001	10.4700003	300	91	378	1	2019-12-15 03:00:00+03	1970-01-01 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:15.361062+03	2018-09-25 17:54:15.361062+03	32160	14	1
432	bond	RU000A0JV2J0	ЛенОбл2014	Ленинградская обл. 2014	\N	Leningrad reg. 2014	leningrad reg.	RU000A0JV2J0	RUB	\N	\N	PUBLISHED	\N	\N	13.46	13.46	1.48000002	9.60999966	300	91	379	1	2021-12-07 03:00:00+03	1970-01-01 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:15.373478+03	2018-09-25 17:54:15.373478+03	0	12.8500004	1
433	bond	RU000A0JV2K8	ИА СБ-14 А	Ипотечный агент СБ-2014  кл.A	\N	Ipotechnii agent SB 2014 A	ipotechnii agent sb 	RU000A0JV2K8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	7.28000021	7.51999998	331.589996	92	380	1	2046-12-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:15.385521+03	2018-09-25 17:54:15.385521+03	0	9	1
434	bond	RU000A0JV2L6	ИА СБ-14 Б	Ипотечный агент СБ-2014  кл.Б	\N	Ipotechnii agent SB 2014 B	ipotechnii agent sb 	RU000A0JV2L6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	2.43000007	2.50999999	331.589996	92	380	1	2046-12-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:15.397421+03	2018-09-25 17:54:15.397421+03	0	3	1
435	bond	RU000A0JV318	ИА АкБарсБ	ИА АкБарс 2014 кл.Б	\N	IA AkBars 2014 cl.B	ia akbars 	RU000A0JV318	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.340000004	0.680000007	273.820007	30	381	1	2047-05-10 03:00:00+03	2018-10-10 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:15.414612+03	2018-09-25 17:54:15.414612+03	0	3	1
436	bond	RU000A0JV326	ИА АкБарсА	ИА АкБарс 2014 кл.А	\N	IA AkBars 2014 cl.A	ia akbars 	RU000A0JV326	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.00999999	2.02999997	273.820007	30	381	1	2047-05-10 03:00:00+03	2018-10-10 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:15.430506+03	2018-09-25 17:54:15.430506+03	0	9	1
437	bond	RU000A0JV334	СтржилинБ1	ООО "Стройжилинвест" БО-01	\N	Stroyzhilinvest B0-01	stroyzhilinvest b	RU000A0JV334	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	36.4500008	1000	182	382	1	2021-12-14 03:00:00+03	1970-01-01 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:15.446264+03	2018-09-25 17:54:15.446264+03	0	7.3499999	1
438	bond	RU000A0JV375	ГТЛК БО-03	ГосТранспортЛизингКомп БО-03	\N	GTLK (PAO) BO-03	gtlk (	RU000A0JV375	RUB	\N	\N	PUBLISHED	\N	\N	0	0	2.08999991	27.1800003	1000	91	383	1	2024-12-10 03:00:00+03	2020-12-15 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:15.462027+03	2018-09-25 17:54:15.462027+03	0	10.8999996	1
439	bond	RU000A0JV3L4	ОткрФКББ4	ПАО ОТКРЫТИЕ ФК Банк БО-4	\N	OTKRITIE FK Bank BO-4	otkritie fk bank bo	RU000A0JV3L4	RUB	\N	\N	PUBLISHED	\N	\N	9.52000046	9.52000046	25.4599991	50.6399994	1000	183	384	1	2023-05-04 03:00:00+03	2020-04-25 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:15.474251+03	2018-09-25 17:54:15.474251+03	0	10.1000004	1
440	bond	RU000A0JV3M2	Волжск2014	г.Волжский Волгогр.обл. 2014	\N	Volzhsky 2014	volzhsky 	RU000A0JV3M2	RUB	\N	\N	PUBLISHED	\N	\N	8.21000004	8.21000004	10.1899996	14.96	400	91	385	1	2019-12-24 03:00:00+03	1970-01-01 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:15.485464+03	2018-09-25 17:54:15.485464+03	0	15	1
441	bond	RU000A0JV3Q3	ВТБ БО-30	Банк ВТБ (ПАО) БО-30	\N	Bank VTB BO-30	bank vtb bo	RU000A0JV3Q3	RUB	\N	\N	PUBLISHED	\N	\N	8.53999996	8.53999996	0.850000024	19.3199997	1000	91	280	1	2024-12-13 03:00:00+03	2019-09-20 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:15.509811+03	2018-09-25 17:54:15.509811+03	99500	7.75	1
442	bond	RU000A0JV3R1	РСХБ БО15	"Россельхозбанк" (АО) БО-15	\N	Rosselhozbank BO-15	rosselhozbank bo	RU000A0JV3R1	RUB	\N	\N	PUBLISHED	\N	\N	8.06999969	8.06999969	0.939999998	21.4400005	1000	91	366	1	2024-12-13 03:00:00+03	2020-12-18 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:15.521649+03	2018-09-25 17:54:15.521649+03	0	8.60000038	1
443	bond	RU000A0JV3S9	ИАФора14 А	ЗАО "ИА ФОРА 2014" класс А	\N	ZAO IA FORA 2014 klass A	zao ia fora 	RU000A0JV3S9	RUB	\N	\N	PUBLISHED	\N	\N	-4.86000013	-4.86000013	6.15999985	7.86999989	328.75	92	386	1	2047-10-15 03:00:00+03	2018-10-15 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:15.533542+03	2018-09-25 17:54:15.533542+03	0	9.5	1
444	bond	RU000A0JV3T7	БизнКонс 1	Бизнес Консалтинг ООО 01	\N	Business Consulting 01	business consulting 	RU000A0JV3T7	RUB	\N	\N	PUBLISHED	\N	\N	10.0900002	10.0900002	45.5299988	359.01001	1000	2184	387	1	2030-12-06 03:00:00+03	1970-01-01 03:00:00+03	2023-12-15 03:00:00+03	2018-09-25 17:54:15.545901+03	2018-09-25 17:54:15.545901+03	0	6	1
445	bond	RU000A0JV3U5	БКЗФин 01	БКЗ Финанс ООО об. 01	\N	BKZ finance ob.01	bkz finance ob.	RU000A0JV3U5	RUB	\N	\N	PUBLISHED	\N	\N	9.51000023	9.51000023	45.5299988	359.01001	1000	2184	388	1	2030-12-06 03:00:00+03	1970-01-01 03:00:00+03	2023-12-15 03:00:00+03	2018-09-25 17:54:15.561643+03	2018-09-25 17:54:15.561643+03	0	6	1
446	bond	RU000A0JV3Z4	МгдОбл2014	Магаданская обл. 2014	\N	Magadan Region 2014	magadan region 	RU000A0JV3Z4	RUB	\N	\N	PUBLISHED	\N	\N	7.90999985	7.90999985	0.159999996	14.96	400	91	389	1	2018-12-24 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:15.573351+03	2018-09-25 17:54:15.573351+03	40708	15	1
447	bond	RU000A0JV409	ИАВТБ2014А	АО ИА ВТБ 2014 1 кл.А	\N	AO IA VTB 2014 1 klass A	ao ia vtb 	RU000A0JV409	RUB	\N	\N	PUBLISHED	\N	\N	9.27999973	9.27999973	1.51999998	7.67999983	342.329987	91	390	1	2057-09-07 03:00:00+03	2018-12-07 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:15.585504+03	2018-09-25 17:54:15.585504+03	0	9	1
448	bond	RU000A0JV433	ГСС БО-04	Гражд.Самол.Сухого АО БО-04	\N	Grazhd.Samolety Sukhogo BO-04	grazhd.samolety sukhogo bo	RU000A0JV433	RUB	\N	\N	PUBLISHED	\N	\N	4.78000021	4.78000021	0.25	0.5	1000	182	391	1	2019-12-24 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:15.597568+03	2018-09-25 17:54:15.597568+03	0	0.100000001	1
449	bond	RU000A0JV441	ВТБЛизФБО1	ВТБ Лизинг Финанс БО-01	\N	VTB Lising Finans BO-01	vtb lising finans bo	RU000A0JV441	RUB	\N	\N	PUBLISHED	\N	\N	8.72000027	8.72000027	0	14.4099998	684.219971	91	350	1	2024-12-17 03:00:00+03	2019-03-26 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:15.614656+03	2018-09-25 17:54:15.614656+03	0	8.44999981	1
450	bond	RU000A0JV458	ВТБЛизФБО3	ВТБ Лизинг Финанс БО-03	\N	VTB Lising Finans BO-03	vtb lising finans bo	RU000A0JV458	RUB	\N	\N	PUBLISHED	\N	\N	8.18999958	8.18999958	0	15.4200001	777.780029	91	350	1	2021-12-21 03:00:00+03	2018-12-25 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:15.629079+03	2018-09-25 17:54:15.629079+03	0	7.94999981	1
451	bond	RU000A0JV466	ВТБЛизФБО5	ВТБ Лизинг Финанс БО-05	\N	VTB Lising Finans BO-05	vtb lising finans bo	RU000A0JV466	RUB	\N	\N	PUBLISHED	\N	\N	8.72000027	8.72000027	0	14.5900002	692.320007	91	350	1	2022-12-20 03:00:00+03	2018-12-25 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:15.642238+03	2018-09-25 17:54:15.642238+03	0	8.44999981	1
452	bond	RU000A0JV474	ВТБЛизФБО6	ВТБ Лизинг Финанс БО-06	\N	VTB Lising Finans BO-06	vtb lising finans bo	RU000A0JV474	RUB	\N	\N	PUBLISHED	\N	\N	8.18999958	8.18999958	0	13.5600004	684.219971	91	350	1	2024-12-17 03:00:00+03	2018-12-25 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:15.658002+03	2018-09-25 17:54:15.658002+03	0	7.94999981	1
453	bond	RU000A0JV482	ВТБЛизФБО7	ВТБ Лизинг Финанс БО-07	\N	VTB Lising Finans BO-07	vtb lising finans bo	RU000A0JV482	RUB	\N	\N	PUBLISHED	\N	\N	8.72000027	8.72000027	0	14.5900002	692.320007	91	350	1	2022-12-20 03:00:00+03	2019-03-26 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:15.67603+03	2018-09-25 17:54:15.67603+03	0	8.44999981	1
454	bond	RU000A0JV4R9	ДОМ.РФ31об	ДОМ.РФ (АО) обл. сер. А31	\N	DOM.RF - 31	dom.rf 	RU000A0JV4R9	RUB	\N	\N	PUBLISHED	\N	\N	7.23999977	7.23999977	10.6999998	35.7900009	1000	184	198	1	2034-02-01 03:00:00+03	2019-02-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:15.68905+03	2018-09-25 17:54:15.68905+03	0	7.0999999	1
455	bond	RU000A0JV4S7	ТрансФБО38	ТрансФин-М ПАО БО-38	\N	TransFin-M BO-38	transfin-m bo	RU000A0JV4S7	RUB	\N	\N	PUBLISHED	\N	\N	10.7299995	10.7299995	22.1499996	52.3600006	1000	182	332	1	2024-12-31 03:00:00+03	2019-07-09 03:00:00+03	2019-01-08 03:00:00+03	2018-09-25 17:54:15.705427+03	2018-09-25 17:54:15.705427+03	0	10.5	1
456	bond	RU000A0JV508	ИА ТФБ1 А	ЗАО ИА ТФБ1 кл.А	\N	ZAO IA TFB1 klass A	zao ia tfb	RU000A0JV508	RUB	\N	\N	PUBLISHED	\N	\N	-8.27999973	-8.27999973	9.47000027	9.57999992	345.480011	92	392	1	2047-03-26 03:00:00+03	2018-12-26 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:15.717018+03	2018-09-25 17:54:15.717018+03	0	11	1
457	bond	RU000A0JV565	РоссКапБ03	АКБ Российский Капитал БО-03	\N	Rossiiskij Kapital BO-03	rossiiskij kapital bo	RU000A0JV565	RUB	\N	\N	PUBLISHED	\N	\N	7.86999989	7.86999989	14.4399996	38.6399994	1000	182	373	1	2020-01-16 03:00:00+03	2019-01-17 03:00:00+03	2019-01-17 03:00:00+03	2018-09-25 17:54:15.732241+03	2018-09-25 17:54:15.732241+03	0	7.75	1
458	bond	RU000A0JV573	ОткрФКББ07	ПАО ОТКРЫТИЕ ФК Банк БО-07	\N	OTKRITIE FK Bank BO-07	otkritie fk bank bo	RU000A0JV573	RUB	\N	\N	PUBLISHED	\N	\N	10.9300003	10.9300003	0.0199999996	0.0500000007	1000	182	384	1	2022-01-13 03:00:00+03	1970-01-01 03:00:00+03	2019-01-17 03:00:00+03	2018-09-25 17:54:15.745364+03	2018-09-25 17:54:15.745364+03	0	0.00999999978	1
459	bond	RU000A0JV5R6	БинбанкБ06	БИНБАНК ПАО БО-06	\N	BINBANK BO-06	binbank bo	RU000A0JV5R6	RUB	\N	\N	PUBLISHED	\N	\N	8.93999958	8.93999958	15.3400002	43.6300011	1000	182	227	1	2021-01-18 03:00:00+03	2019-01-21 03:00:00+03	2019-01-21 03:00:00+03	2018-09-25 17:54:15.760839+03	2018-09-25 17:54:15.760839+03	0	8.75	1
460	bond	RU000A0JV5U0	БинбанкБ07	БИНБАНК ПАО БО-07	\N	BINBANK BO-07	binbank bo	RU000A0JV5U0	RUB	\N	\N	PUBLISHED	\N	\N	13.9700003	13.9700003	15.3400002	43.6300011	1000	182	227	1	2021-01-18 03:00:00+03	2019-01-21 03:00:00+03	2019-01-21 03:00:00+03	2018-09-25 17:54:15.773409+03	2018-09-25 17:54:15.773409+03	98510	8.75	1
461	bond	RU000A0JV664	ИАСОЮЗ-1А	ЗАО ИА СОЮЗ-1 класса "А"	\N	ZAO IA SOYUZ-1 klassa "A"	zao ia soyuz	RU000A0JV664	RUB	\N	\N	PUBLISHED	\N	\N	-95.7900009	-95.7900009	7.82000017	8.07999992	291.5	92	393	1	2041-12-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:15.789282+03	2018-09-25 17:54:15.789282+03	0	11	1
462	bond	RU000A0JV6D4	РоссКапБ04	АКБ Российский Капитал БО-04	\N	Rossiiskij Kapital BO-04	rossiiskij kapital bo	RU000A0JV6D4	RUB	\N	\N	PUBLISHED	\N	\N	7.90999985	7.90999985	13.5900002	38.6399994	1000	182	373	1	2020-01-20 03:00:00+03	2019-01-21 03:00:00+03	2019-01-21 03:00:00+03	2018-09-25 17:54:15.805026+03	2018-09-25 17:54:15.805026+03	0	7.75	1
463	bond	RU000A0JV755	АИЖК14-2А3	ИА АИЖК 2014-2 кл.А3	\N	Ipotech.agent AIZHK 2014-2 A3	ipotech.agent aizhk 	RU000A0JV755	RUB	\N	\N	PUBLISHED	\N	\N	-5.96999979	-5.96999979	3.45000005	26.1800003	1000	91	207	1	2047-06-13 03:00:00+03	2018-12-13 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:15.820935+03	2018-09-25 17:54:15.820935+03	0	10.5	1
464	bond	RU000A0JV763	РоснфтБО18	ПАО НК Роснефть БО-18	\N	Rosneft  BO-18	rosneft  	RU000A0JV763	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	12.8900003	18.3199997	1000	91	311	1	2021-01-18 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:15.83683+03	2018-09-25 17:54:15.83683+03	0	7.3499999	1
465	bond	RU000A0JV771	РоснфтБО26	ПАО НК Роснефть БО-26	\N	Rosneft  BO-26	rosneft  	RU000A0JV771	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	12.8900003	18.3199997	1000	91	311	1	2021-01-18 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:15.866719+03	2018-09-25 17:54:15.866719+03	0	7.3499999	1
466	bond	RU000A0JV789	РоснфтБО19	ПАО НК Роснефть БО-19	\N	Rosneft  BO-19	rosneft  	RU000A0JV789	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	12.8900003	18.3199997	1000	91	311	1	2021-01-18 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:15.881524+03	2018-09-25 17:54:15.881524+03	0	7.3499999	1
467	bond	RU000A0JV797	РоснфтБО25	ПАО НК Роснефть БО-25	\N	Rosneft  BO-25	rosneft  	RU000A0JV797	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	12.8900003	18.3199997	1000	91	311	1	2021-01-18 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:15.896947+03	2018-09-25 17:54:15.896947+03	0	7.3499999	1
468	bond	RU000A0JV7A8	РоснфтБО20	ПАО НК Роснефть БО-20	\N	Rosneft  BO-20	rosneft  	RU000A0JV7A8	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	12.8900003	18.3199997	1000	91	311	1	2021-01-18 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:15.913046+03	2018-09-25 17:54:15.913046+03	0	7.3499999	1
469	bond	RU000A0JV7B6	РоснфтБО23	ПАО НК Роснефть БО-23	\N	Rosneft  BO-23	rosneft  	RU000A0JV7B6	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	12.8900003	18.3199997	1000	91	311	1	2021-01-18 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:15.929334+03	2018-09-25 17:54:15.929334+03	0	7.3499999	1
470	bond	RU000A0JV7C4	РоснфтБО22	ПАО НК Роснефть БО-22	\N	Rosneft  BO-22	rosneft  	RU000A0JV7C4	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	12.8900003	18.3199997	1000	91	311	1	2021-01-18 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:15.945066+03	2018-09-25 17:54:15.945066+03	0	7.3499999	1
471	bond	RU000A0JV7D2	РоснфтБО21	ПАО НК Роснефть БО-21	\N	Rosneft  BO-21	rosneft  	RU000A0JV7D2	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	12.8900003	18.3199997	1000	91	311	1	2021-01-18 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:15.960976+03	2018-09-25 17:54:15.960976+03	0	7.3499999	1
472	bond	RU000A0JV7G5	АИЖК14-2А2	ИА АИЖК 2014-2 кл.А2	\N	Ipotech.agent AIZHK 2014-2 A2	ipotech.agent aizhk 	RU000A0JV7G5	RUB	\N	\N	PUBLISHED	\N	\N	-1.89999998	-1.89999998	1.74000001	13.2200003	505.109985	91	207	1	2047-06-13 03:00:00+03	2018-12-13 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:15.9767+03	2018-09-25 17:54:15.9767+03	0	10.5	1
473	bond	RU000A0JV805	РСХБ БО8	"Россельхозбанк" (АО) БО-08	\N	Rosselhozbank BO-08	rosselhozbank bo	RU000A0JV805	RUB	\N	\N	PUBLISHED	\N	\N	6.51999998	6.51999998	19.7299995	37.4000015	1000	91	366	1	2025-01-29 03:00:00+03	2020-02-05 03:00:00+03	2018-11-07 03:00:00+03	2018-09-25 17:54:15.996559+03	2018-09-25 17:54:15.996559+03	0	15	1
474	bond	RU000A0JV8D0	ВЭБлизБ04	ВЭБ-лизинг АО БО-04	\N	VEB-leasing AO BO-04	veb-leasing ao bo	RU000A0JV8D0	RUB	\N	\N	PUBLISHED	\N	\N	9.39999962	9.39999962	9.52999973	37.7000008	1000	182	394	1	2025-01-31 03:00:00+03	2019-02-08 03:00:00+03	2019-02-08 03:00:00+03	2018-09-25 17:54:16.01274+03	2018-09-25 17:54:16.01274+03	0	7.55999994	1
475	bond	RU000A0JV8G3	ВЭБлизБ05	ВЭБ-лизинг АО БО-05	\N	VEB-leasing AO BO-05	veb-leasing ao bo	RU000A0JV8G3	RUB	\N	\N	PUBLISHED	\N	\N	8	8	8.69999981	37.7000008	1000	182	394	1	2025-02-04 03:00:00+03	2019-02-12 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:16.032388+03	2018-09-25 17:54:16.032388+03	0	7.55999994	1
476	bond	RU000A0JV8U4	БалтЛизБО1	Балтийский лизинг ООО БО-01	\N	Baltic Leasing BO-01	baltic leasing bo	RU000A0JV8U4	RUB	\N	\N	PUBLISHED	\N	\N	12.5200005	12.5200005	13.8400002	32.2900009	1000	91	395	1	2021-02-12 03:00:00+03	1970-01-01 03:00:00+03	2018-11-16 03:00:00+03	2018-09-25 17:54:16.048759+03	2018-09-25 17:54:16.048759+03	0	12.9499998	1
477	bond	RU000A0JV987	РСХБ БО17	"Россельхозбанк" (АО) БО-17	\N	Rosselhozbank BO-17	rosselhozbank bo	RU000A0JV987	RUB	\N	\N	PUBLISHED	\N	\N	8.31000042	8.31000042	7.5	20.6900005	1000	91	366	1	2025-02-13 03:00:00+03	2019-08-22 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:16.064289+03	2018-09-25 17:54:16.064289+03	0	8.30000019	1
478	bond	RU000A0JV9D8	ВЭБлизБ06	ВЭБ-лизинг АО БО-06	\N	VEB-leasing AO BO-06	veb-leasing ao bo	RU000A0JV9D8	RUB	\N	\N	PUBLISHED	\N	\N	9.10000038	9.10000038	6.4000001	41.5900002	1000	182	394	1	2025-02-18 03:00:00+03	2019-08-27 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:16.080298+03	2018-09-25 17:54:16.080298+03	0	8.34000015	1
479	bond	RU000A0JV9H9	ВЭБлизБ07	ВЭБ-лизинг АО БО-07	\N	VEB-leasing AO BO-07	veb-leasing ao bo	RU000A0JV9H9	RUB	\N	\N	PUBLISHED	\N	\N	8.5	8.5	5.94000006	41.5900002	1000	182	394	1	2025-02-20 03:00:00+03	2019-08-29 03:00:00+03	2019-02-28 03:00:00+03	2018-09-25 17:54:16.096394+03	2018-09-25 17:54:16.096394+03	0	8.34000015	1
480	bond	RU000A0JV9Q0	ТрансФБО31	ТрансФин-М ПАО БО-31	\N	TransFin-M BO-31	transfin-m bo	RU000A0JV9Q0	RUB	\N	\N	PUBLISHED	\N	\N	10.6400003	10.6400003	5.75	52.3600006	1000	182	332	1	2025-02-26 03:00:00+03	2019-09-04 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:16.112564+03	2018-09-25 17:54:16.112564+03	0	10.5	1
481	bond	RU000A0JVA10	ГТЛК БО-04	ГосТранспортЛизингКомп БО-04	\N	GTLK (PAO) BO-04	gtlk (	RU000A0JVA10	RUB	\N	\N	PUBLISHED	\N	\N	8.03999996	8.03999996	2.93000007	22.1900005	1000	91	383	1	2025-03-06 03:00:00+03	2019-09-12 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:16.132896+03	2018-09-25 17:54:16.132896+03	101000	8.89999962	1
482	bond	RU000A0JVA77	МИА БО-02	МИА КБ АО БО-02	\N	MIA KB AO BO-02	mia kb ao bo	RU000A0JVA77	RUB	\N	\N	PUBLISHED	\N	\N	35.6699982	35.6699982	2.49000001	41.1399994	1000	182	396	1	2025-03-07 03:00:00+03	2019-03-15 03:00:00+03	2019-03-15 03:00:00+03	2018-09-25 17:54:16.148177+03	2018-09-25 17:54:16.148177+03	0	8.25	1
483	bond	RU000A0JVAJ2	ИА ДВИЦ1 А	ИА ДВИЦ-1 кл. А	\N	IA DVIC-1 cl. A	ia dvic	RU000A0JVAJ2	RUB	\N	\N	PUBLISHED	\N	\N	18.3400002	18.3400002	4.67000008	8.76000023	386.179993	92	397	1	2047-11-07 03:00:00+03	2018-11-07 03:00:00+03	2018-11-07 03:00:00+03	2018-09-25 17:54:16.164055+03	2018-09-25 17:54:16.164055+03	0	9	1
484	bond	RU000A0JVAQ7	ИА ИНТЕХ А	ИА ИНТЕХ ЗАО кл. А	\N	IA INTEH cl. A	ia inteh cl.	RU000A0JVAQ7	RUB	\N	\N	PUBLISHED	\N	\N	10.7299995	10.7299995	2.3900001	4.23000002	186.630005	92	398	1	2045-05-04 03:00:00+03	2018-11-04 03:00:00+03	2018-11-04 03:00:00+03	2018-09-25 17:54:16.180114+03	2018-09-25 17:54:16.180114+03	0	9	1
485	bond	RU000A0JVB19	РЖД-33 обл	"Российские ЖД" ОАО 33 обл.	\N	RZhD 33	rzhd 	RU000A0JVB19	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	17.4500008	1000	182	202	1	2040-02-28 03:00:00+03	2019-03-26 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:16.20034+03	2018-09-25 17:54:16.20034+03	0	3.5	1
486	bond	RU000A0JVB27	РЖД-34 обл	"Российские ЖД" ОАО 34 обл.	\N	RZhD 34	rzhd 	RU000A0JVB27	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	17.4500008	1000	182	202	1	2040-02-28 03:00:00+03	2019-03-26 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:16.215587+03	2018-09-25 17:54:16.215587+03	0	3.5	1
487	bond	RU000A0JVB35	ИАМлторг1А	ИА Мультиоригинаторный 1 кл.А	\N	IA Multi Originator 1 cl.A	ia multi originator 	RU000A0JVB35	RUB	\N	\N	PUBLISHED	\N	\N	9.71000004	9.71000004	3.92000008	10.0200005	454.339996	92	399	1	2047-08-20 03:00:00+03	2018-11-20 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:16.228833+03	2018-09-25 17:54:16.228833+03	0	8.75	1
488	bond	RU000A0JVBF8	БизнКонсБ1	Бизнес Консалтинг ООО БО-01	\N	Business Consulting BO-01	business consulting bo	RU000A0JVBF8	RUB	\N	\N	PUBLISHED	\N	\N	9.13000011	9.13000011	44.3800011	44.8800011	1000	182	400	1	2020-03-26 03:00:00+03	2018-09-27 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:16.243436+03	2018-09-25 17:54:16.243436+03	0	9	1
489	bond	RU000A0JVBN2	БинбанкБ09	БИНБАНК ПАО БО-09	\N	BINBANK BO-09	binbank bo	RU000A0JVBN2	RUB	\N	\N	PUBLISHED	\N	\N	9.61999989	9.61999989	0.49000001	0.5	1000	182	227	1	2021-03-26 03:00:00+03	2019-03-29 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:16.259641+03	2018-09-25 17:54:16.259641+03	0	0.100000001	1
490	bond	RU000A0JVBS1	БинбанкБ14	БИНБАНК ПАО БО-14	\N	BINBANK BO-14	binbank bo	RU000A0JVBS1	RUB	\N	\N	PUBLISHED	\N	\N	10.6099997	10.6099997	0.0299999993	0.0500000007	1000	182	227	1	2021-05-26 03:00:00+03	2018-11-28 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:16.275549+03	2018-09-25 17:54:16.275549+03	0	0.00999999978	1
491	bond	RU000A0JVBX1	ЗенитБО-09	"Банк Зенит" (ПАО) БО-09	\N	Zenit BO-09	zenit bo	RU000A0JVBX1	RUB	\N	\N	PUBLISHED	\N	\N	94.8899994	94.8899994	37.9199982	39.8899994	1000	182	321	1	2025-03-27 03:00:00+03	2018-10-04 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:16.295407+03	2018-09-25 17:54:16.295407+03	98500	8	1
492	bond	RU000A0JVC59	ОткрФКБОП1	ПАО ОТКРЫТИЕ ФК Банк БО-П01	\N	OTKRITIE FK Bank BO-P01	otkritie fk bank bo	RU000A0JVC59	RUB	\N	\N	PUBLISHED	\N	\N	7.4000001	7.4000001	46.4900017	50.3600006	1000	182	384	1	2023-04-16 03:00:00+03	2020-04-07 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:16.307713+03	2018-09-25 17:54:16.307713+03	0	10.1000004	1
493	bond	RU000A0JVC67	ОткрФКБОП2	ПАО ОТКРЫТИЕ ФК Банк БО-П02	\N	OTKRITIE FK Bank BO-P02	otkritie fk bank bo	RU000A0JVC67	RUB	\N	\N	PUBLISHED	\N	\N	9.51000023	9.51000023	0.0500000007	0.0500000007	1000	182	384	1	2020-04-07 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:16.323159+03	2018-09-25 17:54:16.323159+03	0	0.00999999978	1
494	bond	RU000A0JVCB5	ФСК ЕЭС-37	"ФСК ЕЭС"(ПАО)-обл. сер.37	\N	FSK EES 37	fsk ees 	RU000A0JVCB5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.96999979	8.22999954	1000	91	211	1	2050-03-23 03:00:00+03	2018-10-31 03:00:00+03	2018-10-31 03:00:00+03	2018-09-25 17:54:16.336862+03	2018-09-25 17:54:16.336862+03	0	3.29999995	1
495	bond	RU000A0JVCL4	ДиджИнв 01	ООО "Диджитал Инвест" 01 об.	\N	Digital Invest 01	digital invest 	RU000A0JVCL4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	401	1	2020-04-21 03:00:00+03	1970-01-01 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:16.354589+03	2018-09-25 17:54:16.354589+03	0	0	1
496	bond	RU000A0JVD17	О'КЕЙ-Б05	"О'КЕЙ" ООО БО-05	\N	O'KEY OOO BO-05	o'key ooo bo	RU000A0JVD17	RUB	\N	\N	PUBLISHED	\N	\N	9.47999954	9.47999954	44.2999992	52.3600006	1000	182	281	1	2020-04-21 03:00:00+03	1970-01-01 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:16.371305+03	2018-09-25 17:54:16.371305+03	101750	10.5	1
497	bond	RU000A0JVD25	РусГидро09	РусГидро (ПАО) 09	\N	RusGidro(PAO) 09	rusgidro(pao)	RU000A0JVD25	RUB	\N	\N	PUBLISHED	\N	\N	8.94999981	8.94999981	31.6399994	37.4000015	1000	182	218	1	2025-04-15 03:00:00+03	2023-04-18 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:16.389599+03	2018-09-25 17:54:16.389599+03	0	7.5	1
498	bond	RU000A0JVD41	АбсолютБО5	Абсолют Банк АКБ (ПАО) БО-05	\N	Absolut Bank BO-05	absolut bank bo	RU000A0JVD41	RUB	\N	\N	PUBLISHED	\N	\N	8.09000015	8.09000015	32.4500008	39.8600006	1000	183	402	1	2020-04-29 03:00:00+03	2019-04-29 03:00:00+03	2018-10-29 03:00:00+03	2018-09-25 17:54:16.40306+03	2018-09-25 17:54:16.40306+03	0	7.94999981	1
499	bond	RU000A0JVDD9	ФСК ЕЭС-38	"ФСК ЕЭС"(ПАО)-обл. сер.38	\N	FSK EES 38	fsk ees 	RU000A0JVDD9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.96999979	8.22999954	1000	91	211	1	2050-03-23 03:00:00+03	2018-10-31 03:00:00+03	2018-10-31 03:00:00+03	2018-09-25 17:54:16.415253+03	2018-09-25 17:54:16.415253+03	0	3.29999995	1
500	bond	RU000A0JVDF4	Кокс БО-05	Кокс ПАО БО-05	\N	KOKS PJSC BO-05	koks pjsc bo	RU000A0JVDF4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.56999969	45.8699989	1000	182	403	1	2023-08-16 03:00:00+03	1970-01-01 03:00:00+03	2019-02-20 03:00:00+03	2018-09-25 17:54:16.430772+03	2018-09-25 17:54:16.430772+03	0	9.19999981	1
501	bond	RU000A0JVDR9	ОткрХОЛБО2	Открытие Холдинг АО обл.БО-02	\N	Otkritie Holding BO-2	otkritie holding bo	RU000A0JVDR9	RUB	\N	\N	PUBLISHED	\N	\N	8710400	8710400	164.949997	177.270004	1000	546	351	1	2028-04-20 03:00:00+03	2018-11-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:16.443108+03	2018-09-25 17:54:16.443108+03	0	12.1499996	1
502	bond	RU000A0JVE40	МетЭнМонт1	Металлэнергомонтаж ООО об. 01	\N	Metallenergomontazh OOO ob.01	metallenergomontazh ooo ob.	RU000A0JVE40	RUB	\N	\N	PUBLISHED	\N	\N	10.0299997	10.0299997	37.8100014	49.8600006	1000	182	404	1	2020-05-07 03:00:00+03	2019-05-09 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:16.454872+03	2018-09-25 17:54:16.454872+03	0	10	1
503	bond	RU000A0JVE57	ТТБИнвПр01	ТТБ Инвест Продакшн ООО об. 01	\N	TTB Invest Prodakshn OOO ob.01	ttb invest prodakshn ooo ob.	RU000A0JVE57	RUB	\N	\N	PUBLISHED	\N	\N	10.21	10.21	37.8100014	49.8600006	1000	182	405	1	2020-05-07 03:00:00+03	2019-05-09 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:16.46691+03	2018-09-25 17:54:16.46691+03	0	10	1
504	bond	RU000A0JVE65	Финанс-М 1	Финанс-менеджмент (ООО) об.01	\N	Finans-Menedzhment 01	finans-menedzhment 	RU000A0JVE65	RUB	\N	\N	PUBLISHED	\N	\N	8.32999992	8.32999992	19.7299995	39.8899994	1000	182	406	1	2020-06-24 03:00:00+03	2018-12-26 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:16.478615+03	2018-09-25 17:54:16.478615+03	0	8	1
505	bond	RU000A0JVEH8	Якут-07 об	Республика Саха (Якутия) об.07	\N	Sakha (Yakutia)-07	sakha (	RU000A0JVEH8	RUB	\N	\N	PUBLISHED	\N	\N	6.15999985	6.15999985	6.80999994	15.4899998	500	91	347	1	2020-05-14 03:00:00+03	1970-01-01 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:16.49455+03	2018-09-25 17:54:16.49455+03	0	12.4300003	1
506	bond	RU000A0JVEQ9	БашнфтБО3	ПАО "АНК "Башнефть" БО-03	\N	Bashneft ANK BO-03	bashneft ank bo	RU000A0JVEQ9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	42.7400017	59.8400002	1000	182	336	1	2025-05-09 03:00:00+03	2020-05-15 03:00:00+03	2018-11-16 03:00:00+03	2018-09-25 17:54:16.511012+03	2018-09-25 17:54:16.511012+03	0	12	1
507	bond	RU000A0JVF56	МетИнвБ Б2	Металлинвестбанк АКБ ПАО БО-02	\N	Metallinvestbank BO-02	metallinvestbank bo	RU000A0JVF56	RUB	\N	\N	PUBLISHED	\N	\N	9.94999981	9.94999981	28.8799992	42.3800011	1000	182	407	1	2020-05-21 03:00:00+03	2018-11-22 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:16.526833+03	2018-09-25 17:54:16.526833+03	0	8.5	1
508	bond	RU000A0JVF64	ГСС БО-05	Гражд.Самол.Сухого АО БО-05	\N	Grazhd.Samolety Sukhogo BO-05	grazhd.samolety sukhogo bo	RU000A0JVF64	RUB	\N	\N	PUBLISHED	\N	\N	9.02999973	9.02999973	32.0999985	47.1199989	1000	182	391	1	2020-05-21 03:00:00+03	1970-01-01 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:16.538034+03	2018-09-25 17:54:16.538034+03	100900	9.44999981	1
509	bond	RU000A0JVF98	МДС кл.А1	Магистраль двух столиц кл. А1	\N	Magistral dvyh stolic kl. A1	magistral dvyh stolic kl.	RU000A0JVF98	RUB	\N	\N	PUBLISHED	\N	\N	0	0	12.8699999	13.6099997	1000	92	408	1	2030-05-10 03:00:00+03	2018-09-30 03:00:00+03	2018-09-30 03:00:00+03	2018-09-25 17:54:16.549924+03	2018-09-25 17:54:16.549924+03	0	5.4000001	1
510	bond	RU000A0JVFC6	РостелБО-1	Ростелеком ПАО БО-01	\N	Rostelecom BO-01	rostelecom bo	RU000A0JVFC6	RUB	\N	\N	PUBLISHED	\N	\N	7.84000015	7.84000015	26.9599991	39.8899994	1000	182	409	1	2025-05-16 03:00:00+03	1970-01-01 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:16.561719+03	2018-09-25 17:54:16.561719+03	0	8	1
511	bond	RU000A0JVFD4	БашнфтБО4	ПАО "АНК "Башнефть" БО-04	\N	Bashneft ANK BO-04	bashneft ank bo	RU000A0JVFD4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	39.4500008	59.8400002	1000	182	336	1	2025-05-19 03:00:00+03	2020-05-25 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:16.573919+03	2018-09-25 17:54:16.573919+03	0	12	1
512	bond	RU000A0JVFE2	МИндБ 01	Московский индустр. банк 01	\N	Moscow Industrial Bank 01	moscow industrial bank 	RU000A0JVFE2	RUB	\N	\N	PUBLISHED	\N	\N	14.3800001	14.3800001	50.5299988	77.2900009	1000	182	410	1	2020-11-24 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:16.585792+03	2018-09-25 17:54:16.585792+03	102860	15.5	1
513	bond	RU000A0JVFJ1	ИНГБ-БО5	ИНГ БАНК (ЕВРАЗИЯ) АО БО-05	\N	ING Bank BO-05	ing bank bo	RU000A0JVFJ1	RUB	\N	\N	PUBLISHED	\N	\N	8.67000008	8.67000008	7.17999983	24.1800003	1000	91	411	1	2020-05-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:16.597701+03	2018-09-25 17:54:16.597701+03	0	9.69999981	1
514	bond	RU000A0JVFN3	ИАВ 4 А	ИА Возрождение 4 ООО об. кл.А	\N	IA Vozrozhdenie 4 kl.A	ia vozrozhdenie 	RU000A0JVFN3	RUB	\N	\N	PUBLISHED	\N	\N	363.149994	363.149994	2.02999997	2.17000008	283.75	31	412	1	2048-01-27 03:00:00+03	2018-10-27 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:16.609916+03	2018-09-25 17:54:16.609916+03	0	9	1
515	bond	RU000A0JVFS2	БинбанкБ10	БИНБАНК ПАО БО-10	\N	BINBANK BO-10	binbank bo	RU000A0JVFS2	RUB	\N	\N	PUBLISHED	\N	\N	13.3100004	13.3100004	0.0299999993	0.0500000007	1000	182	227	1	2021-06-02 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:16.626331+03	2018-09-25 17:54:16.626331+03	0	0.00999999978	1
516	bond	RU000A0JVFX2	БинбанкБ11	БИНБАНК ПАО БО-11	\N	BINBANK BO-11	binbank bo	RU000A0JVFX2	RUB	\N	\N	PUBLISHED	\N	\N	13.3100004	13.3100004	0.0299999993	0.0500000007	1000	182	227	1	2021-06-02 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:16.637757+03	2018-09-25 17:54:16.637757+03	0	0.00999999978	1
517	bond	RU000A0JVG89	БелугаБО-4	Белуга Групп ПАО БО-04	\N	Beluga Group BO-04	beluga group bo	RU000A0JVG89	RUB	\N	\N	PUBLISHED	\N	\N	9.26000023	9.26000023	15.6300001	24.3099995	500	182	413	1	2020-05-28 03:00:00+03	1970-01-01 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:16.65453+03	2018-09-25 17:54:16.65453+03	0	9.75	1
518	bond	RU000A0JVGJ9	БинбанкБ12	БИНБАНК ПАО БО-12	\N	BINBANK BO-12	binbank bo	RU000A0JVGJ9	RUB	\N	\N	PUBLISHED	\N	\N	10.0900002	10.0900002	0.0299999993	0.0500000007	1000	182	227	1	2021-06-02 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:16.66531+03	2018-09-25 17:54:16.66531+03	0	0.00999999978	1
519	bond	RU000A0JVGK7	БинбанкБ13	БИНБАНК ПАО БО-13	\N	BINBANK BO-13	binbank bo	RU000A0JVGK7	RUB	\N	\N	PUBLISHED	\N	\N	30.1800003	30.1800003	0.0299999993	0.0500000007	1000	182	227	1	2021-06-02 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:16.677349+03	2018-09-25 17:54:16.677349+03	0	0.00999999978	1
520	bond	RU000A0JVH05	НацСтдБО-1	Национальный стандарт Банк Б-1	\N	Nacionalniy Standart BO-1	nacionalniy standart bo	RU000A0JVH05	RUB	\N	\N	PUBLISHED	\N	\N	8.64999962	8.64999962	24.6800003	42.6199989	1000	183	265	1	2020-06-11 03:00:00+03	2019-06-11 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:16.689164+03	2018-09-25 17:54:16.689164+03	0	8.5	1
521	bond	RU000A0JVHF5	БашнфтБО7	ПАО "АНК "Башнефть" БО-07	\N	Bashneft ANK BO-07	bashneft ank bo	RU000A0JVHF5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	34.8100014	60.3300018	1000	182	336	1	2025-06-03 03:00:00+03	2021-06-08 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:16.701163+03	2018-09-25 17:54:16.701163+03	0	12.1000004	1
522	bond	RU000A0JVHH1	ТрансФБО39	ТрансФин-М ПАО БО-39	\N	TransFin-M BO-39	transfin-m bo	RU000A0JVHH1	RUB	\N	\N	PUBLISHED	\N	\N	10.29	10.29	38.4700012	67.3199997	1000	182	332	1	2025-06-04 03:00:00+03	2021-06-09 03:00:00+03	2018-12-12 03:00:00+03	2018-09-25 17:54:16.713027+03	2018-09-25 17:54:16.713027+03	0	13.5	1
523	bond	RU000A0JVHJ7	ИАПульс-2А	ИА Пульсар-2 класса "А"	\N	Ipotechnii agent Pulsar-2 A	ipotechnii agent pulsar	RU000A0JVHJ7	RUB	\N	\N	PUBLISHED	\N	\N	-8.60999966	-8.60999966	1.49000001	2.02999997	266.609985	30	414	1	2038-01-03 03:00:00+03	2018-11-03 03:00:00+03	2018-10-03 03:00:00+03	2018-09-25 17:54:16.725182+03	2018-09-25 17:54:16.725182+03	0	9.25	1
524	bond	RU000A0JVHS8	СОЮЗ БО-04	СОЮЗ Банк (АО) БО-04	\N	SOYUZ BO-04	soyuz bo	RU000A0JVHS8	RUB	\N	\N	PUBLISHED	\N	\N	19.4799995	19.4799995	25.3999996	44.8800011	1000	182	374	1	2020-06-11 03:00:00+03	2018-12-13 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:16.737059+03	2018-09-25 17:54:16.737059+03	0	9	1
525	bond	RU000A0JVHX8	КАМАЗ БО-5	КАМАЗ ПАО БО-05	\N	KAMAZ PAO BO-05	kamaz pao bo	RU000A0JVHX8	RUB	\N	\N	PUBLISHED	\N	\N	8.88000011	8.88000011	20.2600002	36.1500015	1000	182	415	1	2020-06-12 03:00:00+03	2019-06-14 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:16.753438+03	2018-09-25 17:54:16.753438+03	0	7.25	1
526	bond	RU000A0JVJ45	НовикомБО5	НОВИКОМБАНК АКБ АО БО-05	\N	NOVIKOMBANK BO-05	novikombank bo	RU000A0JVJ45	RUB	\N	\N	PUBLISHED	\N	\N	9.18999958	9.18999958	22.0799999	39.3899994	1000	182	416	1	2020-06-12 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:16.765139+03	2018-09-25 17:54:16.765139+03	0	7.9000001	1
527	bond	RU000A0JVJS4	РЖД БО-14	"Российские ЖД" ОАО БО-14	\N	RZhD BO-14	rzhd bo	RU000A0JVJS4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	9.13000011	16.9500008	1000	182	256	1	2035-05-29 03:00:00+03	2018-12-18 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:16.776992+03	2018-09-25 17:54:16.776992+03	0	3.4000001	1
528	bond	RU000A0JVJY2	ИАПульс-1А	ИА Пульсар-1 класса "А"	\N	Ipotechnii agent Pulsar-1 A	ipotechnii agent pulsar	RU000A0JVJY2	RUB	\N	\N	PUBLISHED	\N	\N	-3.08999991	-3.08999991	0	2.1500001	290.679993	30	414	1	2045-04-25 03:00:00+03	2018-10-25 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:16.788844+03	2018-09-25 17:54:16.788844+03	0	9	1
529	bond	RU000A0JVK00	СамарОбл11	Самарская область 2015	\N	Samara reg.-11	samara reg.	RU000A0JVK00	RUB	\N	\N	PUBLISHED	\N	\N	7.36000013	7.36000013	0.850000024	15.46	500	91	269	1	2020-06-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:16.80081+03	2018-09-25 17:54:16.80081+03	53495	12.3999996	1
530	bond	RU000A0JVKC6	ВЭБлизБ03	ВЭБ-лизинг АО БО-03	\N	VEB-leasing AO BO-03	veb-leasing ao bo	RU000A0JVKC6	RUB	\N	\N	PUBLISHED	\N	\N	7.30999994	7.30999994	13.0500002	26.1100006	400	182	394	1	2020-06-23 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:16.812844+03	2018-09-25 17:54:16.812844+03	0	13.0900002	1
531	bond	RU000A0JVKF9	КОМИ 12 об	Республика Коми 2015 12 обл.	\N	Komi-12	komi	RU000A0JVKF9	RUB	\N	\N	PUBLISHED	\N	\N	8.23999977	8.23999977	11.2200003	40.8400002	700	182	338	1	2021-06-23 03:00:00+03	1970-01-01 03:00:00+03	2019-02-04 03:00:00+03	2018-09-25 17:54:16.824888+03	2018-09-25 17:54:16.824888+03	0	11.6999998	1
532	bond	RU000A0JVKH5	РЖД-35 обл	"Российские ЖД" ОАО 35 обл.	\N	RZhD 35	rzhd 	RU000A0JVKH5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.63000011	17.4500008	1000	182	202	1	2040-05-30 03:00:00+03	2019-06-26 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:16.836788+03	2018-09-25 17:54:16.836788+03	0	3.5	1
533	bond	RU000A0JVKK9	ЕврХолдФ 8	ЕвразХолдинг Финанс (ООО)об.08	\N	EvrazHolding Finans 08	evrazholding finans 	RU000A0JVKK9	RUB	\N	\N	PUBLISHED	\N	\N	8.72999954	8.72999954	31.9300003	64.5699997	1000	182	417	1	2025-06-18 03:00:00+03	2019-06-26 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:16.848855+03	2018-09-25 17:54:16.848855+03	103100	12.9499998	1
534	bond	RU000A0JVL33	БелгОб2015	Белгородская обл.2015 обл.	\N	Belgorodskaya obl. 2015	belgorodskaya obl.	RU000A0JVL33	RUB	\N	\N	PUBLISHED	\N	\N	6.88000011	6.88000011	17.4699993	18.9200001	600	91	268	1	2020-06-30 03:00:00+03	1970-01-01 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:16.860873+03	2018-09-25 17:54:16.860873+03	62460	12.6499996	1
535	bond	RU000A0JVLA8	МДС кл.А2	Магистраль двух столиц кл. А2	\N	Magistral dvyh stolic kl. A2	magistral dvyh stolic kl.	RU000A0JVLA8	RUB	\N	\N	PUBLISHED	\N	\N	-98.4400024	-98.4400024	11.6800003	12.3500004	1000	92	408	1	2030-06-19 03:00:00+03	2018-09-30 03:00:00+03	2018-09-30 03:00:00+03	2018-09-25 17:54:16.876774+03	2018-09-25 17:54:16.876774+03	0	4.9000001	1
536	bond	RU000A0JVLH3	БалтЛизБО3	Балтийский лизинг ООО БО-03	\N	Baltic Leasing BO-03	baltic leasing bo	RU000A0JVLH3	RUB	\N	\N	PUBLISHED	\N	\N	9.56000042	9.56000042	30.3299999	33.6599998	1000	91	395	1	2021-07-01 03:00:00+03	1970-01-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:16.96435+03	2018-09-25 17:54:16.96435+03	0	13.5	1
537	bond	RU000A0JVLM3	ЛенэнерБО5	"Ленэнерго" ПАО БО-05	\N	Lenenergo B0-5	lenenergo b	RU000A0JVLM3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	13.9899998	36.9000015	1000	182	418	1	2025-07-09 03:00:00+03	2019-01-16 03:00:00+03	2019-01-16 03:00:00+03	2018-09-25 17:54:16.978513+03	2018-09-25 17:54:16.978513+03	0	7.4000001	1
538	bond	RU000A0JVM32	ПЕРЕСВЕТБ3	АКБ АО "ПЕРЕСВЕТ" БО-03	\N	AKB AO "PERESVET" BO-03	akb ao "	RU000A0JVM32	RUB	\N	\N	PUBLISHED	\N	\N	0	0	7.26999998	92.7200012	1000	6636	357	1	2035-06-21 03:00:00+03	1970-01-01 03:00:00+03	2035-06-21 03:00:00+03	2018-09-25 17:54:16.994183+03	2018-09-25 17:54:16.994183+03	0	0.50999999	1
539	bond	RU000A0JVM81	Оренб35003	Оренбургская область 35003 об.	\N	Orenburg reg.-35003	orenburg reg.	RU000A0JVM81	RUB	\N	\N	PUBLISHED	\N	\N	8.56000042	8.56000042	28.7700005	34.9000015	1000	91	341	1	2025-07-03 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:17.00966+03	2018-09-25 17:54:17.00966+03	122000	14	1
540	bond	RU000A0JVM99	ПолюсБ2	Полюс ПАО БО-02	\N	Polyus BO-02	polyus bo	RU000A0JVM99	RUB	\N	\N	PUBLISHED	\N	\N	7.78000021	7.78000021	24.8600006	60.3300018	1000	182	419	1	2025-07-03 03:00:00+03	2021-07-08 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:17.026216+03	2018-09-25 17:54:17.026216+03	0	12.1000004	1
541	bond	RU000A0JVMB4	ПолюсБ3	Полюс ПАО БО-03	\N	Polyus BO-03	polyus bo	RU000A0JVMB4	RUB	\N	\N	PUBLISHED	\N	\N	7.78000021	7.78000021	24.8600006	60.3300018	1000	182	419	1	2025-07-03 03:00:00+03	2021-07-08 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:17.043334+03	2018-09-25 17:54:17.043334+03	0	12.1000004	1
542	bond	RU000A0JVMD0	ПолюсБ1	Полюс ПАО БО-01	\N	Polyus BO-01	polyus bo	RU000A0JVMD0	RUB	\N	\N	PUBLISHED	\N	\N	8.40999985	8.40999985	24.8600006	60.3300018	1000	182	419	1	2025-07-03 03:00:00+03	2021-07-08 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:17.05834+03	2018-09-25 17:54:17.05834+03	109400	12.1000004	1
543	bond	RU000A0JVN56	РСХБ 24	"Россельхозбанк" (АО) обл.24	\N	Rosselhozbank 24	rosselhozbank 	RU000A0JVN56	RUB	\N	\N	PUBLISHED	\N	\N	9.06000042	9.06000042	16.25	22.0599995	1000	91	199	1	2025-07-11 03:00:00+03	2018-10-19 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:17.074626+03	2018-09-25 17:54:17.074626+03	0	8.85000038	1
544	bond	RU000A0JVN64	РСХБ 25	"Россельхозбанк" (АО) обл.25	\N	Rosselhozbank 25	rosselhozbank 	RU000A0JVN64	RUB	\N	\N	PUBLISHED	\N	\N	9.06999969	9.06999969	15.5200005	22.0599995	1000	91	199	1	2025-07-14 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:17.093095+03	2018-09-25 17:54:17.093095+03	0	8.85000038	1
1265	bond	XS0971721377	RUS-19	ГОВОЗ РФ 12840067V (XS)	\N	RUS-19	rus	XS0971721377	RUB	\N	\N	PUBLISHED	\N	\N	9.39999962	9.39999962	88763.8594	3500	200000	180	497	1	2019-01-16 03:00:00+03	1970-01-01 03:00:00+03	2019-01-16 03:00:00+03	2018-09-25 17:54:27.732808+03	2018-09-25 17:54:27.732808+03	0	3.5	1
545	bond	RU000A0JVN98	РСХБ 26	"Россельхозбанк" (АО) обл.26	\N	Rosselhozbank 26	rosselhozbank 	RU000A0JVN98	RUB	\N	\N	PUBLISHED	\N	\N	46459.7812	46459.7812	15.2799997	22.0599995	1000	91	199	1	2025-07-15 03:00:00+03	2018-10-23 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:17.116977+03	2018-09-25 17:54:17.116977+03	0	8.85000038	1
546	bond	RU000A0JVNA4	РегИнв Б01	РЕГИОН-ИНВЕСТ ООО БО-01	\N	REGION-INVEST BO-01 obl.	region-invest bo	RU000A0JVNA4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	420	1	2022-07-19 03:00:00+03	1970-01-01 03:00:00+03	2019-01-22 03:00:00+03	2018-09-25 17:54:17.135865+03	2018-09-25 17:54:17.135865+03	0	0	1
547	bond	RU000A0JVNB2	ДельтКрБ25	КБ ДельтаКредит АО БО-25	\N	DeltaCredit CB BO-25	deltacredit cb bo	RU000A0JVNB2	RUB	\N	\N	PUBLISHED	\N	\N	5.23000002	5.23000002	8.07999992	25.2099991	1000	184	238	1	2025-07-28 03:00:00+03	2019-01-28 03:00:00+03	2019-01-28 03:00:00+03	2018-09-25 17:54:17.155394+03	2018-09-25 17:54:17.155394+03	0	5	1
548	bond	RU000A0JVNC0	ИАЭклипс1А	ИА Эклипс-1 кл.А	\N	IA Eclipse-1 cl.A	ia eclipse	RU000A0JVNC0	RUB	\N	\N	PUBLISHED	\N	\N	5.0999999	5.0999999	1.19000006	6.78999996	311.230011	91	421	1	2047-12-09 03:00:00+03	2018-12-09 03:00:00+03	2018-12-09 03:00:00+03	2018-09-25 17:54:17.168622+03	2018-09-25 17:54:17.168622+03	0	8.75	1
549	bond	RU000A0JVNL1	ВЭБUSD1P-1	ВЭБ-лизинг USD-001P-01	\N	VEB-leasing USD 001P-01	veb-leasing usd 	RU000A0JVNL1	RUB	\N	\N	PUBLISHED	\N	\N	3.04999995	3.04999995	443.269989	20	1000	182	422	1	2025-07-17 03:00:00+03	2019-07-25 03:00:00+03	2019-01-24 03:00:00+03	2018-09-25 17:54:17.180778+03	2018-09-25 17:54:17.180778+03	0	4.01000023	1
550	bond	RU000A0JVP05	Лента БО-3	Лента ООО БО-03	\N	Lenta OOO BO-03	lenta ooo bo	RU000A0JVP05	RUB	\N	\N	PUBLISHED	\N	\N	9.30000019	9.30000019	10.7299995	36.1500015	1000	182	423	1	2025-07-24 03:00:00+03	2021-01-28 03:00:00+03	2019-01-31 03:00:00+03	2018-09-25 17:54:17.192245+03	2018-09-25 17:54:17.192245+03	0	7.25	1
551	bond	RU000A0JVP21	ОткрХОЛБО5	Открытие Холдинг АО обл.БО-05	\N	Otkritie Holding BO-5	otkritie holding bo	RU000A0JVP21	RUB	\N	\N	PUBLISHED	\N	\N	18884.2207	18884.2207	137.639999	181.199997	1000	546	351	1	2028-07-20 03:00:00+03	2019-01-31 03:00:00+03	2019-01-31 03:00:00+03	2018-09-25 17:54:17.204087+03	2018-09-25 17:54:17.204087+03	0	12.4200001	1
552	bond	RU000A0JVP39	КАМАЗ 12	КАМАЗ ПАО БО-12	\N	KAMAZ OAO BO-12	kamaz oao bo	RU000A0JVP39	RUB	\N	\N	PUBLISHED	\N	\N	0	0	16.6299992	56.0499992	1000	182	424	1	2030-07-18 03:00:00+03	1970-01-01 03:00:00+03	2019-01-31 03:00:00+03	2018-09-25 17:54:17.216036+03	2018-09-25 17:54:17.216036+03	0	11.2399998	1
553	bond	RU000A0JVPJ0	ОткрХОЛБО1	Открытие Холдинг АО обл.БО-01	\N	Otkritie Holding BO-1	otkritie holding bo	RU000A0JVPJ0	RUB	\N	\N	PUBLISHED	\N	\N	29222.1992	29222.1992	133.559998	181.199997	1000	546	351	1	2025-08-05 03:00:00+03	2019-02-12 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:17.227962+03	2018-09-25 17:54:17.227962+03	10	12.4200001	1
554	bond	RU000A0JVPR3	НижгорОб10	Нижегородская обл. 34010	\N	Nizhniy Novgorod reg. 10	nizhniy novgorod reg.	RU000A0JVPR3	RUB	\N	\N	PUBLISHED	\N	\N	8.28999996	8.28999996	10.1000004	30.6299992	900	91	270	1	2020-08-23 03:00:00+03	1970-01-01 03:00:00+03	2018-11-25 03:00:00+03	2018-09-25 17:54:17.239827+03	2018-09-25 17:54:17.239827+03	94500	13.6499996	1
555	bond	RU000A0JVPS1	ТрансФБО40	ТрансФин-М ПАО БО-40	\N	TransFin-M BO-40	transfin-m bo	RU000A0JVPS1	RUB	\N	\N	PUBLISHED	\N	\N	9.69999981	9.69999981	9.36999989	47.3699989	1000	182	332	1	2025-08-11 03:00:00+03	2019-08-19 03:00:00+03	2019-02-18 03:00:00+03	2018-09-25 17:54:17.252613+03	2018-09-25 17:54:17.252613+03	0	9.5	1
556	bond	RU000A0JVQA7	ВЭБ Б05	Внешэкономбанк БО-05	\N	Vneshekonombank BO-05	vneshekonombank bo	RU000A0JVQA7	RUB	\N	\N	PUBLISHED	\N	\N	8.11999989	8.11999989	8.31999969	22.9400005	1000	91	273	1	2020-08-20 03:00:00+03	1970-01-01 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:17.271325+03	2018-09-25 17:54:17.271325+03	0	9.19999981	1
557	bond	RU000A0JVQQ3	ВЭБлизБ09	ВЭБ-лизинг АО БО-09	\N	VEB-leasing AO BO-09	veb-leasing ao bo	RU000A0JVQQ3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	6.63000011	41.5900002	1000	182	394	1	2025-08-18 03:00:00+03	2019-08-26 03:00:00+03	2019-02-25 03:00:00+03	2018-09-25 17:54:17.287247+03	2018-09-25 17:54:17.287247+03	0	8.34000015	1
558	bond	RU000A0JVQT7	ЕвропланБ2	АО ЛК Европлан БО-02	\N	Evroplan BO-2	evroplan bo	RU000A0JVQT7	RUB	\N	\N	PUBLISHED	\N	\N	7.51999998	7.51999998	8.34000015	26.1800003	1000	91	272	1	2021-08-23 03:00:00+03	2019-08-26 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:17.310365+03	2018-09-25 17:54:17.310365+03	0	10.5	1
559	bond	RU000A0JVQX9	СУЭК-Фин07	СУЭК-Финанс ООО об. 07	\N	SUEK-Finans OOO 07	suek-finans ooo 	RU000A0JVQX9	RUB	\N	\N	PUBLISHED	\N	\N	12.8100004	12.8100004	9.59000015	62.3300018	1000	182	206	1	2025-08-19 03:00:00+03	2020-08-25 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:17.323777+03	2018-09-25 17:54:17.323777+03	0	12.5	1
560	bond	RU000A0JVQY7	СУЭК-Фин08	СУЭК-Финанс ООО об. 08	\N	SUEK-Finans OOO 08	suek-finans ooo 	RU000A0JVQY7	RUB	\N	\N	PUBLISHED	\N	\N	12.8100004	12.8100004	9.59000015	62.3300018	1000	182	206	1	2025-08-19 03:00:00+03	2020-08-25 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:17.336268+03	2018-09-25 17:54:17.336268+03	0	12.5	1
561	bond	RU000A0JVRL2	ПЕРЕСВ БП1	АКБ АО "ПЕРЕСВЕТ" БО-П01	\N	AKB AO "PERESVET" BO-P01	akb ao "	RU000A0JVRL2	RUB	\N	\N	PUBLISHED	\N	\N	8.85000038	8.85000038	5.36999989	91.5500031	1000	6552	357	1	2035-08-15 03:00:00+03	1970-01-01 03:00:00+03	2035-08-15 03:00:00+03	2018-09-25 17:54:17.347742+03	2018-09-25 17:54:17.347742+03	0	0.50999999	1
562	bond	RU000A0JVRM0	БалтЛизБО2	Балтийский лизинг ООО БО-02	\N	Baltic Leasing BO-02	baltic leasing bo	RU000A0JVRM0	RUB	\N	\N	PUBLISHED	\N	\N	10.8599997	10.8599997	2.73000002	13.0900002	500	91	395	1	2021-09-02 03:00:00+03	2019-09-05 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:17.359938+03	2018-09-25 17:54:17.359938+03	50025	10.5	1
563	bond	RU000A0JVRN8	Лента БО-6	Лента ООО БО-06	\N	Lenta OOO BO-06	lenta ooo bo	RU000A0JVRN8	RUB	\N	\N	PUBLISHED	\N	\N	5.5999999	5.5999999	3.6400001	34.9000015	1000	182	423	1	2025-08-28 03:00:00+03	2021-09-02 03:00:00+03	2019-03-07 03:00:00+03	2018-09-25 17:54:17.3726+03	2018-09-25 17:54:17.3726+03	0	7	1
564	bond	RU000A0JVRV1	ВЭБлиз2Р-1	ВЭБ-лизинг АО 002-Р-01	\N	VEB-leasing AO 002P-01	veb-leasing ao 	RU000A0JVRV1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	3.43000007	41.5900002	1000	182	216	1	2025-09-01 03:00:00+03	2019-09-09 03:00:00+03	2019-03-11 03:00:00+03	2018-09-25 17:54:17.384065+03	2018-09-25 17:54:17.384065+03	0	8.34000015	1
565	bond	RU000A0JVS10	КрасЯрКр10	Красноярский край  обл.10	\N	Krasnoyarsk reg.- 34010	krasnoyarsk reg.	RU000A0JVS10	RUB	\N	\N	PUBLISHED	\N	\N	7.82000017	7.82000017	3.6500001	23.75	750	91	364	1	2019-09-10 03:00:00+03	1970-01-01 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:17.395759+03	2018-09-25 17:54:17.395759+03	0	12.6999998	1
566	bond	RU000A0JVS36	ТрансФБО41	ТрансФин-М ПАО БО-41	\N	TransFin-M BO-41	transfin-m bo	RU000A0JVS36	RUB	\N	\N	PUBLISHED	\N	\N	10.7700005	10.7700005	3.74000001	52.3600006	1000	182	332	1	2025-09-03 03:00:00+03	2019-09-11 03:00:00+03	2019-03-13 03:00:00+03	2018-09-25 17:54:17.414279+03	2018-09-25 17:54:17.414279+03	0	10.5	1
567	bond	RU000A0JVS93	НацКап Б08	Национальный капитал АО БО-08	\N	Natsionalniy Kapital BO-08	natsionalniy kapital bo	RU000A0JVS93	RUB	\N	\N	PUBLISHED	\N	\N	10.1300001	10.1300001	1.89999998	49.3600006	1000	182	333	1	2020-09-15 03:00:00+03	2019-03-19 03:00:00+03	2019-03-19 03:00:00+03	2018-09-25 17:54:17.42935+03	2018-09-25 17:54:17.42935+03	0	9.89999962	1
568	bond	RU000A0JVSG0	Росбанк-А8	РОСБАНК ПАО обл.с.А8	\N	Rosbank A8	rosbank a	RU000A0JVSG0	RUB	\N	\N	PUBLISHED	\N	\N	6.78999996	6.78999996	0.200000003	36.0999985	1000	183	362	1	2025-09-29 03:00:00+03	2019-03-26 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:17.444278+03	2018-09-25 17:54:17.444278+03	0	7.19999981	1
569	bond	RU000A0JVSY3	Удмурт2015	Удмуртская респ. обл. 2015	\N	Udmurtia 2015	udmurtia 	RU000A0JVSY3	RUB	\N	\N	PUBLISHED	\N	\N	8.39999962	8.39999962	1.70000005	30.9599991	900	91	425	1	2020-09-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:17.460707+03	2018-09-25 17:54:17.460707+03	98226	13.8000002	1
570	bond	RU000A0JVT43	РОССИУМ 01	Концерн РОССИУМ ООО 01 об.	\N	Concern ROSSIUM 01	concern rossium 	RU000A0JVT43	RUB	\N	\N	PUBLISHED	\N	\N	9.47999954	9.47999954	0.270000011	49.8600006	1000	182	426	1	2025-09-15 03:00:00+03	2019-03-25 03:00:00+03	2019-03-25 03:00:00+03	2018-09-25 17:54:17.4758+03	2018-09-25 17:54:17.4758+03	0	10	1
571	bond	RU000A0JVT50	ДОМ.РФ Б-4	ДОМ.РФ (АО) БО-04	\N	DOM.RF BO-04	dom.rf bo	RU000A0JVT50	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	0	427	1	2018-09-25 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	2018-09-25 17:54:17.496525+03	2018-09-25 17:54:17.496525+03	0	\N	1
572	bond	RU000A0JVT76	ПГК 01	Первая Грузовая Компания АО 01	\N	Pervaya Gruzovaya Company	pervaya gruzovaya company	RU000A0JVT76	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	428	1	2025-09-16 03:00:00+03	1970-01-01 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:17.511659+03	2018-09-25 17:54:17.511659+03	0	0	1
573	bond	RU000A0JVTA1	ДельтКрБО7	КБ ДельтаКредит АО БО-07	\N	DeltaCredit CB BO-07	deltacredit cb bo	RU000A0JVTA1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	61.2999992	63.0099983	1000	184	238	1	2025-09-30 03:00:00+03	2018-09-30 03:00:00+03	2018-09-30 03:00:00+03	2018-09-25 17:54:17.531846+03	2018-09-25 17:54:17.531846+03	0	12.5	1
574	bond	RU000A0JVTM6	ИАМлтор1А3	ИАМультиоригинаторный 1 кл.А/3	\N	IA Multi Originator 1 cl.A/3	ia multi originator 	RU000A0JVTM6	RUB	\N	\N	PUBLISHED	\N	\N	-3.5	-3.5	0.0700000003	6.78000021	252.850006	91	399	1	2047-12-24 03:00:00+03	2018-12-24 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:17.548515+03	2018-09-25 17:54:17.548515+03	0	10.75	1
575	bond	RU000A0JVTQ7	ИА КМ 01	ИА КМ ООО 01 об.	\N	IA KM 01 ob.	ia km 	RU000A0JVTQ7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.569999993	0.850000024	926.030029	92	429	1	2022-06-30 03:00:00+03	2018-10-25 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:17.563932+03	2018-09-25 17:54:17.563932+03	0	0.36500001	1
576	bond	RU000A0JVU08	Энел 1P-1R	"Энел Россия" ПАО 001P-01R	\N	Enel Russia 001P-01R	enel russia 	RU000A0JVU08	RUB	\N	\N	PUBLISHED	\N	\N	-96.5299988	-96.5299988	59.3400002	60.3300018	1000	182	430	1	2018-09-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:17.587311+03	2018-09-25 17:54:17.587311+03	0	12.1000004	1
577	bond	RU000A0JVU65	ВлгОб35006	Волгоградская обл. 35006 обл.	\N	Volgograd reg.-35006	volgograd reg.	RU000A0JVU65	RUB	\N	\N	PUBLISHED	\N	\N	7.51999998	7.51999998	12.4399996	21.3600006	700	91	276	1	2020-10-30 03:00:00+03	1970-01-01 03:00:00+03	2018-11-02 03:00:00+03	2018-09-25 17:54:17.600476+03	2018-09-25 17:54:17.600476+03	0	12.2399998	1
578	bond	RU000A0JVU73	ТранФинМ28	ТрансФин-М ПАО 28	\N	TransFin-M 28	transfin-m 	RU000A0JVU73	RUB	\N	\N	PUBLISHED	\N	\N	0	0	68.7300034	73.4899979	1000	185	431	1	2018-10-07 03:00:00+03	1970-01-01 03:00:00+03	2018-10-07 03:00:00+03	2018-09-25 17:54:17.616602+03	2018-09-25 17:54:17.616602+03	0	14.5	1
579	bond	RU000A0JVU81	ИАНадежД1А	ИА Надежный дом-1 класса А	\N	IA Nadezh. dom-1 A	ia nadezh.	RU000A0JVU81	RUB	\N	\N	PUBLISHED	\N	\N	7.3499999	7.3499999	0.720000029	6.51999998	290.440002	91	432	1	2046-03-15 03:00:00+03	2018-12-15 03:00:00+03	2018-12-15 03:00:00+03	2018-09-25 17:54:17.63188+03	2018-09-25 17:54:17.63188+03	0	9	1
580	bond	RU000A0JVUB7	ПропфинБО1	О1 Пропертиз Финанс АО БО-01	\N	O1 Properties Finance AO BO-1	 properties finance ao bo	RU000A0JVUB7	RUB	\N	\N	PUBLISHED	\N	\N	13.1099997	13.1099997	61.2599983	64.8199997	1000	182	433	1	2020-10-02 03:00:00+03	1970-01-01 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:17.643634+03	2018-09-25 17:54:17.643634+03	0	13	1
581	bond	RU000A0JVUD3	Новсиб 7об	Новосибирск  мун.обл. 2015	\N	Novosibirsk 7	novosibirsk 	RU000A0JVUD3	RUB	\N	\N	PUBLISHED	\N	\N	8.59000015	8.59000015	19.0300007	19.2399998	600	91	266	1	2022-10-10 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:17.65576+03	2018-09-25 17:54:17.65576+03	0	12.8599997	1
582	bond	RU000A0JVUG6	ФСИ 01	Фонд стратег инициативы 01 обл	\N	FSI 01	fsi 	RU000A0JVUG6	RUB	\N	\N	PUBLISHED	\N	\N	1.49000001	1.49000001	6.94999981	7.48000002	1000	182	434	1	2020-10-05 03:00:00+03	2018-10-08 03:00:00+03	2018-10-08 03:00:00+03	2018-09-25 17:54:17.671551+03	2018-09-25 17:54:17.671551+03	0	1.5	1
583	bond	RU000A0JVUH4	Хакас2015	Хакасия 2015 об.35005	\N	Khakasia 2015 (35005)	khakasia 	RU000A0JVUH4	RUB	\N	\N	PUBLISHED	\N	\N	8.11999989	8.11999989	20.6700001	24.4300003	800	91	435	1	2020-10-11 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:17.687976+03	2018-09-25 17:54:17.687976+03	82984	12.25	1
584	bond	RU000A0JVUJ0	ЧеркизБ1P1	ГруппаЧеркизово ПАО БО-001P-01	\N	Cherkizovo Group BO-001P-01	cherkizovo group bo	RU000A0JVUJ0	RUB	\N	\N	PUBLISHED	\N	\N	10.5299997	10.5299997	57.5299988	62.3300018	1000	182	436	1	2020-10-06 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:17.703668+03	2018-09-25 17:54:17.703668+03	0	12.5	1
585	bond	RU000A0JVUK8	СистемБ1P1	АФК "Система" ПАО БО 001P-01	\N	AFK Systema 001P-01	afk systema 	RU000A0JVUK8	RUB	\N	\N	PUBLISHED	\N	\N	10.0600004	10.0600004	57.5299988	62.3300018	1000	182	437	1	2025-09-30 03:00:00+03	2018-10-09 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:17.719591+03	2018-09-25 17:54:17.719591+03	100090	12.5	1
586	bond	RU000A0JVUL6	ПГК 05	Первая Грузовая Компания АО 05	\N	Pervaya Gruzovaya Company 5	pervaya gruzovaya company 	RU000A0JVUL6	RUB	\N	\N	PUBLISHED	\N	\N	9.02000046	9.02000046	57.7599983	63.3300018	1000	182	438	1	2025-10-02 03:00:00+03	2019-04-11 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:17.733761+03	2018-09-25 17:54:17.733761+03	0	12.6999998	1
587	bond	RU000A0JVUN2	ВымпелКБО2	Вымпел-Коммуникации ПАО БО-02	\N	VimpelKom BO-02	vimpelkom bo	RU000A0JVUN2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.51999998	4.98999977	1000	182	439	1	2025-10-03 03:00:00+03	2020-10-09 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:17.751003+03	2018-09-25 17:54:17.751003+03	0	1	1
588	bond	RU000A0JVUP7	ВымпелКБО3	Вымпел-Коммуникации ПАО БО-03	\N	VimpelKom BO-03	vimpelkom bo	RU000A0JVUP7	RUB	\N	\N	PUBLISHED	\N	\N	7.59000015	7.59000015	4.51999998	4.98999977	1000	182	439	1	2025-10-03 03:00:00+03	2020-10-09 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:17.76299+03	2018-09-25 17:54:17.76299+03	0	1	1
589	bond	RU000A0JVUR3	КрЕврБ-Б10	КРЕДИТ ЕВРОПА БАНК (АО) БО-10	\N	Credit Europe Bank (AO) BO-10	credit europe bank (	RU000A0JVUR3	RUB	\N	\N	PUBLISHED	\N	\N	25.3299999	25.3299999	42.4700012	49.8600006	1000	182	440	1	2018-10-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:17.774519+03	2018-09-25 17:54:17.774519+03	99000	10	1
590	bond	RU000A0JVUS1	РЕСОЛизБ03	РЕСО-Лизинг ООО БО-3	\N	RESO-Lizing B03	reso-lizing b	RU000A0JVUS1	RUB	\N	\N	PUBLISHED	\N	\N	8.92000008	8.92000008	40.2299995	44.3800011	1000	182	274	1	2025-10-03 03:00:00+03	2018-10-12 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:17.786992+03	2018-09-25 17:54:17.786992+03	0	8.89999962	1
591	bond	RU000A0JVUW3	ТулОбл2015	Тульская область 2015 обл.04	\N	Tulskiy region 2015	tulskiy region 	RU000A0JVUW3	RUB	\N	\N	PUBLISHED	\N	\N	8.5	8.5	5.61999989	9.11999989	300	91	441	1	2019-05-15 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:17.803434+03	2018-09-25 17:54:17.803434+03	30723	12.1999998	1
592	bond	RU000A0JVUX1	ИКС5ФинБО4	ИКС 5 ФИНАНС ООО БО-04	\N	IKS 5 FINANCE BO-04	iks 	RU000A0JVUX1	RUB	\N	\N	PUBLISHED	\N	\N	3.33999991	3.33999991	52.4900017	59.3400002	1000	182	442	1	2022-10-11 03:00:00+03	2019-04-16 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:17.818845+03	2018-09-25 17:54:17.818845+03	0	11.8999996	1
593	bond	RU000A0JVUY9	ДельтКрБО8	КБ ДельтаКредит АО БО-08	\N	DeltaCredit CB BO-08	deltacredit cb bo	RU000A0JVUY9	RUB	\N	\N	PUBLISHED	\N	\N	7.92999983	7.92999983	53.6800003	62.1699982	1000	183	238	1	2025-10-20 03:00:00+03	2019-04-20 03:00:00+03	2018-10-20 03:00:00+03	2018-09-25 17:54:17.830278+03	2018-09-25 17:54:17.830278+03	0	12.3999996	1
594	bond	RU000A0JVV49	Мордовия02	Мордовия 34002 обл.	\N	Respublika Mordovia - 02	respublika mordovia 	RU000A0JVV49	RUB	\N	\N	PUBLISHED	\N	\N	8.10999966	8.10999966	15.6000004	20.5699997	600	91	290	1	2020-10-14 03:00:00+03	1970-01-01 03:00:00+03	2018-10-17 03:00:00+03	2018-09-25 17:54:17.842127+03	2018-09-25 17:54:17.842127+03	64680	13.75	1
595	bond	RU000A0JVVA7	iРОСНАНО 6	РОСНАНО АО обл. 06	\N	ROSNANO 6	rosnano 	RU000A0JVVA7	RUB	\N	\N	PUBLISHED	\N	\N	4.86999989	4.86999989	54.4500008	62.3300018	1000	182	239	1	2022-10-13 03:00:00+03	1970-01-01 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:17.854571+03	2018-09-25 17:54:17.854571+03	127990	12.5	1
596	bond	RU000A0JVVK6	СМП БО-01	АО "СМП Банк" БО-01	\N	SevMorPut BO-01	sevmorput bo	RU000A0JVVK6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	13.6800003	18.5699997	1000	91	443	1	2025-10-10 03:00:00+03	2018-10-19 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:17.879604+03	2018-09-25 17:54:17.879604+03	0	7.44999981	1
597	bond	RU000A0JVVL4	ПЕРЕСВ БП2	АКБ АО "ПЕРЕСВЕТ" БО-П02	\N	AKB AO "PERESVET" BO-P02	akb ao "	RU000A0JVVL4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	7.26999998	94.0899963	1000	6734	357	1	2035-09-28 03:00:00+03	1970-01-01 03:00:00+03	2035-09-28 03:00:00+03	2018-09-25 17:54:17.894175+03	2018-09-25 17:54:17.894175+03	0	0.50999999	1
598	bond	RU000A0JVVP5	СМП БО-02	АО "СМП Банк" БО-02	\N	SevMorPut BO-02	sevmorput bo	RU000A0JVVP5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	13.0600004	18.5699997	1000	91	443	1	2025-10-13 03:00:00+03	2018-10-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:17.910325+03	2018-09-25 17:54:17.910325+03	0	7.44999981	1
599	bond	RU000A0JVVR1	Волгогр 08	городск. займ Волгограда 34008	\N	Volgograd 34008	volgograd 	RU000A0JVVR1	RUB	\N	\N	PUBLISHED	\N	\N	8.43000031	8.43000031	10.3100004	20.3899994	600	91	369	1	2020-10-19 03:00:00+03	1970-01-01 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:17.922348+03	2018-09-25 17:54:17.922348+03	0	13.6300001	1
600	bond	RU000A0JVVT7	СМП БО-03	АО "СМП Банк" БО-03	\N	SevMorPut BO-03	sevmorput bo	RU000A0JVVT7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	12.8599997	18.5699997	1000	91	443	1	2025-10-14 03:00:00+03	2018-10-23 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:17.939157+03	2018-09-25 17:54:17.939157+03	0	7.44999981	1
601	bond	RU000A0JVVV3	СилМашБО-1	Силовые машины ПАО БО-01	\N	Silovye mashiny BO-01	silovye mashiny bo	RU000A0JVVV3	RUB	\N	\N	PUBLISHED	\N	\N	12.75	12.75	51.5600014	61.3300018	1000	182	444	1	2025-10-15 03:00:00+03	2018-10-24 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:17.954573+03	2018-09-25 17:54:17.954573+03	99970	12.3000002	1
602	bond	RU000A0JVVW1	СилМашБО-2	Силовые машины ПАО БО-02	\N	Silovye mashiny BO-02	silovye mashiny bo	RU000A0JVVW1	RUB	\N	\N	PUBLISHED	\N	\N	12.8800001	12.8800001	51.5600014	61.3300018	1000	182	444	1	2025-10-15 03:00:00+03	2018-10-24 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:17.966217+03	2018-09-25 17:54:17.966217+03	99960	12.3000002	1
603	bond	RU000A0JVW22	ПГК 02	Первая Грузовая Компания АО 02	\N	Pervaya Gruzovaya Company 2	pervaya gruzovaya company 	RU000A0JVW22	RUB	\N	\N	PUBLISHED	\N	\N	5.42999983	5.42999983	50.2999992	59.8400002	1000	182	438	1	2025-10-15 03:00:00+03	2019-10-23 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:17.977806+03	2018-09-25 17:54:17.977806+03	0	12	1
604	bond	RU000A0JVW55	ДиджИнвБ01	ООО "Диджитал Инвест" БО-01	\N	Digital Invest BO-01	digital invest bo	RU000A0JVW55	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	445	1	2020-10-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:17.989572+03	2018-09-25 17:54:17.989572+03	0	0	1
605	bond	RU000A0JVW71	РЖД БО-02	"Российские ЖД" ОАО БО-02	\N	RZhD BO-02	rzhd bo	RU000A0JVW71	RUB	\N	\N	PUBLISHED	\N	\N	6.48999977	6.48999977	46.6399994	55.8499985	1000	182	256	1	2025-10-16 03:00:00+03	2020-04-23 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:18.006438+03	2018-09-25 17:54:18.006438+03	0	11.1999998	1
606	bond	RU000A0JVWA5	ДельтКрБ19	КБ ДельтаКредит АО БО-19	\N	DeltaCredit CB BO-19	deltacredit cb bo	RU000A0JVWA5	RUB	\N	\N	PUBLISHED	\N	\N	7.73999977	7.73999977	20.2700005	25.0699997	1000	183	238	1	2025-10-30 03:00:00+03	2018-10-30 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:18.020803+03	2018-09-25 17:54:18.020803+03	0	5	1
607	bond	RU000A0JVWB3	РСХБ БО9	"Россельхозбанк" (АО) БО-09	\N	Rosselkhozbank BO-09	rosselkhozbank bo	RU000A0JVWB3	RUB	\N	\N	PUBLISHED	\N	\N	6.53000021	6.53000021	13.0699997	19.8199997	1000	91	446	1	2025-10-17 03:00:00+03	2020-04-24 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:18.033679+03	2018-09-25 17:54:18.033679+03	0	7.94999981	1
608	bond	RU000A0JVWD9	ГТЛК БО-05	ГосТранспортЛизингКомп БО-05	\N	GTLK (PAO) BO-05	gtlk (	RU000A0JVWD9	RUB	\N	\N	PUBLISHED	\N	\N	9.82999992	9.82999992	18.0799999	27.4200001	1000	91	383	1	2025-10-17 03:00:00+03	2023-10-20 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:18.045486+03	2018-09-25 17:54:18.045486+03	106010	11	1
609	bond	RU000A0JVWE7	ЕврфНедвБ1	Еврофинансы-Недвиж. ООО БО-01	\N	Evrofinansi-Nedvijimost BO-01	evrofinansi-nedvijimost bo	RU000A0JVWE7	RUB	\N	\N	PUBLISHED	\N	\N	11.3500004	11.3500004	18.0799999	27.4200001	1000	91	447	1	2020-10-23 03:00:00+03	2018-10-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:18.062725+03	2018-09-25 17:54:18.062725+03	0	11	1
610	bond	RU000A0JVWJ6	ГТЛК БО-06	ГосТранспортЛизингКомп БО-06	\N	GTLK (PAO) BO-06	gtlk (	RU000A0JVWJ6	RUB	\N	\N	PUBLISHED	\N	\N	7.92999983	7.92999983	23.0300007	36.7700005	1000	91	383	1	2025-10-20 03:00:00+03	2018-10-29 03:00:00+03	2018-10-29 03:00:00+03	2018-09-25 17:54:18.078355+03	2018-09-25 17:54:18.078355+03	100640	14.75	1
611	bond	RU000A0JVWL2	СберБ об 1	Сбербанк ПАО об 01	\N	Sberbank PAO ob 01	sberbank pao ob 	RU000A0JVWL2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	49.0800018	61.8499985	1000	184	448	1	2026-01-02 03:00:00+03	1970-01-01 03:00:00+03	2018-11-02 03:00:00+03	2018-09-25 17:54:18.090423+03	2018-09-25 17:54:18.090423+03	0	12.2700005	1
612	bond	RU000A0JVWM0	КрасЯрКр11	Красноярский край  обл.11	\N	Krasnoyarsk reg.- 34011	krasnoyarsk reg.	RU000A0JVWM0	RUB	\N	\N	PUBLISHED	\N	\N	4.26999998	4.26999998	17.9500008	29.1700001	1000	91	364	1	2019-10-29 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:18.106107+03	2018-09-25 17:54:18.106107+03	0	11.6999998	1
613	bond	RU000A0JVWN8	МЕТАЛИНБ01	МЕТАЛЛОИНВЕСТ ХК АО БО-01	\N	METALLOINVEST HK AO BO-01	metalloinvest hk ao bo	RU000A0JVWN8	RUB	\N	\N	PUBLISHED	\N	\N	9.47000027	9.47000027	47.7200012	59.0900002	1000	182	449	1	2025-10-21 03:00:00+03	2021-10-26 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:18.117931+03	2018-09-25 17:54:18.117931+03	0	11.8500004	1
614	bond	RU000A0JVWT5	ПГК 03	Первая Грузовая Компания АО 03	\N	Pervaya Gruzovaya Company 3	pervaya gruzovaya company 	RU000A0JVWT5	RUB	\N	\N	PUBLISHED	\N	\N	6.55999994	6.55999994	46.8800011	58.8400002	1000	182	438	1	2025-10-23 03:00:00+03	2020-10-29 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:18.129561+03	2018-09-25 17:54:18.129561+03	0	11.8000002	1
615	bond	RU000A0JVX62	ДиджИнвБ02	ООО "Диджитал Инвест" БО-02	\N	Digital Invest BO-02	digital invest bo	RU000A0JVX62	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	445	1	2020-11-03 03:00:00+03	1970-01-01 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:18.141798+03	2018-09-25 17:54:18.141798+03	0	0	1
616	bond	RU000A0JVXS5	РЕСОЛизБ04	РЕСО-Лизинг ООО БО-4	\N	RESO-Lizing B04	reso-lizing b	RU000A0JVXS5	RUB	\N	\N	PUBLISHED	\N	\N	9.17000008	9.17000008	34.0299988	44.8800011	1000	182	274	1	2025-10-30 03:00:00+03	2019-05-09 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:18.156627+03	2018-09-25 17:54:18.156627+03	0	9	1
617	bond	RU000A0JVXX5	ПЕРЕСВ БП3	АКБ АО "ПЕРЕСВЕТ" БО-П03	\N	AKB AO "PERESVET" BO-P03	akb ao "	RU000A0JVXX5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	7	94.0899963	1000	6734	357	1	2035-10-19 03:00:00+03	1970-01-01 03:00:00+03	2035-10-19 03:00:00+03	2018-09-25 17:54:18.169827+03	2018-09-25 17:54:18.169827+03	0	0.50999999	1
618	bond	RU000A0JVXZ0	СистемБ1P2	АФК "Система" ПАО БО 001P-02	\N	AFK Systema 001P-02	afk systema 	RU000A0JVXZ0	RUB	\N	\N	PUBLISHED	\N	\N	7.23000002	7.23000002	40.9099998	54.3499985	1000	182	437	1	2025-10-31 03:00:00+03	2019-11-08 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:18.18178+03	2018-09-25 17:54:18.18178+03	0	10.8999996	1
619	bond	RU000A0JVY04	РЖД 36 обл	РЖД ОАО 36 обл.	\N	RZD 36	rzd 	RU000A0JVY04	RUB	\N	\N	PUBLISHED	\N	\N	0	0	12.8500004	17.4500008	1000	182	450	1	2040-10-15 03:00:00+03	2019-05-13 03:00:00+03	2018-11-12 03:00:00+03	2018-09-25 17:54:18.197711+03	2018-09-25 17:54:18.197711+03	0	3.5	1
620	bond	RU000A0JVYE3	Акрон БО-2	Акрон (ПАО) БО-02	\N	Acron BO-02	acron bo	RU000A0JVYE3	RUB	\N	\N	PUBLISHED	\N	\N	7.46000004	7.46000004	31.4099998	45.3800011	1000	182	451	1	2018-11-20 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:18.217552+03	2018-09-25 17:54:18.217552+03	100250	9.10000038	1
621	bond	RU000A0JVYF0	Акрон БО-3	Акрон (ПАО) БО-03	\N	Acron BO-03	acron bo	RU000A0JVYF0	RUB	\N	\N	PUBLISHED	\N	\N	7.51999998	7.51999998	31.4099998	45.3800011	1000	182	451	1	2018-11-20 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:18.229023+03	2018-09-25 17:54:18.229023+03	100240	9.10000038	1
622	bond	RU000A0JVYG8	РОСЭКСИМБ1	РОСЭКСИМБАНК АО обл.01	\N	EXIMBANK OF RUSSIA 01	eximbank of russia 	RU000A0JVYG8	RUB	\N	\N	PUBLISHED	\N	\N	7.98000002	7.98000002	28.6499996	41.3899994	1000	182	452	1	2025-11-11 03:00:00+03	2019-11-19 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:18.24129+03	2018-09-25 17:54:18.24129+03	0	8.30000019	1
623	bond	RU000A0JVYK0	КубнЭн1P02	Кубаньэнерго ПАО 001P-02	\N	Kubanenergo 001P-02	kubanenergo 	RU000A0JVYK0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	43.5999985	62.9799995	1000	182	453	1	2025-11-11 03:00:00+03	2022-11-15 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:18.253302+03	2018-09-25 17:54:18.253302+03	0	12.6300001	1
624	bond	RU000A0JVYL8	МРСКЦенБО4	"МРСК Центра" ПАО БО-04	\N	MRSK Centra BO-04	mrsk centra bo	RU000A0JVYL8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	39.9700012	57.7400017	1000	182	454	1	2025-11-11 03:00:00+03	2022-11-15 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:18.265328+03	2018-09-25 17:54:18.265328+03	0	11.5799999	1
625	bond	RU000A0JVYM6	МРСКУр Б02	МРСК Урала  БО-02	\N	MRSKUr B02	mrskur b	RU000A0JVYM6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	39.9700012	57.7400017	1000	182	455	1	2025-11-11 03:00:00+03	2022-11-15 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:18.277001+03	2018-09-25 17:54:18.277001+03	0	11.5799999	1
626	bond	RU000A0JVYN4	ОГК2 Б1P1R	ОГК-2 ПАО БО-001P-01R	\N	OGK-2 BO-001P-01R	ogk	RU000A0JVYN4	RUB	\N	\N	PUBLISHED	\N	\N	9.26000023	9.26000023	23.9899998	34.6500015	1000	182	456	1	2020-11-17 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:18.295746+03	2018-09-25 17:54:18.295746+03	95950	6.94999981	1
627	bond	RU000A0JVYP9	ОГК2 Б1P2R	ОГК-2 ПАО БО-001P-02R	\N	OGK-2 BO-001P-02R	ogk	RU000A0JVYP9	RUB	\N	\N	PUBLISHED	\N	\N	6.8499999	6.8499999	23.9899998	34.6500015	1000	182	456	1	2020-11-17 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:18.310337+03	2018-09-25 17:54:18.310337+03	0	6.94999981	1
628	bond	RU000A0JVZ94	РоссетиБО5	Российские сети ПАО БО-05	\N	Rosseti BO-05	rosseti bo	RU000A0JVZ94	RUB	\N	\N	PUBLISHED	\N	\N	9.77000046	9.77000046	37.9099998	56.0999985	1000	182	457	1	2025-11-14 03:00:00+03	2022-11-18 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:18.325888+03	2018-09-25 17:54:18.325888+03	0	11.25	1
629	bond	RU000A0JVZA8	РОССИУМ Б1	Концерн РОССИУМ ООО БО-01	\N	Concern ROSSIUM BO-01	concern rossium bo	RU000A0JVZA8	RUB	\N	\N	PUBLISHED	\N	\N	7.05000019	7.05000019	31.1700001	46.1199989	1000	182	458	1	2025-11-14 03:00:00+03	2018-11-23 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:18.341635+03	2018-09-25 17:54:18.341635+03	0	9.25	1
630	bond	RU000A0JVZB6	ДелоПортс1	ДелоПортс ООО 01	\N	DeloPorts 01	deloports 	RU000A0JVZB6	RUB	\N	\N	PUBLISHED	\N	\N	8.38000011	8.38000011	46.5	68.8099976	1000	182	459	1	2025-11-14 03:00:00+03	2018-11-23 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:18.357504+03	2018-09-25 17:54:18.357504+03	0	13.8000002	1
631	bond	RU000A0JVZC4	КАМАЗ БО-4	КАМАЗ ПАО БО-04	\N	KAMAZ PAO BO-04	kamaz pao bo	RU000A0JVZC4	RUB	\N	\N	PUBLISHED	\N	\N	6.96000004	6.96000004	39.7799988	60.3300018	1000	182	415	1	2020-11-23 03:00:00+03	2018-11-26 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:18.37307+03	2018-09-25 17:54:18.37307+03	100850	12.1000004	1
632	bond	RU000A0JVZE0	КраснодКр5	Краснодарский кр. 05 обл.	\N	Krasnodar reg.-05	krasnodar reg.	RU000A0JVZE0	RUB	\N	\N	PUBLISHED	\N	\N	8.30000019	8.30000019	0.980000019	3.19000006	100	91	460	1	2018-11-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:18.384957+03	2018-09-25 17:54:18.384957+03	10080	12.8000002	1
633	bond	RU000A0JVZF7	ФинАвиа 01	Финанс-Авиа ООО 01 обл.	\N	Finans-Avia 01	finans-avia 	RU000A0JVZF7	RUB	\N	\N	PUBLISHED	\N	\N	30.1499996	30.1499996	13.8100004	45.3699989	1000	184	461	1	2022-07-31 03:00:00+03	1970-01-01 03:00:00+03	2019-01-31 03:00:00+03	2018-09-25 17:54:18.403934+03	2018-09-25 17:54:18.403934+03	63000	9	1
634	bond	RU000A0JVZG5	ФинАвиа 02	Финанс-Авиа ООО 02 обл.	\N	Finans-Avia 02	finans-avia 	RU000A0JVZG5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.0500000007	1000	184	461	1	2027-07-31 03:00:00+03	1970-01-01 03:00:00+03	2019-01-31 03:00:00+03	2018-09-25 17:54:18.416916+03	2018-09-25 17:54:18.416916+03	14620	0.00999999978	1
635	bond	RU000A0JVZJ9	КонцесВ 01	Концессии водоснабжения ООО 01	\N	Koncessii vodosnabjeniya 01	koncessii vodosnabjeniya 	RU000A0JVZJ9	RUB	\N	\N	PUBLISHED	\N	\N	10.75	10.75	91.5400009	112.190002	1000	364	462	1	2030-11-30 03:00:00+03	2018-12-01 03:00:00+03	2018-12-01 03:00:00+03	2018-09-25 17:54:18.42955+03	2018-09-25 17:54:18.42955+03	0	11.25	1
636	bond	RU000A0JVZK7	КубнЭн1P01	Кубаньэнерго ПАО 001P-01	\N	Kubanenergo 001P-01	kubanenergo 	RU000A0JVZK7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	33.1800003	52.0600014	1000	182	453	1	2025-11-21 03:00:00+03	1970-01-01 03:00:00+03	2018-11-30 03:00:00+03	2018-09-25 17:54:18.447556+03	2018-09-25 17:54:18.447556+03	0	10.4399996	1
637	bond	RU000A0JVZP6	РоссетиБО6	Российские сети ПАО БО-06	\N	Rosseti BO-06	rosseti bo	RU000A0JVZP6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	31.5699997	51.3100014	1000	182	457	1	2045-10-31 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:18.46019+03	2018-09-25 17:54:18.46019+03	0	10.29	1
638	bond	RU000A0JVZY8	ПочтаРосБ1	Почта России (ФГУП) БО-01	\N	Pochta Rossii BO-01	pochta rossii bo	RU000A0JVZY8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.85000038	15.5500002	1129.95996	182	463	1	2023-12-06 03:00:00+03	1970-01-01 03:00:00+03	2018-12-12 03:00:00+03	2018-09-25 17:54:18.472048+03	2018-09-25 17:54:18.472048+03	0	2.75	1
639	bond	RU000A0JW0S4	ПКТ 01	АО "ПКТ" обл. 01	\N	FCT 01	fct 	RU000A0JW0S4	RUB	\N	\N	PUBLISHED	\N	\N	9.86999989	9.86999989	35.1699982	65.3199997	1000	182	464	1	2025-12-09 03:00:00+03	2020-12-15 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:18.48417+03	2018-09-25 17:54:18.48417+03	106750	13.1000004	1
640	bond	RU000A0JW118	Агронова01	Агронова-Л ООО 01 об.	\N	Agronova-L 01	agronova-l 	RU000A0JW118	RUB	\N	\N	PUBLISHED	\N	\N	7.4000001	7.4000001	25.6399994	48.6199989	1000	182	465	1	2020-12-17 03:00:00+03	2018-12-20 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:18.495802+03	2018-09-25 17:54:18.495802+03	0	9.75	1
641	bond	RU000A0JW126	КАМАЗ БО13	КАМАЗ ПАО БО-13	\N	KAMAZ PAO BO-13	kamaz pao bo	RU000A0JW126	RUB	\N	\N	PUBLISHED	\N	\N	0	0	27.3299999	51.8100014	1000	182	415	1	2030-12-05 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:18.50904+03	2018-09-25 17:54:18.50904+03	0	10.3900003	1
642	bond	RU000A0JW159	АтомэнпБО1	Атомэнергопром АО БО-01	\N	Atomenergoprom BO-01	atomenergoprom bo	RU000A0JW159	RUB	\N	\N	PUBLISHED	\N	\N	0	0	34.25	46.5200005	1000	182	466	1	2026-11-02 03:00:00+03	1970-01-01 03:00:00+03	2018-11-12 03:00:00+03	2018-09-25 17:54:18.52004+03	2018-09-25 17:54:18.52004+03	0	9.32999992	1
643	bond	RU000A0JW167	АтомэнпБО7	Атомэнергопром АО БО-07	\N	Atomenergoprom BO-07	atomenergoprom bo	RU000A0JW167	RUB	\N	\N	PUBLISHED	\N	\N	9.14999962	9.14999962	28.8899994	55.3499985	1000	182	466	1	2025-12-12 03:00:00+03	2022-12-16 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:18.531973+03	2018-09-25 17:54:18.531973+03	0	11.1000004	1
644	bond	RU000A0JW175	АтомэнпБО8	Атомэнергопром АО БО-08	\N	Atomenergoprom BO-08	atomenergoprom bo	RU000A0JW175	RUB	\N	\N	PUBLISHED	\N	\N	9.42000008	9.42000008	28.8899994	55.3499985	1000	182	466	1	2025-12-12 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:18.54495+03	2018-09-25 17:54:18.54495+03	0	11.1000004	1
645	bond	RU000A0JW1B8	АбсолБO1P1	Абсолют Банк АКБ БО-001P-01	\N	Absolut Bank BO-001P-01	absolut bank bo	RU000A0JW1B8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	30.25	60.1599998	1000	183	402	1	2018-12-25 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:18.55606+03	2018-09-25 17:54:18.55606+03	0	12	1
646	bond	RU000A0JW1G7	iРОСНАНО 7	РОСНАНО АО обл. 07	\N	ROSNANO 7	rosnano 	RU000A0JW1G7	RUB	\N	\N	PUBLISHED	\N	\N	8.03999996	8.03999996	33.1800003	63.5800018	1000	182	239	1	2022-12-16 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:18.57207+03	2018-09-25 17:54:18.57207+03	0	12.75	1
647	bond	RU000A0JW1K9	ТомскОб 55	Томская обл. 55 вып.(с аморт.)	\N	Tomsk reg.-55	tomsk reg.	RU000A0JW1K9	RUB	\N	\N	PUBLISHED	\N	\N	7.63000011	7.63000011	0.270000011	24.6800003	1000	91	313	1	2023-06-19 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:18.583517+03	2018-09-25 17:54:18.583517+03	0	9.89999962	1
648	bond	RU000A0JW1P8	ГТЛК БО-07	ГосТранспортЛизингКомп БО-07	\N	GTLK (PAO) BO-07	gtlk (	RU000A0JW1P8	RUB	\N	\N	PUBLISHED	\N	\N	8.53999996	8.53999996	0	20.3199997	1000	91	383	1	2025-12-16 03:00:00+03	2020-12-22 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:18.595487+03	2018-09-25 17:54:18.595487+03	99730	8.14999962	1
649	bond	RU000A0JW1T0	iУОМЗ БО-3	УОМЗ ПО АО БО-03	\N	UOMZ PO BO-03	uomz po bo	RU000A0JW1T0	RUB	\N	\N	PUBLISHED	\N	\N	3.01999998	3.01999998	35.5299988	71.0500031	1000	182	467	1	2018-12-25 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:18.607406+03	2018-09-25 17:54:18.607406+03	0	14.25	1
650	bond	RU000A0JW1V6	РСХБ 27	"Россельхозбанк" (АО) обл.27	\N	Rosselhozbank 27	rosselhozbank 	RU000A0JW1V6	RUB	\N	\N	PUBLISHED	\N	\N	7.48999977	7.48999977	0	32.0900002	1000	91	199	1	2021-12-21 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:18.620241+03	2018-09-25 17:54:18.620241+03	0	12.8699999	1
651	bond	RU000A0JW1Z7	РСХБ 28	"Россельхозбанк" (АО) обл.28	\N	Rosselhozbank 28	rosselhozbank 	RU000A0JW1Z7	RUB	\N	\N	PUBLISHED	\N	\N	9.34000015	9.34000015	31.7299995	32.0900002	1000	91	199	1	2021-12-22 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:18.631378+03	2018-09-25 17:54:18.631378+03	0	12.8699999	1
652	bond	RU000A0JW2R2	РегИнв Б02	РЕГИОН-ИНВЕСТ ООО БО-02	\N	REGION-INVEST BO-02 obl.	region-invest bo	RU000A0JW2R2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	420	1	2021-01-12 03:00:00+03	1970-01-01 03:00:00+03	2019-01-15 03:00:00+03	2018-09-25 17:54:18.643454+03	2018-09-25 17:54:18.643454+03	0	0	1
653	bond	RU000A0JW2T8	ПКБ 07	Первое кол.бюро НАО 07	\N	FCB 07	fcb 	RU000A0JW2T8	RUB	\N	\N	PUBLISHED	\N	\N	-19.1299992	-19.1299992	8.10999966	10.6999998	286	91	468	1	2019-01-16 03:00:00+03	1970-01-01 03:00:00+03	2018-10-17 03:00:00+03	2018-09-25 17:54:18.655446+03	2018-09-25 17:54:18.655446+03	0	15	1
654	bond	RU000A0JW316	ИА АкБар2А	ИА АкБарс 2 кл.А	\N	IA AkBars 2 cl.A	ia akbars 	RU000A0JW316	RUB	\N	\N	PUBLISHED	\N	\N	-25.3099995	-25.3099995	8.89999962	11.3699999	451.190002	92	381	1	2047-10-15 03:00:00+03	2018-10-15 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:18.667364+03	2018-09-25 17:54:18.667364+03	0	10	1
655	bond	RU000A0JW3A6	ВертолетБ1	Вертолеты России об. БО-01	\N	Russian Helicopter BO-01	russian helicopter bo	RU000A0JW3A6	RUB	\N	\N	PUBLISHED	\N	\N	8.71000004	8.71000004	19.8899994	59.3400002	1000	182	304	1	2026-01-15 03:00:00+03	1970-01-01 03:00:00+03	2019-01-24 03:00:00+03	2018-09-25 17:54:18.679522+03	2018-09-25 17:54:18.679522+03	0	11.8999996	1
656	bond	RU000A0JW3R0	ВТОРРЕС Б1	ВТОРРЕСУРСЫ ПАО БО-01	\N	VTORRESOURCE BO-01	vtorresource bo	RU000A0JW3R0	RUB	\N	\N	PUBLISHED	\N	\N	805400	805400	0	0	1000	182	469	1	2019-02-01 03:00:00+03	1970-01-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:18.695373+03	2018-09-25 17:54:18.695373+03	1040	0	1
657	bond	RU000A0JW4F3	ПраймФ БО2	ООО "Прайм Финанс" БО-02	\N	Prime Finance BO-02	prime finance bo	RU000A0JW4F3	RUB	\N	\N	PUBLISHED	\N	\N	10.0500002	10.0500002	118.779999	217.080002	1000	4914	470	1	2031-01-27 03:00:00+03	2019-08-12 03:00:00+03	2031-01-27 03:00:00+03	2018-09-25 17:54:18.707705+03	2018-09-25 17:54:18.707705+03	0	10.1099997	1
658	bond	RU000A0JW506	АбсолБO1P2	Абсолют Банк АКБ БО-001P-02	\N	Absolut Bank BO-001P-02	absolut bank bo	RU000A0JW506	RUB	\N	\N	PUBLISHED	\N	\N	0	0	11.75	55.4500008	1000	184	402	1	2019-02-17 03:00:00+03	1970-01-01 03:00:00+03	2019-02-17 03:00:00+03	2018-09-25 17:54:18.719409+03	2018-09-25 17:54:18.719409+03	0	11	1
659	bond	RU000A0JW5B9	ТрансФБО42	ТрансФин-М ПАО БО-42	\N	TransFin-M BO-42	transfin-m bo	RU000A0JW5B9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	9.61999989	44.8800011	1000	182	332	1	2026-02-06 03:00:00+03	2019-08-16 03:00:00+03	2019-02-15 03:00:00+03	2018-09-25 17:54:18.731412+03	2018-09-25 17:54:18.731412+03	0	9	1
660	bond	RU000A0JW5C7	НорНик БО5	ГМК Нор.Никель ПАО об БО-05	\N	NorNickel BO-05	nornickel bo	RU000A0JW5C7	RUB	\N	\N	PUBLISHED	\N	\N	9.57999992	9.57999992	12.3900003	57.8400002	1000	182	471	1	2026-02-06 03:00:00+03	1970-01-01 03:00:00+03	2019-02-15 03:00:00+03	2018-09-25 17:54:18.743283+03	2018-09-25 17:54:18.743283+03	0	11.6000004	1
661	bond	RU000A0JW5E3	ПКТ 02	АО "ПКТ" обл. 02	\N	FCT 02	fct 	RU000A0JW5E3	RUB	\N	\N	PUBLISHED	\N	\N	9.64999962	9.64999962	14	65.3199997	1000	182	464	1	2026-02-06 03:00:00+03	2021-02-12 03:00:00+03	2019-02-15 03:00:00+03	2018-09-25 17:54:18.763553+03	2018-09-25 17:54:18.763553+03	107670	13.1000004	1
662	bond	RU000A0JW5H6	МЕТАЛИНБ07	МЕТАЛЛОИНВЕСТ ХК АО БО-07	\N	METALLOINVEST HK AO BO-07	metalloinvest hk ao bo	RU000A0JW5H6	RUB	\N	\N	PUBLISHED	\N	\N	8.56000042	8.56000042	10.7600002	59.3400002	1000	182	449	1	2026-02-12 03:00:00+03	1970-01-01 03:00:00+03	2019-02-21 03:00:00+03	2018-09-25 17:54:18.775463+03	2018-09-25 17:54:18.775463+03	0	11.8999996	1
663	bond	RU000A0JW5J2	РусфинБО12	Русфинанс Банк (ООО) БО-12	\N	Rusfinans Bank BO-12	rusfinans bank bo	RU000A0JW5J2	RUB	\N	\N	PUBLISHED	\N	\N	8.02999973	8.02999973	6.57999992	40.3300018	1000	184	472	1	2021-02-26 03:00:00+03	2019-08-26 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:18.798568+03	2018-09-25 17:54:18.798568+03	0	8	1
664	bond	RU000A0JW5K0	ГПБ 2-ИП	ГПБ (АО) 2-ИП	\N	Gazprombank 2-IP	gazprombank 	RU000A0JW5K0	RUB	\N	\N	PUBLISHED	\N	\N	7.57999992	7.57999992	6.46999979	18.3999996	1000	91	243	1	2021-02-19 03:00:00+03	2019-02-22 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:18.827161+03	2018-09-25 17:54:18.827161+03	0	7.38000011	1
665	bond	RU000A0JW6P7	ВЭБ ПБО1Р1	Внешэкономбанк ПБО-001Р-01	\N	Vneshekonombank PBO-001P-01	vneshekonombank pbo	RU000A0JW6P7	RUB	\N	\N	PUBLISHED	\N	\N	11.5699997	11.5699997	67.0599976	115.68	1000	364	473	1	2025-02-17 03:00:00+03	1970-01-01 03:00:00+03	2019-02-25 03:00:00+03	2018-09-25 17:54:18.848396+03	2018-09-25 17:54:18.848396+03	0	11.6000004	1
666	bond	RU000A0JW7D1	АвнгрдБ1Р1	Авангард АКБ ПАО БО-001Р-01	\N	Avangard BO-001P-01	avangard bo	RU000A0JW7D1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.96999979	36.1500015	1000	182	474	1	2026-02-20 03:00:00+03	2019-03-01 03:00:00+03	2019-03-01 03:00:00+03	2018-09-25 17:54:18.868231+03	2018-09-25 17:54:18.868231+03	0	7.25	1
667	bond	RU000A0JW8G2	Спектр 01	ООО "Спектр" 01	\N	OOO "Spektr" 01	ooo "	RU000A0JW8G2	RUB	\N	\N	PUBLISHED	\N	\N	7.96999979	7.96999979	45.8800011	85	1000	365	475	1	2026-03-12 03:00:00+03	2019-03-12 03:00:00+03	2019-03-12 03:00:00+03	2018-09-25 17:54:18.879808+03	2018-09-25 17:54:18.879808+03	0	8.5	1
668	bond	RU000A0JW8X7	ДиджИнвБ03	ООО "Диджитал Инвест" БО-03	\N	Digital Invest BO-03	digital invest bo	RU000A0JW8X7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	36.6500015	1000	182	445	1	2021-03-08 03:00:00+03	1970-01-01 03:00:00+03	2019-03-11 03:00:00+03	2018-09-25 17:54:18.891599+03	2018-09-25 17:54:18.891599+03	0	7.3499999	1
669	bond	RU000A0JW9G0	ИКС5ФинБО5	ИКС 5 ФИНАНС ООО БО-05	\N	IKS 5 FINANCE BO-05	iks 	RU000A0JW9G0	RUB	\N	\N	PUBLISHED	\N	\N	7.05999994	7.05999994	2.27999997	34.6500015	1000	182	442	1	2023-03-09 03:00:00+03	2021-09-09 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:18.903648+03	2018-09-25 17:54:18.903648+03	0	6.94999981	1
670	bond	RU000A0JW9R7	ГПБ БО-21	ГПБ (АО) БО-21	\N	Gazprombank BO-21	gazprombank bo	RU000A0JW9R7	RUB	\N	\N	PUBLISHED	\N	\N	8.02000046	8.02000046	1.82000005	47.1100006	1000	181	285	1	2019-03-18 03:00:00+03	1970-01-01 03:00:00+03	2019-03-18 03:00:00+03	2018-09-25 17:54:18.915201+03	2018-09-25 17:54:18.915201+03	0	9.5	1
671	bond	RU000A0JWAT9	ИАМлторг2А	ИА Мультиоригинаторный 2 кл.А	\N	MultiOriginatorMortageAgent 2A	multioriginatormortageagent 	RU000A0JWAT9	RUB	\N	\N	PUBLISHED	\N	\N	-3.91000009	-3.91000009	0.949999988	8.64999962	336.679993	91	476	1	2043-12-15 03:00:00+03	2018-12-15 03:00:00+03	2018-12-15 03:00:00+03	2018-09-25 17:54:18.928211+03	2018-09-25 17:54:18.928211+03	0	10.3000002	1
672	bond	RU000A0JWB59	Держава 03	АКБ "Держава" 03	\N	Derzhava 03	derzhava 	RU000A0JWB59	RUB	\N	\N	PUBLISHED	\N	\N	15.54	15.54	1.63999999	74.7900009	1000	182	477	1	2025-09-12 03:00:00+03	1970-01-01 03:00:00+03	2019-03-22 03:00:00+03	2018-09-25 17:54:18.939968+03	2018-09-25 17:54:18.939968+03	0	15	1
673	bond	RU000A0JWB83	ОбувьрусБ6	Обувьрус ООО обл.БО-06	\N	Obuv'rus OOO BO-06	obuv'rus ooo bo	RU000A0JWB83	RUB	\N	\N	PUBLISHED	\N	\N	0	0	756.159973	68810.9609	2000000	91	478	1	2021-03-22 03:00:00+03	2019-03-25 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:18.952382+03	2018-09-25 17:54:18.952382+03	0	13.8000002	1
674	bond	RU000A0JWBA7	ИАВТБ-БМ2А	ИА ВТБ - БМ2 кл. А	\N	IA VTB - BM2 A	ia vtb 	RU000A0JWBA7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	2.19000006	8.64999962	374.970001	91	479	1	2051-03-02 03:00:00+03	2018-12-02 03:00:00+03	2018-12-02 03:00:00+03	2018-09-25 17:54:18.975802+03	2018-09-25 17:54:18.975802+03	0	9.25	1
675	bond	RU000A0JWBE9	МЕТАЛИНБ08	МЕТАЛЛОИНВЕСТ ХК АО БО-08	\N	METALLOINVEST HK AO BO-08	metalloinvest hk ao bo	RU000A0JWBE9	RUB	\N	\N	PUBLISHED	\N	\N	9.23999977	9.23999977	0	54.5999985	1000	182	449	1	2026-03-17 03:00:00+03	2021-03-23 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:18.992346+03	2018-09-25 17:54:18.992346+03	0	10.9499998	1
676	bond	RU000A0JWBF6	МЕТАЛИНБ02	МЕТАЛЛОИНВЕСТ ХК АО БО-02	\N	METALLOINVEST HK AO BO-02	metalloinvest hk ao bo	RU000A0JWBF6	RUB	\N	\N	PUBLISHED	\N	\N	8.86999989	8.86999989	0	54.5999985	1000	182	449	1	2026-03-17 03:00:00+03	2021-03-23 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:19.013195+03	2018-09-25 17:54:19.013195+03	105000	10.9499998	1
677	bond	RU000A0JWBH2	ЕврХол1P1R	ЕвразХолдинг Финанс 001P-01R	\N	EvrazHolding Finance 001P-01R	evrazholding finance 	RU000A0JWBH2	RUB	\N	\N	PUBLISHED	\N	\N	8.31000042	8.31000042	0	62.8300018	1000	182	480	1	2021-03-23 03:00:00+03	1970-01-01 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:19.027829+03	2018-09-25 17:54:19.027829+03	109880	12.6000004	1
678	bond	RU000A0JWBK6	СИБУРХол10	"СИБУР Холдинг"(ПАО) об.10	\N	SIBUR Holding 10	sibur holding 	RU000A0JWBK6	RUB	\N	\N	PUBLISHED	\N	\N	7.76000023	7.76000023	0	52.3600006	1000	182	481	1	2026-03-17 03:00:00+03	2021-03-23 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:19.043344+03	2018-09-25 17:54:19.043344+03	106440	10.5	1
679	bond	RU000A0JWBN0	Дельта17ИП	КБ ДельтаКредит АО обл.17-ИП	\N	DeltaCredit CB 17-IP	deltacredit cb 	RU000A0JWBN0	RUB	\N	\N	PUBLISHED	\N	\N	7.86000013	7.86000013	25.1900005	26.6399994	1000	92	328	1	2019-03-30 03:00:00+03	1970-01-01 03:00:00+03	2018-09-30 03:00:00+03	2018-09-25 17:54:19.055195+03	2018-09-25 17:54:19.055195+03	101450	10.5699997	1
680	bond	RU000A0JWBP5	ПКТ 03	АО "ПКТ" обл. 03	\N	FCT 03	fct 	RU000A0JWBP5	RUB	\N	\N	PUBLISHED	\N	\N	9.97999954	9.97999954	61.9900017	62.3300018	1000	182	464	1	2026-03-18 03:00:00+03	2021-03-24 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:19.067113+03	2018-09-25 17:54:19.067113+03	105990	12.5	1
681	bond	RU000A0JWC25	ИА ТКБ-2 А	ИА ТКБ-2 ООО класс "А"	\N	Ipotechny agent TKB-2 A	ipotechny agent tkb	RU000A0JWC25	RUB	\N	\N	PUBLISHED	\N	\N	-21.6399994	-21.6399994	5.1500001	11.29	407.019989	92	482	1	2047-02-14 03:00:00+03	2018-11-14 03:00:00+03	2018-11-14 03:00:00+03	2018-09-25 17:54:19.079061+03	2018-09-25 17:54:19.079061+03	0	11	1
682	bond	RU000A0JWC66	ЭлемЛизБО4	Элемент Лизинг ООО обл.БО-04	\N	Element Lizing BO- 04	element lizing bo	RU000A0JWC66	RUB	\N	\N	PUBLISHED	\N	\N	19.9899998	19.9899998	0.0199999996	0.0199999996	1000	91	337	1	2021-03-30 03:00:00+03	2019-04-02 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:19.095528+03	2018-09-25 17:54:19.095528+03	0	0.00999999978	1
683	bond	RU000A0JWC74	ИНГБ-БО1	ИНГ БАНК (ЕВРАЗИЯ) АО БО-01	\N	ING Bank BO-01	ing bank bo	RU000A0JWC74	RUB	\N	\N	PUBLISHED	\N	\N	7.80999994	7.80999994	16.4500008	17.8299999	1000	91	411	1	2021-03-30 03:00:00+03	1970-01-01 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:19.115702+03	2018-09-25 17:54:19.115702+03	0	7.1500001	1
684	bond	RU000A0JWC82	РЖД БО-07	"Российские ЖД" ОАО БО-07	\N	RZhD BO-07	rzhd bo	RU000A0JWC82	RUB	\N	\N	PUBLISHED	\N	\N	8.18000031	8.18000031	49.0999985	51.3600006	1000	182	256	1	2026-03-25 03:00:00+03	2020-04-01 03:00:00+03	2018-10-03 03:00:00+03	2018-09-25 17:54:19.131633+03	2018-09-25 17:54:19.131633+03	0	10.3000002	1
685	bond	RU000A0JWCB3	РусГидрБП4	РусГидро (ПАО) БО-П04	\N	RusHydro BO-P04	rushydro bo	RU000A0JWCB3	RUB	\N	\N	PUBLISHED	\N	\N	7.34000015	7.34000015	49.0600014	51.6100006	1000	182	483	1	2019-04-04 03:00:00+03	1970-01-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:19.147168+03	2018-09-25 17:54:19.147168+03	101580	10.3500004	1
686	bond	RU000A0JWCK4	О'КЕЙ-Б06	"О'КЕЙ" ООО БО-06	\N	O'KEY OOO BO-06	o'key ooo bo	RU000A0JWCK4	RUB	\N	\N	PUBLISHED	\N	\N	-10.2700005	-10.2700005	53.8499985	58.3400002	1000	182	281	1	2021-04-06 03:00:00+03	2018-10-09 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:19.162425+03	2018-09-25 17:54:19.162425+03	100890	11.6999998	1
687	bond	RU000A0JWCL2	АльфаБО-12	Альфа-Банк АО обл. БО-12	\N	Alfa-Bank BO-12	alfa-bank bo	RU000A0JWCL2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	30.7000008	33.8400002	1000	183	307	1	2019-04-12 03:00:00+03	1970-01-01 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:19.174995+03	2018-09-25 17:54:19.174995+03	98800	6.75	1
688	bond	RU000A0JWCM0	ТМК БО-5	"Трубная Мет.Комп." ОАО БО-05	\N	TMK BO-05	tmk bo	RU000A0JWCM0	RUB	\N	\N	PUBLISHED	\N	\N	8.60999966	8.60999966	59.4799995	64.8199997	1000	182	484	1	2026-04-01 03:00:00+03	2019-04-10 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:19.186903+03	2018-09-25 17:54:19.186903+03	102350	13	1
689	bond	RU000A0JWCP3	ДиджИнвБ04	ООО "Диджитал Инвест" БО-04	\N	Digital Invest BO-04	digital invest bo	RU000A0JWCP3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	445	1	2021-04-07 03:00:00+03	1970-01-01 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:19.198702+03	2018-09-25 17:54:19.198702+03	0	0	1
690	bond	RU000A0JWCU3	ДиджИнвБ05	ООО "Диджитал Инвест" БО-05	\N	Digital Invest BO-05	digital invest bo	RU000A0JWCU3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	445	1	2021-04-08 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:19.210855+03	2018-09-25 17:54:19.210855+03	0	0	1
691	bond	RU000A0JWCW9	ИнДевелБО1	ПАО "ИНВЕСТ-ДЕВЕЛОПМЕНТ" БО-01	\N	PAO INVEST-DEVELOPMENT BO-01	pao invest-development bo	RU000A0JWCW9	RUB	\N	\N	PUBLISHED	\N	\N	15.5200005	15.5200005	68.2200012	74.7900009	1000	182	485	1	2026-04-02 03:00:00+03	2019-04-11 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:19.222709+03	2018-09-25 17:54:19.222709+03	0	15	1
692	bond	RU000A0JWD57	РЖД БО-05	"Российские ЖД" ОАО БО-05	\N	RZhD BO-05	rzhd bo	RU000A0JWD57	RUB	\N	\N	PUBLISHED	\N	\N	0	0	46.5600014	51.3600006	1000	182	256	1	2026-04-03 03:00:00+03	2023-04-07 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:19.23924+03	2018-09-25 17:54:19.23924+03	0	10.3000002	1
693	bond	RU000A0JWD65	ДиджИнвБ06	ООО "Диджитал Инвест" БО-06	\N	Digital Invest BO-06	digital invest bo	RU000A0JWD65	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	445	1	2021-04-09 03:00:00+03	1970-01-01 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:19.254465+03	2018-09-25 17:54:19.254465+03	0	0	1
694	bond	RU000A0JWD73	ДиджИнвБ07	ООО "Диджитал Инвест" БО-07	\N	Digital Invest BO-07	digital invest bo	RU000A0JWD73	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	445	1	2021-04-09 03:00:00+03	1970-01-01 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:19.266519+03	2018-09-25 17:54:19.266519+03	0	0	1
695	bond	RU000A0JWDA3	ОДК 02	АО "Объед.двигателестр.корп"02	\N	AO "Ob`ed.dvigatelestr.corp"02	ao "	RU000A0JWDA3	RUB	\N	\N	PUBLISHED	\N	\N	8.71000004	8.71000004	40.2599983	43.8800011	1000	182	486	1	2023-04-17 03:00:00+03	1970-01-01 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:19.27853+03	2018-09-25 17:54:19.27853+03	101000	8.80000019	1
696	bond	RU000A0JWDB1	ОДК 03	АО "Объед.двигателестр.корп"03	\N	AO "Ob`ed.dvigatelestr.corp"03	ao "	RU000A0JWDB1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	29.9300003	57.3400002	1000	182	486	1	2024-06-26 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:19.29335+03	2018-09-25 17:54:19.29335+03	0	11.5	1
697	bond	RU000A0JWDC9	ОДК 04	АО "Объед.двигателестр.корп"04	\N	AO "Ob`ed.dvigatelestr.corp"04	ao "	RU000A0JWDC9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	36.1599998	39.8899994	1000	182	486	1	2020-04-24 03:00:00+03	1970-01-01 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:19.305834+03	2018-09-25 17:54:19.305834+03	0	8	1
698	bond	RU000A0JWDN6	РУСАЛБрБ01	РУСАЛ Братский алюм. з-д БО-01	\N	RUSAL Bratsk BO-01	rusal bratsk bo	RU000A0JWDN6	RUB	\N	\N	PUBLISHED	\N	\N	10.7799997	10.7799997	56.6800003	64.0699997	1000	182	487	1	2026-04-07 03:00:00+03	2019-04-16 03:00:00+03	2018-10-16 03:00:00+03	2018-09-25 17:54:19.317796+03	2018-09-25 17:54:19.317796+03	101220	12.8500004	1
699	bond	RU000A0JWDU1	ЕврХимБ1Р1	ЕвроХим МХК АО БО-001Р-01	\N	EvroHim MHK AO BO-001-P01	evrohim mhk ao bo	RU000A0JWDU1	RUB	\N	\N	PUBLISHED	\N	\N	8.14999962	8.14999962	46.1800003	53.1500015	1000	183	488	1	2019-04-19 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:19.329804+03	2018-09-25 17:54:19.329804+03	101400	10.6000004	1
700	bond	RU000A0JWE56	ГПБ БО-22	ГПБ (АО) БО-22	\N	Gazprombank BO-22	gazprombank bo	RU000A0JWE56	RUB	\N	\N	PUBLISHED	\N	\N	7.88000011	7.88000011	35.2700005	41.1100006	1000	183	285	1	2019-04-21 03:00:00+03	1970-01-01 03:00:00+03	2018-10-21 03:00:00+03	2018-09-25 17:54:19.341573+03	2018-09-25 17:54:19.341573+03	0	8.19999981	1
701	bond	RU000A0JWE72	РегИнв Б03	РЕГИОН-ИНВЕСТ ООО БО-03	\N	REGION-INVEST BO-03 obl.	region-invest bo	RU000A0JWE72	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	420	1	2021-04-15 03:00:00+03	1970-01-01 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:19.353538+03	2018-09-25 17:54:19.353538+03	0	0	1
702	bond	RU000A0JWEB9	ТранснфБО5	Транснефть ПАО БО- 05	\N	Transneft BO-05	transneft bo	RU000A0JWEB9	RUB	\N	\N	PUBLISHED	\N	\N	7.17999983	7.17999983	44	50.3600006	1000	182	489	1	2026-04-09 03:00:00+03	2021-04-15 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:19.370005+03	2018-09-25 17:54:19.370005+03	0	10.1000004	1
703	bond	RU000A0JWEG8	ТрансФБО43	ТрансФин-М ПАО БО-43	\N	TransFin-M BO-43	transfin-m bo	RU000A0JWEG8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	36.0999985	42.3800011	1000	182	332	1	2026-04-13 03:00:00+03	2019-04-22 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:19.381484+03	2018-09-25 17:54:19.381484+03	0	8.5	1
704	bond	RU000A0JWEK0	КаркадеБ02	Каркаде ООО БО-02	\N	Carcade BO-02	carcade bo	RU000A0JWEK0	RUB	\N	\N	PUBLISHED	\N	\N	12.3100004	12.3100004	4.0999999	5.82999992	253	91	490	1	2019-04-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:19.393344+03	2018-09-25 17:54:19.393344+03	25097.5996	9.25	1
705	bond	RU000A0JWEP9	РегИнв Б04	РЕГИОН-ИНВЕСТ ООО БО-04	\N	REGION-INVEST BO-04 obl.	region-invest bo	RU000A0JWEP9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	36.6500015	1000	182	420	1	2021-04-19 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:19.405426+03	2018-09-25 17:54:19.405426+03	0	7.3499999	1
706	bond	RU000A0JWES3	РегИнв Б05	РЕГИОН-ИНВЕСТ ООО БО-05	\N	REGION-INVEST BO-05 obl.	region-invest bo	RU000A0JWES3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	420	1	2021-04-20 03:00:00+03	1970-01-01 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:19.422189+03	2018-09-25 17:54:19.422189+03	0	0	1
707	bond	RU000A0JWEU9	ПромсвбБП1	Промсвязьбанк ПАО БО-П01	\N	Promsvyazbank PAO BO-P01	promsvyazbank pao bo	RU000A0JWEU9	RUB	\N	\N	PUBLISHED	\N	\N	9.93000031	9.93000031	43.0999985	50.6100006	1000	182	363	1	2021-04-19 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:19.433204+03	2018-09-25 17:54:19.433204+03	101000	10.1499996	1
708	bond	RU000A0JWEZ8	МОЭСК БО-8	ПАО "МОЭСК" БО-08	\N	MOESK BO-08	moesk bo	RU000A0JWEZ8	RUB	\N	\N	PUBLISHED	\N	\N	8.27999973	8.27999973	42.8899994	51.3600006	1000	182	361	1	2026-04-16 03:00:00+03	2019-04-25 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:19.445301+03	2018-09-25 17:54:19.445301+03	0	10.3000002	1
709	bond	RU000A0JWF22	МиратФБО-6	ООО "Мираторг Финанс" БО-06	\N	Miratorg Finans BO-06	miratorg finans bo	RU000A0JWF22	RUB	\N	\N	PUBLISHED	\N	\N	9.10999966	9.10999966	49.6399994	59.8400002	1000	182	491	1	2021-04-23 03:00:00+03	2019-04-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:19.457033+03	2018-09-25 17:54:19.457033+03	101700	12	1
710	bond	RU000A0JWF30	ИАМлтор1А4	ИАМультиоригинаторный 1 кл.А/4	\N	IA Multi Originator 1 cl.A/4	ia multi originator 	RU000A0JWF30	RUB	\N	\N	PUBLISHED	\N	\N	-32.1399994	-32.1399994	6.30000019	14.8699999	536.23999	92	399	1	2045-11-17 03:00:00+03	2018-11-17 03:00:00+03	2018-11-17 03:00:00+03	2018-09-25 17:54:19.469093+03	2018-09-25 17:54:19.469093+03	0	11	1
711	bond	RU000A0JWF71	АбсолютБC1	Абсолют Банк АКБ (ПАО) C01	\N	Absolut Bank C01	absolut bank c	RU000A0JWF71	RUB	\N	\N	PUBLISHED	\N	\N	15.0100002	15.0100002	59.9900017	72.3000031	1000	182	492	1	2021-10-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:19.483151+03	2018-09-25 17:54:19.483151+03	0	14.5	1
712	bond	RU000A0JWFE0	БелугаБО-5	Белуга Групп ПАО БО-05	\N	Beluga Group BO-05	beluga group bo	RU000A0JWFE0	RUB	\N	\N	PUBLISHED	\N	\N	8.77000046	8.77000046	38.7000008	48.2400017	750	182	413	1	2020-04-29 03:00:00+03	1970-01-01 03:00:00+03	2018-10-31 03:00:00+03	2018-09-25 17:54:19.50175+03	2018-09-25 17:54:19.50175+03	0	12.8999996	1
713	bond	RU000A0JWG05	ИКС5ФинБО6	ИКС 5 ФИНАНС ООО БО-06	\N	X5 FINANCE BO-06	 finance bo	RU000A0JWG05	RUB	\N	\N	PUBLISHED	\N	\N	7.73000002	7.73000002	31.5799999	39.6399994	1000	182	493	1	2023-04-27 03:00:00+03	2019-05-02 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:19.513574+03	2018-09-25 17:54:19.513574+03	0	7.94999981	1
714	bond	RU000A0JWG88	РегИнв Б06	РЕГИОН-ИНВЕСТ ООО БО-06	\N	REGION-INVEST BO-06 obl.	region-invest bo	RU000A0JWG88	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	420	1	2021-05-04 03:00:00+03	1970-01-01 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:19.530367+03	2018-09-25 17:54:19.530367+03	0	0	1
715	bond	RU000A0JWG96	ВЭБ ПБО1Р2	Внешэкономбанк ПБО-001Р-02	\N	Vneshekonombank PBO-001P-02	vneshekonombank pbo	RU000A0JWG96	RUB	\N	\N	PUBLISHED	\N	\N	8.57999992	8.57999992	15.8299999	27.1800003	1000	91	473	1	2019-05-03 03:00:00+03	1970-01-01 03:00:00+03	2018-11-02 03:00:00+03	2018-09-25 17:54:19.542239+03	2018-09-25 17:54:19.542239+03	101500	10.8999996	1
716	bond	RU000A0JWGC2	БашнфтБО6	ПАО "АНК "Башнефть" БО-06	\N	Bashneft ANK BO-06	bashneft ank bo	RU000A0JWGC2	RUB	\N	\N	PUBLISHED	\N	\N	9.44999981	9.44999981	41.5099983	54.3499985	1000	182	336	1	2026-04-29 03:00:00+03	2025-04-30 03:00:00+03	2018-11-07 03:00:00+03	2018-09-25 17:54:19.563758+03	2018-09-25 17:54:19.563758+03	0	10.8999996	1
717	bond	RU000A0JWGD0	БашнфтБО8	ПАО "АНК "Башнефть" БО-08	\N	Bashneft ANK BO-08	bashneft ank bo	RU000A0JWGD0	RUB	\N	\N	PUBLISHED	\N	\N	8.73999977	8.73999977	41.5099983	54.3499985	1000	182	336	1	2026-04-29 03:00:00+03	2025-04-30 03:00:00+03	2018-11-07 03:00:00+03	2018-09-25 17:54:19.57818+03	2018-09-25 17:54:19.57818+03	0	10.8999996	1
718	bond	RU000A0JWGG3	МегафонБ1P	МегаФон ПАО БО-001P-01	\N	Megafon BO-001P-01	megafon bo	RU000A0JWGG3	RUB	\N	\N	PUBLISHED	\N	\N	6.67999983	6.67999983	37.6199989	49.6100006	1000	182	494	1	2019-05-09 03:00:00+03	1970-01-01 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:19.594058+03	2018-09-25 17:54:19.594058+03	0	9.94999981	1
719	bond	RU000A0JWGS8	ДельтКрБ20	КБ ДельтаКредит АО БО-20	\N	DeltaCredit CB BO-20	deltacredit cb bo	RU000A0JWGS8	RUB	\N	\N	PUBLISHED	\N	\N	8.27999973	8.27999973	39.1800003	55.4500008	1000	184	238	1	2026-05-18 03:00:00+03	2019-05-18 03:00:00+03	2018-11-18 03:00:00+03	2018-09-25 17:54:19.605999+03	2018-09-25 17:54:19.605999+03	0	11	1
720	bond	RU000A0JWGT6	Якут-08 об	Республика Саха (Якутия) об.08	\N	Sakha (Yakutia)-08	sakha (	RU000A0JWGT6	RUB	\N	\N	PUBLISHED	\N	\N	8.35999966	8.35999966	11.5600004	25.6499996	1000	91	347	1	2021-05-18 03:00:00+03	1970-01-01 03:00:00+03	2018-11-14 03:00:00+03	2018-09-25 17:54:19.639337+03	2018-09-25 17:54:19.639337+03	0	10.29	1
721	bond	RU000A0JWGV2	ПочтаРосБ2	Почта России (ФГУП) БО-02	\N	Russian Post BO-02	russian post bo	RU000A0JWGV2	RUB	\N	\N	PUBLISHED	\N	\N	7.19999981	7.19999981	35.8899994	49.8600006	1000	182	495	1	2026-05-07 03:00:00+03	2019-05-16 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:19.661288+03	2018-09-25 17:54:19.661288+03	0	10	1
722	bond	RU000A0JWGW0	КонцесВ 02	Концессии водоснабжения ООО 02	\N	Koncessii vodosnabjeniya 02	koncessii vodosnabjeniya 	RU000A0JWGW0	RUB	\N	\N	PUBLISHED	\N	\N	10.0600004	10.0600004	36.5099983	102.220001	1000	364	462	1	2031-03-17 03:00:00+03	2019-05-17 03:00:00+03	2019-05-17 03:00:00+03	2018-09-25 17:54:19.675282+03	2018-09-25 17:54:19.675282+03	0	10.25	1
723	bond	RU000A0JWH46	СберБ БО18	Сбербанк ПАО БО-18	\N	Sberbank PAO BO-18	sberbank pao bo	RU000A0JWH46	RUB	\N	\N	PUBLISHED	\N	\N	7.44999981	7.44999981	33.6300011	49.9099998	1000	184	496	1	2021-05-24 03:00:00+03	2019-05-24 03:00:00+03	2018-11-24 03:00:00+03	2018-09-25 17:54:19.689194+03	2018-09-25 17:54:19.689194+03	101620	9.89999962	1
724	bond	RU000A0JWH87	БашнфтБО2	ПАО "АНК "Башнефть" БО-02	\N	Bashneft ANK BO-02	bashneft ank bo	RU000A0JWH87	RUB	\N	\N	PUBLISHED	\N	\N	0	0	36.25	52.3600006	1000	182	336	1	2026-05-12 03:00:00+03	2023-05-16 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:19.700944+03	2018-09-25 17:54:19.700944+03	0	10.5	1
726	bond	RU000A0JWHN7	ЯрОбл 2016	Ярославская обл. об.2016г.	\N	Yaroslavl region 2016	yaroslavl region 	RU000A0JWHN7	RUB	\N	\N	PUBLISHED	\N	\N	8.68999958	8.68999958	8.77000046	24.9300003	1000	91	346	1	2023-05-19 03:00:00+03	1970-01-01 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:19.73033+03	2018-09-25 17:54:19.73033+03	104000	10	1
727	bond	RU000A0JWHT4	РосбанкБ14	РОСБАНК ПАО обл. БО-14	\N	Rosbank BO-14	rosbank bo	RU000A0JWHT4	RUB	\N	\N	PUBLISHED	\N	\N	7.73999977	7.73999977	34.4799995	52.4300003	1000	184	498	1	2026-05-27 03:00:00+03	2018-11-27 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:19.749226+03	2018-09-25 17:54:19.749226+03	0	10.3999996	1
728	bond	RU000A0JWHU2	РЖД БО-17	"Российские ЖД" ОАО БО-17	\N	RZD BO-17	rzd bo	RU000A0JWHU2	RUB	\N	\N	PUBLISHED	\N	\N	7.57000017	7.57000017	33.1899986	49.1199989	1000	182	499	1	2041-04-26 03:00:00+03	2031-05-09 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:19.762649+03	2018-09-25 17:54:19.762649+03	0	9.85000038	1
729	bond	RU000A0JWHW8	Новсиб 8об	Новосибирск  мун.обл. 2016	\N	Novosibirsk 8	novosibirsk 	RU000A0JWHW8	RUB	\N	\N	PUBLISHED	\N	\N	8.26000023	8.26000023	17.8600006	21.8799992	900	87	266	1	2026-05-28 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:19.777616+03	2018-09-25 17:54:19.777616+03	96750	10.1999998	1
730	bond	RU000A0JWJF9	УпрОтходБ1	Управление отходами АО БО-01	\N	Upravlenie othodami BO-01	upravlenie othodami bo	RU000A0JWJF9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	17.4699993	43.4000015	1084.19995	365	500	1	2027-04-29 03:00:00+03	1970-01-01 03:00:00+03	2019-05-01 03:00:00+03	2018-09-25 17:54:19.788718+03	2018-09-25 17:54:19.788718+03	0	4	1
731	bond	RU000A0JWJQ6	СтруктИнв1	Структурные инвестиции КСН 01	\N	Structured investments SPC 01	structured investments spc 	RU000A0JWJQ6	RUB	\N	\N	PUBLISHED	\N	\N	8.56000042	8.56000042	23123.2891	72493.1484	100000000	2646	501	1	2023-09-01 03:00:00+03	1970-01-01 03:00:00+03	2023-09-01 03:00:00+03	2018-09-25 17:54:19.800436+03	2018-09-25 17:54:19.800436+03	0	0.00999999978	1
732	bond	RU000A0JWJX2	МОЭСК БО-5	ПАО "МОЭСК" БО-05	\N	MOESK BO-05	moesk bo	RU000A0JWJX2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	30.6800003	49.8600006	1000	182	361	1	2026-05-26 03:00:00+03	2019-06-04 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:19.812328+03	2018-09-25 17:54:19.812328+03	0	10	1
733	bond	RU000A0JWK41	ГазпрнефБ3	"Газпром нефть" ПАО БО-03	\N	Gazprom Neft BO-3	gazprom neft bo	RU000A0JWK41	RUB	\N	\N	PUBLISHED	\N	\N	8.97000027	8.97000027	29.5300007	48.8699989	1000	182	502	1	2046-05-03 03:00:00+03	2019-06-06 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:19.82417+03	2018-09-25 17:54:19.82417+03	0	9.80000019	1
734	bond	RU000A0JWK58	ЕврфинМНБ1	ЕВРОФИНАНС МОСНАРБАНК АКБ 01	\N	Evrofinance Mosnarbank 01	evrofinance mosnarbank 	RU000A0JWK58	RUB	\N	\N	PUBLISHED	\N	\N	10.3500004	10.3500004	30.8899994	51.1100006	1000	182	503	1	2021-06-03 03:00:00+03	2018-12-06 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:19.836311+03	2018-09-25 17:54:19.836311+03	0	10.25	1
735	bond	RU000A0JWK66	ПионерБО2	Группа Компаний Пионер БО-02.	\N	GK Pioner AO BO-02	gk pioner ao bo	RU000A0JWK66	RUB	\N	\N	PUBLISHED	\N	\N	8.65999985	8.65999985	0.00999999978	0.0199999996	1000	91	504	1	2021-06-03 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:19.848205+03	2018-09-25 17:54:19.848205+03	0	0.00999999978	1
736	bond	RU000A0JWK74	ОДК 01	АО "Объед.двигателестр.корп"01	\N	AO "Ob`ed.dvigatelestr.corp"01	ao "	RU000A0JWK74	RUB	\N	\N	PUBLISHED	\N	\N	8.72999954	8.72999954	32.0999985	53.5999985	1000	182	486	1	2026-06-10 03:00:00+03	1970-01-01 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:19.863705+03	2018-09-25 17:54:19.863705+03	112250	10.75	1
737	bond	RU000A0JWK82	iУОМЗ БО-1	УОМЗ ПО АО БО-01	\N	UOMP PO BO-01	uomp po bo	RU000A0JWK82	RUB	\N	\N	PUBLISHED	\N	\N	9.86999989	9.86999989	39.1199989	65.3199997	1000	182	505	1	2019-06-07 03:00:00+03	1970-01-01 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:19.876307+03	2018-09-25 17:54:19.876307+03	102250	13.1000004	1
738	bond	RU000A0JWK90	ТрнфБО1P1	Транснефть ПАО БО-001P-01	\N	Transneft BO-01-001P	transneft bo	RU000A0JWK90	RUB	\N	\N	PUBLISHED	\N	\N	8.77999973	8.77999973	29.5599995	49.3600006	1000	182	489	1	2023-06-02 03:00:00+03	1970-01-01 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:19.887869+03	2018-09-25 17:54:19.887869+03	104940	9.89999962	1
739	bond	RU000A0JWKA8	МегафнБ1P2	МегаФон ПАО БО-001P-02	\N	Megafon BO-001P-02	megafon bo	RU000A0JWKA8	RUB	\N	\N	PUBLISHED	\N	\N	7.53999996	7.53999996	4.88000011	24.6800003	1000	91	494	1	2026-05-29 03:00:00+03	2021-06-04 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:19.899726+03	2018-09-25 17:54:19.899726+03	0	9.89999962	1
740	bond	RU000A0JWKB6	БелгОб2016	Белгородская обл.2016 обл.	\N	Belgorodskaya obl. 2016	belgorodskaya obl.	RU000A0JWKB6	RUB	\N	\N	PUBLISHED	\N	\N	6.23999977	6.23999977	3.75999999	24.4599991	1000	91	268	1	2021-06-08 03:00:00+03	1970-01-01 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:19.911712+03	2018-09-25 17:54:19.911712+03	0	9.81000042	1
741	bond	RU000A0JWKL5	ЯмалСтИн 1	ЯмалСтройИнвест ООО 01	\N	YamalStroyInvest 01	yamalstroyinvest 	RU000A0JWKL5	RUB	\N	\N	PUBLISHED	\N	\N	6.96000004	6.96000004	35.1399994	35.5299988	1000	91	506	1	2021-04-24 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:19.924333+03	2018-09-25 17:54:19.924333+03	0	14.25	1
742	bond	RU000A0JWKN1	ФПК 01	ФедеральнаяПассажирКомпания 01	\N	FPC 01	fpc 	RU000A0JWKN1	RUB	\N	\N	PUBLISHED	\N	\N	6.84000015	6.84000015	28.0799999	49.6100006	1000	182	507	1	2026-06-04 03:00:00+03	2019-06-13 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:19.935801+03	2018-09-25 17:54:19.935801+03	0	9.94999981	1
743	bond	RU000A0JWKP6	ИА Вега2 А	ИА Вега-2 класс А	\N	MA Vega-2 class A	ma vega	RU000A0JWKP6	RUB	\N	\N	PUBLISHED	\N	\N	-43.8499985	-43.8499985	3.30999994	3.42000008	374.109985	31	508	1	2040-08-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:19.947815+03	2018-09-25 17:54:19.947815+03	0	10.75	1
744	bond	RU000A0JWKQ4	ИА Вега1 А	ИА Вега-1 класс А	\N	MA Vega-1 class A	ma vega	RU000A0JWKQ4	RUB	\N	\N	PUBLISHED	\N	\N	-33.3400002	-33.3400002	3.46000004	3.57999992	391.579987	31	508	1	2041-06-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:19.960581+03	2018-09-25 17:54:19.960581+03	0	10.75	1
745	bond	RU000A0JWL32	БКЕ Б-1P-1	БуроваяКомп Евразия БО-001P-1	\N	BurovayaKomp Evrazia B-001P-1	burovayakomp evrazia b	RU000A0JWL32	RUB	\N	\N	PUBLISHED	\N	\N	8.97000027	8.97000027	26.9599991	51.3899994	1000	183	509	1	2019-06-21 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:19.971767+03	2018-09-25 17:54:19.971767+03	101000	10.25	1
746	bond	RU000A0JWLD0	НижгорОб11	Нижегородская обл. 35011	\N	Nizhniy Novgorod reg. 11	nizhniy novgorod reg.	RU000A0JWLD0	RUB	\N	\N	PUBLISHED	\N	\N	8.51000023	8.51000023	19.3799992	25.5499992	1000	91	270	1	2023-06-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-17 03:00:00+03	2018-09-25 17:54:20.058456+03	2018-09-25 17:54:20.058456+03	105920	10.25	1
747	bond	RU000A0JWLE8	ИАМетинв1А	ИА Металлинвест-1 об. кл.А	\N	MA Metallinvest-1 cl.A	ma metallinvest	RU000A0JWLE8	RUB	\N	\N	PUBLISHED	\N	\N	3.3900001	3.3900001	3.30999994	10.8800001	421.130005	92	510	1	2046-08-28 03:00:00+03	2018-11-28 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:20.074609+03	2018-09-25 17:54:20.074609+03	0	10.25	1
748	bond	RU000A0JWLG3	ЛнССМУБ1P1	АО ЭталонЛенСпецСМУ БО-001P-01	\N	LenSpecSMU BO-001P-01	lenspecsmu bo	RU000A0JWLG3	RUB	\N	\N	PUBLISHED	\N	\N	9.94999981	9.94999981	1.62	29.5400009	1000	91	511	1	2021-06-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:20.088326+03	2018-09-25 17:54:20.088326+03	103530	11.8500004	1
749	bond	RU000A0JWLJ7	РСГ-ФинБ10	РСГ-Финанс ООО обл. БО-10	\N	RSG-Finance BO-10	rsg-finance bo	RU000A0JWLJ7	RUB	\N	\N	PUBLISHED	\N	\N	13.1000004	13.1000004	37.7400017	72.3000031	1000	182	300	1	2021-06-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:20.10105+03	2018-09-25 17:54:20.10105+03	104000	14.5	1
750	bond	RU000A0JWLU4	РЖД-42 обл	"Российские ЖД" ОАО 42 обл.	\N	RZD 42	rzd 	RU000A0JWLU4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	24.1800003	48.3699989	1000	182	450	1	2046-05-22 03:00:00+03	2026-06-16 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:20.116297+03	2018-09-25 17:54:20.116297+03	0	9.69999981	1
751	bond	RU000A0JWLW0	ТрансФБО27	ТрансФин-М ПАО БО-27	\N	TransFin-M BO-27	transfin-m bo	RU000A0JWLW0	RUB	\N	\N	PUBLISHED	\N	\N	-1.38	-1.38	23.4200001	47.3699989	1000	182	332	1	2021-06-23 03:00:00+03	2019-06-26 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:20.128803+03	2018-09-25 17:54:20.128803+03	0	9.5	1
752	bond	RU000A0JWM15	ПЕРЕСВ БП5	АКБ АО "ПЕРЕСВЕТ" БО-П05	\N	AKB AO "PERESVET" BO-P05	akb ao "	RU000A0JWM15	RUB	\N	\N	PUBLISHED	\N	\N	9.89000034	9.89000034	6.34000015	96.6299973	1000	6916	357	1	2036-06-04 03:00:00+03	1970-01-01 03:00:00+03	2036-06-04 03:00:00+03	2018-09-25 17:54:20.145789+03	2018-09-25 17:54:20.145789+03	0	0.50999999	1
753	bond	RU000A0JWM31	ТинькоффБ7	АО "Тинькофф Банк" БО-07	\N	Tinkoff Bank BO-07	tinkoff bank bo	RU000A0JWM31	RUB	\N	\N	PUBLISHED	\N	\N	8.92000008	8.92000008	20.7299995	42.3800011	1000	182	512	1	2021-06-24 03:00:00+03	2018-12-27 03:00:00+03	2018-12-27 03:00:00+03	2018-09-25 17:54:20.160159+03	2018-09-25 17:54:20.160159+03	99920	8.5	1
754	bond	RU000A0JWM49	АВТОБАН-Ф1	АВТОБАН-Финанс АО об. 01	\N	AVTOBAN-Finance 01	avtoban-finance 	RU000A0JWM49	RUB	\N	\N	PUBLISHED	\N	\N	10.0299997	10.0299997	34.1399994	69.8099976	1000	182	513	1	2021-06-24 03:00:00+03	2019-06-27 03:00:00+03	2018-12-27 03:00:00+03	2018-09-25 17:54:20.18001+03	2018-09-25 17:54:20.18001+03	0	14	1
755	bond	RU000A0JWM56	СамарОбл12	Самарская область 2016	\N	Samara reg.-12	samara reg.	RU000A0JWM56	RUB	\N	\N	PUBLISHED	\N	\N	8.93999958	8.93999958	23.2399998	24.0300007	1000	91	269	1	2024-06-21 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:20.19988+03	2018-09-25 17:54:20.19988+03	103500	9.64000034	1
756	bond	RU000A0JWMJ5	РН БАНК 01	РН БАНК АО об. 01	\N	RN Bank 01	rn bank 	RU000A0JWMJ5	RUB	\N	\N	PUBLISHED	\N	\N	8.56000042	8.56000042	17.3199997	39.6100006	1000	183	514	1	2021-07-09 03:00:00+03	2020-01-07 03:00:00+03	2019-01-06 03:00:00+03	2018-09-25 17:54:20.224049+03	2018-09-25 17:54:20.224049+03	0	7.9000001	1
757	bond	RU000A0JWMM9	ТелХолПБО1	АО "ЭР-Телеком Холдинг" ПБО-01	\N	AO "ER-Telekom Holding"	ao "	RU000A0JWMM9	RUB	\N	\N	PUBLISHED	\N	\N	9.48999977	9.48999977	28.9899998	63.5800018	1000	182	486	1	2019-07-03 03:00:00+03	1970-01-01 03:00:00+03	2019-01-02 03:00:00+03	2018-09-25 17:54:20.240154+03	2018-09-25 17:54:20.240154+03	0	12.75	1
758	bond	RU000A0JWMS6	ТрнфБО1P2	Транснефть ПАО БО-001P-02	\N	Transneft BO-001-P02	transneft bo	RU000A0JWMS6	RUB	\N	\N	PUBLISHED	\N	\N	7.32999992	7.32999992	21.4200001	48.1199989	1000	182	489	1	2023-06-30 03:00:00+03	1970-01-01 03:00:00+03	2019-01-04 03:00:00+03	2018-09-25 17:54:20.257815+03	2018-09-25 17:54:20.257815+03	0	9.64999962	1
759	bond	RU000A0JWMT4	ФолксвБ 10	Фольксваген Банк РУС об. 10	\N	Volkswagen Bank RUS ob. 10	volkswagen bank rus ob.	RU000A0JWMT4	RUB	\N	\N	PUBLISHED	\N	\N	7.28000021	7.28000021	19.8999996	49.8899994	1000	183	515	1	2021-07-16 03:00:00+03	2019-01-13 03:00:00+03	2019-01-13 03:00:00+03	2018-09-25 17:54:20.271449+03	2018-09-25 17:54:20.271449+03	0	9.94999981	1
760	bond	RU000A0JWMZ1	РСХБ 06Т1	"Россельхозбанк" (АО) обл.06Т1	\N	Rosselkhozbank 06T1	rosselkhozbank 	RU000A0JWMZ1	RUB	\N	\N	PUBLISHED	\N	\N	9.26000023	9.26000023	29.3999996	72.3000031	1000	182	516	1	1970-01-01 03:00:00+03	2026-07-03 03:00:00+03	2019-01-11 03:00:00+03	2018-09-25 17:54:20.288493+03	2018-09-25 17:54:20.288493+03	0	14.5	1
761	bond	RU000A0JWN22	РСХБ 07Т1	"Россельхозбанк" (АО) обл.07Т1	\N	Rosselkhozbank 07T1	rosselkhozbank 	RU000A0JWN22	RUB	\N	\N	PUBLISHED	\N	\N	9.26000023	9.26000023	28.2099991	72.3000031	1000	182	516	1	1970-01-01 03:00:00+03	2026-07-06 03:00:00+03	2019-01-14 03:00:00+03	2018-09-25 17:54:20.303498+03	2018-09-25 17:54:20.303498+03	0	14.5	1
762	bond	RU000A0JWN63	МОСТРЕСТ 7	МОСТОТРЕСТ ПАО 07 обл.	\N	MOSTOTREST 07	mostotrest 	RU000A0JWN63	RUB	\N	\N	PUBLISHED	\N	\N	9.71000004	9.71000004	22.0499992	57.3400002	1000	182	517	1	2026-07-07 03:00:00+03	2019-07-16 03:00:00+03	2019-01-15 03:00:00+03	2018-09-25 17:54:20.315314+03	2018-09-25 17:54:20.315314+03	101500	11.5	1
763	bond	RU000A0JWN89	МОСТРЕСТ 8	МОСТОТРЕСТ ПАО 08 обл.	\N	MOSTOTREST 08	mostotrest 	RU000A0JWN89	RUB	\N	\N	PUBLISHED	\N	\N	9.52999973	9.52999973	14.6599998	55.5999985	1000	182	517	1	2026-07-29 03:00:00+03	2021-08-04 03:00:00+03	2019-02-06 03:00:00+03	2018-09-25 17:54:20.331649+03	2018-09-25 17:54:20.331649+03	0	11.1499996	1
764	bond	RU000A0JWNB0	ДельтКрБ26	КБ ДельтаКредит АО БО-26	\N	DeltaCredit CB BO-26	deltacredit cb bo	RU000A0JWNB0	RUB	\N	\N	PUBLISHED	\N	\N	8.25	8.25	18.6200008	51.9199982	1000	184	238	1	2026-07-21 03:00:00+03	2019-07-21 03:00:00+03	2019-01-21 03:00:00+03	2018-09-25 17:54:20.343559+03	2018-09-25 17:54:20.343559+03	0	10.3000002	1
765	bond	RU000A0JWNE4	ВЭБ ПБО1Р3	Внешэкономбанк ПБО-001Р-03 USD	\N	VneshekonombankPBO-001P-03 USD	vneshekonombankpbo	RU000A0JWNE4	RUB	\N	\N	PUBLISHED	\N	\N	6.17000008	6.17000008	604.039978	24.4300003	1000	182	518	1	2021-07-15 03:00:00+03	1970-01-01 03:00:00+03	2019-01-17 03:00:00+03	2018-09-25 17:54:20.355222+03	2018-09-25 17:54:20.355222+03	96999.7031	4.9000001	1
766	bond	RU000A0JWNJ3	ВЭБ ПБО1Р4	Внешэкономбанк ПБО-001Р-04	\N	Vneshekonombank PBO-001P-04	vneshekonombank pbo	RU000A0JWNJ3	RUB	\N	\N	PUBLISHED	\N	\N	8.36999989	8.36999989	17.5200005	50.6100006	1000	182	473	1	2019-07-23 03:00:00+03	1970-01-01 03:00:00+03	2019-01-22 03:00:00+03	2018-09-25 17:54:20.367808+03	2018-09-25 17:54:20.367808+03	101500	10.1499996	1
767	bond	RU000A0JWNK1	МОЭСК БО-6	ПАО "МОЭСК" БО-06	\N	MOESK BO-06	moesk bo	RU000A0JWNK1	RUB	\N	\N	PUBLISHED	\N	\N	8.82999992	8.82999992	16.1299992	48.1199989	1000	182	361	1	2026-07-16 03:00:00+03	2020-07-23 03:00:00+03	2019-01-24 03:00:00+03	2018-09-25 17:54:20.387501+03	2018-09-25 17:54:20.387501+03	0	9.64999962	1
768	bond	RU000A0JWNV8	СИБУРХол11	"СИБУР Холдинг"(ПАО) об.11	\N	SIBUR Holding 11	sibur holding 	RU000A0JWNV8	RUB	\N	\N	PUBLISHED	\N	\N	7.90999985	7.90999985	14.54	48.1199989	1000	182	481	1	2026-07-22 03:00:00+03	2019-07-31 03:00:00+03	2019-01-30 03:00:00+03	2018-09-25 17:54:20.403383+03	2018-09-25 17:54:20.403383+03	0	9.64999962	1
769	bond	RU000A0JWP38	ПИК БО-1	ГК ПИК (ПАО) БО-01	\N	PIK GROUP BO-1	pik group bo	RU000A0JWP38	RUB	\N	\N	PUBLISHED	\N	\N	9.82999992	9.82999992	4.26999998	64.8199997	1000	182	519	1	2026-09-03 03:00:00+03	2019-09-12 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:20.420193+03	2018-09-25 17:54:20.420193+03	103050	13	1
770	bond	RU000A0JWP46	ПИК БО-7	ГК ПИК (ПАО) БО-07	\N	PIK GROUP BO-7	pik group bo	RU000A0JWP46	RUB	\N	\N	PUBLISHED	\N	\N	9.75	9.75	18.8799992	64.8199997	1000	182	519	1	2026-07-24 03:00:00+03	2019-08-02 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:20.435133+03	2018-09-25 17:54:20.435133+03	102750	13	1
771	bond	RU000A0JWPA7	Совком БО3	Совкомбанк ПАО обл. БО-03	\N	Sovkombank B0-03	sovkombank b	RU000A0JWPA7	RUB	\N	\N	PUBLISHED	\N	\N	8.67000008	8.67000008	12.3400002	42.3800011	1000	182	318	1	2021-07-30 03:00:00+03	1970-01-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:20.458783+03	2018-09-25 17:54:20.458783+03	100000	8.5	1
772	bond	RU000A0JWPF6	РЕСОЛизБ02	РЕСО-Лизинг ООО БО-2	\N	RESO-Lizing B02	reso-lizing b	RU000A0JWPF6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	11.5100002	41.8800011	700	182	274	1	2026-07-27 03:00:00+03	2019-08-05 03:00:00+03	2019-02-04 03:00:00+03	2018-09-25 17:54:20.48704+03	2018-09-25 17:54:20.48704+03	0	12	1
773	bond	RU000A0JWPL4	ИКС5ФинБО7	ИКС 5 ФИНАНС ООО БО-07	\N	X5 FINANCE BO-07	 finance bo	RU000A0JWPL4	RUB	\N	\N	PUBLISHED	\N	\N	8.73999977	8.73999977	13.0900002	48.6199989	1000	182	493	1	2023-08-01 03:00:00+03	2019-02-05 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:20.528324+03	2018-09-25 17:54:20.528324+03	0	9.75	1
774	bond	RU000A0JWPV3	АльфаБО-16	Альфа-Банк АО обл. БО-16	\N	Alfa-Bank BO-16	alfa-bank bo	RU000A0JWPV3	RUB	\N	\N	PUBLISHED	\N	\N	7.78999996	7.78999996	10.04	38.8899994	1000	182	307	1	2031-07-24 03:00:00+03	2022-02-03 03:00:00+03	2019-02-07 03:00:00+03	2018-09-25 17:54:20.54466+03	2018-09-25 17:54:20.54466+03	0	7.80000019	1
775	bond	RU000A0JWPW1	ТрнфБО1P3	Транснефть ПАО БО-001P-03	\N	Transneft BO-001P-03	transneft bo	RU000A0JWPW1	RUB	\N	\N	PUBLISHED	\N	\N	8.57999992	8.57999992	12.1700001	47.1199989	1000	182	489	1	2023-08-03 03:00:00+03	1970-01-01 03:00:00+03	2019-02-07 03:00:00+03	2018-09-25 17:54:20.55922+03	2018-09-25 17:54:20.55922+03	0	9.44999981	1
776	bond	RU000A0JWPZ4	РусфинБ1P1	Русфинанс Банк ООО БО-001P-01	\N	Rusfinans Bank BO-001P-01	rusfinans bank bo	RU000A0JWPZ4	RUB	\N	\N	PUBLISHED	\N	\N	1.76999998	1.76999998	2.41000009	10.0799999	1000	184	472	1	2026-08-12 03:00:00+03	2019-02-12 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:20.574915+03	2018-09-25 17:54:20.574915+03	0	2	1
777	bond	RU000A0JWQ45	ТКБ-С04	"ТКБ" ПАО обл С04	\N	TKB-C04	tkb	RU000A0JWQ45	RUB	\N	\N	PUBLISHED	\N	\N	13.9700003	13.9700003	14.79	74.7900009	1000	182	520	1	2022-02-14 03:00:00+03	1970-01-01 03:00:00+03	2019-02-18 03:00:00+03	2018-09-25 17:54:20.591294+03	2018-09-25 17:54:20.591294+03	0	15	1
778	bond	RU000A0JWQX7	РСГ-ФинБ6	РСГ-Финанс ООО обл. БО-6	\N	RSG-Finance BO-6	rsg-finance bo	RU000A0JWQX7	RUB	\N	\N	PUBLISHED	\N	\N	15.1000004	15.1000004	8.14000034	44.8800011	1000	182	300	1	2019-08-22 03:00:00+03	1970-01-01 03:00:00+03	2019-02-21 03:00:00+03	2018-09-25 17:54:20.607037+03	2018-09-25 17:54:20.607037+03	95400	9	1
779	bond	RU000A0JWR44	МРСКЦенБО5	"МРСК Центра" ПАО БО-05	\N	MRSK Centra BO-05	mrsk centra bo	RU000A0JWR44	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.17000008	46.4700012	1000	182	454	1	2026-08-14 03:00:00+03	1970-01-01 03:00:00+03	2019-02-22 03:00:00+03	2018-09-25 17:54:20.622885+03	2018-09-25 17:54:20.622885+03	0	9.31999969	1
780	bond	RU000A0JWR51	МРСКУр Б05	МРСК Урала  БО-05	\N	MRSKUr B05	mrskur b	RU000A0JWR51	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.17000008	46.4700012	1000	182	455	1	2026-08-14 03:00:00+03	1970-01-01 03:00:00+03	2019-02-22 03:00:00+03	2018-09-25 17:54:20.635021+03	2018-09-25 17:54:20.635021+03	0	9.31999969	1
781	bond	RU000A0JWRE5	ГазпрнефБ1	"Газпром нефть" ПАО БО-01	\N	Gazprom Neft BO-1	gazprom neft bo	RU000A0JWRE5	RUB	\N	\N	PUBLISHED	\N	\N	7.59000015	7.59000015	7.21000004	46.8699989	1000	182	502	1	2046-07-24 03:00:00+03	2021-08-24 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:20.652105+03	2018-09-25 17:54:20.652105+03	0	9.39999962	1
782	bond	RU000A0JWRF2	ГазпрнефБ4	"Газпром нефть" ПАО БО-04	\N	Gazprom Neft BO-4	gazprom neft bo	RU000A0JWRF2	RUB	\N	\N	PUBLISHED	\N	\N	8.56000042	8.56000042	7.21000004	46.8699989	1000	182	502	1	2046-07-24 03:00:00+03	2021-08-24 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:20.667599+03	2018-09-25 17:54:20.667599+03	0	9.39999962	1
783	bond	RU000A0JWRH8	МиратФБО-7	ООО "Мираторг Финанс" БО-07	\N	Miratorg Finans BO-07	miratorg finans bo	RU000A0JWRH8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.43999958	54.8499985	1000	182	491	1	2021-08-24 03:00:00+03	1970-01-01 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:20.686811+03	2018-09-25 17:54:20.686811+03	0	11	1
784	bond	RU000A0JWRM8	РоссетиБО2	Российские сети ПАО БО-02	\N	Rosseti BO-02	rosseti bo	RU000A0JWRM8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	7.01999998	45.6199989	1000	182	457	1	2026-08-18 03:00:00+03	1970-01-01 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:20.702832+03	2018-09-25 17:54:20.702832+03	0	9.14999962	1
785	bond	RU000A0JWRN6	РоссетиБО3	Российские сети ПАО БО-03	\N	Rosseti BO-03	rosseti bo	RU000A0JWRN6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	7.01999998	45.6199989	1000	182	457	1	2026-08-18 03:00:00+03	1970-01-01 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:20.718949+03	2018-09-25 17:54:20.718949+03	0	9.14999962	1
786	bond	RU000A0JWRV9	МТС БО-02	Мобильные ТелеСистемы ПАО БО-2	\N	MTS BO-02	mts bo	RU000A0JWRV9	RUB	\N	\N	PUBLISHED	\N	\N	7.98999977	7.98999977	5.38000011	39.1399994	1000	182	251	1	2031-08-15 03:00:00+03	2019-08-30 03:00:00+03	2019-03-01 03:00:00+03	2018-09-25 17:54:20.734643+03	2018-09-25 17:54:20.734643+03	0	7.8499999	1
787	bond	RU000A0JWS92	ТранснфБО6	Транснефть ПАО БО-06	\N	Transneft BO-06	transneft bo	RU000A0JWS92	RUB	\N	\N	PUBLISHED	\N	\N	7.94999981	7.94999981	5.3499999	46.3699989	1000	182	489	1	2026-08-25 03:00:00+03	2022-08-30 03:00:00+03	2019-03-05 03:00:00+03	2018-09-25 17:54:20.753357+03	2018-09-25 17:54:20.753357+03	0	9.30000019	1
788	bond	RU000A0JWSQ7	Мордовия03	Мордовия 34003 обл.	\N	Respublika Mordovia - 03	respublika mordovia 	RU000A0JWSQ7	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	5.76999998	29.1700001	1000	91	290	1	2021-09-03 03:00:00+03	1970-01-01 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:20.768962+03	2018-09-25 17:54:20.768962+03	105890	11.6999998	1
789	bond	RU000A0JWST1	ГТЛК БО-08	ГосТранспортЛизингКомп БО-08	\N	GTLK (PAO) BO-08	gtlk (	RU000A0JWST1	RUB	\N	\N	PUBLISHED	\N	\N	8.93999958	8.93999958	4.26000023	55.3499985	1000	182	383	1	2026-09-01 03:00:00+03	2021-09-07 03:00:00+03	2019-03-12 03:00:00+03	2018-09-25 17:54:20.78668+03	2018-09-25 17:54:20.78668+03	106000	11.1000004	1
790	bond	RU000A0JWSU9	ПИК БО-2	ГК ПИК (ПАО) БО-02	\N	PIK GROUP BO-2	pik group bo	RU000A0JWSU9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.26999998	64.8199997	1000	182	519	1	2026-09-03 03:00:00+03	2019-09-12 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:20.802897+03	2018-09-25 17:54:20.802897+03	0	13	1
791	bond	RU000A0JWSV7	ПИК БО-3	ГК ПИК (ПАО) БО-03	\N	PIK GROUP BO-3	pik group bo	RU000A0JWSV7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.26999998	64.8199997	1000	182	519	1	2026-09-03 03:00:00+03	2019-09-12 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:20.818196+03	2018-09-25 17:54:20.818196+03	0	13	1
792	bond	RU000A0JWT75	ТамбовОбл2	ФУ Тамбовской области 35002	\N	Tambov Region FinDpt 35002	tambov region findpt 	RU000A0JWT75	RUB	\N	\N	PUBLISHED	\N	\N	0	0	23.6700001	23.9300003	1000	91	521	1	2023-09-20 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:20.830528+03	2018-09-25 17:54:20.830528+03	0	9.60000038	1
793	bond	RU000A0JWT91	Удмурт2016	Удмуртская респ. обл. 2016	\N	Udmurtia 2016	udmurtia 	RU000A0JWT91	RUB	\N	\N	PUBLISHED	\N	\N	7.78999996	7.78999996	25.1499996	26.2999992	1000	91	425	1	2026-09-19 03:00:00+03	1970-01-01 03:00:00+03	2018-09-29 03:00:00+03	2018-09-25 17:54:20.846316+03	2018-09-25 17:54:20.846316+03	0	10.5500002	1
794	bond	RU000A0JWTH4	ТрансКонБ2	ТрансКонтейнер ПАО БО-02	\N	TransKonteiner BO-02	transkonteiner bo	RU000A0JWTH4	RUB	\N	\N	PUBLISHED	\N	\N	8.56999969	8.56999969	1.28999996	46.8699989	1000	182	522	1	2021-09-16 03:00:00+03	1970-01-01 03:00:00+03	2019-03-21 03:00:00+03	2018-09-25 17:54:20.857699+03	2018-09-25 17:54:20.857699+03	102000	9.39999962	1
795	bond	RU000A0JWTK8	ГПБ БО-11	ГПБ (АО) БО-11	\N	GPB BO-11	gpb bo	RU000A0JWTK8	RUB	\N	\N	PUBLISHED	\N	\N	7.51000023	7.51000023	0.519999981	31.2399998	1000	181	523	1	2019-09-22 03:00:00+03	1970-01-01 03:00:00+03	2019-03-22 03:00:00+03	2018-09-25 17:54:20.869734+03	2018-09-25 17:54:20.869734+03	0	6.30000019	1
796	bond	RU000A0JWTL6	ПочтаРосБ3	Почта России (ФГУП) БО-03	\N	Russian Post BO-03	russian post bo	RU000A0JWTL6	RUB	\N	\N	PUBLISHED	\N	\N	7.88000011	7.88000011	1.27999997	46.6199989	1000	182	495	1	2026-09-10 03:00:00+03	2019-09-19 03:00:00+03	2019-03-21 03:00:00+03	2018-09-25 17:54:20.88581+03	2018-09-25 17:54:20.88581+03	0	9.35000038	1
797	bond	RU000A0JWTN2	Ростел1P1R	Ростелеком ПАО 001P-01R	\N	Rostelecom 001P-01R	rostelecom 	RU000A0JWTN2	RUB	\N	\N	PUBLISHED	\N	\N	6.75	6.75	1.25999999	45.8699989	1000	182	524	1	2026-09-10 03:00:00+03	2019-09-19 03:00:00+03	2019-03-21 03:00:00+03	2018-09-25 17:54:20.901501+03	2018-09-25 17:54:20.901501+03	0	9.19999981	1
798	bond	RU000A0JWTV5	ГТЛК 1P-01	ГосТранспортЛизингКомп 001P-01	\N	GTLK (PAO) 001P-01	gtlk (	RU000A0JWTV5	RUB	\N	\N	PUBLISHED	\N	\N	9.68000031	9.68000031	0.74000001	16.7399998	692	91	383	1	2031-09-05 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:20.917741+03	2018-09-25 17:54:20.917741+03	0	9.69999981	1
799	bond	RU000A0JWTW3	СилМашБО-3	Силовые машины ПАО БО-03	\N	Silovye mashiny BO-03	silovye mashiny bo	RU000A0JWTW3	RUB	\N	\N	PUBLISHED	\N	\N	14.9300003	14.9300003	0.270000011	49.6100006	1000	182	444	1	2026-09-14 03:00:00+03	2019-09-23 03:00:00+03	2019-03-25 03:00:00+03	2018-09-25 17:54:20.929762+03	2018-09-25 17:54:20.929762+03	96000	9.94999981	1
800	bond	RU000A0JWTX1	СилМашБО-4	Силовые машины ПАО БО-04	\N	Silovye mashiny BO-04	silovye mashiny bo	RU000A0JWTX1	RUB	\N	\N	PUBLISHED	\N	\N	15	15	0.270000011	49.6100006	1000	182	444	1	2026-09-14 03:00:00+03	2019-09-23 03:00:00+03	2019-03-25 03:00:00+03	2018-09-25 17:54:20.941482+03	2018-09-25 17:54:20.941482+03	95940	9.94999981	1
801	bond	RU000A0JWU23	ТКК кл.Б	ООО Трансп.Концесс.Комп. кл.Б	\N	OOO Transport.Koncess.Komp. 02	ooo transport.koncess.komp.	RU000A0JWU23	RUB	\N	\N	PUBLISHED	\N	\N	0	0	74.8399963	78.5	1000	365	525	1	2046-09-20 03:00:00+03	2018-10-12 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:20.953655+03	2018-09-25 17:54:20.953655+03	0	7.8499999	1
802	bond	RU000A0JWU31	ТКК кл. А1	ООО Трансп.Концесс.Комп. кл.A1	\N	OOO Transport.Koncess.Komp. 01	ooo transport.koncess.komp.	RU000A0JWU31	RUB	\N	\N	PUBLISHED	\N	\N	0	0	73.0999985	73.5	1000	365	525	1	2033-09-23 03:00:00+03	2018-09-27 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:20.971566+03	2018-09-25 17:54:20.971566+03	0	7.3499999	1
803	bond	RU000A0JWU72	СИБУРХол12	"СИБУР Холдинг"(ПАО) об.12	\N	SIBUR Holding 12	sibur holding 	RU000A0JWU72	RUB	\N	\N	PUBLISHED	\N	\N	0	0	47.8499985	48.1199989	1000	182	481	1	2026-09-16 03:00:00+03	2020-03-25 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:20.985553+03	2018-09-25 17:54:20.985553+03	0	9.64999962	1
804	bond	RU000A0JWU80	ИААбсолют4	ИА Абсолют 4 (ООО)	\N	Ipotechniy agent Absolut 4	ipotechniy agent absolut 	RU000A0JWU80	RUB	\N	\N	PUBLISHED	\N	\N	4.4000001	4.4000001	1.28999996	8.36999989	340.809998	91	310	1	2043-12-11 03:00:00+03	2018-12-11 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:20.997086+03	2018-09-25 17:54:20.997086+03	0	9.85000038	1
805	bond	RU000A0JWU98	ЛСР БО 1Р1	Группа ЛСР ПАО БО 001Р-01	\N	LSR 1P-1	lsr 	RU000A0JWU98	RUB	\N	\N	PUBLISHED	\N	\N	9.09000015	9.09000015	26.5100002	26.7999992	1000	91	526	1	2021-09-22 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:21.008863+03	2018-09-25 17:54:21.008863+03	0	10.75	1
806	bond	RU000A0JWUB5	ДельтКрБ12	КБ ДельтаКредит АО БО-12	\N	DeltaCredit BO-12	deltacredit bo	RU000A0JWUB5	RUB	\N	\N	PUBLISHED	\N	\N	7.71999979	7.71999979	48.5800018	49.6500015	1000	184	527	1	2026-09-29 03:00:00+03	2019-09-29 03:00:00+03	2018-09-29 03:00:00+03	2018-09-25 17:54:21.026207+03	2018-09-25 17:54:21.026207+03	0	9.85000038	1
807	bond	RU000A0JWUD1	ИКС5Фин1P1	ИКС 5 ФИНАНС 001P-01	\N	X5 FINANCE 001P-01	 finance 	RU000A0JWUD1	RUB	\N	\N	PUBLISHED	\N	\N	7	7	46.5999985	47.1199989	1000	182	528	1	2031-09-11 03:00:00+03	2019-09-26 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:21.045455+03	2018-09-25 17:54:21.045455+03	0	9.44999981	1
808	bond	RU000A0JWUE9	СберБ БО37	Сбербанк ПАО БО-37	\N	Sberbank BO-37	sberbank bo	RU000A0JWUE9	RUB	\N	\N	PUBLISHED	\N	\N	8.11999989	8.11999989	45.3600006	46.6300011	1000	184	529	1	2021-09-30 03:00:00+03	1970-01-01 03:00:00+03	2018-09-30 03:00:00+03	2018-09-25 17:54:21.065034+03	2018-09-25 17:54:21.065034+03	103400	9.25	1
809	bond	RU000A0JWUV3	Новсиб2016	Новосибирская область 2016	\N	Novosibirskaya oblast' 2016	novosibirskaya oblast'	RU000A0JWUV3	RUB	\N	\N	PUBLISHED	\N	\N	7.98999977	7.98999977	16.8799992	22.2600002	1000	91	294	1	2021-10-03 03:00:00+03	1970-01-01 03:00:00+03	2018-10-17 03:00:00+03	2018-09-25 17:54:21.07695+03	2018-09-25 17:54:21.07695+03	0	8.93000031	1
810	bond	RU000A0JWUX9	АльфаБО-17	Альфа-Банк АО обл. БО-17	\N	Alfa-Bank BO-17	alfa-bank bo	RU000A0JWUX9	RUB	\N	\N	PUBLISHED	\N	\N	7.38000011	7.38000011	45.5499992	47.3699989	1000	182	307	1	2031-09-16 03:00:00+03	2021-09-28 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:21.088754+03	2018-09-25 17:54:21.088754+03	106000	9.5	1
811	bond	RU000A0JWV63	РСХБ 08Т1	"Россельхозбанк" (АО) обл.08Т1	\N	Rosselkhozbank 08T1	rosselkhozbank 	RU000A0JWV63	RUB	\N	\N	PUBLISHED	\N	\N	11.5500002	11.5500002	67.9300003	71.0500031	1000	182	516	1	1970-01-01 03:00:00+03	2026-09-23 03:00:00+03	2018-10-03 03:00:00+03	2018-09-25 17:54:21.101284+03	2018-09-25 17:54:21.101284+03	115630	14.25	1
812	bond	RU000A0JWV89	Акрон Б1P1	Акрон (ПАО) БО-001P-01	\N	Acron BO-001P-01	acron bo	RU000A0JWV89	RUB	\N	\N	PUBLISHED	\N	\N	8.43000031	8.43000031	45.2599983	47.6199989	1000	182	451	1	2026-09-24 03:00:00+03	2020-10-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:21.11263+03	2018-09-25 17:54:21.11263+03	0	9.55000019	1
813	bond	RU000A0JWVB3	КонцесВ 03	Концессии водоснабжения ООО 03	\N	Koncessii vodosnabjeniya 03	koncessii vodosnabjeniya 	RU000A0JWVB3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	111.529999	114.68	1000	364	462	1	2031-04-07 03:00:00+03	2018-10-05 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:21.125228+03	2018-09-25 17:54:21.125228+03	0	11.5	1
814	bond	RU000A0JWVC1	ТрнфБО1P4	Транснефть ПАО БО-001P-04	\N	Transneft BO-001P-04	transneft bo	RU000A0JWVC1	RUB	\N	\N	PUBLISHED	\N	\N	7.98000002	7.98000002	44.0800018	46.3699989	1000	182	489	1	2022-09-29 03:00:00+03	1970-01-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:21.1368+03	2018-09-25 17:54:21.1368+03	105000	9.30000019	1
815	bond	RU000A0JWVL2	ЕвропланБ7	АО ЛК Европлан БО-07	\N	Evroplan BO-7	evroplan bo	RU000A0JWVL2	RUB	\N	\N	PUBLISHED	\N	\N	-4.78000021	-4.78000021	54.0800018	58.5900002	1000	182	272	1	2026-09-29 03:00:00+03	2018-10-09 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:21.148479+03	2018-09-25 17:54:21.148479+03	0	11.75	1
816	bond	RU000A0JWVS7	ИнтезБ1P1R	Банк Интеза АО БО-001P-01R	\N	Bank Inteza BO-001P-01R	bank inteza bo	RU000A0JWVS7	RUB	\N	\N	PUBLISHED	\N	\N	9.76000023	9.76000023	44.3400002	48.6199989	1000	182	530	1	2019-10-10 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:21.164819+03	2018-09-25 17:54:21.164819+03	0	9.75	1
817	bond	RU000A0JWVT5	РЕСОЛизБ05	РЕСО-Лизинг ООО БО-5	\N	RESO-Lizing B05	reso-lizing b	RU000A0JWVT5	RUB	\N	\N	PUBLISHED	\N	\N	9.64999962	9.64999962	56.9599991	62.8300018	1000	182	274	1	2026-10-02 03:00:00+03	2021-10-08 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:21.18571+03	2018-09-25 17:54:21.18571+03	0	12.6000004	1
818	bond	RU000A0JWWG0	ПКБ БО-01	Первое кол.бюро НАО БО-01	\N	First Collection Bureau BO-01	first collection bureau bo	RU000A0JWWG0	RUB	\N	\N	PUBLISHED	\N	\N	15.2799997	15.2799997	27.5300007	37.4000015	1000	91	531	1	2021-10-15 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:21.200647+03	2018-09-25 17:54:21.200647+03	100850	15	1
819	bond	RU000A0JWWH8	РЕГИОН БО7	РЕГИОН Капитал ООО об. БО-07	\N	REGION Capital OOO ob. BO-07	region capital ooo ob.	RU000A0JWWH8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	37.8800011	43.6300011	1000	182	532	1	2021-10-15 03:00:00+03	2018-10-19 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:21.213077+03	2018-09-25 17:54:21.213077+03	0	8.75	1
820	bond	RU000A0JWWJ4	РЕГИОН БО6	РЕГИОН Капитал ООО об. БО-06	\N	REGION Capital OOO ob. BO-06	region capital ooo ob.	RU000A0JWWJ4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	37.8800011	43.6300011	1000	182	532	1	2021-10-15 03:00:00+03	2018-10-19 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:21.224667+03	2018-09-25 17:54:21.224667+03	0	8.75	1
821	bond	RU000A0JWWM8	ТрансФ1P01	ТрансФин-М ПАО 001P-01	\N	TransFin-M 001P-01	transfin-m 	RU000A0JWWM8	RUB	\N	\N	PUBLISHED	\N	\N	10.2799997	10.2799997	44.3699989	51.1100006	1000	182	431	1	2026-10-09 03:00:00+03	2018-10-19 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:21.236638+03	2018-09-25 17:54:21.236638+03	0	10.25	1
822	bond	RU000A0JWWQ9	ОмскАдм 2	Администрация г. Омска 2016	\N	Omsk Administration 2016	omsk administration 	RU000A0JWWQ9	RUB	\N	\N	PUBLISHED	\N	\N	5.01999998	5.01999998	11.96	17.2800007	700	91	533	1	2019-10-26 03:00:00+03	1970-01-01 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:21.248724+03	2018-09-25 17:54:21.248724+03	72198	9.89999962	1
823	bond	RU000A0JWWW7	СУЭКФБ1P1R	СУЭК-Финанс ООО БО 001P-01R	\N	SUEK-Finans BO 001P-01R	suek-finans bo 	RU000A0JWWW7	RUB	\N	\N	PUBLISHED	\N	\N	8.27999973	8.27999973	44.0099983	52.3600006	1000	182	534	1	2019-10-23 03:00:00+03	1970-01-01 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:21.260606+03	2018-09-25 17:54:21.260606+03	0	10.5	1
824	bond	RU000A0JWWX5	МКБ-лиз 01	МКБ-лизинг 01	\N	MKB-leasing 01	mkb-leasing 	RU000A0JWWX5	RUB	\N	\N	PUBLISHED	\N	\N	10.29	10.29	42.6800003	51.1100006	1000	182	535	1	2021-10-21 03:00:00+03	2018-10-25 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:21.272769+03	2018-09-25 17:54:21.272769+03	100000	10.25	1
825	bond	RU000A0JWX04	БашнфтБО9	ПАО "АНК "Башнефть" БО-09	\N	Bashneft ANK BO-09	bashneft ank bo	RU000A0JWX04	RUB	\N	\N	PUBLISHED	\N	\N	7.46999979	7.46999979	38.7299995	46.3699989	1000	182	336	1	2026-10-15 03:00:00+03	2022-10-20 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:21.284575+03	2018-09-25 17:54:21.284575+03	0	9.30000019	1
826	bond	RU000A0JWX46	ОткрХОЛБО6	Открытие Холдинг АО обл.БО-06	\N	Otkritie Holding BO-6	otkritie holding bo	RU000A0JWX46	RUB	\N	\N	PUBLISHED	\N	\N	0	0	139.559998	149.869995	1000	455	351	1	2036-10-03 03:00:00+03	2018-10-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:21.30416+03	2018-09-25 17:54:21.30416+03	0	12.1400003	1
827	bond	RU000A0JWX79	ТранФинМ29	ТрансФин-М ПАО 29 обл.	\N	TransFin-M 29	transfin-m 	RU000A0JWX79	RUB	\N	\N	PUBLISHED	\N	\N	0	0	48.3300018	59.8400002	1000	182	431	1	2019-11-01 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:21.316764+03	2018-09-25 17:54:21.316764+03	0	12	1
828	bond	RU000A0JWX87	ОмскОб2016	Омская обл. 35003 обл.	\N	Omsk region - 2016	omsk region 	RU000A0JWX87	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	14.2700005	23.1900005	1000	91	370	1	2021-11-01 03:00:00+03	1970-01-01 03:00:00+03	2018-10-30 03:00:00+03	2018-09-25 17:54:21.328391+03	2018-09-25 17:54:21.328391+03	0	9.30000019	1
829	bond	RU000A0JWXF0	КрасЯрКр12	Красноярский край  обл.12	\N	Krasnoyarsk reg.- 34012	krasnoyarsk reg.	RU000A0JWXF0	RUB	\N	\N	PUBLISHED	\N	\N	8.77000046	8.77000046	39	48.6199989	1000	182	364	1	2023-10-25 03:00:00+03	1970-01-01 03:00:00+03	2018-10-31 03:00:00+03	2018-09-25 17:54:21.340362+03	2018-09-25 17:54:21.340362+03	103480	9.75	1
830	bond	RU000A0JWXQ7	Хакас2016	Хакасия 2016 об.35006	\N	Khakasia 2016 (35006)	khakasia 	RU000A0JWXQ7	RUB	\N	\N	PUBLISHED	\N	\N	9.53999996	9.53999996	17.3099995	29.1700001	1000	91	435	1	2023-11-02 03:00:00+03	1970-01-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:21.352173+03	2018-09-25 17:54:21.352173+03	108500	11.6999998	1
831	bond	RU000A0JWY29	СтаврКрай3	Ставропольский край 2016 обл.3	\N	Stavropolsky kray 03	stavropolsky kray 	RU000A0JWY29	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	13.1599998	24.4300003	1000	91	295	1	2023-11-07 03:00:00+03	1970-01-01 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:21.364089+03	2018-09-25 17:54:21.364089+03	0	9.80000019	1
832	bond	RU000A0JWYJ0	Самолет 01	Группа компаний "Самолет" 01	\N	Samolet Group of Companies 01	samolet group of companies 	RU000A0JWYJ0	RUB	\N	\N	PUBLISHED	\N	\N	10.3699999	10.3699999	12.6000004	24.9300003	1000	91	536	1	2026-10-30 03:00:00+03	2019-11-08 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:21.376387+03	2018-09-25 17:54:21.376387+03	0	10	1
833	bond	RU000A0JWYK8	ПолиплБ03	Полипласт АО БО-03	\N	Polyplast AO BO-03	polyplast ao bo	RU000A0JWYK8	RUB	\N	\N	PUBLISHED	\N	\N	16.2299995	16.2299995	27.2099991	36.1500015	1000	182	331	1	2021-11-05 03:00:00+03	2018-11-09 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:21.391586+03	2018-09-25 17:54:21.391586+03	98990	7.25	1
834	bond	RU000A0JWYQ5	СистемБ1P4	АФК "Система" ПАО БО 001P-04	\N	AFK Systema 001P-04	afk systema 	RU000A0JWYQ5	RUB	\N	\N	PUBLISHED	\N	\N	9.97000027	9.97000027	36.7799988	48.8699989	1000	182	437	1	2026-10-30 03:00:00+03	2020-11-06 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:21.4034+03	2018-09-25 17:54:21.4034+03	100100	9.80000019	1
835	bond	RU000A0JWYS1	ЗенитБО1P2	"Банк Зенит" (ПАО) БО-001P-02	\N	Zenit BO-001P-02	zenit bo	RU000A0JWYS1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.84000015	18.7000008	1000	91	321	1	2019-11-11 03:00:00+03	2018-11-12 03:00:00+03	2018-11-12 03:00:00+03	2018-09-25 17:54:21.415494+03	2018-09-25 17:54:21.415494+03	0	7.5	1
836	bond	RU000A0JWZ10	ТомскАдм 6	Адм. г.Томск 2016	\N	TomskAdm 06	tomskadm 	RU000A0JWZ10	RUB	\N	\N	PUBLISHED	\N	\N	10.1999998	10.1999998	4.11999989	20.8299999	850	91	378	1	2021-11-14 03:00:00+03	1970-01-01 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:21.431431+03	2018-09-25 17:54:21.431431+03	0	9.82999992	1
837	bond	RU000A0JWZ77	СвердлОб3	Свердловская обл. 03	\N	Sverdlovskaya obl. 03	sverdlovskaya obl.	RU000A0JWZ77	RUB	\N	\N	PUBLISHED	\N	\N	8.14999962	8.14999962	8.59000015	24.4300003	1000	91	537	1	2024-11-15 03:00:00+03	1970-01-01 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:21.44339+03	2018-09-25 17:54:21.44339+03	0	9.80000019	1
838	bond	RU000A0JWZM1	КОМИ 13 об	Республика Коми 2016 13 обл.	\N	Komi-13	komi	RU000A0JWZM1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.85000038	23.6800003	1000	91	338	1	2022-11-16 03:00:00+03	1970-01-01 03:00:00+03	2018-11-21 03:00:00+03	2018-09-25 17:54:21.45919+03	2018-09-25 17:54:21.45919+03	0	9.5	1
839	bond	RU000A0JWZT6	Дельта18ИП	КБ ДельтаКредит АО обл.18-ИП	\N	DeltaCredit CB 18-IP	deltacredit cb 	RU000A0JWZT6	RUB	\N	\N	PUBLISHED	\N	\N	8.73999977	8.73999977	34.9599991	51.8699989	1000	184	328	1	2021-11-24 03:00:00+03	1970-01-01 03:00:00+03	2018-11-24 03:00:00+03	2018-09-25 17:54:21.471725+03	2018-09-25 17:54:21.471725+03	0	10.29	1
840	bond	RU000A0JWZY6	СистемБ1P5	АФК "Система" ПАО БО-001P-05	\N	AFK Systema 001P-05	afk systema 	RU000A0JWZY6	RUB	\N	\N	PUBLISHED	\N	\N	10.0600004	10.0600004	8.68000031	24.6800003	1000	91	437	1	2026-11-13 03:00:00+03	2020-02-21 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:21.483136+03	2018-09-25 17:54:21.483136+03	100250	9.89999962	1
841	bond	RU000A0JX009	Автодор1P1	Автодор ГК БО-001P-01	\N	Autodor 001P-01	autodor 	RU000A0JX009	RUB	\N	\N	PUBLISHED	\N	\N	7.82999992	7.82999992	34.5400009	51.1100006	1000	182	538	1	2020-11-20 03:00:00+03	1970-01-01 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:21.495068+03	2018-09-25 17:54:21.495068+03	0	10.25	1
842	bond	RU000A0JX090	ФСК ЕЭС Б2	"ФСК ЕЭС"(ПАО) БО-02	\N	FSK EES BO-02	fsk ees bo	RU000A0JX090	RUB	\N	\N	PUBLISHED	\N	\N	0	0	7.17000008	23.3099995	1000	91	539	1	2051-10-17 03:00:00+03	2021-11-23 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:21.507564+03	2018-09-25 17:54:21.507564+03	0	9.35000038	1
843	bond	RU000A0JX0B9	МосОбл2016	МЭФ Московской обл. 2016	\N	Moscow Region MEF 2016	moscow region mef 	RU000A0JX0B9	RUB	\N	\N	PUBLISHED	\N	\N	8.55000019	8.55000019	7.4000001	24.0599995	1000	91	540	1	2023-11-21 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:21.519009+03	2018-09-25 17:54:21.519009+03	0	9.64999962	1
844	bond	RU000A0JX0L8	ИА МКБ2-01	ООО "ИА МКБ 2" об. 01	\N	IA MKB 2-01	ia mkb 	RU000A0JX0L8	RUB	\N	\N	PUBLISHED	\N	\N	-0.0900000036	-0.0900000036	2.05999994	10.4399996	412.470001	91	541	1	2043-12-07 03:00:00+03	2018-12-07 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:21.532375+03	2018-09-25 17:54:21.532375+03	0	10.1499996	1
845	bond	RU000A0JX0P9	ГПБ БО-12	ГПБ (АО) БО-12	\N	GPB BO-12	gpb bo	RU000A0JX0P9	RUB	\N	\N	PUBLISHED	\N	\N	8.89999962	8.89999962	31.3500004	49.8899994	1000	183	523	1	2019-12-02 03:00:00+03	2018-12-02 03:00:00+03	2018-12-02 03:00:00+03	2018-09-25 17:54:21.54314+03	2018-09-25 17:54:21.54314+03	100200	9.94999981	1
846	bond	RU000A0JX0U9	ТрансФБО44	ТрансФин-М ПАО БО-44	\N	TransFin-M BO-44	transfin-m bo	RU000A0JX0U9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	26.8500004	43.6300011	1000	182	332	1	2026-11-24 03:00:00+03	2018-12-04 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:21.558566+03	2018-09-25 17:54:21.558566+03	0	8.75	1
847	bond	RU000A0JX0Y1	СилМашБО-5	Силовые машины ПАО БО-05	\N	Power machines BO-05	power machines bo	RU000A0JX0Y1	RUB	\N	\N	PUBLISHED	\N	\N	14.9799995	14.9799995	31.1700001	51.1100006	1000	182	542	1	2026-11-25 03:00:00+03	2019-12-04 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:21.571381+03	2018-09-25 17:54:21.571381+03	95500	10.25	1
848	bond	RU000A0JX0Z8	ЯНАО-2016	Ямало-Ненецкий АО об 2016	\N	Yamal-Nenets AO 2016	yamal-nenets ao 	RU000A0JX0Z8	RUB	\N	\N	PUBLISHED	\N	\N	8.10000038	8.10000038	5.13000011	23.3600006	1000	91	543	1	2023-12-06 03:00:00+03	1970-01-01 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:21.583005+03	2018-09-25 17:54:21.583005+03	102500	9.36999989	1
849	bond	RU000A0JX108	ТелХолПБО2	АО "ЭР-Телеком Холдинг" ПБО-02	\N	"ER-Telekom Holding" PBO-2	"er-telekom holding"	RU000A0JX108	RUB	\N	\N	PUBLISHED	\N	\N	0	0	33	54.0999985	1000	182	544	1	2021-12-01 03:00:00+03	1970-01-01 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:21.594939+03	2018-09-25 17:54:21.594939+03	0	10.8500004	1
850	bond	RU000A0JX132	Роснфт1P1	ПАО НК Роснефть 001P-01	\N	Rosneft  001P-01	rosneft  	RU000A0JX132	RUB	\N	\N	PUBLISHED	\N	\N	7.55000019	7.55000019	4.03000021	18.3199997	1000	91	311	1	2026-11-25 03:00:00+03	2019-06-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:21.606675+03	2018-09-25 17:54:21.606675+03	0	7.3499999	1
851	bond	RU000A0JX199	ГТЛК 1P-02	ГосТранспортЛизингКомп 001P-02	\N	GTLK (PAO) BO-001P-02	gtlk (	RU000A0JX199	RUB	\N	\N	PUBLISHED	\N	\N	9.31000042	9.31000042	3.03999996	18.4400005	821.900024	91	383	1	2031-11-24 03:00:00+03	1970-01-01 03:00:00+03	2018-12-10 03:00:00+03	2018-09-25 17:54:21.618596+03	2018-09-25 17:54:21.618596+03	0	9	1
852	bond	RU000A0JX1A9	СилМашБО-6	Силовые машины ПАО БО-06	\N	Power machines BO-06	power machines bo	RU000A0JX1A9	RUB	\N	\N	PUBLISHED	\N	\N	15.4499998	15.4499998	29.7700005	51.1100006	1000	182	542	1	2026-11-30 03:00:00+03	2019-12-09 03:00:00+03	2018-12-10 03:00:00+03	2018-09-25 17:54:21.630843+03	2018-09-25 17:54:21.630843+03	95000	10.25	1
853	bond	RU000A0JX1C5	КАМАЗ БО14	КАМАЗ ПАО БО-14	\N	KAMAZ PAO BO-14	kamaz pao bo	RU000A0JX1C5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	28.8099995	49.4599991	1000	182	415	1	2031-11-24 03:00:00+03	1970-01-01 03:00:00+03	2018-12-10 03:00:00+03	2018-09-25 17:54:21.642642+03	2018-09-25 17:54:21.642642+03	0	9.92000008	1
854	bond	RU000A0JX1S1	РЖД-41 обл	"Российские ЖД" ОАО 41 обл.	\N	RZD 41	rzd 	RU000A0JX1S1	RUB	\N	\N	PUBLISHED	\N	\N	7.9000001	7.9000001	26.5300007	46.8699989	1000	182	450	1	2031-11-27 03:00:00+03	2019-12-12 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:21.655171+03	2018-09-25 17:54:21.655171+03	0	9.39999962	1
855	bond	RU000A0JX1T9	ИАБСПБ2016	ИА БСПБ 2016	\N	IA BSPB 2016	ia bspb 	RU000A0JX1T9	RUB	\N	\N	PUBLISHED	\N	\N	-7.86999989	-7.86999989	12.1199999	12.5200005	507.019989	92	545	1	2043-06-28 03:00:00+03	2018-12-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:21.668081+03	2018-09-25 17:54:21.668081+03	0	9.80000019	1
856	bond	RU000A0JX1V5	АтомэнпБО2	Атомэнергопром АО БО-02	\N	Atomenergoprom BO-02	atomenergoprom bo	RU000A0JX1V5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	26.3299999	46.5200005	1000	182	466	1	2026-12-03 03:00:00+03	1970-01-01 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:21.68634+03	2018-09-25 17:54:21.68634+03	0	9.32999992	1
857	bond	RU000A0JX215	ХМАО 10	ХМАО-Югры об. 35001	\N	HMAO-Yugra ob. 35001	hmao-yugra ob.	RU000A0JX215	RUB	\N	\N	PUBLISHED	\N	\N	8.38000011	8.38000011	0.25	22.8099995	1000	91	367	1	2023-12-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:21.698609+03	2018-09-25 17:54:21.698609+03	0	9.14999962	1
858	bond	RU000A0JX2B5	КАМАЗ БО15	КАМАЗ ПАО БО-15	\N	KAMAZ BO-15	kamaz bo	RU000A0JX2B5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	25.8600006	48.0200005	1000	182	546	1	2031-12-02 03:00:00+03	1970-01-01 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:21.710555+03	2018-09-25 17:54:21.710555+03	0	9.63000011	1
859	bond	RU000A0JX2D1	РосбанкБ12	РОСБАНК ПАО обл. БО-12	\N	Rosbank BO-12	rosbank bo	RU000A0JX2D1	RUB	\N	\N	PUBLISHED	\N	\N	8.21000004	8.21000004	26.0400009	49.1300011	1000	183	498	1	2026-12-20 03:00:00+03	2019-12-20 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:21.722711+03	2018-09-25 17:54:21.722711+03	0	9.80000019	1
860	bond	RU000A0JX2F6	РосбанкБ11	РОСБАНК ПАО обл. БО-11	\N	Rosbank BO-11	rosbank bo	RU000A0JX2F6	RUB	\N	\N	PUBLISHED	\N	\N	7.94000006	7.94000006	26.0400009	49.1300011	1000	183	498	1	2026-12-20 03:00:00+03	2019-12-20 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:21.73443+03	2018-09-25 17:54:21.73443+03	0	9.80000019	1
861	bond	RU000A0JX2L4	КРАУС Б1P1	ЗАО "КРАУС-М" БО 001P-01	\N	KRAUS-M BO 001P-01	kraus-m bo 	RU000A0JX2L4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	26.2999992	49.8600006	1000	182	547	1	2026-12-10 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:21.747161+03	2018-09-25 17:54:21.747161+03	0	10	1
862	bond	RU000A0JX2M2	РСЭКСМБ1Р1	РОСЭКСИМБАНК АО БО-001P-01	\N	EXIMBANK OF RUSSIA BO-001P-01	eximbank of russia bo	RU000A0JX2M2	RUB	\N	\N	PUBLISHED	\N	\N	4.23999977	4.23999977	834.929993	23.9300003	1000	182	548	1	2026-12-10 03:00:00+03	2018-12-20 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:21.759785+03	2018-09-25 17:54:21.759785+03	0	4.80000019	1
863	bond	RU000A0JX2P5	БашнфБ1P1R	ПАО "АНК "Башнефть"БО-001P-01R	\N	Bashneft ANK BO-001P-01R	bashneft ank bo	RU000A0JX2P5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	24.9899998	47.3699989	1000	182	336	1	2024-12-12 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:21.775275+03	2018-09-25 17:54:21.775275+03	0	9.5	1
864	bond	RU000A0JX2Q3	БашнфтБО10	ПАО "АНК "Башнефть" БО-10	\N	Bashneft ANK BO-10	bashneft ank bo	RU000A0JX2Q3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	24.9899998	47.3699989	1000	182	336	1	2026-12-10 03:00:00+03	2024-12-12 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:21.792758+03	2018-09-25 17:54:21.792758+03	0	9.5	1
865	bond	RU000A0JX2R1	ДОМ.РФ Б-5	ДОМ.РФ (АО) БО-05	\N	DOM.RF BO-05	dom.rf bo	RU000A0JX2R1	RUB	\N	\N	PUBLISHED	\N	\N	8.77000046	8.77000046	1.01999998	23.3099995	1000	91	427	1	2049-12-22 03:00:00+03	2019-12-20 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:21.808081+03	2018-09-25 17:54:21.808081+03	0	9.35000038	1
866	bond	RU000A0JX2S9	КалинОбл16	Калининградская область 2016	\N	Kaliningrad Oblast 2016	kaliningrad oblast 	RU000A0JX2S9	RUB	\N	\N	PUBLISHED	\N	\N	8.60999966	8.60999966	1.14999998	26.1800003	1000	91	549	1	2021-12-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:21.826585+03	2018-09-25 17:54:21.826585+03	0	10.5	1
867	bond	RU000A0JX2V3	ПочтаРБ1P1	Почта России (ФГУП) БО-001P-01	\N	Russian Post BO-001P-01	russian post bo	RU000A0JX2V3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	14.0299997	25	1000	180	495	1	2023-11-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:21.839831+03	2018-09-25 17:54:21.839831+03	0	5.07000017	1
868	bond	RU000A0JX2X9	БашнфБ1P2R	ПАО "АНК "Башнефть"БО-001P-02R	\N	Bashneft ANK BO-001P-02R	bashneft ank bo	RU000A0JX2X9	RUB	\N	\N	PUBLISHED	\N	\N	7.46999979	7.46999979	24.9899998	47.3699989	1000	182	336	1	2023-12-14 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:21.854809+03	2018-09-25 17:54:21.854809+03	0	9.5	1
869	bond	RU000A0JX314	ИркОбл2016	Иркутская обл.34001аморт.	\N	Irkutsk Reg.-34001	irkutsk reg.	RU000A0JX314	RUB	\N	\N	PUBLISHED	\N	\N	8.56000042	8.56000042	0.25	23.0599995	1000	91	550	1	2021-12-25 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:21.868066+03	2018-09-25 17:54:21.868066+03	102150	9.25	1
870	bond	RU000A0JX355	Роснфт1P2	ПАО НК Роснефть 001P-02	\N	Rosneft  001P-02	rosneft  	RU000A0JX355	RUB	\N	\N	PUBLISHED	\N	\N	8.98999977	8.98999977	24.4400005	46.8199997	1000	182	311	1	2026-12-11 03:00:00+03	2021-12-17 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:21.882667+03	2018-09-25 17:54:21.882667+03	101600	9.39000034	1
871	bond	RU000A0JX3A5	ЛидерИнБП1	Лидер-Инвест АО БО-П01	\N	Lider-Invest BO-P01	lider-invest bo	RU000A0JX3A5	RUB	\N	\N	PUBLISHED	\N	\N	11.6599998	11.6599998	21.1900005	42.3800011	1000	182	551	1	2021-12-21 03:00:00+03	2019-06-25 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:21.894783+03	2018-09-25 17:54:21.894783+03	0	8.5	1
872	bond	RU000A0JX3H0	КОМКОРПБ1	ОАО КОМКОР П01-БО-01	\N	COMCOR P01-BO-01	comcor p	RU000A0JX3H0	RUB	\N	\N	PUBLISHED	\N	\N	8.89999962	8.89999962	34.8499985	65.3399963	1000	180	552	1	2019-12-13 03:00:00+03	2018-12-18 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:21.90659+03	2018-09-25 17:54:21.90659+03	100980	13.25	1
873	bond	RU000A0JX3M0	ДОМРФИА 1P	ДОМ РФ ИА 001P	\N	Mortgage agent DOM RF 1P	mortgage agent dom rf 	RU000A0JX3M0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	605.419983	92	553	1	2039-12-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:21.918765+03	2018-09-25 17:54:21.918765+03	0	0	1
874	bond	RU000A0JX3X7	ХКФинБ1P1	ХК Финанс ООО БО 001P-01	\N	HK Finans OOO BO P01-01	hk finans ooo bo p	RU000A0JX3X7	RUB	\N	\N	PUBLISHED	\N	\N	10.21	10.21	24.3799992	49.8600006	1000	182	554	1	2019-12-26 03:00:00+03	1970-01-01 03:00:00+03	2018-12-27 03:00:00+03	2018-09-25 17:54:21.93703+03	2018-09-25 17:54:21.93703+03	0	10	1
875	bond	RU000A0JX413	Роснфт1P3	ПАО НК Роснефть 001P-03	\N	Rosneft  001P-03	rosneft  	RU000A0JX413	RUB	\N	\N	PUBLISHED	\N	\N	0	0	23.1599998	47.3699989	1000	182	311	1	2026-12-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-27 03:00:00+03	2018-09-25 17:54:21.950591+03	2018-09-25 17:54:21.950591+03	0	9.5	1
876	bond	RU000A0JX439	ЧТПЗ 1P1	ПАО ЧТПЗ 001P-01	\N	Chelpipe 001P-01	chelpipe 	RU000A0JX439	RUB	\N	\N	PUBLISHED	\N	\N	9.30000019	9.30000019	26.2099991	53.5999985	1000	182	555	1	2020-12-24 03:00:00+03	1970-01-01 03:00:00+03	2018-12-27 03:00:00+03	2018-09-25 17:54:21.968084+03	2018-09-25 17:54:21.968084+03	103270	10.75	1
877	bond	RU000A0JX4Q9	ВЭБ ПБО1Р5	Внешэкономбанк ПБО-001Р-05	\N	Vneshekonombank PBO-001P-05	vneshekonombank pbo	RU000A0JX4Q9	RUB	\N	\N	PUBLISHED	\N	\N	8.13000011	8.13000011	21.6599998	48.1300011	1000	180	473	1	2021-12-17 03:00:00+03	1970-01-01 03:00:00+03	2019-01-02 03:00:00+03	2018-09-25 17:54:21.982528+03	2018-09-25 17:54:21.982528+03	0	9.76000023	1
878	bond	RU000A0JX5W4	АльфаБО-18	Альфа-Банк АО обл. БО-18	\N	Alfa-Bank BO-18	alfa-bank bo	RU000A0JX5W4	RUB	\N	\N	PUBLISHED	\N	\N	8.38000011	8.38000011	16.5699997	47.1199989	1000	182	307	1	2032-01-05 03:00:00+03	2020-01-20 03:00:00+03	2019-01-21 03:00:00+03	2018-09-25 17:54:21.998704+03	2018-09-25 17:54:21.998704+03	101500	9.44999981	1
879	bond	RU000A0JX8E6	ОбувьрусБ7	Обувьрус ООО обл.БО-07	\N	Obuvrus BO-07	obuvrus bo	RU000A0JX8E6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	46126.0312	68810.9609	2000000	91	556	1	2022-01-20 03:00:00+03	2020-01-23 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:22.014491+03	2018-09-25 17:54:22.014491+03	0	13.8000002	1
880	bond	RU000A0JX9X4	БашнфБ1P3R	ПАО "АНК "Башнефть"БО-001P-03R	\N	Bashneft ANK BO-001P-03R	bashneft ank bo	RU000A0JX9X4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	14.6800003	46.8699989	1000	182	336	1	2024-01-22 03:00:00+03	1970-01-01 03:00:00+03	2019-01-28 03:00:00+03	2018-09-25 17:54:22.030219+03	2018-09-25 17:54:22.030219+03	0	9.39999962	1
881	bond	RU000A0JXC24	ТрнфБО1P5	Транснефть ПАО БО-001P-05	\N	Transneft BO-001P-05	transneft bo	RU000A0JXC24	RUB	\N	\N	PUBLISHED	\N	\N	8.96000004	8.96000004	13.4300003	46.1199989	1000	182	489	1	2024-01-26 03:00:00+03	1970-01-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:22.042292+03	2018-09-25 17:54:22.042292+03	102000	9.25	1
882	bond	RU000A0JXC40	ПропфнБ-П1	О1 Пропертиз Финанс БО-П01USD	\N	O1 Propertiz Finans B0-P01USD	 propertiz finans b	RU000A0JXC40	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	557	1	2026-01-23 03:00:00+03	1970-01-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:22.055057+03	2018-09-25 17:54:22.055057+03	0	0	1
883	bond	RU000A0JXD07	ТрансмшПБ1	Трансмашхолдинг ЗАО ПБО-01	\N	Transmashholding PBO-01	transmashholding pbo	RU000A0JXD07	RUB	\N	\N	PUBLISHED	\N	\N	8.52000046	8.52000046	13.3599997	49.6100006	1000	182	558	1	2020-02-04 03:00:00+03	1970-01-01 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:22.075061+03	2018-09-25 17:54:22.075061+03	102000	9.94999981	1
884	bond	RU000A0JXE06	ГТЛК 1P-03	ГосТранспортЛизингКомп 001P-03	\N	GTLK BO-001P-03	gtlk bo	RU000A0JXE06	RUB	\N	\N	PUBLISHED	\N	\N	9.69999981	9.69999981	14.1599998	27.4200001	1000	91	559	1	2032-01-22 03:00:00+03	2024-02-01 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:22.096467+03	2018-09-25 17:54:22.096467+03	106820	11	1
885	bond	RU000A0JXEV5	МТС 001P-1	Мобильные ТелеСистемы 001P-01	\N	MTS 001P-01	mts 	RU000A0JXEV5	RUB	\N	\N	PUBLISHED	\N	\N	8.92000008	8.92000008	11.3400002	44.8800011	1000	182	213	1	2022-02-04 03:00:00+03	1970-01-01 03:00:00+03	2019-02-08 03:00:00+03	2018-09-25 17:54:22.110871+03	2018-09-25 17:54:22.110871+03	100750	9	1
886	bond	RU000A0JXFC2	СоллФин 01	ООО СОЛЛЕРС-ФИНАНС об. 01	\N	SOLLERS-FINANCE ob. 01	sollers-finance ob.	RU000A0JXFC2	RUB	\N	\N	PUBLISHED	\N	\N	9.25	9.25	14.1000004	30.5400009	1000	91	560	1	2020-02-11 03:00:00+03	1970-01-01 03:00:00+03	2018-11-13 03:00:00+03	2018-09-25 17:54:22.133071+03	2018-09-25 17:54:22.133071+03	102550	12.25	1
887	bond	RU000A0JXFS8	ГазпромКБ5	Газпром капитал ООО БО-05	\N	GazpromKapital BO-05	gazpromkapital bo	RU000A0JXFS8	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	10	44.3800011	1000	182	561	1	2027-02-03 03:00:00+03	2024-02-07 03:00:00+03	2019-02-13 03:00:00+03	2018-09-25 17:54:22.146904+03	2018-09-25 17:54:22.146904+03	101350	8.89999962	1
888	bond	RU000A0JXFY6	ГазпромКБ6	Газпром капитал ООО БО-06	\N	GazpromKapital BO-06	gazpromkapital bo	RU000A0JXFY6	RUB	\N	\N	PUBLISHED	\N	\N	7.80999994	7.80999994	10	44.3800011	1000	182	561	1	2027-02-03 03:00:00+03	2024-02-07 03:00:00+03	2019-02-13 03:00:00+03	2018-09-25 17:54:22.162132+03	2018-09-25 17:54:22.162132+03	0	8.89999962	1
889	bond	RU000A0JXHE4	ЧТПЗ 1P2	ПАО ЧТПЗ 001P-02	\N	Chelpipe 001P-02	chelpipe 	RU000A0JXHE4	RUB	\N	\N	PUBLISHED	\N	\N	9.35000038	9.35000038	10.79	49.1199989	1000	182	555	1	2022-02-10 03:00:00+03	1970-01-01 03:00:00+03	2019-02-14 03:00:00+03	2018-09-25 17:54:22.182112+03	2018-09-25 17:54:22.182112+03	102000	9.85000038	1
890	bond	RU000A0JXHQ8	ГПБ БО-23	ГПБ (АО) БО-23	\N	Gazprombank BO-23	gazprombank bo	RU000A0JXHQ8	RUB	\N	\N	PUBLISHED	\N	\N	7.26000023	7.26000023	9.22000027	47.1300011	1000	184	285	1	2020-02-20 03:00:00+03	1970-01-01 03:00:00+03	2019-02-20 03:00:00+03	2018-09-25 17:54:22.202712+03	2018-09-25 17:54:22.202712+03	102900	9.35000038	1
891	bond	RU000A0JXJE0	ГИДРОМАШБ1	ГИДРОМАШСЕРВИС АО БО-01	\N	HYDROMASHSERVICE BO-01	hydromashservice bo	RU000A0JXJE0	RUB	\N	\N	PUBLISHED	\N	\N	9	9	10.3100004	53.5999985	1000	182	562	1	2027-02-09 03:00:00+03	2020-02-18 03:00:00+03	2019-02-19 03:00:00+03	2018-09-25 17:54:22.218948+03	2018-09-25 17:54:22.218948+03	102490	10.75	1
892	bond	RU000A0JXJK7	РЖД БО-11	"Российские ЖД" ОАО БО-11	\N	RZD BO-11	rzd bo	RU000A0JXJK7	RUB	\N	\N	PUBLISHED	\N	\N	8.35999966	8.35999966	8.06000042	43.1300011	1000	182	499	1	2032-02-04 03:00:00+03	2027-02-10 03:00:00+03	2019-02-20 03:00:00+03	2018-09-25 17:54:22.23458+03	2018-09-25 17:54:22.23458+03	0	8.64999962	1
893	bond	RU000A0JXJM3	СМП 02	АО "СМП Банк" обл.02	\N	SMP Bank 02	smp bank 	RU000A0JXJM3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	21.25	41.1399994	1000	182	563	1	1970-01-01 03:00:00+03	2018-12-22 03:00:00+03	2018-12-22 03:00:00+03	2018-09-25 17:54:22.250792+03	2018-09-25 17:54:22.250792+03	0	8.25	1
894	bond	RU000A0JXJP6	СМП 03	АО "СМП Банк" обл.03	\N	SMP Bank 03	smp bank 	RU000A0JXJP6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	21.4699993	41.1399994	1000	182	563	1	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:22.266507+03	2018-09-25 17:54:22.266507+03	0	8.25	1
895	bond	RU000A0JXJS0	МОЭСК БО-9	ПАО "МОЭСК" БО-09	\N	MOESK BO-09	moesk bo	RU000A0JXJS0	RUB	\N	\N	PUBLISHED	\N	\N	8.31999969	8.31999969	7.26999998	45.6199989	1000	182	361	1	2027-02-15 03:00:00+03	2020-02-24 03:00:00+03	2019-02-25 03:00:00+03	2018-09-25 17:54:22.28221+03	2018-09-25 17:54:22.28221+03	101300	9.14999962	1
896	bond	RU000A0JXK40	ПИК БО-П01	ГК ПИК (ПАО) БО-П01	\N	PIK GROUP BO-P01	pik group bo	RU000A0JXK40	RUB	\N	\N	PUBLISHED	\N	\N	10.1599998	10.1599998	8.89999962	64.8199997	1000	182	519	1	2022-02-25 03:00:00+03	2020-02-28 03:00:00+03	2019-03-01 03:00:00+03	2018-09-25 17:54:22.302195+03	2018-09-25 17:54:22.302195+03	104000	13	1
897	bond	RU000A0JXK99	ТрансФ1P02	ТрансФин-М ПАО 001P-02	\N	TransFin-M 001P-02	transfin-m 	RU000A0JXK99	RUB	\N	\N	PUBLISHED	\N	\N	10.0600004	10.0600004	5.94000006	49.1199989	1000	182	431	1	2027-02-22 03:00:00+03	2019-03-04 03:00:00+03	2019-03-04 03:00:00+03	2018-09-25 17:54:22.321835+03	2018-09-25 17:54:22.321835+03	100000	9.85000038	1
898	bond	RU000A0JXKQ2	СКИБ C01	ООО Банк "СКИБ" C01	\N	MCIB Bank C01	mcib bank c	RU000A0JXKQ2	RUB	\N	\N	PUBLISHED	\N	\N	14.9099998	14.9099998	7.1500001	72.3000031	1000	182	564	1	2023-09-01 03:00:00+03	1970-01-01 03:00:00+03	2019-03-08 03:00:00+03	2018-09-25 17:54:22.337514+03	2018-09-25 17:54:22.337514+03	0	14.5	1
899	bond	RU000A0JXLE6	РусфинБ1P2	Русфинанс Банк ООО БО-001P-02	\N	Rusfinans Bank BO-001P-02	rusfinans bank bo	RU000A0JXLE6	RUB	\N	\N	PUBLISHED	\N	\N	7.17000008	7.17000008	1.04999995	47.8800011	1000	183	472	1	2020-03-23 03:00:00+03	1970-01-01 03:00:00+03	2019-03-23 03:00:00+03	2018-09-25 17:54:22.353468+03	2018-09-25 17:54:22.353468+03	0	9.55000019	1
900	bond	RU000A0JXLM9	ИНГР БО-01	ИНГРАД ПАО БО-01	\N	INGRAD B-01	ingrad b	RU000A0JXLM9	RUB	\N	\N	PUBLISHED	\N	\N	10.3400002	10.3400002	1.44000006	52.3600006	1000	182	565	1	2022-03-17 03:00:00+03	2019-03-21 03:00:00+03	2019-03-21 03:00:00+03	2018-09-25 17:54:22.365678+03	2018-09-25 17:54:22.365678+03	100190	10.5	1
901	bond	RU000A0JXLR8	ОткрФКБОП3	ПАО ОТКРЫТИЕ ФК Банк БО-П03	\N	OTKRITIE FK Bank BO-P03	otkritie fk bank bo	RU000A0JXLR8	RUB	\N	\N	PUBLISHED	\N	\N	9.21000004	9.21000004	50.3600006	50.9199982	1000	184	384	1	2023-04-10 03:00:00+03	2020-04-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:22.386765+03	2018-09-25 17:54:22.386765+03	101520	10.1000004	1
902	bond	RU000A0JXLU2	Локосерв 1	СФО Локосервис финанс ООО 01	\N	SFO Locoservis finance 01	sfo locoservis finance 	RU000A0JXLU2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	111.870003	8.68000031	1000	3652	566	1	2027-06-20 03:00:00+03	1970-01-01 03:00:00+03	2027-06-20 03:00:00+03	2018-09-25 17:54:22.401808+03	2018-09-25 17:54:22.401808+03	0	8.68000031	1
903	bond	RU000A0JXM22	ГПБАэро 02	ГПБ Аэрофинанс обл. 02	\N	GPB Aerofinance ob. 02	gpb aerofinance ob.	RU000A0JXM22	RUB	\N	\N	PUBLISHED	\N	\N	14.04	14.04	47.4199982	48.2200012	1000	182	567	1	2030-03-15 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:22.417454+03	2018-09-25 17:54:22.417454+03	0	9.67000008	1
904	bond	RU000A0JXM97	ТрнфБО1P6	Транснефть ПАО БО-001P-06	\N	Transneft BO-001P-06	transneft bo	RU000A0JXM97	RUB	\N	\N	PUBLISHED	\N	\N	8.35999966	8.35999966	44.6300011	44.8800011	1000	182	489	1	2021-03-24 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:22.429324+03	2018-09-25 17:54:22.429324+03	101800	9	1
905	bond	RU000A0JXMB0	СТТ 02	САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ об.2	\N	SAMARATRANSOIL-TERMINAL 02	samaratransoil-terminal 	RU000A0JXMB0	RUB	\N	\N	PUBLISHED	\N	\N	8484.96973	8484.96973	48.7700005	49.8600006	1000	182	568	1	2022-03-30 03:00:00+03	2019-03-31 03:00:00+03	2018-09-29 03:00:00+03	2018-09-25 17:54:22.441596+03	2018-09-25 17:54:22.441596+03	0	10	1
906	bond	RU000A0JXME4	ЧТПЗ 1P3	ПАО ЧТПЗ 001P-03	\N	Chelpipe 001P-03	chelpipe 	RU000A0JXME4	RUB	\N	\N	PUBLISHED	\N	\N	9.65999985	9.65999985	23.6499996	24.1800003	1000	91	555	1	2024-03-21 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:22.466326+03	2018-09-25 17:54:22.466326+03	101590	9.69999981	1
907	bond	RU000A0JXMH7	МТС 001P-2	Мобильные ТелеСистемы 001P-02	\N	MTS 001P-02	mts 	RU000A0JXMH7	RUB	\N	\N	PUBLISHED	\N	\N	8.67000008	8.67000008	43.6399994	44.1300011	1000	182	213	1	2021-03-25 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:22.48168+03	2018-09-25 17:54:22.48168+03	100800	8.85000038	1
908	bond	RU000A0JXMP0	ПочтаРосБ4	Почта России (ФГУП) БО-04	\N	Russian Post BO-04	russian post bo	RU000A0JXMP0	RUB	\N	\N	PUBLISHED	\N	\N	9.22999954	9.22999954	42.9199982	44.3800011	1000	182	495	1	2027-03-22 03:00:00+03	2021-03-29 03:00:00+03	2018-10-01 03:00:00+03	2018-09-25 17:54:22.49749+03	2018-09-25 17:54:22.49749+03	0	8.89999962	1
909	bond	RU000A0JXMQ8	РСХБ БО 1P	"Россельхозбанк" (АО) БО-01P	\N	Rosselkhozbank BO-01P	rosselkhozbank bo	RU000A0JXMQ8	RUB	\N	\N	PUBLISHED	\N	\N	8.36999989	8.36999989	46.5900002	47.3699989	1000	182	446	1	2020-09-25 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:22.517432+03	2018-09-25 17:54:22.517432+03	102350	9.5	1
910	bond	RU000A0JXMZ9	ДетМир Б-4	ПАО "Детский мир" БО-04	\N	Detsky mir BO-04	detsky mir bo	RU000A0JXMZ9	RUB	\N	\N	PUBLISHED	\N	\N	8.78999996	8.78999996	44.7700005	47.3699989	1000	182	569	1	2024-03-29 03:00:00+03	2020-04-03 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:22.53302+03	2018-09-25 17:54:22.53302+03	101250	9.5	1
911	bond	RU000A0JXN05	РЖД Б01P1R	"Российские ЖД" БО-001P-01R	\N	RZhD BO-001P-01R	rzhd bo	RU000A0JXN05	RUB	\N	\N	PUBLISHED	\N	\N	8.71000004	8.71000004	26.7000008	43.3800011	1000	182	256	1	2032-05-18 03:00:00+03	2023-05-30 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:22.545314+03	2018-09-25 17:54:22.545314+03	100640	8.69999981	1
912	bond	RU000A0JXN13	РСГ-ФинБ7	РСГ-Финанс ООО обл. БО-7	\N	RSG-Finance BO-07	rsg-finance bo	RU000A0JXN13	RUB	\N	\N	PUBLISHED	\N	\N	12.8599997	12.8599997	63.6199989	67.3199997	1000	182	300	1	2022-04-01 03:00:00+03	2019-04-05 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:22.560912+03	2018-09-25 17:54:22.560912+03	100500	13.5	1
913	bond	RU000A0JXN21	СистемБ1P6	АФК "Система" ПАО БО-001P-06	\N	AFK Systema 001P-06	afk systema 	RU000A0JXN21	RUB	\N	\N	PUBLISHED	\N	\N	9.92000008	9.92000008	41.9399986	44.3800011	1000	182	437	1	2027-03-26 03:00:00+03	2022-04-01 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:22.572898+03	2018-09-25 17:54:22.572898+03	97690	8.89999962	1
914	bond	RU000A0JXN62	КонцесТ 01	КонцессииТеплоснабжения ООО 01	\N	Koncessii teplosnabjeniya 01	koncessii teplosnabjeniya 	RU000A0JXN62	RUB	\N	\N	PUBLISHED	\N	\N	9.05000019	9.05000019	42.5800018	92.25	1000	364	570	1	2032-04-06 03:00:00+03	2019-04-09 03:00:00+03	2019-04-09 03:00:00+03	2018-09-25 17:54:22.588945+03	2018-09-25 17:54:22.588945+03	0	9.25	1
915	bond	RU000A0JXNB8	ВСК 01P-01	ВСК САО БО-001P-01	\N	VSK BO-001P-01	vsk bo	RU000A0JXNB8	RUB	\N	\N	PUBLISHED	\N	\N	7.80999994	7.80999994	50.8600006	55.0999985	1000	182	571	1	2022-04-05 03:00:00+03	2018-10-09 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:22.604766+03	2018-09-25 17:54:22.604766+03	100120	11.0500002	1
916	bond	RU000A0JXNF9	Газпнф1P1R	"Газпром нефть" ПАО 001P-01R	\N	Gazprom Neft 001P-1R	gazprom neft 	RU000A0JXNF9	RUB	\N	\N	PUBLISHED	\N	\N	8.52000046	8.52000046	39.8100014	43.3800011	1000	182	200	1	2022-04-06 03:00:00+03	1970-01-01 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:22.62627+03	2018-09-25 17:54:22.62627+03	101050	8.69999981	1
917	bond	RU000A0JXNJ1	ПионерБ1P2	ГК Пионер БО-001P-02	\N	GK Pioner AO BO-001P-02	gk pioner ao bo	RU000A0JXNJ1	RUB	\N	\N	PUBLISHED	\N	\N	13.5299997	13.5299997	61.4000015	67.3199997	1000	182	504	1	2020-04-09 03:00:00+03	2018-10-11 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:22.641411+03	2018-09-25 17:54:22.641411+03	100000	13.5	1
918	bond	RU000A0JXNV6	РН БАНК1Р1	РН БАНК АО БО-001Р-01	\N	RN Bank BO-001P-01	rn bank bo	RU000A0JXNV6	RUB	\N	\N	PUBLISHED	\N	\N	8.56999969	8.56999969	42.2000008	47.3800011	1000	183	572	1	2020-04-16 03:00:00+03	1970-01-01 03:00:00+03	2018-10-15 03:00:00+03	2018-09-25 17:54:22.664878+03	2018-09-25 17:54:22.664878+03	0	9.44999981	1
919	bond	RU000A0JXP29	КонцесВ 04	Концессии водоснабжения ООО 04	\N	Koncessii vodosnabjeniya 04	koncessii vodosnabjeniya 	RU000A0JXP29	RUB	\N	\N	PUBLISHED	\N	\N	10.0299997	10.0299997	43.25	102.220001	1000	364	462	1	2031-06-07 03:00:00+03	2019-04-23 03:00:00+03	2019-04-23 03:00:00+03	2018-09-25 17:54:22.680746+03	2018-09-25 17:54:22.680746+03	0	10.25	1
920	bond	RU000A0JXP45	ГПБ БО-16	ГПБ (АО) БО-16	\N	Gazprombank BO-16	gazprombank bo	RU000A0JXP45	RUB	\N	\N	PUBLISHED	\N	\N	8.51000023	8.51000023	40.1100006	45.8800011	1000	183	285	1	2024-04-18 03:00:00+03	2020-10-18 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:22.696606+03	2018-09-25 17:54:22.696606+03	101500	9.14999962	1
921	bond	RU000A0JXPD9	ТМК БО-6	"Трубная Мет.Комп." ПАО БО-06	\N	TMK BO-06	tmk bo	RU000A0JXPD9	RUB	\N	\N	PUBLISHED	\N	\N	9.60999966	9.60999966	41.1399994	48.6199989	1000	182	484	1	2027-04-13 03:00:00+03	2020-04-21 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:22.719169+03	2018-09-25 17:54:22.719169+03	100500	9.75	1
922	bond	RU000A0JXPE7	СберБ БО2R	Сбербанк ПАО БО 001P-02R	\N	Sberbank BO 001P-02R	sberbank bo 	RU000A0JXPE7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.0500000007	1000	182	573	1	2019-04-26 03:00:00+03	1970-01-01 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:22.732213+03	2018-09-25 17:54:22.732213+03	100900	0.00999999978	1
923	bond	RU000A0JXPG2	ГТЛК 1P-04	ГосТранспортЛизингКомп 001P-04	\N	GTLK BO-001P-04	gtlk bo	RU000A0JXPG2	RUB	\N	\N	PUBLISHED	\N	\N	9.43999958	9.43999958	17	24.5599995	1000	91	559	1	2032-04-06 03:00:00+03	2023-04-18 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:22.744636+03	2018-09-25 17:54:22.744636+03	102700	9.85000038	1
924	bond	RU000A0JXPJ6	ПолиплП1Б1	Полипласт АО П01-БО-01	\N	Polyplast AO P01-BO-01	polyplast ao p	RU000A0JXPJ6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	61.1800003	72.3000031	1000	182	574	1	2023-04-18 03:00:00+03	2020-04-21 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:22.760686+03	2018-09-25 17:54:22.760686+03	0	14.5	1
925	bond	RU000A0JXPK4	ТранснфБО7	Транснефть ПАО БО-07	\N	Transneft BO-07	transneft bo	RU000A0JXPK4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	36.6800003	43.6300011	1000	182	489	1	2027-04-14 03:00:00+03	2024-04-17 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:22.776088+03	2018-09-25 17:54:22.776088+03	0	8.75	1
926	bond	RU000A0JXPM0	ЛСР БО 1Р2	Группа ЛСР ПАО БО 001Р-02	\N	LSR 1P-2	lsr 	RU000A0JXPM0	RUB	\N	\N	PUBLISHED	\N	\N	10	10	16.3899994	24.0599995	1000	91	526	1	2022-04-20 03:00:00+03	1970-01-01 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:22.793372+03	2018-09-25 17:54:22.793372+03	100000	9.64999962	1
927	bond	RU000A0JXPN8	Ростел1P2R	Ростелеком ПАО 001P-02R	\N	Rostelecom 001P-02R	rostelecom 	RU000A0JXPN8	RUB	\N	\N	PUBLISHED	\N	\N	8.71000004	8.71000004	36.2599983	43.1300011	1000	182	524	1	2027-04-14 03:00:00+03	2022-04-20 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:22.808405+03	2018-09-25 17:54:22.808405+03	0	8.64999962	1
928	bond	RU000A0JXPT5	СТТ 03	САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ об.3	\N	SAMARATRANSOIL-TERMINAL 03	samaratransoil-terminal 	RU000A0JXPT5	RUB	\N	\N	PUBLISHED	\N	\N	155.960007	155.960007	49.3199997	59.8400002	1000	182	568	1	2022-04-27 03:00:00+03	2020-04-27 03:00:00+03	2018-10-27 03:00:00+03	2018-09-25 17:54:22.824061+03	2018-09-25 17:54:22.824061+03	0	12	1
929	bond	RU000A0JXPU3	Калаш БП1	Концерн Калашников БО-П01	\N	Concern Kalashnikov BO-P01	concern kalashnikov bo	RU000A0JXPU3	RUB	\N	\N	PUBLISHED	\N	\N	8.06000042	8.06000042	45.3899994	54.3499985	1000	182	575	1	2022-04-21 03:00:00+03	2020-04-23 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:22.835857+03	2018-09-25 17:54:22.835857+03	104350	10.8999996	1
930	bond	RU000A0JXQ28	ФПК 1P-01	ФедералПассажирКомпан 001P-01	\N	FPC 1P-01	fpc 	RU000A0JXQ28	RUB	\N	\N	PUBLISHED	\N	\N	8.98999977	8.98999977	36.6500015	43.8800011	1000	182	507	1	2027-04-15 03:00:00+03	2022-10-20 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:22.85636+03	2018-09-25 17:54:22.85636+03	100000	8.80000019	1
931	bond	RU000A0JXQ44	РЖД Б01P2R	"Российские ЖД" БО-001P-02R	\N	RZhD BO-001P-02R	rzhd bo	RU000A0JXQ44	RUB	\N	\N	PUBLISHED	\N	\N	9.02000046	9.02000046	35.4000015	42.3800011	1000	182	256	1	2037-04-02 03:00:00+03	2026-04-16 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:22.87274+03	2018-09-25 17:54:22.87274+03	98240	8.5	1
932	bond	RU000A0JXQ51	АВТОБФ БП1	АВТОБАН-Финанс АО БО-П01	\N	AVTOBAN-Finance B0-P01	avtoban-finance b	RU000A0JXQ51	RUB	\N	\N	PUBLISHED	\N	\N	11.5500002	11.5500002	42.4000015	51.1100006	1000	182	576	1	2024-04-19 03:00:00+03	2018-10-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:22.887935+03	2018-09-25 17:54:22.887935+03	99900	10.25	1
933	bond	RU000A0JXQ85	Тинькофф1R	АО "Тинькофф Банк" БО-001P-01R	\N	Tinkoff Bank BO-P01-01R	tinkoff bank bo	RU000A0JXQ85	RUB	\N	\N	PUBLISHED	\N	\N	8.92000008	8.92000008	39.9199982	48.1199989	1000	182	512	1	2022-04-22 03:00:00+03	2019-04-26 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:22.899663+03	2018-09-25 17:54:22.899663+03	100500	9.64999962	1
934	bond	RU000A0JXQ93	ПИК БО-П02	ГК ПИК (ПАО) БО-П02	\N	PIK GROUP BO-P02	pik group bo	RU000A0JXQ93	RUB	\N	\N	PUBLISHED	\N	\N	10.1800003	10.1800003	18.4899998	28.0499992	1000	91	519	1	2022-04-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:22.911734+03	2018-09-25 17:54:22.911734+03	102830	11.25	1
935	bond	RU000A0JXQD7	ТрнфБО1P7	Транснефть ПАО БО-001P-07	\N	Transneft BO-001P-07	transneft bo	RU000A0JXQD7	RUB	\N	\N	PUBLISHED	\N	\N	7.30999994	7.30999994	35	43.6300011	1000	182	489	1	2020-10-28 03:00:00+03	1970-01-01 03:00:00+03	2018-10-31 03:00:00+03	2018-09-25 17:54:22.923805+03	2018-09-25 17:54:22.923805+03	102980	8.75	1
936	bond	RU000A0JXQH8	О'КЕЙ-Б01Р	"О'КЕЙ" ООО БО-001Р-01	\N	O'KEY OOO BO-001P-01	o'key ooo bo	RU000A0JXQH8	RUB	\N	\N	PUBLISHED	\N	\N	9.89999962	9.89999962	14.1300001	23.8099995	1000	91	281	1	2021-04-29 03:00:00+03	1970-01-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:22.940152+03	2018-09-25 17:54:22.940152+03	99990	9.55000019	1
937	bond	RU000A0JXQJ4	ТелХолПБО3	АО "ЭР-Телеком Холдинг" ПБО-03	\N	"ER-Telekom Holding" PBO-3	"er-telekom holding"	RU000A0JXQJ4	RUB	\N	\N	PUBLISHED	\N	\N	10.3500004	10.3500004	42.3100014	53.0999985	1000	182	544	1	2020-10-29 03:00:00+03	1970-01-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:22.955608+03	2018-09-25 17:54:22.955608+03	101000	10.6499996	1
938	bond	RU000A0JXQK2	Роснфт1P4	ПАО НК Роснефть 001P-04	\N	Rosneft  001P-04	rosneft  	RU000A0JXQK2	RUB	\N	\N	PUBLISHED	\N	\N	9.17000008	9.17000008	34.3600006	43.1300011	1000	182	311	1	2027-04-22 03:00:00+03	2023-04-27 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:22.968436+03	2018-09-25 17:54:22.968436+03	98800	8.64999962	1
939	bond	RU000A0JXQQ9	АРАГОН об	ООО АРАГОН об.	\N	ARAGON ob.	aragon ob.	RU000A0JXQQ9	RUB	\N	\N	PUBLISHED	\N	\N	12.4799995	12.4799995	13.4799995	25.5499992	1000	91	577	1	2022-05-04 03:00:00+03	2019-05-08 03:00:00+03	2018-11-07 03:00:00+03	2018-09-25 17:54:22.983218+03	2018-09-25 17:54:22.983218+03	0	10.25	1
940	bond	RU000A0JXQU1	ИАВ 5	ИА Возрождение 5 ООО	\N	IA Vozrozhdenie 5	ia vozrozhdenie 	RU000A0JXQU1	RUB	\N	\N	PUBLISHED	\N	\N	7.73999977	7.73999977	3.55999994	3.94000006	501.179993	31	412	1	2049-08-28 03:00:00+03	2018-10-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:22.99527+03	2018-09-25 17:54:22.99527+03	0	9.25	1
941	bond	RU000A0JXQX5	АльфаБО-19	Альфа-Банк АО обл. БО-19	\N	Alfa-Bank BO-19	alfa-bank bo	RU000A0JXQX5	RUB	\N	\N	PUBLISHED	\N	\N	5.73000002	5.73000002	18.7700005	24.9300003	1000	182	307	1	2020-05-08 03:00:00+03	1970-01-01 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:23.007218+03	2018-09-25 17:54:23.007218+03	99000	5	1
942	bond	RU000A0JXR43	Якут-09 об	Республика Саха (Якутия) об.09	\N	Sakha (Yakutia)-09	sakha (	RU000A0JXR43	RUB	\N	\N	PUBLISHED	\N	\N	8.86999989	8.86999989	9.40999985	21.4200001	1000	91	347	1	2024-05-16 03:00:00+03	1970-01-01 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:23.019198+03	2018-09-25 17:54:23.019198+03	0	8.59000015	1
943	bond	RU000A0JXR50	МОЭСК БО10	ПАО "МОЭСК" БО-10	\N	MOESK BO-10	moesk bo	RU000A0JXR50	RUB	\N	\N	PUBLISHED	\N	\N	8.85999966	8.85999966	30.6900005	42.6300011	1000	182	361	1	2027-05-06 03:00:00+03	2022-05-12 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:23.031252+03	2018-09-25 17:54:23.031252+03	0	8.55000019	1
944	bond	RU000A0JXR68	Роснфт1P5	ПАО НК Роснефть 001P-05	\N	Rosneft  001P-05	rosneft  	RU000A0JXR68	RUB	\N	\N	PUBLISHED	\N	\N	0	0	9.42000008	21.4400005	1000	91	311	1	2025-05-08 03:00:00+03	1970-01-01 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:23.043313+03	2018-09-25 17:54:23.043313+03	0	8.60000038	1
945	bond	RU000A0JXR84	РЖД Б01P3R	"Российские ЖД" БО-001P-03R	\N	RZhD BO-001P-03R	rzhd bo	RU000A0JXR84	RUB	\N	\N	PUBLISHED	\N	\N	7.78000021	7.78000021	30.1499996	41.8800011	1000	182	256	1	2037-04-23 03:00:00+03	2025-05-08 03:00:00+03	2018-11-15 03:00:00+03	2018-09-25 17:54:23.055222+03	2018-09-25 17:54:23.055222+03	0	8.39999962	1
946	bond	RU000A0JXRB9	ПропфнБ-П2	О1 Пропертиз Финанс БО-П02USD	\N	O1 Propertiz Finans B0-P02USD	 propertiz finans b	RU000A0JXRB9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	557	1	2024-05-14 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:23.071056+03	2018-09-25 17:54:23.071056+03	0	0	1
947	bond	RU000A0JXRD5	ПочтаРБ1P2	Почта России (ФГУП) БО-001P-02	\N	Russian Post BO-001P-02	russian post bo	RU000A0JXRD5	RUB	\N	\N	PUBLISHED	\N	\N	8.72000027	8.72000027	29.5200005	42.6300011	1000	182	495	1	2027-05-11 03:00:00+03	2021-05-18 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:23.082868+03	2018-09-25 17:54:23.082868+03	100000	8.55000019	1
948	bond	RU000A0JXRF0	СамолетБП1	Группа компаний Самолет БО-П01	\N	Samolet Group Companies BO-P01	samolet group companies bo	RU000A0JXRF0	RUB	\N	\N	PUBLISHED	\N	\N	11.5100002	11.5100002	11.5100002	29.9200001	1000	91	578	1	2022-05-17 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:23.094995+03	2018-09-25 17:54:23.094995+03	0	12	1
949	bond	RU000A0JXRM6	ДОМРФИА 01	ДОМ РФ ИА 01	\N	Mortgage agent DOM RF 01	mortgage agent dom rf 	RU000A0JXRM6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	741.559998	92	553	1	2049-09-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:23.111298+03	2018-09-25 17:54:23.111298+03	0	0	1
950	bond	RU000A0JXRN4	ЕврХимБ1Р2	ЕвроХим МХК АО БО-001Р-02	\N	EuroChem BO-001-P02	eurochem bo	RU000A0JXRN4	RUB	\N	\N	PUBLISHED	\N	\N	8.25	8.25	29.25	44.1100006	1000	184	579	1	2020-05-26 03:00:00+03	1970-01-01 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:23.124958+03	2018-09-25 17:54:23.124958+03	101000	8.75	1
951	bond	RU000A0JXRP9	ВЭБ ПБО1Р7	Внешэкономбанк ПБО-001Р-07	\N	Vneshekonombank PBO-001P-07	vneshekonombank pbo	RU000A0JXRP9	RUB	\N	\N	PUBLISHED	\N	\N	8.36999989	8.36999989	30.5	45.1300011	1000	182	473	1	2019-11-22 03:00:00+03	1970-01-01 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:23.138866+03	2018-09-25 17:54:23.138866+03	100900	9.05000019	1
952	bond	RU000A0JXRS3	ИКС5Фин1P2	ИКС 5 ФИНАНС 001P-02	\N	X5 FINANCE 001P-02	 finance 	RU000A0JXRS3	RUB	\N	\N	PUBLISHED	\N	\N	11.4200001	11.4200001	28.4799995	42.1300011	1000	182	528	1	2032-05-07 03:00:00+03	2020-11-20 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:23.151179+03	2018-09-25 17:54:23.151179+03	95000	8.44999981	1
953	bond	RU000A0JXRT1	ФПКГарИнP1	КНФПК Гарант-Инвест БО-001P-01	\N	KN FPK Garant-Invest 001P-01	kn fpk garant-invest 	RU000A0JXRT1	RUB	\N	\N	PUBLISHED	\N	\N	13.3599997	13.3599997	42.7400017	64.8199997	1000	182	580	1	2019-05-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:23.163199+03	2018-09-25 17:54:23.163199+03	99990	13	1
954	bond	RU000A0JXRV7	АльфаБО-20	Альфа-Банк АО обл. БО-20	\N	Alfa-Bank BO-20	alfa-bank bo	RU000A0JXRV7	RUB	\N	\N	PUBLISHED	\N	\N	8.19999981	8.19999981	28.3600006	43.3800011	1000	182	307	1	2032-05-11 03:00:00+03	2020-05-26 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:23.178321+03	2018-09-25 17:54:23.178321+03	0	8.69999981	1
955	bond	RU000A0JXRW5	СберБ БО19	Сбербанк ПАО БО-19	\N	Sberbank BO-19	sberbank bo	RU000A0JXRW5	RUB	\N	\N	PUBLISHED	\N	\N	8.46000004	8.46000004	26.8299999	41.8400002	1000	184	529	1	2027-05-30 03:00:00+03	2021-05-30 03:00:00+03	2018-11-30 03:00:00+03	2018-09-25 17:54:23.190218+03	2018-09-25 17:54:23.190218+03	100000	8.30000019	1
956	bond	RU000A0JXRX3	Лента Б1P1	Лента ООО БО-001P-01	\N	Lenta OOO BO-001P-01	lenta ooo bo	RU000A0JXRX3	RUB	\N	\N	PUBLISHED	\N	\N	7.71000004	7.71000004	28.3600006	43.3800011	1000	182	423	1	2020-05-26 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:23.205623+03	2018-09-25 17:54:23.205623+03	101730	8.69999981	1
957	bond	RU000A0JXS26	ДОМРФИА 02	ДОМ РФ ИА 02	\N	Mortgage agent DOM RF 2	mortgage agent dom rf 	RU000A0JXS26	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	703.039978	92	553	1	2041-03-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:23.217905+03	2018-09-25 17:54:23.217905+03	0	0	1
958	bond	RU000A0JXS34	КТЖФинанс1	КТЖ Финанс ООО об.01	\N	KTZ Finance 01	ktz finance 	RU000A0JXS34	RUB	\N	\N	PUBLISHED	\N	\N	9.43000031	9.43000031	25.1700001	43.6300011	1000	182	581	1	2022-06-07 03:00:00+03	1970-01-01 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:23.230014+03	2018-09-25 17:54:23.230014+03	98550	8.75	1
959	bond	RU000A0JXS59	ПочтаРБ1P3	Почта России (ФГУП) БО-001P-03	\N	Russian Post BO-001P-03	russian post bo	RU000A0JXS59	RUB	\N	\N	PUBLISHED	\N	\N	8.68000031	8.68000031	27.3199997	42.1300011	1000	182	495	1	2027-05-19 03:00:00+03	2020-05-27 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:23.241823+03	2018-09-25 17:54:23.241823+03	99900	8.44999981	1
960	bond	RU000A0JXS75	УрКаПБО3P	Уралкалий ПАО ПБО-03-P	\N	Uralkali PBO-03-P	uralkali pbo	RU000A0JXS75	RUB	\N	\N	PUBLISHED	\N	\N	7.78999996	7.78999996	28.4500008	43.8800011	1000	182	582	1	2020-05-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:23.253797+03	2018-09-25 17:54:23.253797+03	101760	8.80000019	1
961	bond	RU000A0JXS83	ЯрОбл 2017	Ярославская обл. об.2017г.	\N	Yaroslavl region 2017	yaroslavl region 	RU000A0JXS83	RUB	\N	\N	PUBLISHED	\N	\N	8.77000046	8.77000046	12.8900003	41.8800011	1000	182	346	1	2027-04-20 03:00:00+03	1970-01-01 03:00:00+03	2019-01-29 03:00:00+03	2018-09-25 17:54:23.266373+03	2018-09-25 17:54:23.266373+03	99450	8.39999962	1
962	bond	RU000A0JXSD3	ВлгОб35007	Волгоградская обл. 35007 обл.	\N	Volgograd reg.-35007	volgograd reg.	RU000A0JXSD3	RUB	\N	\N	PUBLISHED	\N	\N	8.93000031	8.93000031	4.01000023	22.8099995	1000	91	276	1	2024-06-02 03:00:00+03	1970-01-01 03:00:00+03	2018-12-09 03:00:00+03	2018-09-25 17:54:23.278015+03	2018-09-25 17:54:23.278015+03	100000	9.14999962	1
963	bond	RU000A0JXSF8	ТМК БО-7	"Трубная Мет.Комп." ПАО БО-07	\N	TMK BO-07	tmk bo	RU000A0JXSF8	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	29.7199993	46.6199989	1000	182	484	1	2027-05-21 03:00:00+03	2021-05-28 03:00:00+03	2018-11-30 03:00:00+03	2018-09-25 17:54:23.290001+03	2018-09-25 17:54:23.290001+03	0	9.35000038	1
964	bond	RU000A0JXSS1	Акрон Б1P2	Акрон (ПАО) БО-001P-02	\N	Acron BO-001P-02	acron bo	RU000A0JXSS1	RUB	\N	\N	PUBLISHED	\N	\N	9.01000023	9.01000023	26.3899994	42.8800011	1000	182	451	1	2027-05-25 03:00:00+03	2021-11-30 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:23.301781+03	2018-09-25 17:54:23.301781+03	99400	8.60000038	1
965	bond	RU000A0JXT17	БалтЛизБП1	Балтийский лизинг ООО БО-П01	\N	Baltic Leasing BO-P01	baltic leasing bo	RU000A0JXT17	RUB	\N	\N	PUBLISHED	\N	\N	10.5	10.5	5.90999985	28.2999992	1000	91	395	1	2020-06-04 03:00:00+03	1970-01-01 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:23.321742+03	2018-09-25 17:54:23.321742+03	101230	11.3500004	1
966	bond	RU000A0JXT41	СамарОбл13	Самарская область 2017	\N	Samara reg.-13	samara reg.	RU000A0JXT41	RUB	\N	\N	PUBLISHED	\N	\N	8.43999958	8.43999958	4.03999996	20.4200001	1000	91	269	1	2024-05-31 03:00:00+03	1970-01-01 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:23.337639+03	2018-09-25 17:54:23.337639+03	0	8.18999958	1
967	bond	RU000A0JXT58	МежИнБ01P1	Международн.инвест.банк БО1P-1	\N	International Invest. Bank 1P1	international invest.	RU000A0JXT58	RUB	\N	\N	PUBLISHED	\N	\N	9.17000008	9.17000008	3.5999999	43.6300011	1000	182	320	1	2027-03-01 03:00:00+03	2020-03-09 03:00:00+03	2019-03-11 03:00:00+03	2018-09-25 17:54:23.420608+03	2018-09-25 17:54:23.420608+03	0	8.75	1
968	bond	RU000A0JXTB5	БелугаБП1	Белуга Групп ПАО БО-П01	\N	Beluga Group BO-P01	beluga group bo	RU000A0JXTB5	RUB	\N	\N	PUBLISHED	\N	\N	9.71000004	9.71000004	27.3299999	47.3699989	1000	182	413	1	2022-06-07 03:00:00+03	1970-01-01 03:00:00+03	2018-12-11 03:00:00+03	2018-09-25 17:54:23.434212+03	2018-09-25 17:54:23.434212+03	100000	9.5	1
969	bond	RU000A0JXTF6	ГПБ БО-13	ГПБ (АО) БО-13	\N	GPB BO-13	gpb bo	RU000A0JXTF6	RUB	\N	\N	PUBLISHED	\N	\N	8.11999989	8.11999989	24.4099998	43.3699989	1000	183	523	1	2020-06-14 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:23.446311+03	2018-09-25 17:54:23.446311+03	0	8.64999962	1
970	bond	RU000A0JXTG4	ОткрХОЛБП1	Открытие Холдинг АО обл.БО-П01	\N	Otkritie Holding BO-P01	otkritie holding bo	RU000A0JXTG4	RUB	\N	\N	PUBLISHED	\N	\N	16153.3398	16153.3398	123.400002	149.240005	1000	455	351	1	2032-05-26 03:00:00+03	2018-12-12 03:00:00+03	2018-12-12 03:00:00+03	2018-09-25 17:54:23.458071+03	2018-09-25 17:54:23.458071+03	0	12.0900002	1
971	bond	RU000A0JXTH2	КаркадеБ03	Каркаде ООО БО-03	\N	Carcade BO-03	carcade bo	RU000A0JXTH2	RUB	\N	\N	PUBLISHED	\N	\N	10.0600004	10.0600004	2.80999994	19.6900005	585	91	490	1	2020-06-10 03:00:00+03	1970-01-01 03:00:00+03	2018-12-12 03:00:00+03	2018-09-25 17:54:23.469683+03	2018-09-25 17:54:23.469683+03	60500.6992	13.5	1
972	bond	RU000A0JXTN0	БинбанкБП3	БИНБАНК ПАО БО-П03	\N	BINBANK BO-P03	binbank bo	RU000A0JXTN0	RUB	\N	\N	PUBLISHED	\N	\N	9.34000015	9.34000015	33.6199989	121.830002	1000	366	227	1	2020-06-17 03:00:00+03	1970-01-01 03:00:00+03	2019-06-17 03:00:00+03	2018-09-25 17:54:23.486798+03	2018-09-25 17:54:23.486798+03	104200	12.1499996	1
973	bond	RU000A0JXTQ3	РусГидрБП5	РусГидро (ПАО) БО-П05	\N	RusHydro BO-P05	rushydro bo	RU000A0JXTQ3	RUB	\N	\N	PUBLISHED	\N	\N	8.22000027	8.22000027	22.9200001	40.8899994	1000	182	483	1	2020-06-12 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:23.503575+03	2018-09-25 17:54:23.503575+03	100200	8.19999981	1
974	bond	RU000A0JXTS9	RUS-27	ГОВОЗ РФ 12840078V (RU)	\N	RUS-27	rus	RU000A0JXTS9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	143712.922	4250	200000	183	497	1	2027-06-23 03:00:00+03	1970-01-01 03:00:00+03	2018-12-23 03:00:00+03	2018-09-25 17:54:23.519082+03	2018-09-25 17:54:23.519082+03	0	4.25	1
975	bond	RU000A0JXTW1	БелгОб2017	Белгородская обл.2017 обл.	\N	Belgorodskaya obl. 2017	belgorodskaya obl.	RU000A0JXTW1	RUB	\N	\N	PUBLISHED	\N	\N	8.51000023	8.51000023	1.58000004	20.5699997	1000	91	268	1	2024-06-11 03:00:00+03	1970-01-01 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:23.534362+03	2018-09-25 17:54:23.534362+03	0	8.25	1
976	bond	RU000A0JXTY7	ЧТПЗ 1P4	ПАО ЧТПЗ 001P-04	\N	Chelpipe 001P-04	chelpipe 	RU000A0JXTY7	RUB	\N	\N	PUBLISHED	\N	\N	9.14000034	9.14000034	24.0300007	44.6300011	1000	182	555	1	2027-06-08 03:00:00+03	2021-06-15 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:23.550531+03	2018-09-25 17:54:23.550531+03	0	8.94999981	1
977	bond	RU000A0JXU14	RUS-47	ГОВОЗ РФ 12840079V (RU)	\N	RUS-47	rus	RU000A0JXU14	RUB	\N	\N	PUBLISHED	\N	\N	0	0	177527.719	5250	200000	183	497	1	2047-06-23 03:00:00+03	1970-01-01 03:00:00+03	2018-12-23 03:00:00+03	2018-09-25 17:54:23.574744+03	2018-09-25 17:54:23.574744+03	0	5.25	1
978	bond	RU000A0JXU48	ВЭБ ПБО1Р8	Внешэкономбанк ПБО-001Р-08 USD	\N	VneshekonombankPBO-001P-08 USD	vneshekonombankpbo	RU000A0JXU48	RUB	\N	\N	PUBLISHED	\N	\N	4.28999996	4.28999996	739.659973	21.1900005	1000	182	518	1	2022-12-15 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:23.59651+03	2018-09-25 17:54:23.59651+03	100000	4.25	1
979	bond	RU000A0JXU71	ВЭБ ПБО1Р9	Внешэкономбанк ПБО-001Р-09	\N	Vneshekonombank PBO-001P-09	vneshekonombank pbo	RU000A0JXU71	RUB	\N	\N	PUBLISHED	\N	\N	8.82999992	8.82999992	22.7700005	43.6300011	1000	182	473	1	2021-06-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:23.610286+03	2018-09-25 17:54:23.610286+03	100230	8.75	1
980	bond	RU000A0JXUC1	РСХБ БО 2P	"Россельхозбанк" (АО) БО-02P	\N	Rosselkhozbank BO-02P	rosselkhozbank bo	RU000A0JXUC1	RUB	\N	\N	PUBLISHED	\N	\N	8.10000038	8.10000038	21.7999992	43.1300011	1000	182	446	1	2021-06-21 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:23.627741+03	2018-09-25 17:54:23.627741+03	0	8.64999962	1
981	bond	RU000A0JXUD9	КОМИ 14 об	Республика Коми 2017 14 обл.	\N	Komi-14	komi	RU000A0JXUD9	RUB	\N	\N	PUBLISHED	\N	\N	8.92000008	8.92000008	0	20.9400005	1000	91	338	1	2024-06-25 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:23.641852+03	2018-09-25 17:54:23.641852+03	99000	8.39999962	1
982	bond	RU000A0JXUH0	Росбанк2P2	РОСБАНК ПАО обл. БО-002P-02	\N	Rosbank BO-002P-02	rosbank bo	RU000A0JXUH0	RUB	\N	\N	PUBLISHED	\N	\N	6.84000015	6.84000015	34.4799995	52.4300003	1000	184	498	1	2020-06-30 03:00:00+03	1970-01-01 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:23.657805+03	2018-09-25 17:54:23.657805+03	0	10.3999996	1
983	bond	RU000A0JXUU3	ВолгКапПБ1	"ВОЛГА Капитал" ПАО ПБО-01	\N	VOLGA Capital PBO-01	volga capital pbo	RU000A0JXUU3	RUB	\N	\N	PUBLISHED	\N	\N	9.68000031	9.68000031	19.7900009	42.3800011	1000	182	583	1	2022-06-27 03:00:00+03	2020-06-29 03:00:00+03	2018-12-31 03:00:00+03	2018-09-25 17:54:23.673752+03	2018-09-25 17:54:23.673752+03	0	8.5	1
984	bond	RU000A0JXVB1	ТрансФ1P03	ТрансФин-М ПАО 001P-03	\N	TransFin-M 001P-03	transfin-m 	RU000A0JXVB1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	22.4400005	52.3600006	1000	182	431	1	2027-06-28 03:00:00+03	1970-01-01 03:00:00+03	2019-01-07 03:00:00+03	2018-09-25 17:54:23.689668+03	2018-09-25 17:54:23.689668+03	0	10.5	1
985	bond	RU000A0JXVE5	СИНХФБО1P1	СвязьИнвНефХим-Фин БО-001Р-01	\N	SvyazInvNefHim-Finance B001P01	svyazinvnefhim-finance b	RU000A0JXVE5	RUB	\N	\N	PUBLISHED	\N	\N	9.59000015	9.59000015	18.7800007	44.3800011	1000	182	584	1	2022-07-05 03:00:00+03	1970-01-01 03:00:00+03	2019-01-08 03:00:00+03	2018-09-25 17:54:23.705392+03	2018-09-25 17:54:23.705392+03	98500	8.89999962	1
986	bond	RU000A0JXVG0	ДелПорт1P1	ДелоПортс ООО БО 001P-01	\N	DeloPorts 001P-01	deloports 	RU000A0JXVG0	RUB	\N	\N	PUBLISHED	\N	\N	9	9	19.8299999	46.8699989	1000	182	459	1	2022-07-05 03:00:00+03	1970-01-01 03:00:00+03	2019-01-08 03:00:00+03	2018-09-25 17:54:23.718204+03	2018-09-25 17:54:23.718204+03	0	9.39999962	1
987	bond	RU000A0JXVH8	ТамбовОбл3	ФУ Тамбовской области 35003	\N	Tambov Region FinDpt 35003	tambov region findpt 	RU000A0JXVH8	RUB	\N	\N	PUBLISHED	\N	\N	8.11999989	8.11999989	15.4200001	20.9400005	1000	91	521	1	2024-07-12 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:23.737634+03	2018-09-25 17:54:23.737634+03	0	8.39999962	1
988	bond	RU000A0JXVM8	РоссетБ1Р1	Российские сети ПАО БО-001Р-01	\N	Rosseti BO-001P-01	rosseti bo	RU000A0JXVM8	RUB	\N	\N	PUBLISHED	\N	\N	8.39000034	8.39000034	16.75	40.6399994	1000	182	457	1	2022-07-07 03:00:00+03	1970-01-01 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:23.753291+03	2018-09-25 17:54:23.753291+03	0	8.14999962	1
989	bond	RU000A0JXVT3	МРСКЮг БО2	МРСК Юга (ПАО) БО-02	\N	MRSK Yuga BO-02	mrsk yuga bo	RU000A0JXVT3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	20.5100002	23.0400009	1000	91	585	1	2022-07-01 03:00:00+03	1970-01-01 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:23.780449+03	2018-09-25 17:54:23.780449+03	0	9.23999977	1
990	bond	RU000A0JXVY3	ОбувьрусБ1	Обувьрус ООО обл.БО-01	\N	Obuvrus BO-01	obuvrus bo	RU000A0JXVY3	RUB	\N	\N	PUBLISHED	\N	\N	11.8599997	11.8599997	28.3600006	74.7900009	1000	182	556	1	2020-07-15 03:00:00+03	2019-07-17 03:00:00+03	2019-01-16 03:00:00+03	2018-09-25 17:54:23.792481+03	2018-09-25 17:54:23.792481+03	102560	15	1
991	bond	RU000A0JXW46	ФПКГарИнP2	КНФПК Гарант-Инвест БО-001P-02	\N	KN FPK Garant-Invest 001P-02	kn fpk garant-invest 	RU000A0JXW46	RUB	\N	\N	PUBLISHED	\N	\N	14.4499998	14.4499998	22.3600006	59.8400002	1000	182	580	1	2019-07-18 03:00:00+03	1970-01-01 03:00:00+03	2019-01-17 03:00:00+03	2018-09-25 17:54:23.804903+03	2018-09-25 17:54:23.804903+03	0	12	1
992	bond	RU000A0JXW87	ИК МБС БО1	ИК МБС ООО БО-01	\N	IK MBS BO-01	ik mbs bo	RU000A0JXW87	RUB	\N	\N	PUBLISHED	\N	\N	9.71000004	9.71000004	18.8199997	25.5499992	1000	91	586	1	2023-07-14 03:00:00+03	2018-10-19 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:23.821608+03	2018-09-25 17:54:23.821608+03	0	10.25	1
993	bond	RU000A0JXXD3	Роснфт1P6	ПАО НК Роснефть 001P-06	\N	Rosneft  001P-06	rosneft  	RU000A0JXXD3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	14.4399996	42.3800011	1000	182	311	1	2027-07-14 03:00:00+03	2021-01-20 03:00:00+03	2019-01-23 03:00:00+03	2018-09-25 17:54:23.832398+03	2018-09-25 17:54:23.832398+03	0	8.5	1
994	bond	RU000A0JXXE1	Роснфт1P7	ПАО НК Роснефть 001P-07	\N	Rosneft  001P-07	rosneft  	RU000A0JXXE1	RUB	\N	\N	PUBLISHED	\N	\N	7.19000006	7.19000006	14.4399996	42.3800011	1000	182	311	1	2027-07-14 03:00:00+03	2021-01-20 03:00:00+03	2019-01-23 03:00:00+03	2018-09-25 17:54:23.845015+03	2018-09-25 17:54:23.845015+03	0	8.5	1
995	bond	RU000A0JXY10	О1ГрФин1P4	ООО "О1 Груп Финанс"БО-001P-04	\N	O1 Group Finance BO-001P-04	 group finance bo	RU000A0JXY10	RUB	\N	\N	PUBLISHED	\N	\N	0	0	114.220001	153.429993	1000	5445	587	1	2032-07-14 03:00:00+03	1970-01-01 03:00:00+03	2032-07-14 03:00:00+03	2018-09-25 17:54:23.856557+03	2018-09-25 17:54:23.856557+03	0	10.0799999	1
996	bond	RU000A0JXY28	О1ГрФин1P5	ООО "О1 Груп Финанс"БО-001P-05	\N	O1 Group Finance BO-001P-05	 group finance bo	RU000A0JXY28	RUB	\N	\N	PUBLISHED	\N	\N	0	0	114.220001	153.429993	1000	5445	587	1	2032-07-14 03:00:00+03	1970-01-01 03:00:00+03	2032-07-14 03:00:00+03	2018-09-25 17:54:23.868396+03	2018-09-25 17:54:23.868396+03	0	10.0799999	1
997	bond	RU000A0JXY44	ПИК БО-П03	ГК ПИК (ПАО) БО-П03	\N	PIK GROUP BO-P03	pik group bo	RU000A0JXY44	RUB	\N	\N	PUBLISHED	\N	\N	10.2799997	10.2799997	15.6099997	26.7999992	1000	91	519	1	2022-07-29 03:00:00+03	1970-01-01 03:00:00+03	2018-11-02 03:00:00+03	2018-09-25 17:54:23.884539+03	2018-09-25 17:54:23.884539+03	102660	10.75	1
998	bond	RU000A0JXY85	УАХМФИН1P1	ООО УАХМ-ФИНАНС БО-001P-01	\N	UAHM-FINANCE 001P-01	uahm-finance 	RU000A0JXY85	RUB	\N	\N	PUBLISHED	\N	\N	0	0	7.76000023	55.8300018	1068.55005	364	588	1	2025-07-25 03:00:00+03	1970-01-01 03:00:00+03	2019-08-02 03:00:00+03	2018-09-25 17:54:23.896548+03	2018-09-25 17:54:23.896548+03	0	5	1
999	bond	RU000A0JXYE9	ОткрХОЛБП2	Открытие Холдинг АО обл.БО-П02	\N	Otkritie Holding BO-P02	otkritie holding bo	RU000A0JXYE9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	136.279999	181.199997	1000	546	351	1	2029-07-23 03:00:00+03	2019-02-04 03:00:00+03	2019-02-04 03:00:00+03	2018-09-25 17:54:23.912433+03	2018-09-25 17:54:23.912433+03	0	12.4200001	1
1000	bond	RU000A0JXYG4	ОткрХОЛБП3	Открытие Холдинг АО обл.БО-П03	\N	Otkritie Holding BO-P03	otkritie holding bo	RU000A0JXYG4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	136.279999	181.199997	1000	546	351	1	2029-07-23 03:00:00+03	2019-02-04 03:00:00+03	2019-02-04 03:00:00+03	2018-09-25 17:54:23.924282+03	2018-09-25 17:54:23.924282+03	0	12.4200001	1
1001	bond	RU000A0JXYH2	ОткрХОЛБП4	Открытие Холдинг АО обл.БО-П04	\N	Otkritie Holding BO-P04	otkritie holding bo	RU000A0JXYH2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	136.279999	181.199997	1000	546	351	1	2030-07-22 03:00:00+03	2019-02-04 03:00:00+03	2019-02-04 03:00:00+03	2018-09-25 17:54:23.937513+03	2018-09-25 17:54:23.937513+03	0	12.4200001	1
1002	bond	RU000A0JXYL4	Газпнф1P2R	"Газпром нефть" ПАО 001P-02R	\N	Gazprom Neft 001P-2R	gazprom neft 	RU000A0JXYL4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	11.0799999	41.1399994	1000	182	200	1	2024-07-30 03:00:00+03	1970-01-01 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:23.948247+03	2018-09-25 17:54:23.948247+03	0	8.25	1
1003	bond	RU000A0JXYS9	КраснодКр1	Краснодарский кр. 35001 обл.	\N	Krasnodar reg. 35001	krasnodar reg.	RU000A0JXYS9	RUB	\N	\N	PUBLISHED	\N	\N	8.85000038	8.85000038	9.18999958	21.4400005	1000	91	460	1	2024-08-09 03:00:00+03	1970-01-01 03:00:00+03	2018-11-16 03:00:00+03	2018-09-25 17:54:23.960771+03	2018-09-25 17:54:23.960771+03	100100	8.60000038	1
1004	bond	RU000A0JXZB2	РЖД Б01P4R	"Российские ЖД" БО-001P-04R	\N	RZhD BO-001P-04R	rzhd bo	RU000A0JXZB2	RUB	\N	\N	PUBLISHED	\N	\N	8.97000027	8.97000027	9.03999996	41.1399994	1000	182	256	1	2032-07-29 03:00:00+03	2025-08-07 03:00:00+03	2019-02-14 03:00:00+03	2018-09-25 17:54:23.972695+03	2018-09-25 17:54:23.972695+03	0	8.25	1
1005	bond	RU000A0JY023	ГТЛК 1P-05	ГосТранспортЛизингКомп 001P-05	\N	GTLK BO-001P-05	gtlk bo	RU000A0JY023	RUB	\N	\N	PUBLISHED	\N	\N	6.46000004	6.46000004	239.5	12.2200003	1000	91	559	1	2024-08-21 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:23.984934+03	2018-09-25 17:54:23.984934+03	0	4.9000001	1
1006	bond	RU000A0JY031	МФ МарЭл17	Респ.Марий Эл 2017обл.08	\N	Mari El 2017	mari el 	RU000A0JY031	RUB	\N	\N	PUBLISHED	\N	\N	8.77000046	8.77000046	6.36000013	21.4400005	1000	91	589	1	2024-08-21 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:23.996326+03	2018-09-25 17:54:23.996326+03	100370	8.60000038	1
1007	bond	RU000A0ZYA66	ЛнССМУБ1P2	АО ЭталонЛенСпецСМУ БО-001P-02	\N	LenSpecSMU BO-001P-02	lenspecsmu bo	RU000A0ZYA66	RUB	\N	\N	PUBLISHED	\N	\N	9.40999985	9.40999985	2.70000005	22.3099995	1000	91	511	1	2022-09-09 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:24.015282+03	2018-09-25 17:54:24.015282+03	0	8.94999981	1
1008	bond	RU000A0ZYA74	РСГ-ФинБ3	РСГ-Финанс ООО обл. БО-3	\N	RSG-Finance BO-03	rsg-finance bo	RU000A0ZYA74	RUB	\N	\N	PUBLISHED	\N	\N	14.7799997	14.7799997	3.99000001	66.0699997	1000	182	300	1	2020-09-11 03:00:00+03	1970-01-01 03:00:00+03	2019-03-15 03:00:00+03	2018-09-25 17:54:24.028355+03	2018-09-25 17:54:24.028355+03	98300	13.25	1
1009	bond	RU000A0ZYAE3	ГПБ БО-14	ГПБ (АО) БО-14	\N	GPB BO-14	gpb bo	RU000A0ZYAE3	RUB	\N	\N	PUBLISHED	\N	\N	8.48999977	8.48999977	1.38	41.6500015	1000	181	523	1	2020-09-19 03:00:00+03	1970-01-01 03:00:00+03	2019-03-19 03:00:00+03	2018-09-25 17:54:24.044901+03	2018-09-25 17:54:24.044901+03	100150	8.39999962	1
1010	bond	RU000A0ZYAP9	ГТЛК 1P-06	ГосТранспортЛизингКомп 001P-06	\N	GTLK BO-001P-06	gtlk bo	RU000A0ZYAP9	RUB	\N	\N	PUBLISHED	\N	\N	9.03999996	9.03999996	1.35000002	20.5300007	941.179993	91	559	1	2032-09-01 03:00:00+03	1970-01-01 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:24.060595+03	2018-09-25 17:54:24.060595+03	94118	8.75	1
1011	bond	RU000A0ZYAQ7	СЗД Б1-1	Столичный залоговый дом БО-1-1	\N	Capital Collateral House B-1-1	capital collateral house b	RU000A0ZYAQ7	RUB	\N	\N	PUBLISHED	\N	\N	16.3099995	16.3099995	13.04	14.4399996	1000	31	590	1	2022-10-25 03:00:00+03	2019-10-05 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:24.072419+03	2018-09-25 17:54:24.072419+03	101700	17	1
1012	bond	RU000A0ZYAR5	ДОМ.РФ Б-9	ДОМ.РФ (АО) БО-09	\N	DOM.RF BO-09	dom.rf bo	RU000A0ZYAR5	RUB	\N	\N	PUBLISHED	\N	\N	8.11999989	8.11999989	1.08000004	19.7000008	1000	91	427	1	2020-09-17 03:00:00+03	2019-09-19 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:24.083299+03	2018-09-25 17:54:24.083299+03	0	7.9000001	1
1013	bond	RU000A0ZYB40	КемерОбл17	Кемеровская область 2017	\N	Kemerovskaya obl. 2017	kemerovskaya obl.	RU000A0ZYB40	RUB	\N	\N	PUBLISHED	\N	\N	8.31000042	8.31000042	0	20.4400005	1000	91	306	1	2024-09-26 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:24.095934+03	2018-09-25 17:54:24.095934+03	0	8.19999981	1
1014	bond	RU000A0ZYB73	ГПБ БО-24	ГПБ (АО) БО-24	\N	Gazprombank BO-24	gazprombank bo	RU000A0ZYB73	RUB	\N	\N	PUBLISHED	\N	\N	8.88000011	8.88000011	42.1199989	42.3499985	1000	184	285	1	2020-09-26 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:24.108919+03	2018-09-25 17:54:24.108919+03	0	8.39999962	1
1015	bond	RU000A0ZYB81	СТТ БО-2	САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ БО-2	\N	SAMARATRANSOIL-TERMINAL BO-2	samaratransoil-terminal bo	RU000A0ZYB81	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	182	591	1	2022-09-20 03:00:00+03	1970-01-01 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:24.127937+03	2018-09-25 17:54:24.127937+03	0	0	1
1016	bond	RU000A0ZYBA9	ТКК кл. А2	ООО Трансп.Концесс.Комп. кл.A2	\N	OOO Transport.Koncess.Komp.A02	ooo transport.koncess.komp.	RU000A0ZYBA9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	109.589996	125	1000	365	525	1	2033-12-31 03:00:00+03	2018-11-09 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:24.140194+03	2018-09-25 17:54:24.140194+03	0	12.5	1
1017	bond	RU000A0ZYBD3	Новсиб2017	Новосибирская область 2017	\N	Novosibirskaya oblast' 2017	novosibirskaya oblast'	RU000A0ZYBD3	RUB	\N	\N	PUBLISHED	\N	\N	6.75	6.75	14.6199999	19.5699997	1000	91	294	1	2022-09-27 03:00:00+03	1970-01-01 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:24.156196+03	2018-09-25 17:54:24.156196+03	0	7.8499999	1
1018	bond	RU000A0ZYBG6	ДельКрБ1P1	КБ ДельтаКредит АО БО-001P-01	\N	DeltaCredit BO-001P-01	deltacredit bo	RU000A0ZYBG6	RUB	\N	\N	PUBLISHED	\N	\N	8.64999962	8.64999962	40.9500008	41.8600006	1000	183	527	1	2020-09-30 03:00:00+03	1970-01-01 03:00:00+03	2018-09-29 03:00:00+03	2018-09-25 17:54:24.167637+03	2018-09-25 17:54:24.167637+03	0	8.35000038	1
1019	bond	RU000A0ZYBM4	АльфаБО-21	Альфа-Банк АО обл. БО-21	\N	Alfa-Bank BO-21	alfa-bank bo	RU000A0ZYBM4	RUB	\N	\N	PUBLISHED	\N	\N	7.96000004	7.96000004	40.0299988	41.8600006	1000	183	307	1	2032-10-13 03:00:00+03	2020-10-04 03:00:00+03	2018-10-03 03:00:00+03	2018-09-25 17:54:24.179623+03	2018-09-25 17:54:24.179623+03	0	8.35000038	1
1020	bond	RU000A0ZYBS1	СберБ БО3R	Сбербанк ПАО БО 001P-03R	\N	Sberbank BO 001P-03R	sberbank bo 	RU000A0ZYBS1	RUB	\N	\N	PUBLISHED	\N	\N	8.06000042	8.06000042	36.1599998	39.8899994	1000	182	573	1	2020-12-08 03:00:00+03	1970-01-01 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:24.191851+03	2018-09-25 17:54:24.191851+03	100200	8	1
1021	bond	RU000A0ZYBT9	РСХБ БО 3P	"Россельхозбанк" (АО) БО-03P	\N	Rosselkhozbank BO-03P	rosselkhozbank bo	RU000A0ZYBT9	RUB	\N	\N	PUBLISHED	\N	\N	8.18000031	8.18000031	40.2700005	41.8800011	1000	182	446	1	2021-09-28 03:00:00+03	1970-01-01 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:24.203557+03	2018-09-25 17:54:24.203557+03	101000	8.39999962	1
1022	bond	RU000A0ZYBV5	ЛСР БО 1Р3	Группа ЛСР ПАО БО 001Р-03	\N	LSR 1P-3	lsr 	RU000A0ZYBV5	RUB	\N	\N	PUBLISHED	\N	\N	9.43000031	9.43000031	20.7099991	22.4400005	1000	91	526	1	2022-09-27 03:00:00+03	1970-01-01 03:00:00+03	2018-10-02 03:00:00+03	2018-09-25 17:54:24.215003+03	2018-09-25 17:54:24.215003+03	99670	9	1
1023	bond	RU000A0ZYC31	АвАгроБ1P1	Авангард-Агро АО БО-001P-01	\N	Avangard-Agro AO B001P-01	avangard-agro ao b	RU000A0ZYC31	RUB	\N	\N	PUBLISHED	\N	\N	8.73999977	8.73999977	21.3400002	23.6800003	1000	91	592	1	2027-09-23 03:00:00+03	2019-10-03 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:24.231469+03	2018-09-25 17:54:24.231469+03	0	9.5	1
1024	bond	RU000A0ZYC98	МегафнБ1P3	МегаФон ПАО БО-001P-03	\N	Megafon BO-001P-03	megafon bo	RU000A0ZYC98	RUB	\N	\N	PUBLISHED	\N	\N	8.77999973	8.77999973	36.3499985	39.1399994	1000	182	494	1	2022-10-03 03:00:00+03	1970-01-01 03:00:00+03	2018-10-08 03:00:00+03	2018-09-25 17:54:24.243291+03	2018-09-25 17:54:24.243291+03	97500	7.8499999	1
1266	bond	XS0971721450	RUS-23	ГОВОЗ РФ 12840068V (XS)	\N	RUS-23	rus	XS0971721450	RUB	\N	\N	PUBLISHED	\N	\N	10.5	10.5	16126.3535	4875	200000	180	497	1	2023-09-16 03:00:00+03	1970-01-01 03:00:00+03	2019-03-16 03:00:00+03	2018-09-25 17:54:27.74481+03	2018-09-25 17:54:27.74481+03	0	4.875	1
1025	bond	RU000A0ZYCD1	Курск35001	Курская область 35001 об.	\N	Kursk reg.-35001	kursk reg.	RU000A0ZYCD1	RUB	\N	\N	PUBLISHED	\N	\N	7.69000006	7.69000006	14.6099997	19.8500004	1000	91	593	1	2025-10-12 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:24.254714+03	2018-09-25 17:54:24.254714+03	0	7.96000004	1
1026	bond	RU000A0ZYCJ8	ВБРР Б1P1	ВБРР АО БО-001P-01	\N	VBRR BO-001P-01	vbrr bo	RU000A0ZYCJ8	RUB	\N	\N	PUBLISHED	\N	\N	8.61999989	8.61999989	39.1199989	42.3800011	1000	182	594	1	2020-10-12 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:24.271348+03	2018-09-25 17:54:24.271348+03	100100	8.5	1
1027	bond	RU000A0ZYCM2	КрасЯрКр13	Красноярский край  обл.13	\N	Krasnoyarsk reg.- 34013	krasnoyarsk reg.	RU000A0ZYCM2	RUB	\N	\N	PUBLISHED	\N	\N	8.22000027	8.22000027	16.1299992	19.5699997	1000	91	364	1	2024-10-03 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:24.295316+03	2018-09-25 17:54:24.295316+03	99470	7.8499999	1
1028	bond	RU000A0ZYCP5	Роснфт1P8	ПАО НК Роснефть 001P-08	\N	Rosneft  001P-08	rosneft  	RU000A0ZYCP5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	33.4300003	36.6500015	1000	182	311	1	2027-09-30 03:00:00+03	2018-10-11 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:24.307013+03	2018-09-25 17:54:24.307013+03	0	7.3499999	1
1029	bond	RU000A0ZYCQ3	РН БАНК1Р2	РН БАНК АО БО-001Р-02	\N	RN Bank BO-001P-02	rn bank bo	RU000A0ZYCQ3	RUB	\N	\N	PUBLISHED	\N	\N	8.71000004	8.71000004	38.2000008	42.3699989	1000	183	572	1	2020-10-14 03:00:00+03	1970-01-01 03:00:00+03	2018-10-13 03:00:00+03	2018-09-25 17:54:24.333204+03	2018-09-25 17:54:24.333204+03	0	8.44999981	1
1030	bond	RU000A0ZYCR1	ТКХ БП1	ТрансКомплектХолдинг ООО Б-П1	\N	TransKomplektHolding BO-P1	transkomplektholding bo	RU000A0ZYCR1	RUB	\N	\N	PUBLISHED	\N	\N	9.39999962	9.39999962	40.9300003	44.8800011	1000	182	595	1	2027-09-30 03:00:00+03	2021-10-07 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:24.348193+03	2018-09-25 17:54:24.348193+03	99500	9	1
1031	bond	RU000A0ZYCZ4	Карелия 18	Республика Карелия 35018	\N	Karelia 18	karelia 	RU000A0ZYCZ4	RUB	\N	\N	PUBLISHED	\N	\N	8.81999969	8.81999969	10.3000002	19.9500008	1000	91	267	1	2023-10-15 03:00:00+03	1970-01-01 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:24.363682+03	2018-09-25 17:54:24.363682+03	98120	8	1
1032	bond	RU000A0ZYDA5	КЕБ Б01P01	КРЕДИТ ЕВРОПА БАНК(АО) БО1P-01	\N	Credit Europe Bank BO1P-01	credit europe bank bo	RU000A0ZYDA5	RUB	\N	\N	PUBLISHED	\N	\N	7.38000011	7.38000011	44.6500015	51.1100006	1000	182	596	1	2019-10-17 03:00:00+03	1970-01-01 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:24.379332+03	2018-09-25 17:54:24.379332+03	0	10.25	1
1033	bond	RU000A0ZYDD9	ТрнфБО1P8	Транснефть ПАО БО-001P-08	\N	Transneft BO-001P-08	transneft bo	RU000A0ZYDD9	RUB	\N	\N	PUBLISHED	\N	\N	9.06999969	9.06999969	34.4099998	39.3899994	1000	182	489	1	2025-10-09 03:00:00+03	1970-01-01 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:24.391341+03	2018-09-25 17:54:24.391341+03	94980	7.9000001	1
1034	bond	RU000A0ZYDH0	ФСК ЕЭС Б3	"ФСК ЕЭС"(ПАО) БО-03	\N	FSK EES BO-03	fsk ees bo	RU000A0ZYDH0	RUB	\N	\N	PUBLISHED	\N	\N	8.28999996	8.28999996	14.2299995	19.3199997	1000	91	539	1	2052-09-06 03:00:00+03	2022-10-14 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:24.403726+03	2018-09-25 17:54:24.403726+03	0	7.75	1
1035	bond	RU000A0ZYDQ1	НижгорОб12	Нижегородская обл. 34012	\N	Nizhniy Novgorod reg. 12	nizhniy novgorod reg.	RU000A0ZYDQ1	RUB	\N	\N	PUBLISHED	\N	\N	8.35000038	8.35000038	14.1999998	20.1900005	1000	91	270	1	2022-10-23 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:24.420387+03	2018-09-25 17:54:24.420387+03	0	8.10000038	1
1036	bond	RU000A0ZYDS7	Газпнф1P3R	"Газпром нефть" ПАО 001P-03R	\N	Gazprom Neft 001P-03R	gazprom neft 	RU000A0ZYDS7	RUB	\N	\N	PUBLISHED	\N	\N	8.72999954	8.72999954	33.3400002	39.1399994	1000	182	200	1	2022-10-17 03:00:00+03	1970-01-01 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:24.44052+03	2018-09-25 17:54:24.44052+03	97640	7.8499999	1
1037	bond	RU000A0ZYDU3	СвердлОб4	Свердловская обл. 04	\N	Sverdlovskaya obl. 04	sverdlovskaya obl.	RU000A0ZYDU3	RUB	\N	\N	PUBLISHED	\N	\N	8.98999977	8.98999977	12.0200005	19.2000008	1000	91	537	1	2025-10-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-29 03:00:00+03	2018-09-25 17:54:24.462335+03	2018-09-25 17:54:24.462335+03	95990	7.69999981	1
1038	bond	RU000A0ZYE54	ЦентрИБ1Р3	Центр-инвест ПАО БО-001P-03	\N	Centre Invest BO-001P-03	centre invest bo	RU000A0ZYE54	RUB	\N	\N	PUBLISHED	\N	\N	7.13000011	7.13000011	18.1499996	23.9300003	1000	91	299	1	2019-01-16 03:00:00+03	1970-01-01 03:00:00+03	2018-10-17 03:00:00+03	2018-09-25 17:54:24.476394+03	2018-09-25 17:54:24.476394+03	0	9.60000038	1
1039	bond	RU000A0ZYE96	ДрктЛиз1P1	ДиректЛизинг ООО БО-001P-01	\N	DirectLeasing BO-1P-1	directleasing bo	RU000A0ZYE96	RUB	\N	\N	PUBLISHED	\N	\N	15.6199999	15.6199999	25.0699997	37.4000015	1000	91	597	1	2020-10-22 03:00:00+03	1970-01-01 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:24.491906+03	2018-09-25 17:54:24.491906+03	100380	15	1
1040	bond	RU000A0ZYEB1	ТрансФ1P04	ТрансФин-М ПАО 001P-04	\N	TransFin-M 001P-04	transfin-m 	RU000A0ZYEB1	RUB	\N	\N	PUBLISHED	\N	\N	10.8800001	10.8800001	43.7299995	52.3600006	1000	182	431	1	2027-10-14 03:00:00+03	2020-10-22 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:24.507796+03	2018-09-25 17:54:24.507796+03	99810	10.5	1
1041	bond	RU000A0ZYEE5	ГПБ БО-17	ГПБ (АО) БО-17	\N	Gazprombank BO-17	gazprombank bo	RU000A0ZYEE5	RUB	\N	\N	PUBLISHED	\N	\N	8.73999977	8.73999977	32.4399986	40.3300018	1000	184	285	1	2024-10-31 03:00:00+03	2021-10-31 03:00:00+03	2018-10-31 03:00:00+03	2018-09-25 17:54:24.523804+03	2018-09-25 17:54:24.523804+03	98500	8	1
1042	bond	RU000A0ZYEM8	СамолетБП2	Группа компаний Самолет БО-П02	\N	Samolet Group Companies BO-P02	samolet group companies bo	RU000A0ZYEM8	RUB	\N	\N	PUBLISHED	\N	\N	12	12	17.0100002	28.6700001	1000	91	578	1	2022-10-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:24.540097+03	2018-09-25 17:54:24.540097+03	0	11.5	1
1043	bond	RU000A0ZYEQ9	СэтлГрБ1P1	"Сэтл-Групп" ООО БО-001P-01	\N	Setl-Grupp BO-001P-01	setl-grupp bo	RU000A0ZYEQ9	RUB	\N	\N	PUBLISHED	\N	\N	11.3000002	11.3000002	14.3500004	24.1800003	1000	91	598	1	2022-10-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:24.55572+03	2018-09-25 17:54:24.55572+03	97000	9.69999981	1
1044	bond	RU000A0ZYF20	ДОМ.РФ Б-6	ДОМ.РФ (АО) БО-06	\N	DOM.RF BO-06	dom.rf bo	RU000A0ZYF20	RUB	\N	\N	PUBLISHED	\N	\N	7.01999998	7.01999998	10.0600004	19.0699997	1000	91	427	1	2050-11-07 03:00:00+03	2018-11-07 03:00:00+03	2018-11-07 03:00:00+03	2018-09-25 17:54:24.575489+03	2018-09-25 17:54:24.575489+03	0	7.6500001	1
1045	bond	RU000A0ZYF38	ДОМ.РФ Б-7	ДОМ.РФ (АО) БО-07	\N	DOM.RF BO-07	dom.rf bo	RU000A0ZYF38	RUB	\N	\N	PUBLISHED	\N	\N	7.01999998	7.01999998	10.0600004	19.0699997	1000	91	427	1	2050-11-07 03:00:00+03	2018-11-07 03:00:00+03	2018-11-07 03:00:00+03	2018-09-25 17:54:24.592073+03	2018-09-25 17:54:24.592073+03	0	7.6500001	1
1046	bond	RU000A0ZYF61	НАО 2017	Ненецкий авт.округ 2017	\N	Nenets Aut.Okrug 2017	nenets aut.okrug 	RU000A0ZYF61	RUB	\N	\N	PUBLISHED	\N	\N	9.27000046	9.27000046	10.04	19.4500008	1000	91	599	1	2024-11-07 03:00:00+03	1970-01-01 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:24.607958+03	2018-09-25 17:54:24.607958+03	97090	7.80000019	1
1047	bond	RU000A0ZYFB8	КрасЯрКр14	Красноярский край  обл.14	\N	Krasnoyarsk reg.- 35014	krasnoyarsk reg.	RU000A0ZYFB8	RUB	\N	\N	PUBLISHED	\N	\N	9.07999992	9.07999992	10.1000004	19.5499992	1000	91	364	1	2024-10-31 03:00:00+03	1970-01-01 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:24.627639+03	2018-09-25 17:54:24.627639+03	0	7.84000015	1
1048	bond	RU000A0ZYFC6	МТС 001P-3	Мобильные ТелеСистемы 001P-03	\N	MTS 001P-03	mts 	RU000A0ZYFC6	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	29.1100006	38.3899994	1000	182	213	1	2022-11-03 03:00:00+03	1970-01-01 03:00:00+03	2018-11-08 03:00:00+03	2018-09-25 17:54:24.642831+03	2018-09-25 17:54:24.642831+03	97000	7.69999981	1
1049	bond	RU000A0ZYFM5	ДОМ.РФ Б-8	ДОМ.РФ (АО) БО-08	\N	DOM.RF BO-08	dom.rf bo	RU000A0ZYFM5	RUB	\N	\N	PUBLISHED	\N	\N	8.42000008	8.42000008	8.75	18.9500008	1000	91	427	1	2050-11-13 03:00:00+03	2019-05-14 03:00:00+03	2018-11-13 03:00:00+03	2018-09-25 17:54:24.654716+03	2018-09-25 17:54:24.654716+03	0	7.5999999	1
1050	bond	RU000A0ZYFN3	ДОМ.РФ Б10	ДОМ.РФ (АО) БО-10	\N	DOM.RF BO-10	dom.rf bo	RU000A0ZYFN3	RUB	\N	\N	PUBLISHED	\N	\N	6.44999981	6.44999981	8.75	18.9500008	1000	91	427	1	2050-11-13 03:00:00+03	2019-05-14 03:00:00+03	2018-11-13 03:00:00+03	2018-09-25 17:54:24.667141+03	2018-09-25 17:54:24.667141+03	0	7.5999999	1
1051	bond	RU000A0ZYFS2	ТрансФ1P05	ТрансФин-М ПАО 001P-05	\N	TransFin-M 001P-05	transfin-m 	RU000A0ZYFS2	RUB	\N	\N	PUBLISHED	\N	\N	10.3100004	10.3100004	37.0699997	51.1100006	1000	182	431	1	2027-11-03 03:00:00+03	2018-11-14 03:00:00+03	2018-11-14 03:00:00+03	2018-09-25 17:54:24.682769+03	2018-09-25 17:54:24.682769+03	0	10.25	1
1052	bond	RU000A0ZYG37	ИНГР Б1P1	ИНГРАД ПАО БО-001P-01	\N	INGRAD BO-001P-01	ingrad bo	RU000A0ZYG37	RUB	\N	\N	PUBLISHED	\N	\N	10.3299999	10.3299999	35.3800011	51.1100006	1000	182	600	1	2027-11-09 03:00:00+03	2018-11-20 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:24.703018+03	2018-09-25 17:54:24.703018+03	0	10.25	1
1053	bond	RU000A0ZYG52	Ростел1P3R	Ростелеком ПАО 001P-03R	\N	Rostelecom 001P-03R	rostelecom 	RU000A0ZYG52	RUB	\N	\N	PUBLISHED	\N	\N	8.72000027	8.72000027	26.5799999	38.3899994	1000	182	524	1	2027-11-09 03:00:00+03	2022-11-15 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:24.71919+03	2018-09-25 17:54:24.71919+03	97110	7.69999981	1
1054	bond	RU000A0ZYG60	СаратОбл17	Саратовская область 2017 об.	\N	Saratov Region 2017	saratov region 	RU000A0ZYG60	RUB	\N	\N	PUBLISHED	\N	\N	9.09000015	9.09000015	5.98999977	20.1900005	1000	91	601	1	2024-11-20 03:00:00+03	1970-01-01 03:00:00+03	2018-11-28 03:00:00+03	2018-09-25 17:54:24.734799+03	2018-09-25 17:54:24.734799+03	97100	8.10000038	1
1055	bond	RU000A0ZYG78	ВТБ Б-1-1	Банк ВТБ (ПАО) Б-1-1	\N	Bank VTB B-1-1	bank vtb b	RU000A0ZYG78	RUB	\N	\N	PUBLISHED	\N	\N	7.19000006	7.19000006	7.44999981	19.9500008	1000	91	602	1	2018-11-21 03:00:00+03	1970-01-01 03:00:00+03	2018-11-21 03:00:00+03	2018-09-25 17:54:24.750829+03	2018-09-25 17:54:24.750829+03	100150	8	1
1056	bond	RU000A0ZYGB6	АльфаБО-22	Альфа-Банк АО обл. БО-22	\N	Alfa-Bank BO-22	alfa-bank bo	RU000A0ZYGB6	RUB	\N	\N	PUBLISHED	\N	\N	8.35999966	8.35999966	27.2999992	40.6100006	1000	183	307	1	2032-12-04 03:00:00+03	2020-11-25 03:00:00+03	2018-11-24 03:00:00+03	2018-09-25 17:54:24.766573+03	2018-09-25 17:54:24.766573+03	0	8.10000038	1
1057	bond	RU000A0ZYGM3	ОрлОбл2017	Орловская область 2017	\N	Oryol region 2017	oryol region 	RU000A0ZYGM3	RUB	\N	\N	PUBLISHED	\N	\N	9.02999973	9.02999973	20.2399998	20.6900005	1000	91	603	1	2022-11-26 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:24.782685+03	2018-09-25 17:54:24.782685+03	98750	8.30000019	1
1058	bond	RU000A0ZYH02	АвАгроБ1P2	Авангард-Агро АО БО-001P-02	\N	Avangard-Agro AO B001P-02	avangard-agro ao b	RU000A0ZYH02	RUB	\N	\N	PUBLISHED	\N	\N	9.40999985	9.40999985	7.0999999	23.0599995	1000	91	592	1	2027-11-16 03:00:00+03	2018-11-27 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:24.797432+03	2018-09-25 17:54:24.797432+03	0	9.25	1
1059	bond	RU000A0ZYH44	Росбанк2P3	РОСБАНК ПАО обл. БО-002P-03	\N	Rosbank BO-002P-03	rosbank bo	RU000A0ZYH44	RUB	\N	\N	PUBLISHED	\N	\N	0	0	25.3799992	39.3600006	1000	183	498	1	2022-12-02 03:00:00+03	1970-01-01 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:24.809501+03	2018-09-25 17:54:24.809501+03	0	7.8499999	1
1060	bond	RU000A0ZYH51	КонцесТ 02	КонцессииТеплоснабжения ООО 02	\N	Koncessii teplosnabjeniya 02	koncessii teplosnabjeniya 	RU000A0ZYH51	RUB	\N	\N	PUBLISHED	\N	\N	10.5200005	10.5200005	90.4100037	110	1000	365	570	1	2032-11-11 03:00:00+03	2018-11-29 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:24.821455+03	2018-09-25 17:54:24.821455+03	0	11	1
1061	bond	RU000A0ZYH93	Новсиб 9об	Новосибирск  мун.обл. 2017	\N	Novosibirsk 9	novosibirsk 	RU000A0ZYH93	RUB	\N	\N	PUBLISHED	\N	\N	7.57999992	7.57999992	6.44999981	32.2599983	1000	150	266	1	2027-11-27 03:00:00+03	1970-01-01 03:00:00+03	2019-01-23 03:00:00+03	2018-09-25 17:54:24.838743+03	2018-09-25 17:54:24.838743+03	0	7.8499999	1
1062	bond	RU000A0ZYHH1	ТойотаБ1P1	Тойота Банк АО БО-001P-01	\N	AO Toyota Bank BO-001P-01	ao toyota bank bo	RU000A0ZYHH1	RUB	\N	\N	PUBLISHED	\N	\N	8.72999954	8.72999954	25.5799999	40.3600006	1000	183	604	1	2020-12-02 03:00:00+03	1970-01-01 03:00:00+03	2018-12-01 03:00:00+03	2018-09-25 17:54:24.854845+03	2018-09-25 17:54:24.854845+03	99000	8.05000019	1
1063	bond	RU000A0ZYHK5	ГПБ БО-15	ГПБ (АО) БО-15	\N	GPB BO-15	gpb bo	RU000A0ZYHK5	RUB	\N	\N	PUBLISHED	\N	\N	7.88999987	7.88999987	25.4200001	40.1100006	1000	183	523	1	2020-12-01 03:00:00+03	1970-01-01 03:00:00+03	2018-12-01 03:00:00+03	2018-09-25 17:54:24.86966+03	2018-09-25 17:54:24.86966+03	100490	8	1
1064	bond	RU000A0ZYHP4	ВИСДев 01	ВИС Девелопмент ООО обл. 01	\N	VIS Development 01	vis development 	RU000A0ZYHP4	RUB	\N	\N	PUBLISHED	\N	\N	9.80000019	9.80000019	21.3400002	23.9500008	1000	92	605	1	2019-02-05 03:00:00+03	1970-01-01 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:24.881277+03	2018-09-25 17:54:24.881277+03	0	9.5	1
1065	bond	RU000A0ZYHU4	КонцесВ 05	Концессии водоснабжения ООО 05	\N	Koncessii vodosnabjeniya 05	koncessii vodosnabjeniya 	RU000A0ZYHU4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	88.9000015	110	1000	365	462	1	2031-08-10 03:00:00+03	2018-12-04 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:24.892998+03	2018-09-25 17:54:24.892998+03	0	11	1
1066	bond	RU000A0ZYHW0	ЛевенгукБ1	Левенгук ОАО БО-01	\N	Levenguk BO-01	levenguk bo	RU000A0ZYHW0	RUB	\N	\N	PUBLISHED	\N	\N	17.6599998	17.6599998	10.25	42.3800011	1000	91	606	1	2027-11-22 03:00:00+03	2019-03-04 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:24.905218+03	2018-09-25 17:54:24.905218+03	100150	17	1
1067	bond	RU000A0ZYHX8	СПбГО35001	Санкт-Петербург обл. 35001	\N	Sankt-Peterburg 35001	sankt-peterburg 	RU000A0ZYHX8	RUB	\N	\N	PUBLISHED	\N	\N	8.88000011	8.88000011	23.4200001	38.3899994	1000	182	607	1	2025-05-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:24.921592+03	2018-09-25 17:54:24.921592+03	95300	7.69999981	1
1068	bond	RU000A0ZYJ00	ННовгор 17	Админ Нижнего Новгорода 2017	\N	Admin Nijnego Novgoroda 2017	admin nijnego novgoroda 	RU000A0ZYJ00	RUB	\N	\N	PUBLISHED	\N	\N	7.98000002	7.98000002	4.65999985	20.1900005	1000	91	608	1	2022-12-05 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:24.933293+03	2018-09-25 17:54:24.933293+03	0	8.10000038	1
1069	bond	RU000A0ZYJ18	ТамбовОб17	Тамбовская обл. 2017	\N	Tambov Region 2017	tambov region 	RU000A0ZYJ18	RUB	\N	\N	PUBLISHED	\N	\N	8.47000027	8.47000027	2.41000009	19.9500008	1000	91	609	1	2025-12-05 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:24.945459+03	2018-09-25 17:54:24.945459+03	0	8	1
1070	bond	RU000A0ZYJ26	ГарСтрой01	ГарантСтрой ООО об. 01	\N	GarantStroy 01	garantstroy 	RU000A0ZYJ26	RUB	\N	\N	PUBLISHED	\N	\N	10.9300003	10.9300003	30.6800003	49.8600006	1000	182	610	1	2022-11-29 03:00:00+03	2018-12-04 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:24.95768+03	2018-09-25 17:54:24.95768+03	0	10	1
1071	bond	RU000A0ZYJ42	РСХБ БО 4P	"Россельхозбанк" (АО) БО-04P	\N	Rosselkhozbank BO-04P	rosselkhozbank bo	RU000A0ZYJ42	RUB	\N	\N	PUBLISHED	\N	\N	8.26000023	8.26000023	24.8500004	40.3899994	1000	182	446	1	2020-12-09 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:24.969366+03	2018-09-25 17:54:24.969366+03	99990	8.10000038	1
1072	bond	RU000A0ZYJ83	МТС 001P-4	Мобильные ТелеСистемы 001P-04	\N	MTS 001P-04	mts 	RU000A0ZYJ83	RUB	\N	\N	PUBLISHED	\N	\N	7.36999989	7.36999989	23.6299992	38.3899994	1000	182	213	1	2018-12-04 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:24.98189+03	2018-09-25 17:54:24.98189+03	100070	7.69999981	1
1073	bond	RU000A0ZYJ91	ФСК ЕЭС Б4	"ФСК ЕЭС"(ПАО) БО-04	\N	FSK EES BO-04	fsk ees bo	RU000A0ZYJ91	RUB	\N	\N	PUBLISHED	\N	\N	8.71000004	8.71000004	4.15999985	18.9500008	1000	91	539	1	2052-10-23 03:00:00+03	2023-11-29 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:24.993174+03	2018-09-25 17:54:24.993174+03	0	7.5999999	1
1074	bond	RU000A0ZYJB0	Ульян.об17	Минфин Ульяновской обл. 2017	\N	Ulyanovskaya oblast 2017	ulyanovskaya oblast 	RU000A0ZYJB0	RUB	\N	\N	PUBLISHED	\N	\N	7.57999992	7.57999992	5.98999977	20.4200001	1000	92	611	1	2024-12-07 03:00:00+03	1970-01-01 03:00:00+03	2018-11-29 03:00:00+03	2018-09-25 17:54:25.005396+03	2018-09-25 17:54:25.005396+03	0	8.10000038	1
1075	bond	RU000A0ZYJH7	Роснфт2P1	ПАО НК Роснефть 002P-01	\N	Rosneft  002P-01	rosneft  	RU000A0ZYJH7	RUB	\N	\N	PUBLISHED	\N	\N	7.28999996	7.28999996	22.3500004	36.6500015	1000	182	311	1	2027-11-24 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:25.017505+03	2018-09-25 17:54:25.017505+03	0	7.3499999	1
1076	bond	RU000A0ZYJJ3	Роснфт2P2	ПАО НК Роснефть 002P-02	\N	Rosneft  002P-02	rosneft  	RU000A0ZYJJ3	RUB	\N	\N	PUBLISHED	\N	\N	-2.77999997	-2.77999997	22.3500004	36.6500015	1000	182	311	1	2027-11-24 03:00:00+03	2018-12-05 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:25.034049+03	2018-09-25 17:54:25.034049+03	0	7.3499999	1
1077	bond	RU000A0ZYJR6	Совком БО5	Совкомбанк ПАО обл. БО-05	\N	Sovkombank B0-05	sovkombank b	RU000A0ZYJR6	RUB	\N	\N	PUBLISHED	\N	\N	8.81999969	8.81999969	26.8199997	44.3800011	1000	182	318	1	2027-11-25 03:00:00+03	2018-12-06 03:00:00+03	2018-12-06 03:00:00+03	2018-09-25 17:54:25.049146+03	2018-09-25 17:54:25.049146+03	100030	8.89999962	1
1078	bond	RU000A0ZYJT2	ДОМРФИА 2P	ДОМ РФ ИА 002P	\N	Mortgage agent DOM RF 2P	mortgage agent dom rf 	RU000A0ZYJT2	RUB	\N	\N	PUBLISHED	\N	\N	-36.8199997	-36.8199997	13.1000004	20.4200001	704.630005	92	553	1	2046-04-28 03:00:00+03	2018-10-28 03:00:00+03	2018-10-28 03:00:00+03	2018-09-25 17:54:25.061374+03	2018-09-25 17:54:25.061374+03	0	11.5	1
1079	bond	RU000A0ZYJX4	МаниМенБ1	МФК Мани Мен БО-01-01	\N	Money Man MFC BO-01-01	money man mfc bo	RU000A0ZYJX4	RUB	\N	\N	PUBLISHED	\N	\N	17.5300007	17.5300007	8.14000034	41.1399994	1000	91	612	1	2020-12-04 03:00:00+03	2018-12-07 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:25.073059+03	2018-09-25 17:54:25.073059+03	99990	16.5	1
1080	bond	RU000A0ZYKF9	ВТБ Б-1-2	Банк ВТБ (ПАО) Б1-2	\N	Bank VTB B-1-2	bank vtb b	RU000A0ZYKF9	RUB	\N	\N	PUBLISHED	\N	\N	7.23999977	7.23999977	2.63000011	19.9500008	1000	91	602	1	2018-12-13 03:00:00+03	1970-01-01 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:25.085014+03	2018-09-25 17:54:25.085014+03	100200	8	1
1081	bond	RU000A0ZYKH5	Оренб35004	Оренбургская область 35004 об.	\N	Orenburg reg.-35004	orenburg reg.	RU000A0ZYKH5	RUB	\N	\N	PUBLISHED	\N	\N	8.22999954	8.22999954	2.69000006	20.3899994	1000	91	341	1	2027-12-02 03:00:00+03	1970-01-01 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:25.097295+03	2018-09-25 17:54:25.097295+03	0	8.18000031	1
1082	bond	RU000A0ZYKJ1	СПбГО35002	Санкт-Петербург обл. 35002	\N	Sankt-Peterburg 35002	sankt-peterburg 	RU000A0ZYKJ1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	21.3799992	38.1500015	1000	182	607	1	2026-12-04 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:25.108912+03	2018-09-25 17:54:25.108912+03	0	7.6500001	1
1083	bond	RU000A0ZYKM5	Автодор1P2	Автодор ГК БО-001P-02	\N	Autodor 001P-02	autodor 	RU000A0ZYKM5	RUB	\N	\N	PUBLISHED	\N	\N	8.60999966	8.60999966	22.6399994	40.3899994	1000	182	538	1	2019-12-13 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:25.120914+03	2018-09-25 17:54:25.120914+03	99600	8.10000038	1
1084	bond	RU000A0ZYKU8	КалинОбл17	Калининградская область 2017	\N	Kaliningrad Oblast 2017	kaliningrad oblast 	RU000A0ZYKU8	RUB	\N	\N	PUBLISHED	\N	\N	8.72999954	8.72999954	1.51999998	19.7199993	1000	91	549	1	2024-12-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-18 03:00:00+03	2018-09-25 17:54:25.13287+03	2018-09-25 17:54:25.13287+03	97500	7.90999985	1
1085	bond	RU000A0ZYKW4	ХМАО 11	ХМАО-Югры об. 35002	\N	HMAO-Yugra ob. 35002	hmao-yugra ob.	RU000A0ZYKW4	RUB	\N	\N	PUBLISHED	\N	\N	8.39999962	8.39999962	0	18.9500008	1000	91	367	1	2024-12-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:25.144956+03	2018-09-25 17:54:25.144956+03	0	7.5999999	1
1086	bond	RU000A0ZYL22	КЧР 2017	Карачаево-Черкесская Респ 2017	\N	Karachaevo-Cherkesskaja Rep 17	karachaevo-cherkesskaja rep 	RU000A0ZYL22	RUB	\N	\N	PUBLISHED	\N	\N	8.94999981	8.94999981	1.42999995	21.6900005	1000	91	613	1	2024-12-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:25.156626+03	2018-09-25 17:54:25.156626+03	100140	8.69999981	1
1087	bond	RU000A0ZYL30	СТТ БО-3	САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ БО-3	\N	SAMARATRANSOIL-TERMINAL BO-3	samaratransoil-terminal bo	RU000A0ZYL30	RUB	\N	\N	PUBLISHED	\N	\N	0	0	31.8899994	59.8400002	1000	182	591	1	2022-12-14 03:00:00+03	2018-12-19 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:25.176736+03	2018-09-25 17:54:25.176736+03	0	12	1
1088	bond	RU000A0ZYL48	МгдОбл2017	Минфин Магаданской обл. 2017	\N	Minfin Magadan Region 2017	minfin magadan region 	RU000A0ZYL48	RUB	\N	\N	PUBLISHED	\N	\N	7.90999985	7.90999985	1.32000005	19.9500008	1000	91	614	1	2022-12-25 03:00:00+03	1970-01-01 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:25.188321+03	2018-09-25 17:54:25.188321+03	0	8	1
1089	bond	RU000A0ZYL55	ФПКГарИнP3	КНФПК Гарант-Инвест БО-001P-03	\N	KN FPK Garant-Invest 001P-03	kn fpk garant-invest 	RU000A0ZYL55	RUB	\N	\N	PUBLISHED	\N	\N	13.79	13.79	33.8800011	63.5800018	1000	182	580	1	2020-12-16 03:00:00+03	2019-12-18 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:25.200513+03	2018-09-25 17:54:25.200513+03	99300	12.75	1
1090	bond	RU000A0ZYL89	ДОМРФИА 04	ДОМ РФ ИА 04	\N	Mortgage agent DOM RF 04	mortgage agent dom rf 	RU000A0ZYL89	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	682.780029	92	553	1	2042-04-28 03:00:00+03	1970-01-01 03:00:00+03	2018-10-28 03:00:00+03	2018-09-25 17:54:25.212514+03	2018-09-25 17:54:25.212514+03	0	0	1
1091	bond	RU000A0ZYLB6	РСГ-ФинБ4	РСГ-Финанс ООО обл. БО-04	\N	RSG-Finance BO-04	rsg-finance bo	RU000A0ZYLB6	RUB	\N	\N	PUBLISHED	\N	\N	13.1000004	13.1000004	28.9300003	54.8499985	1000	182	300	1	2020-12-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:25.224159+03	2018-09-25 17:54:25.224159+03	96750	11	1
1092	bond	RU000A0ZYLC4	Газпнф1P4R	"Газпром нефть" ПАО 001P-04R	\N	Gazprom Neft 001P-04R	gazprom neft 	RU000A0ZYLC4	RUB	\N	\N	PUBLISHED	\N	\N	8.64999962	8.64999962	20.25	38.3899994	1000	182	200	1	2024-12-12 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:25.240324+03	2018-09-25 17:54:25.240324+03	96300	7.69999981	1
1093	bond	RU000A0ZYLD2	iСЛТ 1Р1	iСофтЛайн Трейд АО 001Р-01	\N	iSoftLine Trade 001P-1	isoftline trade 	RU000A0ZYLD2	RUB	\N	\N	PUBLISHED	\N	\N	11.29	11.29	28.9300003	54.8499985	1000	182	615	1	2020-12-17 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:25.25232+03	2018-09-25 17:54:25.25232+03	99990	11	1
1094	bond	RU000A0ZYLF7	ФПК 1P-02	ФедералПассажирКомпан 001P-02	\N	FPC 1P-02	fpc 	RU000A0ZYLF7	RUB	\N	\N	PUBLISHED	\N	\N	8.78999996	8.78999996	20.3799992	38.6399994	1000	182	507	1	2027-12-09 03:00:00+03	2022-12-15 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:25.264425+03	2018-09-25 17:54:25.264425+03	0	7.75	1
1095	bond	RU000A0ZYLG5	Роснфт2P3	ПАО НК Роснефть 002P-03	\N	Rosneft  002P-03	rosneft  	RU000A0ZYLG5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	20.3799992	38.6399994	1000	182	311	1	2027-12-09 03:00:00+03	2022-12-15 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:25.275992+03	2018-09-25 17:54:25.275992+03	0	7.75	1
1096	bond	RU000A0ZYLH3	ВЭБПБО1Р10	Внешэкономбанк ПБО-001Р-10	\N	Vneshekonombank PBO-001P-10	vneshekonombank pbo	RU000A0ZYLH3	RUB	\N	\N	PUBLISHED	\N	\N	8.68000031	8.68000031	21.5699997	40.8899994	1000	182	473	1	2020-06-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:25.287906+03	2018-09-25 17:54:25.287906+03	99500	8.19999981	1
1097	bond	RU000A0ZYLJ9	ВЭБПБО1Р11	Внешэкономбанк ПБО-001Р-11	\N	Vneshekonombank PBO-001P-11	vneshekonombank pbo	RU000A0ZYLJ9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	21.6700001	41.0900002	1000	182	473	1	2022-12-15 03:00:00+03	1970-01-01 03:00:00+03	2018-12-20 03:00:00+03	2018-09-25 17:54:25.307844+03	2018-09-25 17:54:25.307844+03	0	8.23999977	1
1098	bond	RU000A0ZYLK7	ВЦЗ 1P1R	Верхбак цемент завод 1P-1R	\N	Verhnebak cement zavod 1P-1R	verhnebak cement zavod 	RU000A0ZYLK7	RUB	\N	\N	PUBLISHED	\N	\N	13.0500002	13.0500002	1.37	31.1599998	1000	91	255	1	2027-12-10 03:00:00+03	2022-12-16 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:25.320068+03	2018-09-25 17:54:25.320068+03	100140	12.5	1
1099	bond	RU000A0ZYLL5	УОМЗ БО-2	УОМЗ ПО АО БО-02	\N	UOMP PO BO-02	uomp po bo	RU000A0ZYLL5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	24.0799999	46.1199989	1000	182	505	1	2020-12-18 03:00:00+03	1970-01-01 03:00:00+03	2018-12-21 03:00:00+03	2018-09-25 17:54:25.340726+03	2018-09-25 17:54:25.340726+03	0	9.25	1
1100	bond	RU000A0ZYLQ4	Газпнф1P5R	"Газпром нефть" ПАО 001P-05R	\N	Gazprom Neft 001P-05R	gazprom neft 	RU000A0ZYLQ4	RUB	\N	\N	PUBLISHED	\N	\N	8.05000019	8.05000019	19.4099998	38.3899994	1000	182	200	1	2024-12-16 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:25.352047+03	2018-09-25 17:54:25.352047+03	0	7.69999981	1
1101	bond	RU000A0ZYLU6	ДОМ.РФ1P1R	ДОМ.РФ (АО) БО 001P-01R	\N	DOM.RF BO 001P-01R	dom.rf bo 	RU000A0ZYLU6	RUB	\N	\N	PUBLISHED	\N	\N	7.94999981	7.94999981	0.209999993	18.9500008	1000	91	616	1	2027-12-13 03:00:00+03	2019-03-25 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:25.364116+03	2018-09-25 17:54:25.364116+03	99940	7.5999999	1
1102	bond	RU000A0ZYLX0	ДОМРФИА 03	ДОМ РФ ИА 03	\N	Mortgage agent DOM RF 03	mortgage agent dom rf 	RU000A0ZYLX0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	798.099976	92	553	1	2037-10-28 03:00:00+03	1970-01-01 03:00:00+03	2018-10-28 03:00:00+03	2018-09-25 17:54:25.377204+03	2018-09-25 17:54:25.377204+03	0	0	1
1103	bond	RU000A0ZYM05	ГПБ БО-25	ГПБ (АО) БО-25	\N	Gazprombank BO-25	gazprombank bo	RU000A0ZYM05	RUB	\N	\N	PUBLISHED	\N	\N	8.27999973	8.27999973	19.9500008	40.1100006	1000	183	285	1	2020-12-26 03:00:00+03	1970-01-01 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:25.398626+03	2018-09-25 17:54:25.398626+03	99750	8	1
1104	bond	RU000A0ZYM21	ДФФ 1Р-01	ДОМОДЕДОВО ФьюэлФ 001Р-01	\N	DOMODEDOVO FUEL FACLITIES 1P-1	domodedovo fuel faclities 	RU000A0ZYM21	RUB	\N	\N	PUBLISHED	\N	\N	8.97999954	8.97999954	20.1900005	40.3899994	1000	182	617	1	2022-12-20 03:00:00+03	1970-01-01 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:25.411382+03	2018-09-25 17:54:25.411382+03	97600	8.10000038	1
1105	bond	RU000A0ZYM47	ЯНАО2017-2	Ямало-Ненецкий АО об 2017 - 2	\N	Yamal-Nenets AO 2017-2	yamal-nenets ao 	RU000A0ZYM47	RUB	\N	\N	PUBLISHED	\N	\N	7.19000006	7.19000006	17.2600002	17.4500008	1000	91	543	1	2024-12-25 03:00:00+03	1970-01-01 03:00:00+03	2018-09-26 03:00:00+03	2018-09-25 17:54:25.423336+03	2018-09-25 17:54:25.423336+03	0	7	1
1106	bond	RU000A0ZYM54	ЦППК П1Б1	Центральная ППК АО П01-БО-01	\N	Central EPC P01-BO-01	central epc p	RU000A0ZYM54	RUB	\N	\N	PUBLISHED	\N	\N	0	0	56.2599983	75.2900009	1000	364	618	1	2027-12-15 03:00:00+03	2018-12-26 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:25.435524+03	2018-09-25 17:54:25.435524+03	0	7.55000019	1
1107	bond	RU000A0ZYMD0	Дельта19ИП	КБ ДельтаКредит АО обл.19-ИП	\N	DeltaCredit CB 19-IP	deltacredit cb 	RU000A0ZYMD0	RUB	\N	\N	PUBLISHED	\N	\N	8.19999981	8.19999981	19.0699997	39.2099991	1000	183	328	1	2022-12-28 03:00:00+03	1970-01-01 03:00:00+03	2018-12-28 03:00:00+03	2018-09-25 17:54:25.45595+03	2018-09-25 17:54:25.45595+03	0	7.82000017	1
1108	bond	RU000A0ZYME8	СамолетБП3	Группа компаний Самолет БО-П03	\N	Samolet Group Companies BO-P03	samolet group companies bo	RU000A0ZYME8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	22.8999996	23.6800003	1000	91	578	1	2021-12-17 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:25.467953+03	2018-09-25 17:54:25.467953+03	0	9.5	1
1109	bond	RU000A0ZYMF5	СоцИнфр 1	СОЦ. ИНФРАСТРУКТУРА 1 СФО	\N	Social Infrastructure 1 SFO	social infrastructure 	RU000A0ZYMF5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	5.53999996	14.1700001	624.48999	92	619	1	2024-08-20 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:25.479696+03	2018-09-25 17:54:25.479696+03	0	9	1
1110	bond	RU000A0ZYMJ7	ТомскОб 62	Томская обл. 62 вып.(с аморт.)	\N	Tomsk reg. 62	tomsk reg.	RU000A0ZYMJ7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	18.2900009	18.7000008	1000	91	313	1	2024-12-19 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:25.503397+03	2018-09-25 17:54:25.503397+03	0	7.5	1
1111	bond	RU000A0ZYML3	МосОбл2017	МЭФ Московской обл. 2017	\N	Moscow Region MEF 2017	moscow region mef 	RU000A0ZYML3	RUB	\N	\N	PUBLISHED	\N	\N	8.72999954	8.72999954	18.2900009	18.7000008	1000	91	540	1	2022-12-22 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:25.519495+03	2018-09-25 17:54:25.519495+03	97700	7.5	1
1112	bond	RU000A0ZYMM1	ВертолетБ4	Вертолеты России об. БО-04	\N	Russian Helicopter BO-04	russian helicopter bo	RU000A0ZYMM1	RUB	\N	\N	PUBLISHED	\N	\N	8.5	8.5	21.4599991	43.8800011	1000	182	304	1	2027-12-16 03:00:00+03	1970-01-01 03:00:00+03	2018-12-27 03:00:00+03	2018-09-25 17:54:25.531598+03	2018-09-25 17:54:25.531598+03	0	8.80000019	1
1113	bond	RU000A0ZYMN9	ВертолетБ3	Вертолеты России об. БО-03	\N	Russian Helicopter BO-03	russian helicopter bo	RU000A0ZYMN9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	21.4599991	43.8800011	1000	182	304	1	2027-12-16 03:00:00+03	1970-01-01 03:00:00+03	2018-12-27 03:00:00+03	2018-09-25 17:54:25.547846+03	2018-09-25 17:54:25.547846+03	0	8.80000019	1
1114	bond	RU000A0ZYNY4	ГТЛК 1P-07	ГосТранспортЛизингКомп 001P-07	\N	GTLK BO-001P-07	gtlk bo	RU000A0ZYNY4	RUB	\N	\N	PUBLISHED	\N	\N	8.72999954	8.72999954	14.6800003	19.9500008	1000	91	559	1	2032-12-31 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:25.55912+03	2018-09-25 17:54:25.55912+03	96250	8	1
1115	bond	RU000A0ZYPB7	Инвтстр 01	Инвестторгстрой ООО обл. 01	\N	Investtorgstroy 01	investtorgstroy 	RU000A0ZYPB7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	20.4699993	30.5400009	1000	91	620	1	2023-01-19 03:00:00+03	2018-10-25 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:25.570955+03	2018-09-25 17:54:25.570955+03	0	12.25	1
1116	bond	RU000A0ZYPG6	ТрансКонБ1	ТрансКонтейнер ПАО БО-01	\N	TransKonteiner BO-01	transkonteiner bo	RU000A0ZYPG6	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	12.5299997	37.4000015	1000	182	522	1	2023-01-19 03:00:00+03	1970-01-01 03:00:00+03	2019-01-24 03:00:00+03	2018-09-25 17:54:25.591227+03	2018-09-25 17:54:25.591227+03	96750	7.5	1
1117	bond	RU000A0ZYQU5	ДОМ.РФ1P2R	ДОМ.РФ (АО) БО 001P-02R	\N	DOM.RF BO 001P-02R	dom.rf bo 	RU000A0ZYQU5	RUB	\N	\N	PUBLISHED	\N	\N	8.5	8.5	10.4499998	35.9000015	1000	182	616	1	2028-01-21 03:00:00+03	2019-02-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:25.606986+03	2018-09-25 17:54:25.606986+03	0	7.19999981	1
1118	bond	RU000A0ZYQX9	ВБРР Б1P2	ВБРР АО БО-001P-02	\N	VBRR BO-001P-02	vbrr bo	RU000A0ZYQX9	RUB	\N	\N	PUBLISHED	\N	\N	8.36999989	8.36999989	11.3299999	38.8899994	1000	182	594	1	2021-07-30 03:00:00+03	1970-01-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:25.618653+03	2018-09-25 17:54:25.618653+03	0	7.80000019	1
1119	bond	RU000A0ZYQY7	СистемБ1P7	АФК "Система" ПАО БО-001P-07	\N	AFK Systema 001P-07	afk systema 	RU000A0ZYQY7	RUB	\N	\N	PUBLISHED	\N	\N	9.65999985	9.65999985	14.2299995	48.8699989	1000	182	437	1	2028-01-21 03:00:00+03	2019-02-01 03:00:00+03	2019-02-01 03:00:00+03	2018-09-25 17:54:25.630681+03	2018-09-25 17:54:25.630681+03	100100	9.80000019	1
1120	bond	RU000A0ZYR18	БСК 1P1	Башкирская содовая комп. 1P-01	\N	Bashkir soda company 01P-01	bashkir soda company 	RU000A0ZYR18	RUB	\N	\N	PUBLISHED	\N	\N	10.3000002	10.3000002	11.7600002	20.1900005	1000	91	621	1	2023-01-27 03:00:00+03	1970-01-01 03:00:00+03	2018-11-02 03:00:00+03	2018-09-25 17:54:25.643274+03	2018-09-25 17:54:25.643274+03	94060	8.10000038	1
1121	bond	RU000A0ZYR91	ГТЛК 1P-08	ГТЛК БО 001Р-08	\N	STLC BO 001P-08	stlc bo 	RU000A0ZYR91	RUB	\N	\N	PUBLISHED	\N	\N	8.56000042	8.56000042	10.6099997	19.7000008	1000	91	622	1	2033-01-18 03:00:00+03	1970-01-01 03:00:00+03	2018-11-06 03:00:00+03	2018-09-25 17:54:25.654805+03	2018-09-25 17:54:25.654805+03	96700	7.9000001	1
1122	bond	RU000A0ZYRX7	ГПБ БО-18	ГПБ (АО) БО-18	\N	Gazprombank BO-18	gazprombank bo	RU000A0ZYRX7	RUB	\N	\N	PUBLISHED	\N	\N	8.85000038	8.85000038	8.97999954	37.5600014	1000	184	285	1	2023-02-12 03:00:00+03	2022-02-12 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:25.666651+03	2018-09-25 17:54:25.666651+03	96500	7.44999981	1
1123	bond	RU000A0ZYRY5	ГПБ БО-19	ГПБ (АО) БО-19	\N	Gazprombank BO-19	gazprombank bo	RU000A0ZYRY5	RUB	\N	\N	PUBLISHED	\N	\N	8.92000008	8.92000008	8.97999954	37.5600014	1000	184	285	1	2023-02-12 03:00:00+03	2022-02-12 03:00:00+03	2019-02-12 03:00:00+03	2018-09-25 17:54:25.680157+03	2018-09-25 17:54:25.680157+03	96300	7.44999981	1
1124	bond	RU000A0ZYSE5	ФКОНС П02	ФИНКОНСАЛТ БО-П02	\N	FINCONSULT BO-P02	finconsult bo	RU000A0ZYSE5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	9.34000015	20.2399998	1000	91	623	1	2028-02-01 03:00:00+03	2018-11-13 03:00:00+03	2018-11-13 03:00:00+03	2018-09-25 17:54:25.690582+03	2018-09-25 17:54:25.690582+03	0	8.11999989	1
1125	bond	RU000A0ZYSS5	ЖКИнвБО01	Жилкапинвест БО-01	\N	Zhilkapinvest BO-01	zhilkapinvest bo	RU000A0ZYSS5	RUB	\N	\N	PUBLISHED	\N	\N	14.2399998	14.2399998	8.05000019	69.8099976	1000	182	624	1	2021-03-05 03:00:00+03	1970-01-01 03:00:00+03	2019-03-05 03:00:00+03	2018-09-25 17:54:25.702819+03	2018-09-25 17:54:25.702819+03	100450	14	1
1126	bond	RU000A0ZYT40	Роснфт2P4	ПАО НК Роснефть 002P-04	\N	Rosneft 002P-04	rosneft 	RU000A0ZYT40	RUB	\N	\N	PUBLISHED	\N	\N	9.23999977	9.23999977	8.22000027	37.4000015	1000	182	245	1	2028-02-03 03:00:00+03	2023-02-09 03:00:00+03	2019-02-14 03:00:00+03	2018-09-25 17:54:25.714533+03	2018-09-25 17:54:25.714533+03	94550	7.5	1
1127	bond	RU000A0ZYTM6	Мегафон1P4	МегаФон ПАО БО-001P-04	\N	MegaFon BO-001P-04	megafon bo	RU000A0ZYTM6	RUB	\N	\N	PUBLISHED	\N	\N	8.30000019	8.30000019	7.0999999	35.9000015	1000	182	494	1	2021-02-15 03:00:00+03	1970-01-01 03:00:00+03	2019-02-18 03:00:00+03	2018-09-25 17:54:25.730564+03	2018-09-25 17:54:25.730564+03	98000	7.19999981	1
1128	bond	RU000A0ZYTZ8	НПК ПБО-01	НПК АО ПБО-01	\N	New forwarding company PBO-01	new forwarding company pbo	RU000A0ZYTZ8	RUB	\N	\N	PUBLISHED	\N	\N	8.05000019	8.05000019	6.94999981	36.1500015	1000	182	625	1	2023-02-14 03:00:00+03	1970-01-01 03:00:00+03	2019-02-19 03:00:00+03	2018-09-25 17:54:25.742653+03	2018-09-25 17:54:25.742653+03	0	7.25	1
1129	bond	RU000A0ZYU05	РЖД 1Р-05R	РЖД БО 001Р-05R	\N	RZD BO 1P-05R	rzd bo 	RU000A0ZYU05	RUB	\N	\N	PUBLISHED	\N	\N	9.25	9.25	7	36.4000015	1000	182	626	1	2033-02-01 03:00:00+03	2026-02-10 03:00:00+03	2019-02-19 03:00:00+03	2018-09-25 17:54:25.754405+03	2018-09-25 17:54:25.754405+03	90750	7.30000019	1
1130	bond	RU000A0ZYU21	АЛЬФА БО40	АЛЬФА-БАНК АО БО-40	\N	ALFA-BANK BO-40	alfa-bank bo	RU000A0ZYU21	RUB	\N	\N	PUBLISHED	\N	\N	8.01000023	8.01000023	6.6500001	36.8499985	1000	183	307	1	2033-03-04 03:00:00+03	2021-02-23 03:00:00+03	2019-02-22 03:00:00+03	2018-09-25 17:54:25.766355+03	2018-09-25 17:54:25.766355+03	0	7.3499999	1
1131	bond	RU000A0ZYU39	ЛидерИнБП2	Лидер-Инвест АО БО-П02	\N	Lider-Invest BO-P02	lider-invest bo	RU000A0ZYU39	RUB	\N	\N	PUBLISHED	\N	\N	10.7799997	10.7799997	10.8999996	58.3400002	1000	182	551	1	2023-02-15 03:00:00+03	2021-02-17 03:00:00+03	2019-02-20 03:00:00+03	2018-09-25 17:54:25.778161+03	2018-09-25 17:54:25.778161+03	102450	11.6999998	1
1132	bond	RU000A0ZYU54	ДерПлат1P1	Держава-Платформа БО-01Р-01	\N	Derzhava-Platforma BO-01P-01	derzhava-platforma bo	RU000A0ZYU54	RUB	\N	\N	PUBLISHED	\N	\N	10.1999998	10.1999998	9.31999969	49.8600006	1000	182	627	1	2023-02-15 03:00:00+03	2019-02-20 03:00:00+03	2019-02-20 03:00:00+03	2018-09-25 17:54:25.790308+03	2018-09-25 17:54:25.790308+03	0	10	1
1133	bond	RU000A0ZYUJ0	СберБ БО4R	Сбербанк БО 001Р-04R	\N	Sberbank BO 001P-04R	sberbank bo 	RU000A0ZYUJ0	RUB	\N	\N	PUBLISHED	\N	\N	8.51000023	8.51000023	4.73000002	34.4099998	1000	182	573	1	2021-08-27 03:00:00+03	1970-01-01 03:00:00+03	2019-03-01 03:00:00+03	2018-09-25 17:54:25.802125+03	2018-09-25 17:54:25.802125+03	96340	6.9000001	1
1134	bond	RU000A0ZYUS1	ТрнфБО1P9	Транснефть ПАО БО-001P-09	\N	Transneft BO-001P-09	transneft bo	RU000A0ZYUS1	RUB	\N	\N	PUBLISHED	\N	\N	8.71000004	8.71000004	5.67999983	35.6500015	1000	182	489	1	2022-02-21 03:00:00+03	1970-01-01 03:00:00+03	2019-02-25 03:00:00+03	2018-09-25 17:54:25.814134+03	2018-09-25 17:54:25.814134+03	95990	7.1500001	1
1135	bond	RU000A0ZYUV5	ГазпромКБ1	Газпром капитал ООО БО-01	\N	Gazprom capital LLC BO-01	gazprom capital llc bo	RU000A0ZYUV5	RUB	\N	\N	PUBLISHED	\N	\N	8.94999981	8.94999981	5.48000002	35.6500015	1000	182	628	1	2028-02-15 03:00:00+03	2025-02-18 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:25.826107+03	2018-09-25 17:54:25.826107+03	92250	7.1500001	1
1136	bond	RU000A0ZYUW3	ГазпромКБ2	Газпром капитал ООО БО-02	\N	Gazprom capital LLC BO-02	gazprom capital llc bo	RU000A0ZYUW3	RUB	\N	\N	PUBLISHED	\N	\N	9.06999969	9.06999969	5.48000002	35.6500015	1000	182	628	1	2028-02-15 03:00:00+03	2025-02-18 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:25.837907+03	2018-09-25 17:54:25.837907+03	91700	7.1500001	1
1137	bond	RU000A0ZYUY9	ГазпромКБ3	Газпром капитал ООО БО-03	\N	Gazprom capital LLC BO-03	gazprom capital llc bo	RU000A0ZYUY9	RUB	\N	\N	PUBLISHED	\N	\N	9.11999989	9.11999989	5.48000002	35.6500015	1000	182	628	1	2028-02-15 03:00:00+03	2025-02-18 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:25.854068+03	2018-09-25 17:54:25.854068+03	91500	7.1500001	1
1138	bond	RU000A0ZYV04	ГазпромКБ4	Газпром капитал ООО БО-04	\N	Gazprom capital LLC BO-04	gazprom capital llc bo	RU000A0ZYV04	RUB	\N	\N	PUBLISHED	\N	\N	9.05000019	9.05000019	5.48000002	35.6500015	1000	182	628	1	2028-02-15 03:00:00+03	2025-02-18 03:00:00+03	2019-02-26 03:00:00+03	2018-09-25 17:54:25.865897+03	2018-09-25 17:54:25.865897+03	91800	7.1500001	1
1139	bond	RU000A0ZYVU5	Роснфт2P5	ПАО НК Роснефть 002P-05	\N	Rosneft 002P-05	rosneft 	RU000A0ZYVU5	RUB	\N	\N	PUBLISHED	\N	\N	8.77999973	8.77999973	5	36.4000015	1000	182	245	1	2028-02-18 03:00:00+03	2024-02-23 03:00:00+03	2019-03-01 03:00:00+03	2018-09-25 17:54:25.878072+03	2018-09-25 17:54:25.878072+03	94490	7.30000019	1
1140	bond	RU000A0ZYVY7	ДОК-15 БО1	ДОК-15 ООО БО-01	\N	DOK-15 BO-01	dok	RU000A0ZYVY7	RUB	\N	\N	PUBLISHED	\N	\N	14.6400003	14.6400003	8.38000011	34.6500015	1000	91	629	1	2028-02-21 03:00:00+03	1970-01-01 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:25.889848+03	2018-09-25 17:54:25.889848+03	100010	13.8999996	1
1141	bond	RU000A0ZYW94	ИнфВотч1P1	ИнфоВотч АО БО 001Р-01	\N	InfoWatch 001P-01	infowatch 	RU000A0ZYW94	RUB	\N	\N	PUBLISHED	\N	\N	11.2299995	11.2299995	8.73999977	36.1500015	1000	91	630	1	2020-03-04 03:00:00+03	2019-03-04 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:25.901902+03	2018-09-25 17:54:25.901902+03	0	14.5	1
1142	bond	RU000A0ZYWB3	АЛЬФА БО39	АЛЬФА-БАНК АО БО-39	\N	ALFA-BANK BO-39	alfa-bank bo	RU000A0ZYWB3	RUB	\N	\N	PUBLISHED	\N	\N	8.5	8.5	4.03000021	36.8499985	1000	183	307	1	2033-03-17 03:00:00+03	2021-09-07 03:00:00+03	2019-03-07 03:00:00+03	2018-09-25 17:54:25.913845+03	2018-09-25 17:54:25.913845+03	0	7.3499999	1
1143	bond	RU000A0ZYWU3	Система1P8	АФК Система БО 001P-08	\N	Sistema PJSFC 001P-08	sistema pjsfc 	RU000A0ZYWU3	RUB	\N	\N	PUBLISHED	\N	\N	9.90999985	9.90999985	5.07000017	46.1199989	1000	182	631	1	2028-02-23 03:00:00+03	2019-09-04 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:25.926257+03	2018-09-25 17:54:25.926257+03	99610	9.25	1
1267	bond	XS0971721963	RUS-43	ГОВОЗ РФ 12840069V (XS)	\N	RUS-43	rus	XS0971721963	RUB	\N	\N	PUBLISHED	\N	\N	0	0	19434.3242	5875	200000	180	497	1	2043-09-16 03:00:00+03	1970-01-01 03:00:00+03	2019-03-16 03:00:00+03	2018-09-25 17:54:27.760962+03	2018-09-25 17:54:27.760962+03	0	5.875	1
1144	bond	RU000A0ZYWX7	МТС 1P-05	Мобильные ТелеСистемы 001P-05	\N	MTS 001P-05	mts 	RU000A0ZYWX7	RUB	\N	\N	PUBLISHED	\N	\N	8.22999954	8.22999954	3.8900001	35.4000015	1000	182	213	1	2021-09-01 03:00:00+03	1970-01-01 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:25.938007+03	2018-09-25 17:54:25.938007+03	0	7.0999999	1
1145	bond	RU000A0ZYWY5	МТС 1P-06	Мобильные ТелеСистемы 001P-06	\N	MTS 001P-06	mts 	RU000A0ZYWY5	RUB	\N	\N	PUBLISHED	\N	\N	9	9	3.97000003	36.1500015	1000	182	213	1	2025-02-26 03:00:00+03	1970-01-01 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:25.950102+03	2018-09-25 17:54:25.950102+03	92500	7.25	1
1146	bond	RU000A0ZYWZ2	Совком 2В3	Совкомбанк ПАО обл. 2В03	\N	Sovcombank 2B03	sovcombank 	RU000A0ZYWZ2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	29.7700005	4.11000013	100	182	632	1	2029-02-21 03:00:00+03	1970-01-01 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:25.962148+03	2018-09-25 17:54:25.962148+03	0	8.25	100
1147	bond	RU000A0ZYX28	Совком 1В2	Совкомбанк ПАО обл. 1В02	\N	Sovcombank 1B02	sovcombank 	RU000A0ZYX28	RUB	\N	\N	PUBLISHED	\N	\N	0	0	31.7600002	4.36000013	100	182	632	1	1970-01-01 03:00:00+03	2023-08-30 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:25.982837+03	2018-09-25 17:54:25.982837+03	0	8.75	100
1148	bond	RU000A0ZYX69	ФПК 1P-03	Федерал пассажир комп 001Р-03	\N	FPC 1P-03	fpc 	RU000A0ZYX69	RUB	\N	\N	PUBLISHED	\N	\N	8.97999954	8.97999954	3.95000005	35.9000015	1000	182	507	1	2028-02-23 03:00:00+03	2024-08-28 03:00:00+03	2019-03-06 03:00:00+03	2018-09-25 17:54:25.997897+03	2018-09-25 17:54:25.997897+03	0	7.19999981	1
1149	bond	RU000A0ZYXJ4	РСХБ БО-5Р	Россельхозбанк АО БО-05Р	\N	Rosselkhozbank BO-05P	rosselkhozbank bo	RU000A0ZYXJ4	RUB	\N	\N	PUBLISHED	\N	\N	8.96000004	8.96000004	2.6400001	36.9000015	1000	182	446	1	2022-03-09 03:00:00+03	1970-01-01 03:00:00+03	2019-03-13 03:00:00+03	2018-09-25 17:54:26.010276+03	2018-09-25 17:54:26.010276+03	0	7.4000001	1
1150	bond	RU000A0ZYXM8	СМСФИН БО1	МФК СМСФИНАНС ООО БО-01	\N	MFC SMSFINANCE BO-01	mfc smsfinance bo	RU000A0ZYXM8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	5.34000015	74.7900009	1000	182	633	1	2023-03-08 03:00:00+03	1970-01-01 03:00:00+03	2019-03-13 03:00:00+03	2018-09-25 17:54:26.022552+03	2018-09-25 17:54:26.022552+03	0	15	1
1151	bond	RU000A0ZYXV9	Газпнф1P6R	Газпром нефть БО 001Р-06R	\N	Gazprom Neft 001P-06R	gazprom neft 	RU000A0ZYXV9	RUB	\N	\N	PUBLISHED	\N	\N	8.84000015	8.84000015	2.36999989	35.9000015	1000	182	200	1	2024-03-07 03:00:00+03	1970-01-01 03:00:00+03	2019-03-14 03:00:00+03	2018-09-25 17:54:26.033526+03	2018-09-25 17:54:26.033526+03	93790	7.19999981	1
1152	bond	RU000A0ZYYE3	Ростел1P4R	Ростелеком ПАО 001P-04R	\N	Rostelecom 001P-04R	rostelecom 	RU000A0ZYYE3	RUB	\N	\N	PUBLISHED	\N	\N	8.81999969	8.81999969	2.1500001	35.6500015	1000	182	524	1	2028-03-03 03:00:00+03	2024-03-08 03:00:00+03	2019-03-15 03:00:00+03	2018-09-25 17:54:26.045437+03	2018-09-25 17:54:26.045437+03	93650	7.1500001	1
1153	bond	RU000A0ZYYN4	RUS-29	ГОВОЗ РФ 12840080V (RU)	\N	RUS-29	rus	RU000A0ZYYN4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	6432.16406	4375	200000	181	497	1	2029-03-21 03:00:00+03	1970-01-01 03:00:00+03	2019-03-21 03:00:00+03	2018-09-25 17:54:26.057799+03	2018-09-25 17:54:26.057799+03	0	4.375	1
1154	bond	RU000A0ZYZS0	СТНТ БО-01	САМАРАТРАНСНЕФТЬ-ТЕРМИНАЛ БО-1	\N	SAMARATRANSOIL-TERMINAL BO-01	samaratransoil-terminal bo	RU000A0ZYZS0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.270000011	49.8600006	1000	182	591	1	2023-03-20 03:00:00+03	2019-03-25 03:00:00+03	2019-03-25 03:00:00+03	2018-09-25 17:54:26.069841+03	2018-09-25 17:54:26.069841+03	0	10	1
1155	bond	RU000A0ZZ083	ИКС5Фин1P3	ИКС 5 ФИНАНС 001P-03	\N	X5 FINANSE 001P-03	 finanse 	RU000A0ZZ083	RUB	\N	\N	PUBLISHED	\N	\N	8.35000038	8.35000038	0	34.6500015	1000	182	634	1	2033-03-08 03:00:00+03	2020-03-24 03:00:00+03	2019-03-26 03:00:00+03	2018-09-25 17:54:26.084087+03	2018-09-25 17:54:26.084087+03	98300	6.94999981	1
1156	bond	RU000A0ZZ0D3	ДрктЛиз1P2	ДиректЛизинг ООО БО-001P-02	\N	DirectLeasing BO-001P-02	directleasing bo	RU000A0ZZ0D3	RUB	\N	\N	PUBLISHED	\N	\N	15.6400003	15.6400003	31.7000008	32.4099998	1000	91	597	1	2021-03-25 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:26.097611+03	2018-09-25 17:54:26.097611+03	96300	13	1
1157	bond	RU000A0ZZ0L6	ЭлемЛиз1P1	Элемент Лизинг БО 001P-01	\N	Element Leasing BO 001P-01	element leasing bo 	RU000A0ZZ0L6	RUB	\N	\N	PUBLISHED	\N	\N	11.2700005	11.2700005	23.4400005	24.2299995	917	91	635	1	2021-03-26 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:26.113778+03	2018-09-25 17:54:26.113778+03	91470.75	10.6000004	1
1158	bond	RU000A0ZZ0Q5	4фин БО-01	МФК 4финанс ООО БО-01	\N	MFC 4finance ltd. BO-01	mfc 	RU000A0ZZ0Q5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	73.5599976	74.7900009	1000	182	636	1	2023-03-24 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:26.131112+03	2018-09-25 17:54:26.131112+03	0	15	1
1159	bond	RU000A0ZZ0R3	ГрузЦ БОП1	ГрузовичкоФ-Центр ООО БО-П01	\N	GruzovichkoF-Stolitsa BO-P01	gruzovichkof-stolitsa bo	RU000A0ZZ0R3	RUB	\N	\N	PUBLISHED	\N	\N	11.4399996	11.4399996	605.47998	698.630005	50000	30	637	1	2020-03-22 03:00:00+03	2019-03-28 03:00:00+03	2018-09-29 03:00:00+03	2018-09-25 17:54:26.145339+03	2018-09-25 17:54:26.145339+03	5149500	17	1
1160	bond	RU000A0ZZ0Z6	СберБ БО5R	Сбербанк ПАО БCО 001P-05R	\N	Sberbank BSO 001P-05R	sberbank bso 	RU000A0ZZ0Z6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.349999994	1000	1274	638	1	2021-10-08 03:00:00+03	1970-01-01 03:00:00+03	2021-10-08 03:00:00+03	2018-09-25 17:54:26.157446+03	2018-09-25 17:54:26.157446+03	0	0.00999999978	1
1161	bond	RU000A0ZZ117	СберБ БО6R	Сбербанк ПАО БО 001Р-06R	\N	Sberbank BO 001P-06R	sberbank bo 	RU000A0ZZ117	RUB	\N	\N	PUBLISHED	\N	\N	8.61999989	8.61999989	24.2600002	35.9000015	1000	182	573	1	2023-05-19 03:00:00+03	1970-01-01 03:00:00+03	2018-11-23 03:00:00+03	2018-09-25 17:54:26.169614+03	2018-09-25 17:54:26.169614+03	95300	7.19999981	1
1162	bond	RU000A0ZZ141	УАХМФИН1P2	УАХМ-ФИНАНС ООО БО 001P-02	\N	UAHM-FINANCE BO 001P-02	uahm-finance bo 	RU000A0ZZ141	RUB	\N	\N	PUBLISHED	\N	\N	0	0	19.8199997	42.6800003	1033.56006	364	639	1	2023-03-28 03:00:00+03	1970-01-01 03:00:00+03	2019-04-02 03:00:00+03	2018-09-25 17:54:26.181505+03	2018-09-25 17:54:26.181505+03	0	4	1
1163	bond	RU000A0ZZ158	УАХМФИН1P3	УАХМ-ФИНАНС ООО БО 001P-03	\N	UAHM-FINANCE BO 001P-03	uahm-finance bo 	RU000A0ZZ158	RUB	\N	\N	PUBLISHED	\N	\N	0	0	14.9399996	32.2999992	1038.35999	364	639	1	2021-03-30 03:00:00+03	1970-01-01 03:00:00+03	2019-04-02 03:00:00+03	2018-09-25 17:54:26.193415+03	2018-09-25 17:54:26.193415+03	0	3	1
1164	bond	RU000A0ZZ1F6	СЗД БО-1-2	СТОЛИЧНЫЙ ЗАЛОГОВЫЙ ДОМ БО-1-2	\N	Capital Collateral House B-1-2	capital collateral house b	RU000A0ZZ1F6	RUB	\N	\N	PUBLISHED	\N	\N	17.1900005	17.1900005	7.44999981	13.5900002	1000	31	590	1	2023-05-10 03:00:00+03	2020-10-22 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:26.205171+03	2018-09-25 17:54:26.205171+03	100050	16	1
1165	bond	RU000A0ZZ1H2	ОГК-2 1P3R	ОГК-2 ПАО БО 001P-03R	\N	OGK-2 BO 001P-03R	ogk	RU000A0ZZ1H2	RUB	\N	\N	PUBLISHED	\N	\N	8.71000004	8.71000004	32.75	34.6500015	1000	182	456	1	2023-03-31 03:00:00+03	2021-04-02 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:26.217278+03	2018-09-25 17:54:26.217278+03	96490	6.94999981	1
1166	bond	RU000A0ZZ1J8	ГТЛК 1P-09	ГТЛК БО 001P-09	\N	STLC BO 001P-09	stlc bo 	RU000A0ZZ1J8	RUB	\N	\N	PUBLISHED	\N	\N	9.64999962	9.64999962	16.3099995	18.3199997	1000	91	622	1	2033-03-18 03:00:00+03	2024-09-27 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:26.229377+03	2018-09-25 17:54:26.229377+03	91000	7.3499999	1
1167	bond	RU000A0ZZ1M2	ПИК БО-П04	ГК ПИК ПАО БО-П04	\N	PIK GROUP BO-P04	pik group bo	RU000A0ZZ1M2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	36.5200005	38.6399994	1000	182	519	1	2028-03-24 03:00:00+03	2018-10-05 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:26.321051+03	2018-09-25 17:54:26.321051+03	0	7.75	1
1168	bond	RU000A0ZZ1N0	ДОМ 1P-3R	ДОМ.РФ АО 001Р-03R	\N	DOM.RF 001P-03R	dom.rf 	RU000A0ZZ1N0	RUB	\N	\N	PUBLISHED	\N	\N	8.92000008	8.92000008	31.8099995	33.6599998	1000	182	198	1	2028-03-24 03:00:00+03	2019-04-05 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:26.334277+03	2018-09-25 17:54:26.334277+03	0	6.75	1
1169	bond	RU000A0ZZ1Y7	МРСКЦенБО6	МРСК Центра ПАО БО-06	\N	IDGC of  Centre BO-06	idgc of  	RU000A0ZZ1Y7	RUB	\N	\N	PUBLISHED	\N	\N	8.60000038	8.60000038	31.9899998	34.6500015	1000	182	640	1	2028-03-28 03:00:00+03	2021-04-06 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:26.352368+03	2018-09-25 17:54:26.352368+03	0	6.94999981	1
1170	bond	RU000A0ZZ2A5	ДелПорт1P2	ДелоПортс ООО БО 001P-02	\N	DeloPorts BO 001P-02	deloports bo 	RU000A0ZZ2A5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	2055.57007	33.6599998	1000	182	641	1	2025-04-01 03:00:00+03	1970-01-01 03:00:00+03	2018-10-09 03:00:00+03	2018-09-25 17:54:26.366693+03	2018-09-25 17:54:26.366693+03	0	6.75	1
1171	bond	RU000A0ZZ2U3	ЦентрИБ1Р4	Центр-инвест ПАО БО-001P-04	\N	Center-invest Bank BO-001P-04	center-invest bank bo	RU000A0ZZ2U3	RUB	\N	\N	PUBLISHED	\N	\N	8.48999977	8.48999977	37.5200005	41.1399994	1000	182	642	1	2021-10-07 03:00:00+03	2019-04-11 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:26.381855+03	2018-09-25 17:54:26.381855+03	0	8.25	1
1172	bond	RU000A0ZZ2V1	АПРИФП БО1	АПРИ Флай Плэнинг ООО БО-01	\N	APRI Fly Planning BO-01	apri fly planning bo	RU000A0ZZ2V1	RUB	\N	\N	PUBLISHED	\N	\N	26.2600002	26.2600002	36.9900017	44.8800011	1000	91	643	1	2019-04-11 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:26.393861+03	2018-09-25 17:54:26.393861+03	97010	18	1
1173	bond	RU000A0ZZ2W9	УпрОтходБ2	Управление отходами АО БО-02	\N	Upravlenie otkhodami BO-02	upravlenie otkhodami bo	RU000A0ZZ2W9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	47.75	157.639999	1000	548	644	1	2030-10-09 03:00:00+03	2019-10-12 03:00:00+03	2019-10-12 03:00:00+03	2018-09-25 17:54:26.405441+03	2018-09-25 17:54:26.405441+03	0	10.5	1
1174	bond	RU000A0ZZ349	ТрнфБО1P10	Транснефть ПАО БО-001P-10	\N	Transneft BO-001P-10	transneft bo	RU000A0ZZ349	RUB	\N	\N	PUBLISHED	\N	\N	7.82000017	7.82000017	31.6399994	34.9000015	1000	182	489	1	2021-10-08 03:00:00+03	1970-01-01 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:26.418254+03	2018-09-25 17:54:26.418254+03	0	7	1
1175	bond	RU000A0ZZ3U1	СберБ БО7R	Сбербанк ПАО БCО 001P-07R	\N	Sberbank BSO 001P-07R	sberbank bso 	RU000A0ZZ3U1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.310000002	1000	1115	638	1	2021-05-16 03:00:00+03	1970-01-01 03:00:00+03	2021-05-16 03:00:00+03	2018-09-25 17:54:26.433798+03	2018-09-25 17:54:26.433798+03	0	0.00999999978	1
1176	bond	RU000A0ZZ4P9	РЖД 1Р-06R	РЖД БО 001Р-06R	\N	RZD BO 1P-06R	rzd bo 	RU000A0ZZ4P9	RUB	\N	\N	PUBLISHED	\N	\N	7.36999989	7.36999989	30.7900009	36.1500015	1000	182	626	1	2033-04-04 03:00:00+03	2023-04-17 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:26.44953+03	2018-09-25 17:54:26.44953+03	0	7.25	1
1177	bond	RU000A0ZZ4T1	РСХБ 01Т1	Россельхозбанк (АО) обл. 01Т1	\N	Russian Agricultural Bank 01T1	russian agricultural bank 	RU000A0ZZ4T1	RUB	\N	\N	PUBLISHED	\N	\N	10.2700005	10.2700005	37.7299995	44.8800011	1000	182	645	1	1970-01-01 03:00:00+03	2028-04-12 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:26.463153+03	2018-09-25 17:54:26.463153+03	93800	9	1
1178	bond	RU000A0ZZ4Z8	Томсккаб01	Томсккабель ООО об. 01	\N	Tomskcable 01	tomskcable 	RU000A0ZZ4Z8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	8.59000015	23.6800003	1000	91	646	1	2023-05-18 03:00:00+03	2019-05-23 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:26.483741+03	2018-09-25 17:54:26.483741+03	0	9.5	1
1179	bond	RU000A0ZZ505	РСХБ 09Т1	Россельхозбанк (АО) обл. 09Т1	\N	Russian Agricultural Bank 09T1	russian agricultural bank 	RU000A0ZZ505	RUB	\N	\N	PUBLISHED	\N	\N	10.3000002	10.3000002	37.4799995	44.8800011	1000	182	645	1	1970-01-01 03:00:00+03	2028-04-13 03:00:00+03	2018-10-25 03:00:00+03	2018-09-25 17:54:26.497327+03	2018-09-25 17:54:26.497327+03	93640	9	1
1180	bond	RU000A0ZZ547	Пионер 1P3	ГК Пионер БО 001P-03	\N	PIONEER GROUP BO 001P-03	pioneer group bo 	RU000A0ZZ547	RUB	\N	\N	PUBLISHED	\N	\N	12.3999996	12.3999996	19.7299995	29.9200001	1000	91	647	1	2021-04-23 03:00:00+03	2020-04-24 03:00:00+03	2018-10-26 03:00:00+03	2018-09-25 17:54:26.513791+03	2018-09-25 17:54:26.513791+03	100190	12	1
1181	bond	RU000A0ZZ5A8	УРАЛСИБ П1	БАНК УРАЛСИБ ПАО БО-П01	\N	BANK URALSIB BO-P01	bank uralsib bo	RU000A0ZZ5A8	RUB	\N	\N	PUBLISHED	\N	\N	3.25	3.25	0.0199999996	0.0299999993	1000	92	648	1	2020-05-05 03:00:00+03	1970-01-01 03:00:00+03	2018-11-01 03:00:00+03	2018-09-25 17:54:26.525249+03	2018-09-25 17:54:26.525249+03	0	0.00999999978	1
1182	bond	RU000A0ZZ5H3	ПочтаРБ1P4	Почта России (ФГУП) БО-001P-04	\N	Russian Post BO-001P-04	russian post bo	RU000A0ZZ5H3	RUB	\N	\N	PUBLISHED	\N	\N	9.34000015	9.34000015	29.75	38.3899994	1000	182	495	1	2028-04-24 03:00:00+03	2023-05-01 03:00:00+03	2018-11-05 03:00:00+03	2018-09-25 17:54:26.536713+03	2018-09-25 17:54:26.536713+03	94700	7.69999981	1
1183	bond	RU000A0ZZ5J9	ПочтаРБ1P5	Почта России (ФГУП) БО-001P-05	\N	Russian Post BO-001P-05	russian post bo	RU000A0ZZ5J9	RUB	\N	\N	PUBLISHED	\N	\N	9.34000015	9.34000015	29.75	38.3899994	1000	182	495	1	2028-04-24 03:00:00+03	2023-05-01 03:00:00+03	2018-11-05 03:00:00+03	2018-09-25 17:54:26.54898+03	2018-09-25 17:54:26.54898+03	94700	7.69999981	1
1184	bond	RU000A0ZZ5U6	СберБ Б10R	Сбербанк ПАО БCО 001P-10R	\N	Sberbank BSO 001P-10R	sberbank bso 	RU000A0ZZ5U6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.349999994	1000	1274	638	1	2021-11-19 03:00:00+03	1970-01-01 03:00:00+03	2021-11-19 03:00:00+03	2018-09-25 17:54:26.562593+03	2018-09-25 17:54:26.562593+03	85000	0.00999999978	1
1185	bond	RU000A0ZZ695	РедСофт1P1	Ред Софт ООО БО 001Р-01	\N	RED SOFT BO 001P-01	red soft bo 	RU000A0ZZ695	RUB	\N	\N	PUBLISHED	\N	\N	15.5200005	15.5200005	16.4899998	34.9000015	1000	91	649	1	2020-05-11 03:00:00+03	1970-01-01 03:00:00+03	2018-11-12 03:00:00+03	2018-09-25 17:54:26.576841+03	2018-09-25 17:54:26.576841+03	99000	14	1
1186	bond	RU000A0ZZ6K5	ИАМетинв-2	ИА Металлинвест-2 об. 01	\N	MA Metallinvest-2 ob. 01	ma metallinvest	RU000A0ZZ6K5	RUB	\N	\N	PUBLISHED	\N	\N	7.98999977	7.98999977	27.9899998	28.6399994	1000	134	510	1	2046-03-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:26.588861+03	2018-09-25 17:54:26.588861+03	0	7.80000019	1
1187	bond	RU000A0ZZ6Q2	ВТБ Б-1-5	Банк ВТБ ПАО Б-1-5	\N	Bank VTB B-1-5	bank vtb b	RU000A0ZZ6Q2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.0199999996	1000	91	602	1	2019-05-17 03:00:00+03	1970-01-01 03:00:00+03	2018-11-16 03:00:00+03	2018-09-25 17:54:26.603003+03	2018-09-25 17:54:26.603003+03	96250	0.00999999978	1
1188	bond	RU000A0ZZ7C0	ДОМ 1P-4R	ДОМ.РФ АО 001Р-04R	\N	DOM.RF 001P-04R	dom.rf 	RU000A0ZZ7C0	RUB	\N	\N	PUBLISHED	\N	\N	6.94000006	6.94000006	23.9699993	40.2700005	1000	210	198	1	2028-05-10 03:00:00+03	2019-06-19 03:00:00+03	2018-12-19 03:00:00+03	2018-09-25 17:54:26.617391+03	2018-09-25 17:54:26.617391+03	0	7	1
1189	bond	RU000A0ZZ7E6	Якут-10 об	Республика Саха (Якутия) об.10	\N	Republic of Sakha (Yakutia) 10	republic of sakha (	RU000A0ZZ7E6	RUB	\N	\N	PUBLISHED	\N	\N	8.59000015	8.59000015	6.82999992	18.8199997	1000	91	650	1	2025-05-15 03:00:00+03	1970-01-01 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:26.628865+03	2018-09-25 17:54:26.628865+03	0	7.55000019	1
1190	bond	RU000A0ZZ7G1	КАМАЗ БО-7	КАМАЗ ПАО об. БО-07	\N	KAMAZ PTC BO-07	kamaz ptc bo	RU000A0ZZ7G1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	26.5	38.8899994	1000	182	651	1	2033-05-05 03:00:00+03	2018-11-22 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:26.64045+03	2018-09-25 17:54:26.64045+03	0	7.80000019	1
1191	bond	RU000A0ZZ7H9	КАМАЗ БО-8	КАМАЗ ПАО об. БО-08	\N	KAMAZ PTC BO-08	kamaz ptc bo	RU000A0ZZ7H9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	26.5	38.8899994	1000	182	651	1	2033-05-05 03:00:00+03	2018-11-22 03:00:00+03	2018-11-22 03:00:00+03	2018-09-25 17:54:26.652809+03	2018-09-25 17:54:26.652809+03	0	7.80000019	1
1192	bond	RU000A0ZZ7R8	ДДёнерБОП1	Дядя Дёнер ООО БО-П01	\N	Uncle Dener BO-P01	uncle dener bo	RU000A0ZZ7R8	RUB	\N	\N	PUBLISHED	\N	\N	12.2299995	12.2299995	57.5299988	575.340027	50000	30	652	1	2021-07-08 03:00:00+03	2019-05-20 03:00:00+03	2018-10-22 03:00:00+03	2018-09-25 17:54:26.668572+03	2018-09-25 17:54:26.668572+03	5075000	14	1
1193	bond	RU000A0ZZ7U2	СберБ Б08R	Сбербанк ПАО БCО 001P-08R	\N	Sberbank BSO 001P-08R	sberbank bso 	RU000A0ZZ7U2	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.310000002	1000	1115	638	1	2021-06-27 03:00:00+03	1970-01-01 03:00:00+03	2021-06-27 03:00:00+03	2018-09-25 17:54:26.680488+03	2018-09-25 17:54:26.680488+03	0	0.00999999978	1
1194	bond	RU000A0ZZ877	КАМАЗ БО10	КАМАЗ ПАО об. БО-10	\N	KAMAZ PTC BO-10	kamaz ptc bo	RU000A0ZZ877	RUB	\N	\N	PUBLISHED	\N	\N	-5.82999992	-5.82999992	26.7299995	40.8899994	1000	182	651	1	2033-05-10 03:00:00+03	2018-11-27 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:26.692236+03	2018-09-25 17:54:26.692236+03	102500	8.19999981	1
1195	bond	RU000A0ZZ885	КАМАЗ БО-9	КАМАЗ ПАО об. БО-09	\N	KAMAZ PTC BO-09	kamaz ptc bo	RU000A0ZZ885	RUB	\N	\N	PUBLISHED	\N	\N	-5.82999992	-5.82999992	26.7299995	40.8899994	1000	182	651	1	2033-05-10 03:00:00+03	2018-11-27 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:26.704177+03	2018-09-25 17:54:26.704177+03	102500	8.19999981	1
1196	bond	RU000A0ZZ893	КАМАЗ БО11	КАМАЗ ПАО об. БО-11	\N	KAMAZ PTC BO-11	kamaz ptc bo	RU000A0ZZ893	RUB	\N	\N	PUBLISHED	\N	\N	-5.82999992	-5.82999992	26.7299995	40.8899994	1000	182	651	1	2033-05-10 03:00:00+03	2018-11-27 03:00:00+03	2018-11-27 03:00:00+03	2018-09-25 17:54:26.716004+03	2018-09-25 17:54:26.716004+03	102500	8.19999981	1
1197	bond	RU000A0ZZ8A2	ПЮДМ БО-П1	ПЮДМ ООО БО-П01	\N	FJPM LLC BO-P01	fjpm llc bo	RU000A0ZZ8A2	RUB	\N	\N	PUBLISHED	\N	\N	19.5599995	19.5599995	690.409973	739.72998	50000	30	653	1	2023-05-04 03:00:00+03	2019-05-25 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:26.733625+03	2018-09-25 17:54:26.733625+03	5000000	18	1
1198	bond	RU000A0ZZ8T2	ЗСКБ БО-П1	Запсибкомбанк ПАО БO-П01	\N	WSCB BO-P01	wscb bo	RU000A0ZZ8T2	RUB	\N	\N	PUBLISHED	\N	\N	7.5	7.5	4.19999981	18.3999996	1000	92	654	1	2021-06-15 03:00:00+03	2019-06-07 03:00:00+03	2018-12-05 03:00:00+03	2018-09-25 17:54:26.748126+03	2018-09-25 17:54:26.748126+03	0	7.30000019	1
1199	bond	RU000A0ZZ8U0	ЛадФин БО3	Ладья-Финанс АО БО-03	\N	Ladya-Finans BO-03	ladya-finans bo	RU000A0ZZ8U0	RUB	\N	\N	PUBLISHED	\N	\N	7.6500001	7.6500001	21.6700001	34.9000015	1000	182	371	1	2028-05-22 03:00:00+03	2023-05-29 03:00:00+03	2018-12-03 03:00:00+03	2018-09-25 17:54:26.763946+03	2018-09-25 17:54:26.763946+03	0	7	1
1200	bond	RU000A0ZZ8X4	КраснодКр2	Краснодарский край 35002 обл.	\N	Krasnodar Territory 35002	krasnodar territory 	RU000A0ZZ8X4	RUB	\N	\N	PUBLISHED	\N	\N	8.60999966	8.60999966	4.38999987	19.0200005	1000	91	655	1	2025-06-03 03:00:00+03	1970-01-01 03:00:00+03	2018-12-04 03:00:00+03	2018-09-25 17:54:26.776002+03	2018-09-25 17:54:26.776002+03	97000	7.63000011	1
1201	bond	RU000A0ZZ984	ГТЛК 1P-10	ГТЛК БО 001P-10	\N	STLC BO 001P-10	stlc bo 	RU000A0ZZ984	RUB	\N	\N	PUBLISHED	\N	\N	8.52000046	8.52000046	3.95000005	19.9500008	1000	91	622	1	2033-05-20 03:00:00+03	1970-01-01 03:00:00+03	2018-12-07 03:00:00+03	2018-09-25 17:54:26.7876+03	2018-09-25 17:54:26.7876+03	0	8	1
1202	bond	RU000A0ZZ992	СберБ Б11R	Сбербанк ПАО БCО 001P-11R	\N	Sberbank BSO 001P-11R	sberbank bso 	RU000A0ZZ992	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.349999994	1000	1274	638	1	2021-12-24 03:00:00+03	1970-01-01 03:00:00+03	2021-12-24 03:00:00+03	2018-09-25 17:54:26.801067+03	2018-09-25 17:54:26.801067+03	0	0.00999999978	1
1203	bond	RU000A0ZZ9P8	СамарОбл14	Самарская область 35014 обл.	\N	Samara Region 35014	samara region 	RU000A0ZZ9P8	RUB	\N	\N	PUBLISHED	\N	\N	7.65999985	7.65999985	2.45000005	18.5699997	1000	91	656	1	2026-06-04 03:00:00+03	1970-01-01 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:26.81593+03	2018-09-25 17:54:26.81593+03	0	7.44999981	1
1204	bond	RU000A0ZZ9R4	РЖД 1Р-07R	РЖД БО 001Р-07R	\N	RZD BO 1P-07R	rzd bo 	RU000A0ZZ9R4	RUB	\N	\N	PUBLISHED	\N	\N	8.84000015	8.84000015	20.6000004	36.4000015	1000	182	626	1	2033-05-26 03:00:00+03	2024-06-06 03:00:00+03	2018-12-13 03:00:00+03	2018-09-25 17:54:26.827608+03	2018-09-25 17:54:26.827608+03	0	7.30000019	1
1205	bond	RU000A0ZZ9W4	УрКаПБО4P	Уралкалий ПАО ПБО-04-P	\N	Uralkali PBO-04-P	uralkali pbo	RU000A0ZZ9W4	RUB	\N	\N	PUBLISHED	\N	\N	9.85000038	9.85000038	21.5200005	38.3899994	1000	182	582	1	2023-06-09 03:00:00+03	1970-01-01 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:26.839493+03	2018-09-25 17:54:26.839493+03	92850	7.69999981	1
1206	bond	RU000A0ZZ9X2	РоялКапБО1	Роял Капитал БО-П01	\N	Royal Capital BO-P01	royal capital bo	RU000A0ZZ9X2	RUB	\N	\N	PUBLISHED	\N	\N	17.5300007	17.5300007	5.42000008	44.8800011	1000	91	657	1	2020-06-12 03:00:00+03	2019-06-14 03:00:00+03	2018-12-14 03:00:00+03	2018-09-25 17:54:26.851469+03	2018-09-25 17:54:26.851469+03	101000	18	1
1207	bond	RU000A0ZZAE0	МясничБОП1	Мясничий БО-П01	\N	Myasnichiy BO-P01	myasnichiy bo	RU000A0ZZAE0	RUB	\N	\N	PUBLISHED	\N	\N	14.2200003	14.2200003	2.22000003	11.1000004	1000	30	658	1	2020-06-10 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:26.873728+03	2018-09-25 17:54:26.873728+03	100200	13.5	1
1208	bond	RU000A0ZZAJ9	СберБ Б09R	Сбербанк ПАО БCО 001P-09R	\N	Sberbank BSO 001P-09R	sberbank bso 	RU000A0ZZAJ9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.310000002	1000	1115	638	1	2021-08-01 03:00:00+03	1970-01-01 03:00:00+03	2021-08-01 03:00:00+03	2018-09-25 17:54:26.887142+03	2018-09-25 17:54:26.887142+03	93300	0.00999999978	1
1209	bond	RU000A0ZZAR2	ЛомМасБОП1	Ломбард Мастер БО-П01	\N	Lombard Master BO-P01	lombard master bo	RU000A0ZZAR2	RUB	\N	\N	PUBLISHED	\N	\N	16.3799992	16.3799992	0.519999981	47.3699989	1000	91	659	1	2019-06-24 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:26.900049+03	2018-09-25 17:54:26.900049+03	102450	19	1
1210	bond	RU000A0ZZAT8	ПионЛизБП1	Пионер-Лизинг БО-П01	\N	Pioneer Leasing BO-P01	pioneer leasing bo	RU000A0ZZAT8	RUB	\N	\N	PUBLISHED	\N	\N	12.96	12.96	0.340000004	10.0699997	1000	30	660	1	2023-05-31 03:00:00+03	2019-06-21 03:00:00+03	2018-10-24 03:00:00+03	2018-09-25 17:54:26.9113+03	2018-09-25 17:54:26.9113+03	100000	12.25	1
1211	bond	RU000A0ZZAW2	ПИК БО-П06	ГК ПИК ПАО БО-П06	\N	PIK GROUP BO-P06	pik group bo	RU000A0ZZAW2	RUB	\N	\N	PUBLISHED	\N	\N	9.22000027	9.22000027	21.4500008	43.3800011	1000	182	519	1	2021-06-23 03:00:00+03	2018-12-26 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:26.923744+03	2018-09-25 17:54:26.923744+03	0	8.69999981	1
1212	bond	RU000A0ZZBD0	ВТБ Б-1-6	Банк ВТБ ПАО Б-1-6	\N	Bank VTB B-1-6	bank vtb b	RU000A0ZZBD0	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.0199999996	1000	91	602	1	2019-06-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:26.935421+03	2018-09-25 17:54:26.935421+03	97660	0.00999999978	1
1213	bond	RU000A0ZZBJ7	ПИК БО-П07	ГК ПИК ПАО БО-П07	\N	PIK GROUP BO-P07	pik group bo	RU000A0ZZBJ7	RUB	\N	\N	PUBLISHED	\N	\N	8.38000011	8.38000011	20.9799995	43.3800011	1000	182	519	1	2021-06-25 03:00:00+03	1970-01-01 03:00:00+03	2018-12-28 03:00:00+03	2018-09-25 17:54:26.947212+03	2018-09-25 17:54:26.947212+03	0	8.69999981	1
1214	bond	RU000A0ZZBN9	СберБ Б12R	Сбербанк ПАО БО 001P-12R	\N	Sberbank BO 001P-12R	sberbank bo 	RU000A0ZZBN9	RUB	\N	\N	PUBLISHED	\N	\N	8.44999981	8.44999981	17.4899998	45.3899994	1000	218	573	1	2022-02-02 03:00:00+03	1970-01-01 03:00:00+03	2019-02-06 03:00:00+03	2018-09-25 17:54:26.958955+03	2018-09-25 17:54:26.958955+03	98000	7.5999999	1
1215	bond	RU000A0ZZBV2	ЕвропланБ8	АО ЛК Европлан БО-08	\N	Europlan BO-08	europlan bo	RU000A0ZZBV2	RUB	\N	\N	PUBLISHED	\N	\N	9.06000042	9.06000042	21.5200005	46.6199989	1000	182	661	1	2028-06-20 03:00:00+03	2020-06-30 03:00:00+03	2019-01-01 03:00:00+03	2018-09-25 17:54:26.97131+03	2018-09-25 17:54:26.97131+03	0	9.35000038	1
1216	bond	RU000A0ZZC48	КрасЯрКр15	Красноярский край 35015 обл.	\N	Krasnoyarsk Territory 35015	krasnoyarsk territory 	RU000A0ZZC48	RUB	\N	\N	PUBLISHED	\N	\N	7.63999987	7.63999987	17.1599998	43.5400009	1000	208	662	1	2025-06-26 03:00:00+03	1970-01-01 03:00:00+03	2019-01-29 03:00:00+03	2018-09-25 17:54:26.983352+03	2018-09-25 17:54:26.983352+03	0	7.63999987	1
1217	bond	RU000A0ZZCH9	ИА ДОМ 5P2	ДОМ.РФ Ипотечный агент 05-002P	\N	DOM.RF Mortgage agent 05-002P	dom.rf mortgage agent 	RU000A0ZZCH9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	16.6599998	23.8899994	1000	109	663	1	2043-04-28 03:00:00+03	2018-10-28 03:00:00+03	2018-10-28 03:00:00+03	2018-09-25 17:54:26.998214+03	2018-09-25 17:54:26.998214+03	0	8	1
1218	bond	RU000A0ZZCV0	ЛЕГЕНДА1P1	ЛЕГЕНДА БО 001P-01	\N	LEGENDA BO 001P-01	legenda bo 	RU000A0ZZCV0	RUB	\N	\N	PUBLISHED	\N	\N	15.8500004	15.8500004	28.7700005	34.9000015	1000	91	664	1	2021-07-08 03:00:00+03	1970-01-01 03:00:00+03	2018-10-11 03:00:00+03	2018-09-25 17:54:27.011619+03	2018-09-25 17:54:27.011619+03	98250	14	1
1219	bond	RU000A0ZZCX6	РОССИУМ1P1	Концерн РОССИУМ ООО 001P-01	\N	Concern ROSSIUM 001P-01	concern rossium 	RU000A0ZZCX6	RUB	\N	\N	PUBLISHED	\N	\N	0	0	17.7099991	42.9799995	1000	182	426	1	2027-12-30 03:00:00+03	2019-01-10 03:00:00+03	2019-01-10 03:00:00+03	2018-09-25 17:54:27.02727+03	2018-09-25 17:54:27.02727+03	0	8.61999989	1
1220	bond	RU000A0ZZD39	ЧЗПСН-П Б1	ЧЗПСН-Профнастил ПАО БО-01	\N	PROFNASTIL BO-01	profnastil bo	RU000A0ZZD39	RUB	\N	\N	PUBLISHED	\N	\N	0	0	31.1200008	79.7799988	1000	182	665	1	2021-07-12 03:00:00+03	1970-01-01 03:00:00+03	2019-01-14 03:00:00+03	2018-09-25 17:54:27.039439+03	2018-09-25 17:54:27.039439+03	0	16	1
1221	bond	RU000A0ZZD88	СберБ Б14R	Сбербанк ПАО ИОС 001P-14R	\N	Sberbank IOS 001P-14R	sberbank ios 	RU000A0ZZD88	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.349999994	1000	1274	666	1	2022-01-17 03:00:00+03	1970-01-01 03:00:00+03	2022-01-17 03:00:00+03	2018-09-25 17:54:27.059117+03	2018-09-25 17:54:27.059117+03	91900	0.00999999978	1
1222	bond	RU000A0ZZDB0	ЕАБР 1Р-01	ЕАБР БО 001Р-01	\N	Eurasian Develop Bank 1P-01	eurasian develop bank 	RU000A0ZZDB0	RUB	\N	\N	PUBLISHED	\N	\N	8.57999992	8.57999992	13.1199999	37.9000015	1000	182	667	1	2028-07-11 03:00:00+03	2020-01-21 03:00:00+03	2019-01-22 03:00:00+03	2018-09-25 17:54:27.072058+03	2018-09-25 17:54:27.072058+03	99000	7.5999999	1
1223	bond	RU000A0ZZDM7	СберББО13R	Сбербанк ПАО БCО 001P-13R	\N	Sberbank BSO 001P-13R	sberbank bso 	RU000A0ZZDM7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.349999994	1000	1287	638	1	2022-01-26 03:00:00+03	1970-01-01 03:00:00+03	2022-01-26 03:00:00+03	2018-09-25 17:54:27.087755+03	2018-09-25 17:54:27.087755+03	0	0.00999999978	1
1224	bond	RU000A0ZZDQ8	ЛомМасБОП2	Ломбард Мастер БО-П02	\N	Lombard Master BO-P02	lombard master bo	RU000A0ZZDQ8	RUB	\N	\N	PUBLISHED	\N	\N	17.7000008	17.7000008	33.5299988	44.8800011	1000	91	659	1	2019-07-18 03:00:00+03	1970-01-01 03:00:00+03	2018-10-18 03:00:00+03	2018-09-25 17:54:27.098755+03	2018-09-25 17:54:27.098755+03	101000	18	1
1225	bond	RU000A0ZZE12	ГПБ002P-01	ГПБ (АО) БО 002P-01	\N	Gazprombank BO 002P-01	gazprombank bo 	RU000A0ZZE12	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.0500000007	1000	182	668	1	2019-01-21 03:00:00+03	1970-01-01 03:00:00+03	2019-01-21 03:00:00+03	2018-09-25 17:54:27.110586+03	2018-09-25 17:54:27.110586+03	0	0.00999999978	1
1226	bond	RU000A0ZZE20	СберБ Б16R	Сбербанк ПАО БО 001P-16R	\N	Sberbank BO 001P-16R	sberbank bo 	RU000A0ZZE20	RUB	\N	\N	PUBLISHED	\N	\N	8.65999985	8.65999985	12.7399998	37.4000015	1000	182	573	1	2023-01-18 03:00:00+03	1970-01-01 03:00:00+03	2019-01-23 03:00:00+03	2018-09-25 17:54:27.125503+03	2018-09-25 17:54:27.125503+03	96490	7.5	1
1227	bond	RU000A0ZZE38	СберБ Б15R	Сбербанк ПАО БCО 001P-15R	\N	Sberbank BSO 001P-15R	sberbank bso 	RU000A0ZZE38	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	40	1000	1461	638	1	2022-08-07 03:00:00+03	1970-01-01 03:00:00+03	2022-08-07 03:00:00+03	2018-09-25 17:54:27.141568+03	2018-09-25 17:54:27.141568+03	0	0.00999999978	1
1228	bond	RU000A0ZZEA0	СолЛизБО01	Солид-Лизинг ООО БО-001-01	\N	Solid-Leasing BO-001-01	solid-leasing bo	RU000A0ZZEA0	RUB	\N	\N	PUBLISHED	\N	\N	13.6499996	13.6499996	22.4400005	32.4099998	1000	91	669	1	2023-07-18 03:00:00+03	2019-07-23 03:00:00+03	2018-10-23 03:00:00+03	2018-09-25 17:54:27.154644+03	2018-09-25 17:54:27.154644+03	99990	13	1
1229	bond	RU000A0ZZEM5	ЯрОбл35016	Ярославская область 35016 обл.	\N	Yaroslavl Region 35016	yaroslavl region 	RU000A0ZZEM5	RUB	\N	\N	PUBLISHED	\N	\N	8.34000015	8.34000015	12.4200001	53.1500015	1000	244	346	1	2025-09-21 03:00:00+03	2019-03-31 03:00:00+03	2019-03-31 03:00:00+03	2018-09-25 17:54:27.170698+03	2018-09-25 17:54:27.170698+03	99840	7.94999981	1
1230	bond	RU000A0ZZER4	ГазпромБО7	Газпром ПАО БО-07	\N	GAZPROM BO-07	gazprom bo	RU000A0ZZER4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	12.4300003	40.3899994	1000	182	303	1	2033-07-12 03:00:00+03	2025-07-22 03:00:00+03	2019-01-29 03:00:00+03	2018-09-25 17:54:27.18222+03	2018-09-25 17:54:27.18222+03	0	8.10000038	1
1231	bond	RU000A0ZZES2	ГазпромБ22	Газпром ПАО БО-22	\N	GAZPROM BO-22	gazprom bo	RU000A0ZZES2	RUB	\N	\N	PUBLISHED	\N	\N	9.06999969	9.06999969	12.4300003	40.3899994	1000	182	303	1	2048-06-23 03:00:00+03	2025-07-22 03:00:00+03	2019-01-29 03:00:00+03	2018-09-25 17:54:27.194764+03	2018-09-25 17:54:27.194764+03	96100	8.10000038	1
1232	bond	RU000A0ZZET0	ГазпромБ23	Газпром ПАО БО-23	\N	GAZPROM BO-23	gazprom bo	RU000A0ZZET0	RUB	\N	\N	PUBLISHED	\N	\N	9.06999969	9.06999969	12.4300003	40.3899994	1000	182	303	1	2048-06-23 03:00:00+03	2025-07-22 03:00:00+03	2019-01-29 03:00:00+03	2018-09-25 17:54:27.226549+03	2018-09-25 17:54:27.226549+03	96100	8.10000038	1
1233	bond	RU000A0ZZEU8	СберБ Б19R	Сбербанк ПАО ИОС 001P-19R	\N	Sberbank IOS 001P-19R	sberbank ios 	RU000A0ZZEU8	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.310000002	1000	1115	666	1	2021-08-19 03:00:00+03	1970-01-01 03:00:00+03	2021-08-19 03:00:00+03	2018-09-25 17:54:27.251258+03	2018-09-25 17:54:27.251258+03	0	0.00999999978	1
1234	bond	RU000A0ZZEW4	Альфа-Б2Р1	Альфа-Банк БО 002Р-01	\N	ALFA-BANK BO 002P-01	alfa-bank bo 	RU000A0ZZEW4	RUB	\N	\N	PUBLISHED	\N	\N	8.68999958	8.68999958	12.1199999	39.6100006	1000	183	670	1	2021-08-02 03:00:00+03	1970-01-01 03:00:00+03	2019-01-30 03:00:00+03	2018-09-25 17:54:27.270503+03	2018-09-25 17:54:27.270503+03	98470	7.9000001	1
1235	bond	RU000A0ZZFC3	СберБ Б17R	Сбербанк ПАО ИОС 001P-17R	\N	Sberbank IOS 001P-17R	sberbank ios 	RU000A0ZZFC3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.349999994	1000	1274	666	1	2022-02-15 03:00:00+03	1970-01-01 03:00:00+03	2022-02-15 03:00:00+03	2018-09-25 17:54:27.283029+03	2018-09-25 17:54:27.283029+03	93000	0.00999999978	1
1236	bond	RU000A0ZZFH2	ЦППК 1P-02	Центральная ППК П01-БО-02	\N	Central EPC 1P-02	central epc 	RU000A0ZZFH2	RUB	\N	\N	PUBLISHED	\N	\N	9.93999958	9.93999958	13.2200003	49.1199989	1000	182	671	1	2021-08-03 03:00:00+03	1970-01-01 03:00:00+03	2019-02-05 03:00:00+03	2018-09-25 17:54:27.298371+03	2018-09-25 17:54:27.298371+03	100330	9.85000038	1
1237	bond	RU000A0ZZFP5	ПР-Лиз 1P1	ПР-Лизинг ООО БО 001Р-01	\N	PR-Leasing LLC BO 001P-01	pr-leasing llc bo 	RU000A0ZZFP5	RUB	\N	\N	PUBLISHED	\N	\N	13.6400003	13.6400003	17.1000004	32.4099998	1000	91	672	1	2021-08-04 03:00:00+03	2020-02-05 03:00:00+03	2018-11-07 03:00:00+03	2018-09-25 17:54:27.313478+03	2018-09-25 17:54:27.313478+03	100000	13	1
1238	bond	RU000A0ZZFV3	ВТБ Б-1-7	Банк ВТБ ПАО Б-1-7	\N	Bank VTB B-1-7	bank vtb b	RU000A0ZZFV3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.0199999996	1000	91	602	1	2018-11-09 03:00:00+03	1970-01-01 03:00:00+03	2018-11-09 03:00:00+03	2018-09-25 17:54:27.326592+03	2018-09-25 17:54:27.326592+03	0	0.00999999978	1
1239	bond	RU000A0ZZG93	СУЭК-Ф1P2R	СУЭК-Финанс ООО БО 001Р-02R	\N	SUEK-Finance BO 001P-02R	suek-finance bo 	RU000A0ZZG93	RUB	\N	\N	PUBLISHED	\N	\N	9.05000019	9.05000019	9.77999973	41.3899994	1000	182	673	1	2021-08-09 03:00:00+03	1970-01-01 03:00:00+03	2019-02-11 03:00:00+03	2018-09-25 17:54:27.342948+03	2018-09-25 17:54:27.342948+03	0	8.30000019	1
1240	bond	RU000A0ZZGE7	ФолксвБ1P2	Фольксваген Банк РУС Б 001P-02	\N	Volkswagen Bank RUS BO 001P-02	volkswagen bank rus bo 	RU000A0ZZGE7	RUB	\N	\N	PUBLISHED	\N	\N	8.77999973	8.77999973	9.65999985	43.1199989	1000	183	674	1	2021-08-17 03:00:00+03	1970-01-01 03:00:00+03	2019-02-14 03:00:00+03	2018-09-25 17:54:27.360472+03	2018-09-25 17:54:27.360472+03	100000	8.60000038	1
1241	bond	RU000A0ZZGT5	РЖД 1Р-08R	РЖД ОАО БО 001Р-08R	\N	RZD BO 001P-08R	rzd bo 	RU000A0ZZGT5	RUB	\N	\N	PUBLISHED	\N	\N	4.26000023	4.26000023	8.76000023	39.8400002	1000	182	626	1	2028-08-03 03:00:00+03	2019-08-15 03:00:00+03	2019-02-14 03:00:00+03	2018-09-25 17:54:27.375145+03	2018-09-25 17:54:27.375145+03	0	7.98999977	1
1242	bond	RU000A0ZZGZ2	МясничБОП2	Мясничий БО-П02	\N	Myasnichiy BO-P02	myasnichiy bo	RU000A0ZZGZ2	RUB	\N	\N	PUBLISHED	\N	\N	13.6199999	13.6199999	2.22000003	11.1000004	1000	30	658	1	2021-08-04 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:27.391243+03	2018-09-25 17:54:27.391243+03	101500	13.5	1
1243	bond	RU000A0ZZH84	ВТБ Б-1-8	Банк ВТБ ПАО Б-1-8	\N	Bank VTB B-1-8	bank vtb b	RU000A0ZZH84	RUB	\N	\N	PUBLISHED	\N	\N	7.44999981	7.44999981	7.67000008	19.9500008	1000	91	602	1	2021-08-24 03:00:00+03	1970-01-01 03:00:00+03	2018-11-20 03:00:00+03	2018-09-25 17:54:27.41076+03	2018-09-25 17:54:27.41076+03	101950	8	1
1244	bond	RU000A0ZZHD7	СберБ Б20R	Сбербанк ПАО ИОС 001P-20R	\N	Sberbank IOS 001P-20R	sberbank ios 	RU000A0ZZHD7	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.400000006	1000	1461	666	1	2022-08-30 03:00:00+03	1970-01-01 03:00:00+03	2022-08-30 03:00:00+03	2018-09-25 17:54:27.426526+03	2018-09-25 17:54:27.426526+03	95600	0.00999999978	1
1245	bond	RU000A0ZZJZ6	ГарИнв1P04	ФПК Гарант-Инвест БО 001P-04	\N	Garant-Invest BO 001P-04	garant-invest bo 	RU000A0ZZJZ6	RUB	\N	\N	PUBLISHED	\N	\N	12.3199997	12.3199997	8.88000011	59.8400002	1000	182	675	1	2020-08-26 03:00:00+03	1970-01-01 03:00:00+03	2019-02-27 03:00:00+03	2018-09-25 17:54:27.438822+03	2018-09-25 17:54:27.438822+03	100050	12	1
1246	bond	RU000A0ZZKB5	ВЭБ1P-K092	Внешэкономбанк ПБО-001Р-K092	\N	Vnesheconombank 1P-K092	vnesheconombank 	RU000A0ZZKB5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.80000019	5.38000011	1000	28	676	1	2018-09-28 03:00:00+03	1970-01-01 03:00:00+03	2018-09-28 03:00:00+03	2018-09-25 17:54:27.454849+03	2018-09-25 17:54:27.454849+03	0	7.01000023	1
1247	bond	RU000A0ZZKP5	ЦентрИБ1Р5	Центр-инвест ПАО БО-001P-05	\N	Center-invest Bank BO-001P-05	center-invest bank bo	RU000A0ZZKP5	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4.28999996	41.1399994	1000	182	642	1	2022-03-03 03:00:00+03	2019-09-05 03:00:00+03	2019-03-07 03:00:00+03	2018-09-25 17:54:27.474697+03	2018-09-25 17:54:27.474697+03	0	8.25	1
1248	bond	RU000A0ZZKR1	СберБ Б25R	Сбербанк ПАО ИОС 001P-25R	\N	Sberbank IOS 001P-25R	sberbank ios 	RU000A0ZZKR1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	47.5999985	1000	1287	666	1	2022-03-15 03:00:00+03	1970-01-01 03:00:00+03	2022-03-15 03:00:00+03	2018-09-25 17:54:27.494968+03	2018-09-25 17:54:27.494968+03	0	1.35000002	1
1249	bond	RU000A0ZZKS9	СберБ Б21R	Сбербанк ПАО ИОС 001P-21R	\N	Sberbank IOS 001P-21R	sberbank ios 	RU000A0ZZKS9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.349999994	1000	1287	666	1	2022-03-15 03:00:00+03	1970-01-01 03:00:00+03	2022-03-15 03:00:00+03	2018-09-25 17:54:27.510694+03	2018-09-25 17:54:27.510694+03	0	0.00999999978	1
1250	bond	RU000A0ZZKW1	ДиалексП01	Диалекс ООО БО-П01	\N	Dialex BO-P01	dialex bo	RU000A0ZZKW1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	27068.4902	256438.359	4000000	180	677	1	2021-08-21 03:00:00+03	1970-01-01 03:00:00+03	2019-03-05 03:00:00+03	2018-09-25 17:54:27.527755+03	2018-09-25 17:54:27.527755+03	0	13	1
1251	bond	RU000A0ZZKZ4	ВЭБ1P-K094	Внешэкономбанк ПБО-001Р-K094	\N	Vnesheconombank 1P-K094	vnesheconombank 	RU000A0ZZKZ4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	3.51999998	5.48000002	1000	28	676	1	2018-10-05 03:00:00+03	1970-01-01 03:00:00+03	2018-10-05 03:00:00+03	2018-09-25 17:54:27.542785+03	2018-09-25 17:54:27.542785+03	0	7.13999987	1
1252	bond	RU000A0ZZL05	МетИнвБ Б3	Металлинвестбанк ПАО АКБ БО-03	\N	Metallinvestbank BO-03	metallinvestbank bo	RU000A0ZZL05	RUB	\N	\N	PUBLISHED	\N	\N	0	0	3.07999992	37.4000015	1000	182	407	1	2023-09-04 03:00:00+03	2019-09-09 03:00:00+03	2019-03-11 03:00:00+03	2018-09-25 17:54:27.558201+03	2018-09-25 17:54:27.558201+03	0	7.5	1
1253	bond	RU000A0ZZL54	СберБ Б22R	Сбербанк ПАО ИОС 001P-22R	\N	Sberbank IOS 001P-22R	sberbank ios 	RU000A0ZZL54	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0.310000002	1000	1115	666	1	2021-10-14 03:00:00+03	1970-01-01 03:00:00+03	2021-10-14 03:00:00+03	2018-09-25 17:54:27.570409+03	2018-09-25 17:54:27.570409+03	100000	0.00999999978	1
1254	bond	RU000A0ZZLK4	ВЭБ1P-K095	Внешэкономбанк ПБО-001Р-K095	\N	Vnesheconombank 1P-K095	vnesheconombank 	RU000A0ZZLK4	RUB	\N	\N	PUBLISHED	\N	\N	0	0	2.19000006	5.57999992	1000	28	676	1	2018-10-12 03:00:00+03	1970-01-01 03:00:00+03	2018-10-12 03:00:00+03	2018-09-25 17:54:27.581869+03	2018-09-25 17:54:27.581869+03	0	7.28000021	1
1255	bond	RU000A0ZZM87	КрасЯрКр16	Красноярский край 35016 обл.	\N	Krasnoyarsk Territory 35016	krasnoyarsk territory 	RU000A0ZZM87	RUB	\N	\N	PUBLISHED	\N	\N	8.76000023	8.76000023	0.949999988	43.3800011	1000	182	662	1	2025-09-12 03:00:00+03	1970-01-01 03:00:00+03	2019-03-22 03:00:00+03	2018-09-25 17:54:27.593747+03	2018-09-25 17:54:27.593747+03	100750	8.69999981	1
1256	bond	RU000A0ZZMA3	СберБ Б18R	Сбербанк ПАО ИОС 001P-18R	\N	Sberbank IOS 001P-18R	sberbank ios 	RU000A0ZZMA3	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	47.5999985	1000	1287	666	1	2022-03-31 03:00:00+03	1970-01-01 03:00:00+03	2022-03-31 03:00:00+03	2018-09-25 17:54:27.605925+03	2018-09-25 17:54:27.605925+03	0	1.35000002	1
1257	bond	RU000A0ZZMB1	СберБ Б23R	Сбербанк ПАО ИОС 001P-23R	\N	Sberbank IOS 001P-23R	sberbank ios 	RU000A0ZZMB1	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	1000	0	666	1	2022-03-24 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	2018-09-25 17:54:27.620891+03	2018-09-25 17:54:27.620891+03	0	\N	1
1258	bond	RU000A0ZZMC9	ВЭБ1P-K096	Внешэкономбанк ПБО-001Р-K096	\N	Vnesheconombank 1P-K096	vnesheconombank 	RU000A0ZZMC9	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0.790000021	5.51999998	1000	28	676	1	2018-10-19 03:00:00+03	1970-01-01 03:00:00+03	2018-10-19 03:00:00+03	2018-09-25 17:54:27.638696+03	2018-09-25 17:54:27.638696+03	0	7.19999981	1
1259	bond	RU000A0ZZMQ9	СолЛизБО02	Солид-Лизинг ООО БО-001-02	\N	Solid-Leasing BO-001-02	solid-leasing bo	RU000A0ZZMQ9	RUB	\N	\N	PUBLISHED	\N	\N	13.6499996	13.6499996	0	32.4099998	1000	91	669	1	2023-09-19 03:00:00+03	2019-09-24 03:00:00+03	2018-12-25 03:00:00+03	2018-09-25 17:54:27.653835+03	2018-09-25 17:54:27.653835+03	100000	13	1
1260	bond	XS0088543193	RUS-28	ГОВОЗ РФ МК-0-СМ-119 (XS)	\N	RUS-28	rus	XS0088543193	RUB	\N	\N	PUBLISHED	\N	\N	5.05999994	5.05999994	2132.26221	63.75	1000	180	497	1	2028-06-24 03:00:00+03	1970-01-01 03:00:00+03	2018-12-24 03:00:00+03	2018-09-25 17:54:27.665512+03	2018-09-25 17:54:27.665512+03	158500	12.75	1
1261	bond	XS0114288789	RUS-30	ГОВОЗ РФ SK-0-CM-128 (XS)	\N	RUS-30	rus	XS0114288789	RUB	\N	\N	PUBLISHED	\N	\N	0	0	1.07340002	0.0199999996	0.444999993	180	497	1	2030-03-31 03:00:00+03	1970-01-01 03:00:00+03	2018-09-30 03:00:00+03	2018-09-25 17:54:27.681151+03	2018-09-25 17:54:27.681151+03	0	7.5	1000
1262	bond	XS0504954347	RUS-20	ГОВОЗ РФ 12840044V (XS)	\N	RUS-20	rus	XS0504954347	RUB	\N	\N	PUBLISHED	\N	\N	7.38999987	7.38999987	134156.562	2500	100000	180	497	1	2020-04-29 03:00:00+03	1970-01-01 03:00:00+03	2018-10-29 03:00:00+03	2018-09-25 17:54:27.693173+03	2018-09-25 17:54:27.693173+03	0	5	1
1263	bond	XS0767472458	RUS-22	ГОВОЗ РФ 12840060V (XS)	\N	RUS-22	rus	XS0767472458	RUB	\N	\N	PUBLISHED	\N	\N	6.61000013	6.61000013	282831.438	4500	200000	180	497	1	2022-04-04 03:00:00+03	1970-01-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:27.70546+03	2018-09-25 17:54:27.70546+03	0	4.5	1
1264	bond	XS0767473852	RUS-42	ГОВОЗ РФ 12840061V (XS)	\N	RUS-42	rus	XS0767473852	RUB	\N	\N	PUBLISHED	\N	\N	5.32000017	5.32000017	353539.281	5625	200000	180	497	1	2042-04-04 03:00:00+03	1970-01-01 03:00:00+03	2018-10-04 03:00:00+03	2018-09-25 17:54:27.718256+03	2018-09-25 17:54:27.718256+03	0	5.625	1
1268	bond	XS1143363940	CBOM 05/25	CBOM Finance P.L.C. 26/05/25	\N	CBOM Finance P.L.C. 26/05/25	cbom finance p.l.c.	XS1143363940	RUB	\N	\N	PUBLISHED	\N	\N	0	0	5454.16992	8250	100000	184	678	1	2025-05-26 03:00:00+03	1970-01-01 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:27.779162+03	2018-09-25 17:54:27.779162+03	0	16.5	1
1269	bond	XS1434175730	BCS 10/19	BCS SP Plc Series 5	\N	BCS SP Plc Series 5	bcs sp plc series 	XS1434175730	RUB	\N	\N	PUBLISHED	\N	\N	0	0	4602.74023	5013.7002	80000	183	679	1	2019-10-10 03:00:00+03	1970-01-01 03:00:00+03	2018-10-10 03:00:00+03	2018-09-25 17:54:27.79269+03	2018-09-25 17:54:27.79269+03	0	12.5	1
1270	bond	XS1604405545	BCS06/20	BCS SP Plc 26/06/20	\N	BCS SP Plc 26/06/20	bcs sp plc 	XS1604405545	RUB	\N	\N	PUBLISHED	\N	\N	0	0	13961.6396	28076.7109	350000	183	680	1	2020-06-26 03:00:00+03	1970-01-01 03:00:00+03	2018-12-26 03:00:00+03	2018-09-25 17:54:27.804872+03	2018-09-25 17:54:27.804872+03	0	16	1
1271	bond	XS1654237129	BCS 08/20	BCS SP Plc Series 2017-8	\N	BCS SP Plc Series 2017-8	bcs sp plc series 	XS1654237129	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	21172.5996	350000	184	679	1	2020-08-16 03:00:00+03	1970-01-01 03:00:00+03	2019-02-16 03:00:00+03	2018-09-25 17:54:27.817774+03	2018-09-25 17:54:27.817774+03	0	12	1
1272	bond	XS1675776014	BCS PFGR	BCS SP Plc Series 2017-9	\N	BCS SP Plc Series 2017-9	bcs sp plc series 	XS1675776014	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	526.48999	100000	184	679	1	2027-08-23 03:00:00+03	1970-01-01 03:00:00+03	2019-02-23 03:00:00+03	2018-09-25 17:54:27.829561+03	2018-09-25 17:54:27.829561+03	10425000	1	1
1273	bond	XS1708322133	BCS Ladder	BCS SP Plc Series 2017-13	\N	BCS SP Plc Series 2017-13	bcs sp plc series 	XS1708322133	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	300000	365	679	1	2021-01-29 03:00:00+03	1970-01-01 03:00:00+03	2019-01-29 03:00:00+03	2018-09-25 17:54:27.84033+03	2018-09-25 17:54:27.84033+03	0	0	1
1274	bond	XS1713519012	BCS MICEX	BCS SP Plc Series 2017-16	\N	BCS SP Plc Series 2017-16	bcs sp plc series 	XS1713519012	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	100000	0	679	1	2027-11-09 03:00:00+03	1970-01-01 03:00:00+03	1970-01-01 03:00:00+03	2018-09-25 17:54:27.853002+03	2018-09-25 17:54:27.853002+03	0	\N	1
1275	bond	XS1731601867	BCS PFGRA	BCS SP Plc Series 2017-19	\N	BCS SP Plc Series 2017-19	bcs sp plc series 	XS1731601867	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	546.450012	100000	184	679	1	2027-11-26 03:00:00+03	1970-01-01 03:00:00+03	2018-11-26 03:00:00+03	2018-09-25 17:54:27.868751+03	2018-09-25 17:54:27.868751+03	0	1	1
1276	bond	XS1807420937	BCS 4/21	BCS SP Plc Series 17	\N	BCS SP Plc Series 17	bcs sp plc series 	XS1807420937	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	100000	376	679	1	2021-04-30 03:00:00+03	1970-01-01 03:00:00+03	2019-04-30 03:00:00+03	2018-09-25 17:54:27.880135+03	2018-09-25 17:54:27.880135+03	10000000	0	1
1277	bond	XS1822383094	BCS 09/23	BCS SP Plc Series 2018-8	\N	BCS SP Plc Series 2018-8	bcs sp plc series 	XS1822383094	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	1150.68005	100000	42	679	1	2023-09-27 03:00:00+03	1970-01-01 03:00:00+03	2018-09-27 03:00:00+03	2018-09-25 17:54:27.900982+03	2018-09-25 17:54:27.900982+03	10110000	10	1
1278	bond	XS1833629253	BCS 07/21	BCS SP Plc Series 20	\N	BCS SP Plc Series 20	bcs sp plc series 	XS1833629253	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	8500	100000	207	679	1	2021-07-01 03:00:00+03	1970-01-01 03:00:00+03	2019-01-01 03:00:00+03	2018-09-25 17:54:27.912693+03	2018-09-25 17:54:27.912693+03	10196000	17	1
1279	bond	XS1859436070	BCS 08/21	BCS SP Plc Series 23	\N	BCS SP Plc Series 23	bcs sp plc series 	XS1859436070	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	8500	100000	206	679	1	2021-08-10 03:00:00+03	1970-01-01 03:00:00+03	2019-02-10 03:00:00+03	2018-09-25 17:54:27.923825+03	2018-09-25 17:54:27.923825+03	0	17	1
1280	bond	XS1859436401	BCS3108/21	BCS SP Plc Series 24	\N	BCS SP Plc Series 24	bcs sp plc series 	XS1859436401	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	0	100000	365	679	1	2021-08-31 03:00:00+03	1970-01-01 03:00:00+03	2019-08-31 03:00:00+03	2018-09-25 17:54:27.936299+03	2018-09-25 17:54:27.936299+03	9950000	0	1
1281	bond	XS1873963794	BCS 10/21	BCS SP Plc Series 26	\N	BCS SP Plc Series 26	bcs sp plc series 	XS1873963794	RUB	\N	\N	PUBLISHED	\N	\N	0	0	0	8500	100000	209	679	1	2021-10-01 03:00:00+03	1970-01-01 03:00:00+03	2019-04-01 03:00:00+03	2018-09-25 17:54:27.948295+03	2018-09-25 17:54:27.948295+03	10000000	17	1
\.


--
-- Data for Name: etf; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.etf (id, "supplierId", "issuerId", "offerType", name, status, logo, "sharePrice", "yearOneYield", "yearThreeYield", "minAmount", currency, info, "offerLink", "createdAt", "updatedAt", ticker, "shortName", "fullName", "oneMonthYield", "sixMonthYield", "yearYield", "lastPrice", "bidPrice", "offerPrice", "lotSize") FROM stdin;
1	\N	\N	etf	Акции Австралия	PUBLISHED	\N	1927	\N	\N	1927	RUB	\N	\N	2018-09-25 17:48:52.604555+03	2018-09-25 17:48:52.604555+03	FXAU	FXAU ETF	FinEx MSCI Australia UCITS ETF	-3.75	18.3700008	17.1399994	1927	1926	1927	1
2	\N	\N	etf	Акции Китай	PUBLISHED	\N	2605	\N	\N	2605	RUB	\N	\N	2018-09-25 17:48:52.627378+03	2018-09-25 17:48:52.627378+03	FXCN	FXCN ETF	FinEx MSCI CHINA UCITS ETF	-5.78999996	1.96000004	12.2799997	2605	2600	2605	1
3	\N	\N	etf	Акции Германия	PUBLISHED	\N	2273.5	\N	\N	2273.5	RUB	\N	\N	2018-09-25 17:48:52.64311+03	2018-09-25 17:48:52.64311+03	FXDE	FXDE ETF	FinEx MCSI Germany UCITS ETF	-3.04999995	13.79	11.5600004	2273.5	2272	2273.5	1
4	\N	\N	etf	Золото	PUBLISHED	\N	554	\N	\N	554	RUB	\N	\N	2018-09-25 17:48:52.658964+03	2018-09-25 17:48:52.658964+03	FXGD	FXGD ETF	FinEx Gold ETF USD	-2.6400001	2.97000003	4.53000021	554	553	554	1
5	\N	\N	etf	Акции IT-сектор США	PUBLISHED	\N	4866	\N	\N	4866	RUB	\N	\N	2018-09-25 17:48:52.674912+03	2018-09-25 17:48:52.674912+03	FXIT	iFXIT ETF	FinEx MSCI USA IT UCITS ETF	-1.67999995	32.8800011	52.0600014	4866	4856	4867	1
6	\N	\N	etf	Акции Япония	PUBLISHED	\N	2566	\N	\N	2566	RUB	\N	\N	2018-09-25 17:48:52.689848+03	2018-09-25 17:48:52.689848+03	FXJP	FXJP ETF	FinEx MCSI Japan UCITS ETF	1.74000001	18.9599991	26.2199993	2566	2559	2566	1
7	\N	\N	etf	Краткосрочные гособлигации США с рублевым хеджем	PUBLISHED	\N	1457	\N	\N	1457	RUB	\N	\N	2018-09-25 17:48:52.710797+03	2018-09-25 17:48:52.710797+03	FXMM	FXMM ETF	FinEx CASH EQUIVALENTS ETF	0.340000004	2.6099999	5.63000011	1457	1456.80005	1457	1
8	\N	\N	etf	Еврооблигации российских эмитентов с рублевым хеджем	PUBLISHED	\N	1420	\N	\N	1420	RUB	\N	\N	2018-09-25 17:48:52.727024+03	2018-09-25 17:48:52.727024+03	FXRB	FXRB ETF	FinEx Rus Eurobonds ETF (RUB)	1.42999995	-0.980000019	1.57000005	1420	1421	1423	1
9	\N	\N	etf	Акции Россия	PUBLISHED	\N	2289	\N	\N	2289	RUB	\N	\N	2018-09-25 17:48:52.742371+03	2018-09-25 17:48:52.742371+03	FXRL	FXRL ETF	FinEx RTS UCITS ETF USD	5.38999987	10.1800003	22.9300003	2289	2283.5	2287.5	1
10	\N	\N	etf	Еврооблигации российских эмитентов	PUBLISHED	\N	7170	\N	\N	7170	RUB	\N	\N	2018-09-25 17:48:52.7541+03	2018-09-25 17:48:52.7541+03	FXRU	FXRU ETF	FinEx Rus Eurobonds ETF (USD)	-0.550000012	13.2700005	12.21	7170	7170	7190	1
11	\N	\N	etf	Акции Великобритания	PUBLISHED	\N	2073	\N	\N	2073	RUB	\N	\N	2018-09-25 17:48:52.766537+03	2018-09-25 17:48:52.766537+03	FXUK	FXUK ETF	FinEx MCSI UK UCITS  ETF	-1.24000001	17.7800007	17.6499996	2073	2068	2072	1
12	\N	\N	etf	Акции США	PUBLISHED	\N	3401	\N	\N	3401	RUB	\N	\N	2018-09-25 17:48:52.790865+03	2018-09-25 17:48:52.790865+03	FXUS	FXUS ETF	FinEx MSCI USA UCITS ETF	-1.10000002	27.9099998	34.4799995	3401	3398	3399	1
\.


--
-- Data for Name: issuer; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.issuer (id, ticker, name, status, logo, "coverLogo", info, "createdAt", "updatedAt", "unicIssuerName", "publicName", color) FROM stdin;
609	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.969583+03	2018-09-25 17:54:34.279641+03	tambov region 	\N	7
7	\N	apteki 36,6	onReview			\N	2018-09-25 17:53:41.419521+03	2018-09-25 17:54:30.55278+03	apteki 36,6	\N	7
15	\N	beluga group	onReview			\N	2018-09-25 17:53:41.525883+03	2018-09-25 17:54:30.55371+03	beluga group	\N	1
16	\N	bashinformsvyaz	onReview			\N	2018-09-25 17:53:41.534577+03	2018-09-25 17:54:30.55454+03	bashinformsvyaz	\N	2
17	\N	belon	onReview			\N	2018-09-25 17:53:41.546652+03	2018-09-25 17:54:30.555511+03	belon	\N	3
18	\N	bsp	onReview			\N	2018-09-25 17:53:41.558673+03	2018-09-25 17:54:30.579373+03	bsp	\N	4
9	\N	gdr ros agro plc ord shs	onReview			\N	2018-09-25 17:53:41.443331+03	2018-09-25 17:54:30.579996+03	gdr ros agro plc ord shs	\N	2
3	\N	alrosa-nurba	onReview			\N	2018-09-25 17:53:41.370964+03	2018-09-25 17:54:30.580606+03	alrosa-nurba	\N	3
19	\N	mkb	onReview			\N	2018-09-25 17:53:41.575532+03	2018-09-25 17:54:30.581233+03	mkb	\N	5
20	\N	buryatzoloto	onReview			\N	2018-09-25 17:53:41.586994+03	2018-09-25 17:54:30.581826+03	buryatzoloto	\N	6
21	\N	chtpz	onReview			\N	2018-09-25 17:53:41.599916+03	2018-09-25 17:54:30.589241+03	chtpz	\N	7
22	\N	rn-western siberia	onReview			\N	2018-09-25 17:53:41.610746+03	2018-09-25 17:54:30.603476+03	rn-western siberia	\N	1
23	\N	severstal -	onReview			\N	2018-09-25 17:53:41.62249+03	2018-09-25 17:54:30.631035+03	severstal -	\N	2
24	\N	cmk	onReview			\N	2018-09-25 17:53:41.634969+03	2018-09-25 17:54:30.631828+03	cmk	\N	3
25	\N	chelabinskyi cinkovyi zavod	onReview			\N	2018-09-25 17:53:41.647879+03	2018-09-25 17:54:30.632672+03	chelabinskyi cinkovyi zavod	\N	4
26	\N	chelyab energo sbyt	onReview			\N	2018-09-25 17:53:41.65883+03	2018-09-25 17:54:30.633472+03	chelyab energo sbyt	\N	5
27	\N	centrlnyi telegraf	onReview			\N	2018-09-25 17:53:41.68372+03	2018-09-25 17:54:30.634823+03	centrlnyi telegraf	\N	6
28	\N	dagestan energosbyt. company	onReview			\N	2018-09-25 17:53:41.69941+03	2018-09-25 17:54:30.635683+03	dagestan energosbyt. company	\N	7
29	\N	zavod diod	onReview			\N	2018-09-25 17:53:41.710182+03	2018-09-25 17:54:30.636605+03	zavod diod	\N	1
30	\N	detsky mir	onReview			\N	2018-09-25 17:53:41.722477+03	2018-09-25 17:54:30.638383+03	detsky mir	\N	2
33	\N	gdr en+ group plc ord shs	onReview			\N	2018-09-25 17:53:41.760959+03	2018-09-25 17:54:30.682269+03	gdr en+ group plc ord shs	\N	5
34	\N	elektrotsink	onReview			\N	2018-09-25 17:53:41.771135+03	2018-09-25 17:54:30.700951+03	elektrotsink	\N	6
35	\N	enel russia	onReview			\N	2018-09-25 17:53:41.794315+03	2018-09-25 17:54:30.701782+03	enel russia	\N	7
36	\N	fsk ees	onReview			\N	2018-09-25 17:53:41.807592+03	2018-09-25 17:54:30.702636+03	fsk ees	\N	1
37	\N	gaz	onReview			\N	2018-09-25 17:53:41.818583+03	2018-09-25 17:54:30.703544+03	gaz	\N	2
38	\N	dvmp	onReview			\N	2018-09-25 17:53:41.830296+03	2018-09-25 17:54:30.704488+03	dvmp	\N	3
41	\N	tkz krasny kotelshchik	onReview			\N	2018-09-25 17:53:41.866707+03	2018-09-25 17:54:30.715762+03	tkz krasny kotelshchik	\N	6
42	\N	farmsintez	onReview			\N	2018-09-25 17:53:41.878528+03	2018-09-25 17:54:30.734769+03	farmsintez	\N	7
40	\N	slavneft-janos	onReview			\N	2018-09-25 17:53:41.854468+03	2018-09-25 17:54:30.735611+03	slavneft-janos	\N	5
39	\N	gtm	onReview			\N	2018-09-25 17:53:41.842795+03	2018-09-25 17:54:30.7365+03	gtm	\N	4
43	\N	magadanenergo	onReview			\N	2018-09-25 17:53:41.890313+03	2018-09-25 17:54:30.754993+03	magadanenergo	\N	1
44	\N	moscowexchange	onReview			\N	2018-09-25 17:53:41.902607+03	2018-09-25 17:54:30.771716+03	moscowexchange	\N	2
45	\N	moesk	onReview			\N	2018-09-25 17:53:41.914169+03	2018-09-25 17:54:30.779291+03	moesk	\N	3
46	\N	nizhnekamskshina	onReview			\N	2018-09-25 17:53:41.926203+03	2018-09-25 17:54:30.780249+03	nizhnekamskshina	\N	4
47	\N	perm energosbyt	onReview			\N	2018-09-25 17:53:41.939603+03	2018-09-25 17:54:30.781113+03	perm energosbyt	\N	5
48	\N	rollman gk	onReview			\N	2018-09-25 17:53:41.954877+03	2018-09-25 17:54:30.781956+03	rollman gk	\N	6
49	\N	united company rusal plc	onReview			\N	2018-09-25 17:53:41.96602+03	2018-09-25 17:54:30.783781+03	united company rusal plc	\N	7
50	\N	seligdar	onReview			\N	2018-09-25 17:53:41.978029+03	2018-09-25 17:54:30.785656+03	seligdar	\N	1
51	\N	tantal	onReview			\N	2018-09-25 17:53:41.990606+03	2018-09-25 17:54:30.807939+03	tantal	\N	2
52	\N	tomsk raspredelit. komp	onReview			\N	2018-09-25 17:53:42.001903+03	2018-09-25 17:54:30.809576+03	tomsk raspredelit. komp	\N	3
53	\N	utair aviacompany	onReview			\N	2018-09-25 17:53:42.019518+03	2018-09-25 17:54:30.813025+03	utair aviacompany	\N	4
54	\N	vtb	onReview			\N	2018-09-25 17:53:42.033999+03	2018-09-25 17:54:30.823534+03	vtb	\N	5
55	\N	fg future	onReview			\N	2018-09-25 17:53:42.04572+03	2018-09-25 17:54:30.848359+03	fg future	\N	6
56	\N	izhstal 2	onReview			\N	2018-09-25 17:53:42.057404+03	2018-09-25 17:54:30.855308+03	izhstal 2	\N	7
57	\N	kamaz	onReview			\N	2018-09-25 17:53:42.069545+03	2018-09-25 17:54:30.85593+03	kamaz	\N	1
59	\N	lenta ltd dr	onReview			\N	2018-09-25 17:53:42.101469+03	2018-09-25 17:54:30.856499+03	lenta ltd dr	\N	3
60	\N	moskovskii oblastnoi bank pao	onReview			\N	2018-09-25 17:53:42.113539+03	2018-09-25 17:54:30.857136+03	moskovskii oblastnoi bank pao	\N	4
62	\N	m.video	onReview			\N	2018-09-25 17:53:42.139244+03	2018-09-25 17:54:30.860811+03	m.video	\N	6
61	\N	mordovskaya energosbyt comp.	onReview			\N	2018-09-25 17:53:42.125862+03	2018-09-25 17:54:30.857712+03	mordovskaya energosbyt comp.	\N	5
58	\N	ksb	onReview			\N	2018-09-25 17:53:42.088871+03	2018-09-25 17:54:30.869103+03	ksb	\N	2
65	\N	rosbank	onReview			\N	2018-09-25 17:53:42.176257+03	2018-09-25 17:54:30.92131+03	rosbank	\N	2
66	\N	tns energo rostov-na-dony	onReview			\N	2018-09-25 17:53:42.189442+03	2018-09-25 17:54:30.934718+03	tns energo rostov-na-dony	\N	3
67	\N	saratovenergo	onReview			\N	2018-09-25 17:53:42.201599+03	2018-09-25 17:54:30.93567+03	saratovenergo	\N	4
68	\N	surgut-	onReview			\N	2018-09-25 17:53:42.21759+03	2018-09-25 17:54:30.936653+03	surgut-	\N	5
69	\N	kvadra	onReview			\N	2018-09-25 17:53:42.229126+03	2018-09-25 17:54:30.937539+03	kvadra	\N	6
70	\N	ob.aviastroitelnaya korp.	onReview			\N	2018-09-25 17:53:42.241783+03	2018-09-25 17:54:30.938892+03	ob.aviastroitelnaya korp.	\N	7
71	\N	ovk	onReview			\N	2018-09-25 17:53:42.260602+03	2018-09-25 17:54:30.949414+03	ovk	\N	1
72	\N	cmt	onReview			\N	2018-09-25 17:53:42.273548+03	2018-09-25 17:54:30.950038+03	cmt	\N	2
73	\N	gdr x5 retailgroup n.v.ord shs	onReview			\N	2018-09-25 17:53:42.285208+03	2018-09-25 17:54:30.951942+03	gdr x5 retailgroup n.v.ord shs	\N	3
74	\N	rusgidro	onReview			\N	2018-09-25 17:53:42.297604+03	2018-09-25 17:54:30.952418+03	rusgidro	\N	4
75	\N	kuzbas.topl. kompaniya	onReview			\N	2018-09-25 17:53:42.309247+03	2018-09-25 17:54:30.971325+03	kuzbas.topl. kompaniya	\N	5
76	\N	pao organicheskiy sintez	onReview			\N	2018-09-25 17:53:42.320788+03	2018-09-25 17:54:30.98637+03	pao organicheskiy sintez	\N	6
77	\N	lenenrg	onReview			\N	2018-09-25 17:53:42.332666+03	2018-09-25 17:54:30.993832+03	lenenrg	\N	7
78	\N	megion	onReview			\N	2018-09-25 17:53:42.34472+03	2018-09-25 17:54:30.994327+03	megion	\N	1
79	\N	mrsk severo-zapada	onReview			\N	2018-09-25 17:53:42.356577+03	2018-09-25 17:54:30.994935+03	mrsk severo-zapada	\N	2
80	\N	npo nauka	onReview			\N	2018-09-25 17:53:42.369039+03	2018-09-25 17:54:30.995466+03	npo nauka	\N	3
81	\N	or	onReview			\N	2018-09-25 17:53:42.38088+03	2018-09-25 17:54:30.995983+03	or	\N	4
610	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.991721+03	2018-09-25 17:54:34.280208+03	garantstroy 	\N	1
665	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.189016+03	2018-09-25 17:54:34.619767+03	profnastil bo	\N	7
87	\N	vhz	onReview			\N	2018-09-25 17:53:42.468743+03	2018-09-25 17:54:31.180977+03	vhz	\N	3
88	\N	pllc yandex n.v.	onReview			\N	2018-09-25 17:53:42.485616+03	2018-09-25 17:54:31.181848+03	pllc yandex n.v.	\N	4
89	\N	himprom	onReview			\N	2018-09-25 17:53:42.524906+03	2018-09-25 17:54:31.182936+03	himprom	\N	5
92	\N	p	onReview			\N	2018-09-25 17:53:42.568089+03	2018-09-25 17:54:31.186303+03	p	\N	1
94	\N	mrsk centra	onReview			\N	2018-09-25 17:53:42.600591+03	2018-09-25 17:54:31.219344+03	mrsk centra	\N	3
95	\N	mosenrg	onReview			\N	2018-09-25 17:53:42.611775+03	2018-09-25 17:54:31.221202+03	mosenrg	\N	4
96	\N	neftekamskiy avtozavod pao	onReview			\N	2018-09-25 17:53:42.636175+03	2018-09-25 17:54:31.229012+03	neftekamskiy avtozavod pao	\N	5
97	\N	nauka-svyaz	onReview			\N	2018-09-25 17:53:42.647837+03	2018-09-25 17:54:31.246644+03	nauka-svyaz	\N	6
98	\N	plazmek	onReview			\N	2018-09-25 17:53:42.66+03	2018-09-25 17:54:31.254277+03	plazmek	\N	7
99	\N	rosgosstrakh	onReview			\N	2018-09-25 17:53:42.671639+03	2018-09-25 17:54:31.255135+03	rosgosstrakh	\N	1
100	\N	rosseti	onReview			\N	2018-09-25 17:53:42.683742+03	2018-09-25 17:54:31.256111+03	rosseti	\N	2
103	\N	sollers	onReview			\N	2018-09-25 17:53:42.735914+03	2018-09-25 17:54:31.259022+03	sollers	\N	5
104	\N	tgk-14	onReview			\N	2018-09-25 17:53:42.748077+03	2018-09-25 17:54:31.284034+03	tgk-14	\N	6
106	\N	volgograd energo sbyt	onReview			\N	2018-09-25 17:53:42.832227+03	2018-09-25 17:54:31.289347+03	volgograd energo sbyt	\N	1
109	\N	irkutskenrg	onReview			\N	2018-09-25 17:53:42.870669+03	2018-09-25 17:54:31.321886+03	irkutskenrg	\N	4
110	\N	kovrov mech. zavod	onReview			\N	2018-09-25 17:53:42.882924+03	2018-09-25 17:54:31.322545+03	kovrov mech. zavod	\N	5
111	\N	kubanenrg	onReview			\N	2018-09-25 17:53:42.89519+03	2018-09-25 17:54:31.323083+03	kubanenrg	\N	6
113	\N	marienergosbyt	onReview			\N	2018-09-25 17:53:42.918358+03	2018-09-25 17:54:31.323679+03	marienergosbyt	\N	1
114	\N	mrsk severnogo kavkaza	onReview			\N	2018-09-25 17:53:42.930353+03	2018-09-25 17:54:31.324521+03	mrsk severnogo kavkaza	\N	2
115	\N	multisistema	onReview			\N	2018-09-25 17:53:42.942464+03	2018-09-25 17:54:31.330095+03	multisistema	\N	3
108	\N	gazprom	onReview			\N	2018-09-25 17:53:42.85864+03	2018-09-25 17:54:31.335978+03	gazprom	\N	3
107	\N	vozrojdenie	onReview			\N	2018-09-25 17:53:42.846851+03	2018-09-25 17:54:31.325032+03	vozrojdenie	\N	2
116	\N	nkhp	onReview			\N	2018-09-25 17:53:42.954126+03	2018-09-25 17:54:31.355302+03	nkhp	\N	4
112	\N	lenzoloto	onReview			\N	2018-09-25 17:53:42.906697+03	2018-09-25 17:54:31.37534+03	lenzoloto	\N	7
118	\N	pik	onReview			\N	2018-09-25 17:53:42.977907+03	2018-09-25 17:54:31.383296+03	pik	\N	6
119	\N	rbk	onReview			\N	2018-09-25 17:53:42.989851+03	2018-09-25 17:54:31.383809+03	rbk	\N	7
120	\N	rosinter restaurants	onReview			\N	2018-09-25 17:53:43.001899+03	2018-09-25 17:54:31.384305+03	rosinter restaurants	\N	1
121	\N	ruspolimet	onReview			\N	2018-09-25 17:53:43.014615+03	2018-09-25 17:54:31.386904+03	ruspolimet	\N	2
117	\N	tns energo nizhniy novg	onReview			\N	2018-09-25 17:53:42.966088+03	2018-09-25 17:54:31.387825+03	tns energo nizhniy novg	\N	5
122	\N	stavropolenergosbyt	onReview			\N	2018-09-25 17:53:43.029732+03	2018-09-25 17:54:31.395778+03	stavropolenergosbyt	\N	3
123	\N	tattelekom	onReview			\N	2018-09-25 17:53:43.052451+03	2018-09-25 17:54:31.416248+03	tattelekom	\N	4
125	\N	cherkizovo group	onReview			\N	2018-09-25 17:53:43.077419+03	2018-09-25 17:54:31.426122+03	cherkizovo group	\N	6
126	\N	irkut-3	onReview			\N	2018-09-25 17:53:43.090054+03	2018-09-25 17:54:31.457473+03	irkut-3	\N	7
127	\N	bank "kuzneckiy"	onReview			\N	2018-09-25 17:53:43.114491+03	2018-09-25 17:54:31.458506+03	bank "kuzneckiy"	\N	1
128	\N	levenguk	onReview			\N	2018-09-25 17:53:43.125915+03	2018-09-25 17:54:31.459307+03	levenguk	\N	2
129	\N	mrsk cip	onReview			\N	2018-09-25 17:53:43.141856+03	2018-09-25 17:54:31.46695+03	mrsk cip	\N	3
130	\N	mostotrest	onReview			\N	2018-09-25 17:53:43.154549+03	2018-09-25 17:54:31.468448+03	mostotrest	\N	4
132	\N	ogk-2	onReview			\N	2018-09-25 17:53:43.190004+03	2018-09-25 17:54:31.485572+03	ogk-2	\N	6
133	\N	rostelecom	onReview			\N	2018-09-25 17:53:43.208738+03	2018-09-25 17:54:31.486465+03	rostelecom	\N	7
134	\N	sberbank	onReview			\N	2018-09-25 17:53:43.22289+03	2018-09-25 17:54:31.489516+03	sberbank	\N	1
135	\N	tambov energosbyt comp.	onReview			\N	2018-09-25 17:53:43.234285+03	2018-09-25 17:54:31.490462+03	tambov energosbyt comp.	\N	2
137	\N	bank uralsib	onReview			\N	2018-09-25 17:53:43.258611+03	2018-09-25 17:54:31.523174+03	bank uralsib	\N	4
138	\N	yakutskenergo	onReview			\N	2018-09-25 17:53:43.270044+03	2018-09-25 17:54:31.54804+03	yakutskenergo	\N	5
139	\N	nornickel gmk	onReview			\N	2018-09-25 17:53:43.286144+03	2018-09-25 17:54:31.548957+03	nornickel gmk	\N	6
140	\N	hsci	onReview			\N	2018-09-25 17:53:43.298851+03	2018-09-25 17:54:31.550037+03	hsci	\N	7
136	\N	tmk	onReview			\N	2018-09-25 17:53:43.245845+03	2018-09-25 17:54:31.552099+03	tmk	\N	3
141	\N	kalugsk. sbyt. company	onReview			\N	2018-09-25 17:53:43.312713+03	2018-09-25 17:54:31.552894+03	kalugsk. sbyt. company	\N	1
142	\N	krashojarskenergosbyt	onReview			\N	2018-09-25 17:53:43.325992+03	2018-09-25 17:54:31.558627+03	krashojarskenergosbyt	\N	2
143	\N	smz	onReview			\N	2018-09-25 17:53:43.345006+03	2018-09-25 17:54:31.559444+03	smz	\N	3
145	\N	mechel	onReview			\N	2018-09-25 17:53:43.369589+03	2018-09-25 17:54:31.561641+03	mechel	\N	5
144	\N	mrsk volgi	onReview			\N	2018-09-25 17:53:43.358314+03	2018-09-25 17:54:31.569044+03	mrsk volgi	\N	4
146	\N	nlmk	onReview			\N	2018-09-25 17:53:43.381346+03	2018-09-25 17:54:31.583202+03	nlmk	\N	6
147	\N	phosagro	onReview			\N	2018-09-25 17:53:43.393485+03	2018-09-25 17:54:31.604432+03	phosagro	\N	7
148	\N	raspadskaya	onReview			\N	2018-09-25 17:53:43.407491+03	2018-09-25 17:54:31.613658+03	raspadskaya	\N	1
149	\N	rosneft	onReview			\N	2018-09-25 17:53:43.421748+03	2018-09-25 17:54:31.614256+03	rosneft	\N	2
151	\N	gazprom neft	onReview			\N	2018-09-25 17:53:43.44561+03	2018-09-25 17:54:31.614842+03	gazprom neft	\N	4
152	\N	tgk-2	onReview			\N	2018-09-25 17:53:43.45728+03	2018-09-25 17:54:31.615433+03	tgk-2	\N	5
153	\N	uzhno-uralskiy nikel. komb.	onReview			\N	2018-09-25 17:53:43.469644+03	2018-09-25 17:54:31.61608+03	uzhno-uralskiy nikel. komb.	\N	6
154	\N	vareganneftegaz	onReview			\N	2018-09-25 17:53:43.482047+03	2018-09-25 17:54:31.616618+03	vareganneftegaz	\N	7
156	\N	krasnyioctyabr	onReview			\N	2018-09-25 17:53:43.523964+03	2018-09-25 17:54:31.638593+03	krasnyioctyabr	\N	2
158	\N	magnit	onReview			\N	2018-09-25 17:53:43.549926+03	2018-09-25 17:54:31.654521+03	magnit	\N	4
159	\N	mrsk urala	onReview			\N	2018-09-25 17:53:43.561132+03	2018-09-25 17:54:31.679705+03	mrsk urala	\N	5
155	\N	cityinnovativetechnologies	onReview			\N	2018-09-25 17:53:43.501977+03	2018-09-25 17:54:31.690971+03	cityinnovativetechnologies	\N	1
160	\N	murmanskaya tec	onReview			\N	2018-09-25 17:53:43.573109+03	2018-09-25 17:54:31.691703+03	murmanskaya tec	\N	6
161	\N	nmtp	onReview			\N	2018-09-25 17:53:43.586104+03	2018-09-25 17:54:31.692499+03	nmtp	\N	7
162	\N	polus	onReview			\N	2018-09-25 17:53:43.596495+03	2018-09-25 17:54:31.694742+03	polus	\N	1
163	\N	rkk energia	onReview			\N	2018-09-25 17:53:43.608759+03	2018-09-25 17:54:31.696038+03	rkk energia	\N	2
164	\N	gazprom gazorasp. rostov	onReview			\N	2018-09-25 17:53:43.620796+03	2018-09-25 17:54:31.699644+03	gazprom gazorasp. rostov	\N	3
611	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.048708+03	2018-09-25 17:54:34.284187+03	ulyanovskaya oblast 	\N	2
620	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.606413+03	2018-09-25 17:54:34.339179+03	investtorgstroy 	\N	4
199	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.194335+03	2018-09-25 17:53:50.194335+03	rosselhozbank 	\N	3
200	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.212382+03	2018-09-25 17:53:50.212382+03	gazprom neft 	\N	4
202	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.25243+03	2018-09-25 17:53:50.25243+03	rzhd 	\N	6
222	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.067379+03	2018-09-25 17:53:51.067379+03	nefgazhold	\N	5
239	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.826726+03	2018-09-25 17:53:51.826726+03	rosnano 	\N	1
170	\N	krasnyioctabr-1	onReview			\N	2018-09-25 17:53:43.712685+03	2018-09-25 17:54:31.755843+03	krasnyioctabr-1	\N	2
171	\N	lsr	onReview			\N	2018-09-25 17:53:43.72453+03	2018-09-25 17:54:31.759043+03	lsr	\N	3
172	\N	megafon	onReview			\N	2018-09-25 17:53:43.740341+03	2018-09-25 17:54:31.759764+03	megafon	\N	4
174	\N	ingrad	onReview			\N	2018-09-25 17:53:43.779085+03	2018-09-25 17:54:31.778218+03	ingrad	\N	6
178	\N	samaraenergo	onReview			\N	2018-09-25 17:53:43.82822+03	2018-09-25 17:54:31.795311+03	samaraenergo	\N	3
179	\N	sakhalinenergo	onReview			\N	2018-09-25 17:53:43.840132+03	2018-09-25 17:54:31.805808+03	sakhalinenergo	\N	4
180	\N	tatneft	onReview			\N	2018-09-25 17:53:43.852137+03	2018-09-25 17:54:31.806398+03	tatneft	\N	5
181	\N	transkonteiner	onReview			\N	2018-09-25 17:53:43.864742+03	2018-09-25 17:54:31.811937+03	transkonteiner	\N	6
182	\N	uralskaya kuznica	onReview			\N	2018-09-25 17:53:43.876452+03	2018-09-25 17:54:31.812483+03	uralskaya kuznica	\N	7
183	\N	viborgskii sudostr. zavod	onReview			\N	2018-09-25 17:53:43.887921+03	2018-09-25 17:54:31.819602+03	viborgskii sudostr. zavod	\N	1
185	\N	kamchatskenergo	onReview			\N	2018-09-25 17:53:43.920135+03	2018-09-25 17:54:31.831263+03	kamchatskenergo	\N	3
186	\N	mgts-4	onReview			\N	2018-09-25 17:53:43.946256+03	2018-09-25 17:54:31.832001+03	mgts-4	\N	4
187	\N	mrsk yuga	onReview			\N	2018-09-25 17:53:43.965526+03	2018-09-25 17:54:31.832798+03	mrsk yuga	\N	5
188	\N	mts	onReview			\N	2018-09-25 17:53:43.979347+03	2018-09-25 17:54:31.844+03	mts	\N	6
189	\N	tns energo nizhniy-novgorod	onReview			\N	2018-09-25 17:53:43.993278+03	2018-09-25 17:54:31.866574+03	tns energo nizhniy-novgorod	\N	7
190	\N	czpsn-profnasteel	onReview			\N	2018-09-25 17:53:44.004758+03	2018-09-25 17:54:31.867348+03	czpsn-profnasteel	\N	1
191	\N	pao sibirskiy gostinec	onReview			\N	2018-09-25 17:53:44.030287+03	2018-09-25 17:54:31.868602+03	pao sibirskiy gostinec	\N	2
192	\N	tatneft-3	onReview			\N	2018-09-25 17:53:44.043751+03	2018-09-25 17:54:31.873692+03	tatneft-3	\N	3
194	\N	uralkaliy	onReview			\N	2018-09-25 17:53:44.066518+03	2018-09-25 17:54:31.886283+03	uralkaliy	\N	5
195	\N	corp. vsmpo-avisma	onReview			\N	2018-09-25 17:53:44.079489+03	2018-09-25 17:54:31.893235+03	corp. vsmpo-avisma	\N	6
196	\N	zil	onReview			\N	2018-09-25 17:53:44.090674+03	2018-09-25 17:54:31.894236+03	zil	\N	7
193	\N	pao gk "tns energo"	onReview			\N	2018-09-25 17:53:44.055309+03	2018-09-25 17:54:31.889193+03	pao gk "tns energo"	\N	4
197	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.119496+03	2018-09-25 17:54:31.907921+03	moscow	\N	1
201	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.232864+03	2018-09-25 17:54:31.937+03	npf 	\N	5
203	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.306578+03	2018-09-25 17:54:31.943087+03	mechel 	\N	7
204	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.335375+03	2018-09-25 17:54:31.950448+03	dom.rf	\N	1
205	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.369879+03	2018-09-25 17:54:31.952194+03	transneft 	\N	2
206	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.477+03	2018-09-25 17:54:31.95288+03	suek-finans ooo 	\N	3
207	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.51057+03	2018-09-25 17:54:31.957092+03	ipotech.agent aizhk 	\N	4
208	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.531171+03	2018-09-25 17:54:31.962894+03	nefgazhol	\N	5
210	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.609978+03	2018-09-25 17:54:31.963991+03	ebrr	\N	7
211	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.660675+03	2018-09-25 17:54:31.975178+03	fsk ees 	\N	1
213	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.759107+03	2018-09-25 17:54:31.987948+03	mts 	\N	3
209	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.556277+03	2018-09-25 17:54:31.99511+03	evraziyskiy bank razvitiya 	\N	6
212	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.714606+03	2018-09-25 17:54:31.991137+03	vneshekonombank 	\N	2
215	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.799144+03	2018-09-25 17:54:32.002609+03	evrohim mhk ao 	\N	5
216	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.88547+03	2018-09-25 17:54:32.012835+03	veb-leasing ao 	\N	6
217	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.924702+03	2018-09-25 17:54:32.01477+03	rusal bratskiy al.	\N	7
218	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.948522+03	2018-09-25 17:54:32.015564+03	rusgidro(pao)	\N	1
214	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.777468+03	2018-09-25 17:54:32.027252+03	glavnaya doroga 	\N	4
219	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.972451+03	2018-09-25 17:54:32.027977+03	acron 	\N	2
221	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.016521+03	2018-09-25 17:54:32.050187+03	volga-sport 	\N	4
220	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.999441+03	2018-09-25 17:54:32.052766+03	zsd ao 	\N	3
223	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.108303+03	2018-09-25 17:54:32.065288+03	sankt-pet.telekom oao 	\N	6
225	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.248667+03	2018-09-25 17:54:32.073452+03	uranium one inc.	\N	1
226	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.283954+03	2018-09-25 17:54:32.074222+03	szkc	\N	2
224	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.197493+03	2018-09-25 17:54:32.076477+03	vtb 	\N	7
227	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.374555+03	2018-09-25 17:54:32.084795+03	binbank bo	\N	3
229	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.435961+03	2018-09-25 17:54:32.085602+03	svyaz-bank 	\N	5
230	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.461789+03	2018-09-25 17:54:32.093116+03	priam 	\N	6
231	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.485725+03	2018-09-25 17:54:32.093913+03	vesta 	\N	7
232	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.51191+03	2018-09-25 17:54:32.122718+03	tgk	\N	1
228	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.40286+03	2018-09-25 17:54:32.123877+03	aizhk 	\N	4
234	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.580446+03	2018-09-25 17:54:32.124492+03	bashneft ank 	\N	3
235	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.677503+03	2018-09-25 17:54:32.126087+03	metalloinvest hk ao 	\N	4
236	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.712688+03	2018-09-25 17:54:32.127929+03	vimpelkom	\N	5
233	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.534601+03	2018-09-25 17:54:32.131058+03	otkritie holding 	\N	2
238	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.79962+03	2018-09-25 17:54:32.131867+03	deltacredit cb bo	\N	7
237	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.770914+03	2018-09-25 17:54:32.13501+03	msp bank 	\N	6
240	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.896603+03	2018-09-25 17:54:32.159417+03	finstandart 	\N	2
241	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:51.979947+03	2018-09-25 17:54:32.177444+03	zao upravlenie othodami 	\N	3
242	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.058931+03	2018-09-25 17:54:32.185391+03	reso-garantia 	\N	4
243	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.145734+03	2018-09-25 17:54:32.186188+03	gazprombank 	\N	5
244	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.219936+03	2018-09-25 17:54:32.188424+03	pochta rossii 	\N	6
245	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.266534+03	2018-09-25 17:54:32.195922+03	rosneft 	\N	7
246	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.319339+03	2018-09-25 17:54:32.198815+03	fk mercury ooo 	\N	1
249	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.509856+03	2018-09-25 17:54:32.204332+03	evroplan 	\N	4
248	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.401114+03	2018-09-25 17:54:32.210631+03	ipotechnii agent atb a	\N	3
251	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.598334+03	2018-09-25 17:54:32.222387+03	mts bo	\N	6
247	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.360899+03	2018-09-25 17:54:32.227636+03	pravourmiiskoe ooo 	\N	2
613	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.2063+03	2018-09-25 17:54:34.28876+03	karachaevo-cherkesskaja rep 	\N	4
253	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.651591+03	2018-09-25 17:53:52.651591+03	ubrir (	\N	1
622	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.691579+03	2018-09-25 17:54:34.351045+03	stlc bo 	\N	6
268	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.095505+03	2018-09-25 17:53:53.095505+03	belgorodskaya obl.	\N	2
283	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.676371+03	2018-09-25 17:53:53.676371+03	smolensk region 	\N	3
310	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.388859+03	2018-09-25 17:53:54.388859+03	ipotechniy agent absolut 	\N	2
318	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.608412+03	2018-09-25 17:53:54.608412+03	sovkombank b	\N	3
330	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.871589+03	2018-09-25 17:53:54.871589+03	ooo archer finance ltd.	\N	1
260	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.899869+03	2018-09-25 17:54:32.270561+03	expobank ooo 	\N	1
261	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.919547+03	2018-09-25 17:54:32.302457+03	orenburgskaya obl.	\N	2
262	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.946985+03	2018-09-25 17:54:32.306007+03	ipotechniy agent psb 	\N	3
263	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.966429+03	2018-09-25 17:54:32.306687+03	dergava bo	\N	4
264	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.994579+03	2018-09-25 17:54:32.307416+03	uralvagonzavod npk bo	\N	5
265	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.027134+03	2018-09-25 17:54:32.310167+03	nacionalniy standart bo	\N	6
266	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.054685+03	2018-09-25 17:54:32.326826+03	novosibirsk 	\N	7
273	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.406494+03	2018-09-25 17:54:32.340486+03	vneshekonombank bo	\N	7
274	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.428911+03	2018-09-25 17:54:32.364387+03	reso-lizing b	\N	1
275	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.47249+03	2018-09-25 17:54:32.377217+03	kostroma reg.	\N	2
271	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.331602+03	2018-09-25 17:54:32.377815+03	bashkortostan	\N	5
276	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.496091+03	2018-09-25 17:54:32.378491+03	volgograd reg.	\N	3
278	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.540441+03	2018-09-25 17:54:32.383804+03	silovye mashiny 	\N	5
279	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.565639+03	2018-09-25 17:54:32.384354+03	udmurtia	\N	6
280	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.587674+03	2018-09-25 17:54:32.385033+03	bank vtb bo	\N	7
281	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.622851+03	2018-09-25 17:54:32.385637+03	o'key ooo bo	\N	1
277	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.514751+03	2018-09-25 17:54:32.392409+03	rusfinans bank 	\N	4
282	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.654019+03	2018-09-25 17:54:32.397451+03	soyuz	\N	2
284	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.704678+03	2018-09-25 17:54:32.415518+03	zenit	\N	4
286	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.745265+03	2018-09-25 17:54:32.437084+03	geotek seismorazvedka 	\N	6
287	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.763883+03	2018-09-25 17:54:32.440252+03	voronezh.	\N	7
288	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.779464+03	2018-09-25 17:54:32.440884+03	otkritie fk bank 	\N	1
289	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.8036+03	2018-09-25 17:54:32.447914+03	mkb bo	\N	2
285	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.724237+03	2018-09-25 17:54:32.448923+03	gazprombank bo	\N	5
291	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.870961+03	2018-09-25 17:54:32.449375+03	hakasiya 	\N	4
292	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.893675+03	2018-09-25 17:54:32.449934+03	domashnie dengi bo	\N	5
293	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.913392+03	2018-09-25 17:54:32.472179+03	raiffeisenbank bo	\N	6
294	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.945048+03	2018-09-25 17:54:32.473506+03	novosibirskaya oblast'	\N	7
290	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.844971+03	2018-09-25 17:54:32.474295+03	respublika mordovia 	\N	3
295	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.965508+03	2018-09-25 17:54:32.498814+03	stavropolsky kray 	\N	1
296	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.98954+03	2018-09-25 17:54:32.499646+03	upravlenie othodami 	\N	2
297	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.016792+03	2018-09-25 17:54:32.500233+03	veb-lizing ao 	\N	3
298	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.045088+03	2018-09-25 17:54:32.509196+03	irkut bo	\N	4
299	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.068628+03	2018-09-25 17:54:32.509893+03	centre invest bo	\N	5
300	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.095927+03	2018-09-25 17:54:32.510856+03	rsg-finance bo	\N	6
301	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.128217+03	2018-09-25 17:54:32.511608+03	unikredit bank bo	\N	7
302	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.150241+03	2018-09-25 17:54:32.523337+03	gazprombo	\N	1
303	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.172386+03	2018-09-25 17:54:32.527067+03	gazprom bo	\N	2
305	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.215604+03	2018-09-25 17:54:32.533784+03	tverskaya obl.	\N	4
306	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.237126+03	2018-09-25 17:54:32.563309+03	kemerovskaya obl.	\N	5
307	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.255748+03	2018-09-25 17:54:32.584706+03	alfa-bank bo	\N	6
308	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.286341+03	2018-09-25 17:54:32.585317+03	uwc finance llc 	\N	7
304	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.192082+03	2018-09-25 17:54:32.585968+03	russian helicopter bo	\N	3
311	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.411011+03	2018-09-25 17:54:32.589199+03	rosneft  	\N	3
313	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.474695+03	2018-09-25 17:54:32.590516+03	tomsk reg.	\N	5
309	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.307516+03	2018-09-25 17:54:32.59894+03	ipotech.agent aizhk	\N	1
314	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.495261+03	2018-09-25 17:54:32.602452+03	east.	\N	6
315	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.524797+03	2018-09-25 17:54:32.605684+03	globeksbank bo 	\N	7
316	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.552492+03	2018-09-25 17:54:32.631914+03	finstone ooo ob.	\N	1
317	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.573752+03	2018-09-25 17:54:32.633219+03	veb-lizing ao bo	\N	2
319	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.660394+03	2018-09-25 17:54:32.642314+03	ipotechnii agent atb 	\N	4
320	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.676181+03	2018-09-25 17:54:32.642826+03	international invest.	\N	5
321	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.719183+03	2018-09-25 17:54:32.646159+03	zenit bo	\N	6
322	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.736072+03	2018-09-25 17:54:32.658605+03	horus finans 	\N	7
323	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.752248+03	2018-09-25 17:54:32.661054+03	univer capital ltd  	\N	1
324	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.768003+03	2018-09-25 17:54:32.671377+03	veil finance 	\N	2
325	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.784128+03	2018-09-25 17:54:32.672636+03	ia petrokommerc	\N	3
327	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.824051+03	2018-09-25 17:54:32.697649+03	ipotechniy agent vozrojdenie	\N	5
328	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.839809+03	2018-09-25 17:54:32.698424+03	deltacredit cb 	\N	6
329	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.855813+03	2018-09-25 17:54:32.701043+03	transbaltstroy 	\N	7
331	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.888377+03	2018-09-25 17:54:32.704392+03	polyplast ao bo	\N	2
332	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.909704+03	2018-09-25 17:54:32.713408+03	transfin-m bo	\N	3
333	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.933787+03	2018-09-25 17:54:32.738619+03	natsionalniy kapital bo	\N	4
334	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.971555+03	2018-09-25 17:54:32.74505+03	intertechelectro new gen.	\N	5
335	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.990258+03	2018-09-25 17:54:32.745656+03	rosbank bso	\N	6
336	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.069676+03	2018-09-25 17:54:32.746326+03	bashneft ank bo	\N	7
337	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.101421+03	2018-09-25 17:54:32.747157+03	element lizing bo	\N	1
338	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.122161+03	2018-09-25 17:54:32.758888+03	komi	\N	2
339	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.157313+03	2018-09-25 17:54:32.770023+03	ia mkb zao 	\N	3
340	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.1803+03	2018-09-25 17:54:32.770704+03	zapsibkombank 	\N	4
621	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.670506+03	2018-09-25 17:54:34.339933+03	bashkir soda company 	\N	5
344	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.346951+03	2018-09-25 17:53:55.346951+03	zao ia mtsb klassa "	\N	1
366	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.004461+03	2018-09-25 17:53:56.004461+03	rosselhozbank bo	\N	2
367	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.045038+03	2018-09-25 17:53:56.045038+03	hmao-yugra ob.	\N	3
368	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.072925+03	2018-09-25 17:53:56.072925+03	voronezh reg.	\N	4
371	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.208889+03	2018-09-25 17:53:56.208889+03	ladya-finans bo	\N	7
372	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.229485+03	2018-09-25 17:53:56.229485+03	noyabrskaya pge 	\N	1
373	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.276848+03	2018-09-25 17:53:56.276848+03	rossiiskij kapital bo	\N	2
393	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.265886+03	2018-09-25 17:53:57.265886+03	zao ia soyuz	\N	1
395	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.445473+03	2018-09-25 17:53:57.445473+03	baltic leasing bo	\N	3
410	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.947223+03	2018-09-25 17:53:57.947223+03	moscow industrial bank 	\N	4
414	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.090691+03	2018-09-25 17:53:58.090691+03	ipotechnii agent pulsar	\N	1
422	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.408832+03	2018-09-25 17:53:58.408832+03	veb-leasing usd 	\N	2
426	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.661822+03	2018-09-25 17:53:58.661822+03	concern rossium 	\N	6
345	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.38556+03	2018-09-25 17:54:32.809934+03	ashinckiy metzavod pao bo	\N	2
348	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.458404+03	2018-09-25 17:54:32.829139+03	rosintrud ooo obl.	\N	5
354	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.644066+03	2018-09-25 17:54:32.861841+03	invector 	\N	4
355	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.662546+03	2018-09-25 17:54:32.875813+03	horus finance bo	\N	5
356	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.721775+03	2018-09-25 17:54:32.876482+03	rusfinance bank 	\N	6
357	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.743093+03	2018-09-25 17:54:32.877009+03	akb ao "	\N	7
358	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.771813+03	2018-09-25 17:54:32.878509+03	tm-energo finance 	\N	1
359	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.790768+03	2018-09-25 17:54:32.882749+03	uwc finance llc bo	\N	2
360	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.836949+03	2018-09-25 17:54:32.883288+03	region-invest 	\N	3
361	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.865863+03	2018-09-25 17:54:32.88399+03	moesk bo	\N	4
363	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.927809+03	2018-09-25 17:54:32.884582+03	promsvyazbank pao bo	\N	6
364	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.954977+03	2018-09-25 17:54:32.886315+03	krasnoyarsk reg.	\N	7
365	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.972922+03	2018-09-25 17:54:32.90205+03	solomensky lesozavod 	\N	1
362	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.893846+03	2018-09-25 17:54:32.932034+03	rosbank a	\N	5
369	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.10116+03	2018-09-25 17:54:32.934762+03	volgograd 	\N	5
370	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.162168+03	2018-09-25 17:54:32.938427+03	omsk region 	\N	6
374	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.297116+03	2018-09-25 17:54:32.949799+03	soyuz bo	\N	3
375	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.34236+03	2018-09-25 17:54:32.951984+03	vostochniy express bank 	\N	4
376	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.368063+03	2018-09-25 17:54:32.9547+03	ipotechnii agent khmb	\N	5
377	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.472526+03	2018-09-25 17:54:32.958832+03	ipotechnii agent itb 	\N	6
378	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.675478+03	2018-09-25 17:54:32.958871+03	tomskadm 	\N	7
379	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.708451+03	2018-09-25 17:54:32.959304+03	leningrad reg.	\N	1
381	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.764355+03	2018-09-25 17:54:33.000808+03	ia akbars 	\N	3
382	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.791835+03	2018-09-25 17:54:33.001662+03	stroyzhilinvest b	\N	4
383	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.810797+03	2018-09-25 17:54:33.002376+03	gtlk (	\N	5
384	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.830676+03	2018-09-25 17:54:33.006976+03	otkritie fk bank bo	\N	6
385	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.860658+03	2018-09-25 17:54:33.019191+03	volzhsky 	\N	7
386	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.899694+03	2018-09-25 17:54:33.02166+03	zao ia fora 	\N	1
387	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.920911+03	2018-09-25 17:54:33.027881+03	business consulting 	\N	2
388	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.93954+03	2018-09-25 17:54:33.028426+03	bkz finance ob.	\N	3
389	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.959617+03	2018-09-25 17:54:33.028978+03	magadan region 	\N	4
390	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.984244+03	2018-09-25 17:54:33.036193+03	ao ia vtb 	\N	5
391	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.002672+03	2018-09-25 17:54:33.047421+03	grazhd.samolety sukhogo bo	\N	6
392	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.193623+03	2018-09-25 17:54:33.059595+03	zao ia tfb	\N	7
396	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.51077+03	2018-09-25 17:54:33.066983+03	mia kb ao bo	\N	4
397	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.540961+03	2018-09-25 17:54:33.076845+03	ia dvic	\N	5
398	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.56161+03	2018-09-25 17:54:33.078964+03	ia inteh cl.	\N	6
399	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.604191+03	2018-09-25 17:54:33.081555+03	ia multi originator 	\N	7
400	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.624261+03	2018-09-25 17:54:33.082177+03	business consulting bo	\N	1
394	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.414905+03	2018-09-25 17:54:33.078343+03	veb-leasing ao bo	\N	2
402	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.740831+03	2018-09-25 17:54:33.092037+03	absolut bank bo	\N	3
404	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.795436+03	2018-09-25 17:54:33.131803+03	metallenergomontazh ooo ob.	\N	5
405	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.815491+03	2018-09-25 17:54:33.132695+03	ttb invest prodakshn ooo ob.	\N	6
403	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.771043+03	2018-09-25 17:54:33.133476+03	koks pjsc bo	\N	4
406	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.835741+03	2018-09-25 17:54:33.134896+03	finans-menedzhment 	\N	7
401	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.706096+03	2018-09-25 17:54:33.142172+03	digital invest 	\N	2
407	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.876941+03	2018-09-25 17:54:33.143225+03	metallinvestbank bo	\N	1
408	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.90555+03	2018-09-25 17:54:33.145521+03	magistral dvyh stolic kl.	\N	2
409	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.922252+03	2018-09-25 17:54:33.146449+03	rostelecom bo	\N	3
411	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.96654+03	2018-09-25 17:54:33.163189+03	ing bank bo	\N	5
412	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:57.987277+03	2018-09-25 17:54:33.164061+03	ia vozrozhdenie 	\N	6
413	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.028945+03	2018-09-25 17:54:33.192778+03	beluga group bo	\N	7
415	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.123479+03	2018-09-25 17:54:33.203454+03	kamaz pao bo	\N	2
416	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.147215+03	2018-09-25 17:54:33.203993+03	novikombank bo	\N	3
417	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.2213+03	2018-09-25 17:54:33.204545+03	evrazholding finans 	\N	4
419	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.302397+03	2018-09-25 17:54:33.209676+03	polyus bo	\N	6
420	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.365234+03	2018-09-25 17:54:33.210216+03	region-invest bo	\N	7
421	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.389732+03	2018-09-25 17:54:33.212562+03	ia eclipse	\N	1
418	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.265539+03	2018-09-25 17:54:33.218473+03	lenenergo b	\N	5
424	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.460826+03	2018-09-25 17:54:33.224901+03	kamaz oao bo	\N	4
425	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.637434+03	2018-09-25 17:54:33.229415+03	udmurtia 	\N	5
423	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.431075+03	2018-09-25 17:54:33.229915+03	lenta ooo bo	\N	3
427	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.681214+03	2018-09-25 17:54:33.261155+03	dom.rf bo	\N	7
428	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.701248+03	2018-09-25 17:54:33.262862+03	pervaya gruzovaya company	\N	1
627	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.867665+03	2018-09-25 17:54:34.370953+03	derzhava-platforma bo	\N	4
446	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.302715+03	2018-09-25 17:53:59.302715+03	rosselkhozbank bo	\N	5
450	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.471114+03	2018-09-25 17:53:59.471114+03	rzd 	\N	2
452	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.526023+03	2018-09-25 17:53:59.526023+03	eximbank of russia 	\N	4
457	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.650041+03	2018-09-25 17:53:59.650041+03	rosseti bo	\N	2
494	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.999689+03	2018-09-25 17:54:00.999689+03	megafon bo	\N	4
495	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.042658+03	2018-09-25 17:54:01.042658+03	russian post bo	\N	5
499	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.153815+03	2018-09-25 17:54:01.153815+03	rzd bo	\N	2
505	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.336064+03	2018-09-25 17:54:01.336064+03	uomp po bo	\N	1
513	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.61208+03	2018-09-25 17:54:01.61208+03	avtoban-finance 	\N	2
514	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.749381+03	2018-09-25 17:54:01.749381+03	rn bank 	\N	3
434	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.879721+03	2018-09-25 17:54:33.296755+03	fsi 	\N	7
435	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.905487+03	2018-09-25 17:54:33.297563+03	khakasia 	\N	1
437	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.945235+03	2018-09-25 17:54:33.298655+03	afk systema 	\N	3
433	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.845047+03	2018-09-25 17:54:33.299999+03	 properties finance ao bo	\N	6
441	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.054655+03	2018-09-25 17:54:33.345976+03	tulskiy region 	\N	7
443	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.145706+03	2018-09-25 17:54:33.358736+03	sevmorput bo	\N	2
444	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.211365+03	2018-09-25 17:54:33.36901+03	silovye mashiny bo	\N	3
445	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.256513+03	2018-09-25 17:54:33.36984+03	digital invest bo	\N	4
442	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.078098+03	2018-09-25 17:54:33.364007+03	iks 	\N	1
447	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.330688+03	2018-09-25 17:54:33.373744+03	evrofinansi-nedvijimost bo	\N	6
448	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.359178+03	2018-09-25 17:54:33.397875+03	sberbank pao ob 	\N	7
449	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.398492+03	2018-09-25 17:54:33.401003+03	metalloinvest hk ao bo	\N	1
451	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.491372+03	2018-09-25 17:54:33.415037+03	acron bo	\N	3
453	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.54716+03	2018-09-25 17:54:33.433571+03	kubanenergo 	\N	5
454	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.571501+03	2018-09-25 17:54:33.438733+03	mrsk centra bo	\N	6
455	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.591117+03	2018-09-25 17:54:33.43949+03	mrskur b	\N	7
456	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.614865+03	2018-09-25 17:54:33.440212+03	ogk	\N	1
458	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.67039+03	2018-09-25 17:54:33.444939+03	concern rossium bo	\N	3
459	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.691398+03	2018-09-25 17:54:33.445848+03	deloports 	\N	4
461	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.745908+03	2018-09-25 17:54:33.455904+03	finans-avia 	\N	6
463	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.83009+03	2018-09-25 17:54:33.467538+03	pochta rossii bo	\N	1
464	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.850046+03	2018-09-25 17:54:33.490806+03	fct 	\N	2
460	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.723842+03	2018-09-25 17:54:33.497856+03	krasnodar reg.	\N	5
466	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.899388+03	2018-09-25 17:54:33.49866+03	atomenergoprom bo	\N	4
467	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.977454+03	2018-09-25 17:54:33.49935+03	uomz po bo	\N	5
468	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.025541+03	2018-09-25 17:54:33.500184+03	fcb 	\N	6
469	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.067421+03	2018-09-25 17:54:33.501108+03	vtorresource bo	\N	7
465	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.869846+03	2018-09-25 17:54:33.502526+03	agronova-l 	\N	3
471	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.115398+03	2018-09-25 17:54:33.529069+03	nornickel bo	\N	2
473	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.183529+03	2018-09-25 17:54:33.555941+03	vneshekonombank pbo	\N	4
474	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.213827+03	2018-09-25 17:54:33.558893+03	avangard bo	\N	5
475	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.236367+03	2018-09-25 17:54:33.562585+03	ooo "	\N	6
476	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.290837+03	2018-09-25 17:54:33.563135+03	multioriginatormortageagent 	\N	7
477	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.317293+03	2018-09-25 17:54:33.567993+03	derzhava 	\N	1
478	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.338763+03	2018-09-25 17:54:33.568556+03	obuv'rus ooo bo	\N	2
479	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.362905+03	2018-09-25 17:54:33.56899+03	ia vtb 	\N	3
480	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.395115+03	2018-09-25 17:54:33.572149+03	evrazholding finance 	\N	4
481	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.414508+03	2018-09-25 17:54:33.575812+03	sibur holding 	\N	5
483	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.507502+03	2018-09-25 17:54:33.596211+03	rushydro bo	\N	7
484	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.557229+03	2018-09-25 17:54:33.610467+03	tmk bo	\N	1
485	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.600473+03	2018-09-25 17:54:33.610999+03	pao invest-development bo	\N	2
486	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.659983+03	2018-09-25 17:54:33.612746+03	ao "	\N	3
487	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.70945+03	2018-09-25 17:54:33.615682+03	rusal bratsk bo	\N	4
488	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.730784+03	2018-09-25 17:54:33.616128+03	evrohim mhk ao bo	\N	5
489	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.773488+03	2018-09-25 17:54:33.61655+03	transneft bo	\N	6
490	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.810041+03	2018-09-25 17:54:33.61705+03	carcade bo	\N	7
491	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.871435+03	2018-09-25 17:54:33.617566+03	miratorg finans bo	\N	1
492	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.900346+03	2018-09-25 17:54:33.618079+03	absolut bank c	\N	2
493	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.936402+03	2018-09-25 17:54:33.648818+03	 finance bo	\N	3
496	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.076295+03	2018-09-25 17:54:33.671263+03	sberbank pao bo	\N	6
497	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.107883+03	2018-09-25 17:54:33.675023+03	rus	\N	7
498	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.135132+03	2018-09-25 17:54:33.675556+03	rosbank bo	\N	1
500	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.195044+03	2018-09-25 17:54:33.67811+03	upravlenie othodami bo	\N	3
501	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.214425+03	2018-09-25 17:54:33.678535+03	structured investments spc 	\N	4
503	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.265982+03	2018-09-25 17:54:33.679311+03	evrofinance mosnarbank 	\N	6
504	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.29165+03	2018-09-25 17:54:33.681855+03	gk pioner ao bo	\N	7
502	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.244183+03	2018-09-25 17:54:33.686411+03	gazprom neft bo	\N	5
506	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.391504+03	2018-09-25 17:54:33.69306+03	yamalstroyinvest 	\N	2
507	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.423258+03	2018-09-25 17:54:33.698844+03	fpc 	\N	3
508	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.446818+03	2018-09-25 17:54:33.713599+03	ma vega	\N	4
509	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.481821+03	2018-09-25 17:54:33.717396+03	burovayakomp evrazia b	\N	5
510	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.509162+03	2018-09-25 17:54:33.721517+03	ma metallinvest	\N	6
511	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.528811+03	2018-09-25 17:54:33.721996+03	lenspecsmu bo	\N	7
512	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.58901+03	2018-09-25 17:54:33.722581+03	tinkoff bank bo	\N	1
515	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.800662+03	2018-09-25 17:54:33.732476+03	volkswagen bank rus ob.	\N	4
516	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.821929+03	2018-09-25 17:54:33.762785+03	rosselkhozbank 	\N	5
517	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.855622+03	2018-09-25 17:54:33.763543+03	mostotrest 	\N	6
518	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.90843+03	2018-09-25 17:54:33.770563+03	vneshekonombankpbo	\N	7
559	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.536253+03	2018-09-25 17:54:33.991287+03	gtlk bo	\N	6
520	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.051622+03	2018-09-25 17:54:02.051622+03	tkb	\N	2
562	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.648219+03	2018-09-25 17:54:33.993391+03	hydromashservice bo	\N	2
558	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.512737+03	2018-09-25 17:54:33.998182+03	transmashholding pbo	\N	5
564	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.735885+03	2018-09-25 17:54:33.998895+03	mcib bank c	\N	4
524	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.297898+03	2018-09-25 17:54:02.297898+03	rostelecom 	\N	6
565	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.77389+03	2018-09-25 17:54:34.034724+03	ingrad b	\N	5
566	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.80082+03	2018-09-25 17:54:34.035597+03	sfo locoservis finance 	\N	6
567	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.819749+03	2018-09-25 17:54:34.03711+03	gpb aerofinance ob.	\N	7
539	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.889662+03	2018-09-25 17:54:02.889662+03	fsk ees bo	\N	7
563	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.679564+03	2018-09-25 17:54:34.040095+03	smp bank 	\N	3
569	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.902837+03	2018-09-25 17:54:34.065064+03	detsky mir bo	\N	2
571	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.990855+03	2018-09-25 17:54:34.0714+03	vsk bo	\N	4
551	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.317999+03	2018-09-25 17:54:03.317999+03	lider-invest bo	\N	5
572	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.029871+03	2018-09-25 17:54:34.072087+03	rn bank bo	\N	5
554	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.394294+03	2018-09-25 17:54:03.394294+03	hk finans ooo bo p	\N	1
573	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.074116+03	2018-09-25 17:54:34.072767+03	sberbank bo 	\N	6
570	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.959551+03	2018-09-25 17:54:03.959551+03	koncessii teplosnabjeniya 	\N	3
576	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.190995+03	2018-09-25 17:54:04.190995+03	avtoban-finance b	\N	2
579	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.388797+03	2018-09-25 17:54:04.388797+03	eurochem bo	\N	5
582	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.521058+03	2018-09-25 17:54:04.521058+03	uralkali pbo	\N	1
586	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.883792+03	2018-09-25 17:54:04.883792+03	ik mbs bo	\N	5
592	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.24383+03	2018-09-25 17:54:05.24383+03	avangard-agro ao b	\N	4
604	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.746939+03	2018-09-25 17:54:05.746939+03	ao toyota bank bo	\N	2
527	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.412799+03	2018-09-25 17:54:33.813006+03	deltacredit bo	\N	2
528	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.432787+03	2018-09-25 17:54:33.82314+03	 finance 	\N	3
530	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.5473+03	2018-09-25 17:54:33.827073+03	bank inteza bo	\N	5
529	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.456115+03	2018-09-25 17:54:33.829943+03	sberbank bo	\N	4
531	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.579148+03	2018-09-25 17:54:33.838315+03	first collection bureau bo	\N	6
533	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.635388+03	2018-09-25 17:54:33.845314+03	omsk administration 	\N	1
534	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.652295+03	2018-09-25 17:54:33.855181+03	suek-finans bo 	\N	2
536	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.755555+03	2018-09-25 17:54:33.858095+03	samolet group of companies 	\N	4
537	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.816809+03	2018-09-25 17:54:33.860734+03	sverdlovskaya obl.	\N	5
540	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.907778+03	2018-09-25 17:54:33.862929+03	moscow region mef 	\N	1
535	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.673858+03	2018-09-25 17:54:33.86506+03	mkb-leasing 	\N	3
538	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.862809+03	2018-09-25 17:54:33.891417+03	autodor 	\N	6
545	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.091413+03	2018-09-25 17:54:33.914554+03	ia bspb 	\N	6
546	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.14033+03	2018-09-25 17:54:33.923219+03	kamaz bo	\N	7
547	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.178425+03	2018-09-25 17:54:33.928693+03	kraus-m bo 	\N	1
548	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.199262+03	2018-09-25 17:54:33.932981+03	eximbank of russia bo	\N	2
544	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.014014+03	2018-09-25 17:54:33.93769+03	"er-telekom holding"	\N	5
549	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.248809+03	2018-09-25 17:54:33.938703+03	kaliningrad oblast 	\N	3
550	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.289009+03	2018-09-25 17:54:33.943608+03	irkutsk reg.	\N	4
552	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.339655+03	2018-09-25 17:54:33.953011+03	comcor p	\N	6
555	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.421531+03	2018-09-25 17:54:33.966672+03	chelpipe 	\N	2
560	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.568655+03	2018-09-25 17:54:33.989912+03	sollers-finance ob.	\N	7
561	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.592774+03	2018-09-25 17:54:33.990561+03	gazpromkapital bo	\N	1
568	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.844461+03	2018-09-25 17:54:34.07929+03	samaratransoil-terminal 	\N	1
574	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.103096+03	2018-09-25 17:54:34.086404+03	polyplast ao p	\N	7
575	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.151278+03	2018-09-25 17:54:34.087306+03	concern kalashnikov bo	\N	1
577	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.260834+03	2018-09-25 17:54:34.097758+03	aragon ob.	\N	3
578	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.35916+03	2018-09-25 17:54:34.107832+03	samolet group companies bo	\N	4
580	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.430692+03	2018-09-25 17:54:34.117933+03	kn fpk garant-invest 	\N	6
581	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.489103+03	2018-09-25 17:54:34.127373+03	ktz finance 	\N	7
583	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.745413+03	2018-09-25 17:54:34.148379+03	volga capital pbo	\N	2
585	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.846161+03	2018-09-25 17:54:34.149395+03	mrsk yuga bo	\N	4
588	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.964064+03	2018-09-25 17:54:34.162172+03	uahm-finance 	\N	7
589	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.059016+03	2018-09-25 17:54:34.162807+03	mari el 	\N	1
587	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.923239+03	2018-09-25 17:54:34.163751+03	 group finance bo	\N	6
584	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:04.788436+03	2018-09-25 17:54:34.164609+03	svyazinvnefhim-finance b	\N	3
590	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.11375+03	2018-09-25 17:54:34.167918+03	capital collateral house b	\N	2
591	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.16187+03	2018-09-25 17:54:34.187294+03	samaratransoil-terminal bo	\N	3
593	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.280376+03	2018-09-25 17:54:34.195488+03	kursk reg.	\N	5
594	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.299091+03	2018-09-25 17:54:34.19858+03	vbrr bo	\N	6
595	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.3399+03	2018-09-25 17:54:34.19942+03	transkomplektholding bo	\N	7
596	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.371991+03	2018-09-25 17:54:34.2031+03	credit europe bank bo	\N	1
597	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.439308+03	2018-09-25 17:54:34.211853+03	directleasing bo	\N	2
598	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.48829+03	2018-09-25 17:54:34.219499+03	setl-grupp bo	\N	3
599	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.529064+03	2018-09-25 17:54:34.220092+03	nenets aut.okrug 	\N	4
600	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.60944+03	2018-09-25 17:54:34.220748+03	ingrad bo	\N	5
601	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.642486+03	2018-09-25 17:54:34.22642+03	saratov region 	\N	6
602	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.664101+03	2018-09-25 17:54:34.249064+03	bank vtb b	\N	7
603	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.697561+03	2018-09-25 17:54:34.256634+03	oryol region 	\N	1
605	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.774758+03	2018-09-25 17:54:34.259448+03	vis development 	\N	3
606	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.904871+03	2018-09-25 17:54:34.276038+03	levenguk bo	\N	4
607	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.93164+03	2018-09-25 17:54:34.287532+03	sankt-peterburg 	\N	5
628	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.911574+03	2018-09-25 17:54:34.373747+03	gazprom capital llc bo	\N	5
608	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:05.949314+03	2018-09-25 17:54:05.949314+03	admin nijnego novgoroda 	\N	6
614	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.235938+03	2018-09-25 17:54:06.235938+03	minfin magadan region 	\N	5
619	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.528856+03	2018-09-25 17:54:06.528856+03	social infrastructure 	\N	3
623	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.730625+03	2018-09-25 17:54:06.730625+03	finconsult bo	\N	7
624	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.747464+03	2018-09-25 17:54:06.747464+03	zhilkapinvest bo	\N	1
637	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.219306+03	2018-09-25 17:54:07.219306+03	gruzovichkof-stolitsa bo	\N	7
638	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.26474+03	2018-09-25 17:54:07.26474+03	sberbank bso 	\N	1
642	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.411897+03	2018-09-25 17:54:07.411897+03	center-invest bank bo	\N	5
651	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.715883+03	2018-09-25 17:54:07.715883+03	kamaz ptc bo	\N	7
652	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.75234+03	2018-09-25 17:54:07.75234+03	uncle dener bo	\N	1
675	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.548834+03	2018-09-25 17:54:08.548834+03	garant-invest bo 	\N	3
1	\N	FinEx	onReview			\N	2018-09-25 17:48:52.573494+03	2018-09-25 17:54:30.457757+03	FinEx	\N	1
11	\N	afk sistema	onReview			\N	2018-09-25 17:53:41.475363+03	2018-09-25 17:54:30.458749+03	afk sistema	\N	4
12	\N	astrakhan energo sbyt	onReview			\N	2018-09-25 17:53:41.49039+03	2018-09-25 17:54:30.459524+03	astrakhan energo sbyt	\N	5
2	\N	russkaya akvakultura	onReview			\N	2018-09-25 17:53:41.35792+03	2018-09-25 17:54:30.460286+03	russkaya akvakultura	\N	2
13	\N	avtovaz	onReview			\N	2018-09-25 17:53:41.501996+03	2018-09-25 17:54:30.463938+03	avtovaz	\N	6
14	\N	bashneft ank	onReview			\N	2018-09-25 17:53:41.513778+03	2018-09-25 17:54:30.464921+03	bashneft ank	\N	7
8	\N	aeroflot	onReview			\N	2018-09-25 17:53:41.43116+03	2018-09-25 17:54:30.465891+03	aeroflot	\N	1
6	\N	acron	onReview			\N	2018-09-25 17:53:41.407314+03	2018-09-25 17:54:30.466642+03	acron	\N	6
5	\N	abrau-durso	onReview			\N	2018-09-25 17:53:41.396618+03	2018-09-25 17:54:30.47392+03	abrau-durso	\N	5
10	\N	alrosa	onReview			\N	2018-09-25 17:53:41.462977+03	2018-09-25 17:54:30.488051+03	alrosa	\N	3
4	\N	ashinckiy metzavod pao	onReview			\N	2018-09-25 17:53:41.383014+03	2018-09-25 17:54:30.516745+03	ashinckiy metzavod pao	\N	4
31	\N	dec	onReview			\N	2018-09-25 17:53:41.734422+03	2018-09-25 17:54:30.652524+03	dec	\N	3
32	\N	dzrd	onReview			\N	2018-09-25 17:53:41.74605+03	2018-09-25 17:54:30.656022+03	dzrd	\N	4
63	\N	novatek	onReview			\N	2018-09-25 17:53:42.149648+03	2018-09-25 17:54:30.890899+03	novatek	\N	7
615	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.307478+03	2018-09-25 17:54:34.301386+03	isoftline trade 	\N	6
616	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.408199+03	2018-09-25 17:54:34.306622+03	dom.rf bo 	\N	7
612	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.119528+03	2018-09-25 17:54:34.320164+03	money man mfc bo	\N	3
617	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.455617+03	2018-09-25 17:54:34.334343+03	domodedovo fuel faclities 	\N	1
618	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.48785+03	2018-09-25 17:54:34.335172+03	central epc p	\N	2
625	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.797636+03	2018-09-25 17:54:34.363558+03	new forwarding company pbo	\N	2
629	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.974404+03	2018-09-25 17:54:34.37481+03	dok	\N	6
626	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.825701+03	2018-09-25 17:54:34.4013+03	rzd bo 	\N	3
632	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.062406+03	2018-09-25 17:54:34.402087+03	sovcombank 	\N	2
633	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.106551+03	2018-09-25 17:54:34.403372+03	mfc smsfinance bo	\N	3
634	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.160027+03	2018-09-25 17:54:34.42564+03	 finanse 	\N	4
635	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.184714+03	2018-09-25 17:54:34.442737+03	element leasing bo 	\N	5
631	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.027311+03	2018-09-25 17:54:34.45002+03	sistema pjsfc 	\N	1
636	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.200388+03	2018-09-25 17:54:34.455292+03	mfc 	\N	6
639	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.296793+03	2018-09-25 17:54:34.464306+03	uahm-finance bo 	\N	2
640	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.365617+03	2018-09-25 17:54:34.471973+03	idgc of  	\N	3
641	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.388227+03	2018-09-25 17:54:34.48355+03	deloports bo 	\N	4
643	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.431781+03	2018-09-25 17:54:34.49214+03	apri fly planning bo	\N	6
646	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.509882+03	2018-09-25 17:54:34.49322+03	tomskcable 	\N	2
647	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.535774+03	2018-09-25 17:54:34.510977+03	pioneer group bo 	\N	3
644	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.447662+03	2018-09-25 17:54:34.512431+03	upravlenie otkhodami bo	\N	7
648	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.571244+03	2018-09-25 17:54:34.513402+03	bank uralsib bo	\N	4
650	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.695936+03	2018-09-25 17:54:34.521618+03	republic of sakha (	\N	6
645	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.491436+03	2018-09-25 17:54:34.521672+03	russian agricultural bank 	\N	1
649	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.638091+03	2018-09-25 17:54:34.521713+03	red soft bo 	\N	5
653	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.812121+03	2018-09-25 17:54:34.542979+03	fjpm llc bo	\N	2
654	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.831717+03	2018-09-25 17:54:34.546083+03	wscb bo	\N	3
655	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.872587+03	2018-09-25 17:54:34.547072+03	krasnodar territory 	\N	4
656	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.911714+03	2018-09-25 17:54:34.553766+03	samara region 	\N	5
657	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.954579+03	2018-09-25 17:54:34.601064+03	royal capital bo	\N	6
658	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:07.971255+03	2018-09-25 17:54:34.601509+03	myasnichiy bo	\N	7
659	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.012783+03	2018-09-25 17:54:34.602115+03	lombard master bo	\N	1
660	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.032183+03	2018-09-25 17:54:34.612322+03	pioneer leasing bo	\N	2
661	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.091984+03	2018-09-25 17:54:34.612904+03	europlan bo	\N	3
662	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.117296+03	2018-09-25 17:54:34.613451+03	krasnoyarsk territory 	\N	4
663	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.141411+03	2018-09-25 17:54:34.614509+03	dom.rf mortgage agent 	\N	5
664	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.160026+03	2018-09-25 17:54:34.619192+03	legenda bo 	\N	6
666	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.206828+03	2018-09-25 17:54:34.634016+03	sberbank ios 	\N	1
667	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.22765+03	2018-09-25 17:54:34.639932+03	eurasian develop bank 	\N	2
668	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.272717+03	2018-09-25 17:54:34.650109+03	gazprombank bo 	\N	3
670	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.373015+03	2018-09-25 17:54:34.657545+03	alfa-bank bo 	\N	5
671	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.410923+03	2018-09-25 17:54:34.65812+03	central epc 	\N	6
672	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.429362+03	2018-09-25 17:54:34.65869+03	pr-leasing llc bo 	\N	7
673	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.458454+03	2018-09-25 17:54:34.659197+03	suek-finance bo 	\N	1
674	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.4854+03	2018-09-25 17:54:34.665253+03	volkswagen bank rus bo 	\N	2
669	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.305195+03	2018-09-25 17:54:34.667923+03	solid-leasing bo	\N	4
676	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.570735+03	2018-09-25 17:54:34.679851+03	vnesheconombank 	\N	4
677	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.622477+03	2018-09-25 17:54:34.681542+03	dialex bo	\N	5
679	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.83104+03	2018-09-25 17:54:34.685717+03	bcs sp plc series 	\N	7
678	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.807644+03	2018-09-25 17:54:34.683939+03	cbom finance p.l.c.	\N	6
680	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:08.846892+03	2018-09-25 17:54:34.727516+03	bcs sp plc 	\N	1
64	\N	polymetal international plc	onReview			\N	2018-09-25 17:53:42.161719+03	2018-09-25 17:54:30.89525+03	polymetal international plc	\N	1
83	\N	rusolovo pao	onReview			\N	2018-09-25 17:53:42.405889+03	2018-09-25 17:54:31.004002+03	rusolovo pao	\N	6
124	\N	yatek	onReview			\N	2018-09-25 17:53:43.065234+03	2018-09-25 17:54:31.419075+03	yatek	\N	5
256	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.761951+03	2018-09-25 17:54:32.2508+03	rzhd bo	\N	4
351	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.571759+03	2018-09-25 17:54:32.824064+03	otkritie holding bo	\N	1
380	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:56.736343+03	2018-09-25 17:54:32.959803+03	ipotechnii agent sb 	\N	2
472	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.147101+03	2018-09-25 17:54:33.530095+03	rusfinans bank bo	\N	3
482	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.454494+03	2018-09-25 17:54:33.576614+03	ipotechny agent tkb	\N	6
521	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.216242+03	2018-09-25 17:54:33.786199+03	tambov region findpt 	\N	3
532	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.596602+03	2018-09-25 17:54:33.82771+03	region capital ooo ob.	\N	7
541	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.927718+03	2018-09-25 17:54:33.883988+03	ia mkb 	\N	2
630	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:06.995571+03	2018-09-25 17:54:34.379154+03	infowatch 	\N	7
82	\N	qiwi plc	onReview			\N	2018-09-25 17:53:42.393625+03	2018-09-25 17:54:30.996392+03	qiwi plc	\N	5
93	\N	mmk	onReview			\N	2018-09-25 17:53:42.588153+03	2018-09-25 17:54:31.18755+03	mmk	\N	2
102	\N	safmar fin.invest.	onReview			\N	2018-09-25 17:53:42.723888+03	2018-09-25 17:54:31.258056+03	safmar fin.invest.	\N	4
166	\N	tns energo voroneg	onReview			\N	2018-09-25 17:53:43.665168+03	2018-09-25 17:54:31.71202+03	tns energo voroneg	\N	5
176	\N	russneft nk	onReview			\N	2018-09-25 17:53:43.804413+03	2018-09-25 17:54:31.774662+03	russneft nk	\N	1
250	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.529155+03	2018-09-25 17:54:32.205048+03	lenta ooo 	\N	5
259	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.870469+03	2018-09-25 17:54:32.263607+03	cjsc "	\N	7
269	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.113534+03	2018-09-25 17:54:32.317593+03	samara reg.	\N	3
346	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.415244+03	2018-09-25 17:54:32.810595+03	yaroslavl region 	\N	3
431	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.795787+03	2018-09-25 17:54:33.264437+03	transfin-m 	\N	4
436	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.925378+03	2018-09-25 17:54:33.335054+03	cherkizovo group bo	\N	2
526	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.391994+03	2018-09-25 17:54:33.803304+03	lsr 	\N	1
84	\N	surgut	onReview			\N	2018-09-25 17:53:42.431703+03	2018-09-25 17:54:31.009512+03	surgut	\N	7
105	\N	uzhnyi kuzbass	onReview			\N	2018-09-25 17:53:42.808091+03	2018-09-25 17:54:31.289972+03	uzhnyi kuzbass	\N	7
255	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.717086+03	2018-09-25 17:54:32.247124+03	verhnebak cement zavod 	\N	3
438	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.965361+03	2018-09-25 17:54:33.323111+03	pervaya gruzovaya company 	\N	4
542	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.964806+03	2018-09-25 17:54:33.899116+03	power machines bo	\N	3
85	\N	tgk-1	onReview			\N	2018-09-25 17:53:42.445065+03	2018-09-25 17:54:31.026808+03	tgk-1	\N	1
131	\N	niznekamskneftekhim	onReview			\N	2018-09-25 17:53:43.169072+03	2018-09-25 17:54:31.497759+03	niznekamskneftekhim	\N	5
150	\N	rusgrain holding	onReview			\N	2018-09-25 17:53:43.433529+03	2018-09-25 17:54:31.636285+03	rusgrain holding	\N	3
252	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.633386+03	2018-09-25 17:54:32.252097+03	ob'ed.	\N	7
342	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.24046+03	2018-09-25 17:54:32.780229+03	zao ia sanraiz	\N	6
353	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.622375+03	2018-09-25 17:54:32.83691+03	promkapital 	\N	3
523	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.270029+03	2018-09-25 17:54:33.800453+03	gpb bo	\N	5
557	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.488999+03	2018-09-25 17:54:33.973502+03	 propertiz finans b	\N	4
86	\N	transneft	onReview			\N	2018-09-25 17:53:42.456583+03	2018-09-25 17:54:31.153124+03	transneft	\N	2
165	\N	unipro pao	onReview			\N	2018-09-25 17:53:43.653905+03	2018-09-25 17:54:31.706645+03	unipro pao	\N	4
177	\N	rostelecom-	onReview			\N	2018-09-25 17:53:43.816679+03	2018-09-25 17:54:31.7763+03	rostelecom-	\N	2
254	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.688264+03	2018-09-25 17:54:32.246431+03	lipetsk reg.	\N	2
267	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.074604+03	2018-09-25 17:54:32.310817+03	karelia 	\N	1
352	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.603197+03	2018-09-25 17:54:32.824677+03	profit-garant 	\N	2
525	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.347091+03	2018-09-25 17:54:33.805892+03	ooo transport.koncess.komp.	\N	7
90	\N	kuibishevazot	onReview			\N	2018-09-25 17:53:42.544238+03	2018-09-25 17:54:31.183969+03	kuibishevazot	\N	6
101	\N	jsc "ryazanenergosbyt"	onReview			\N	2018-09-25 17:53:42.712073+03	2018-09-25 17:54:31.257107+03	jsc "ryazanenergosbyt"	\N	3
168	\N	gals-development	onReview			\N	2018-09-25 17:53:43.688702+03	2018-09-25 17:54:31.739368+03	gals-development	\N	7
198	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:50.170909+03	2018-09-25 17:54:31.895998+03	dom.rf 	\N	2
341	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.220794+03	2018-09-25 17:54:32.772156+03	orenburg reg.	\N	5
432	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.817363+03	2018-09-25 17:54:33.266124+03	ia nadezh.	\N	5
462	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.785155+03	2018-09-25 17:54:33.457253+03	koncessii vodosnabjeniya 	\N	7
470	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:00.08298+03	2018-09-25 17:54:33.503473+03	prime finance bo	\N	1
91	\N	saratovskiy npz	onReview			\N	2018-09-25 17:53:42.556257+03	2018-09-25 17:54:31.185288+03	saratovskiy npz	\N	7
169	\N	tns energo kuban company	onReview			\N	2018-09-25 17:53:43.70071+03	2018-09-25 17:54:31.74103+03	tns energo kuban company	\N	1
257	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.830759+03	2018-09-25 17:54:32.254668+03	tkb bo	\N	5
347	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.438626+03	2018-09-25 17:54:32.811341+03	sakha (	\N	4
519	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:01.955336+03	2018-09-25 17:54:33.771299+03	pik group bo	\N	1
157	\N	lukoil	onReview			\N	2018-09-25 17:53:43.537732+03	2018-09-25 17:54:31.640651+03	lukoil	\N	3
173	\N	mrsk sibiri	onReview			\N	2018-09-25 17:53:43.752674+03	2018-09-25 17:54:31.765703+03	mrsk sibiri	\N	5
184	\N	inter rao	onReview			\N	2018-09-25 17:53:43.908899+03	2018-09-25 17:54:31.834566+03	inter rao	\N	2
350	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.547531+03	2018-09-25 17:54:32.816524+03	vtb lising finans bo	\N	7
440	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:59.01854+03	2018-09-25 17:54:33.334065+03	credit europe bank (	\N	6
522	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.251284+03	2018-09-25 17:54:33.798795+03	transkonteiner bo	\N	4
543	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:02.987393+03	2018-09-25 17:54:33.904169+03	yamal-nenets ao 	\N	4
553	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.366936+03	2018-09-25 17:54:33.958752+03	mortgage agent dom rf 	\N	7
167	\N	zmz	onReview			\N	2018-09-25 17:53:43.67719+03	2018-09-25 17:54:31.712966+03	zmz	\N	6
175	\N	protek	onReview			\N	2018-09-25 17:53:43.794044+03	2018-09-25 17:54:31.76661+03	protek	\N	7
258	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:52.850833+03	2018-09-25 17:54:32.255261+03	sovkombank 	\N	6
270	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.275606+03	2018-09-25 17:54:32.323391+03	nizhniy novgorod reg.	\N	4
312	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.45405+03	2018-09-25 17:54:32.603151+03	ia pspb a	\N	4
326	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:54.803861+03	2018-09-25 17:54:32.673418+03	ia aizhk 	\N	4
343	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.315092+03	2018-09-25 17:54:32.811949+03	baltic leasing 	\N	7
429	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.741255+03	2018-09-25 17:54:33.263394+03	ia km 	\N	2
439	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.990558+03	2018-09-25 17:54:33.33287+03	vimpelkom bo	\N	5
556	\N	\N	approved	\N	\N	\N	2018-09-25 17:54:03.456746+03	2018-09-25 17:54:33.97064+03	obuvrus bo	\N	3
272	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:53.38056+03	2018-09-25 17:54:32.32947+03	evroplan bo	\N	6
349	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:55.500534+03	2018-09-25 17:54:32.813411+03	stroi'jilinvest 	\N	6
430	\N	\N	approved	\N	\N	\N	2018-09-25 17:53:58.764736+03	2018-09-25 17:54:33.263928+03	enel russia 	\N	3
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.migrations (id, "timestamp", name) FROM stdin;
1	1521626125985	CreateUserProfile1521626125985
2	1524731318118	CreateSupplier1524731318118
3	1528451678228	CreateOffer1528451678228
4	1528451678229	СreateIssuer1528451678229
5	1528451678230	СreateMutualFund1528451678230
6	1528451678231	СreateEtf1528451678231
7	1528451678232	AlterEtf1528451678232
8	1528451678233	RenameShortName1528451678233
9	1528451678234	RenameEtf1528451678234
10	1528451678235	ChangeType1528451678235
11	1528451678236	СreateStock1528451678236
12	1528451678237	AlterIssuer1528451678237
13	1528451678238	AlterStock1528451678238
14	1528451678239	RenameIssuer1528451678239
15	1528451678240	RenameStock1528451678240
16	1528451678241	СreateBond1528451678241
17	1537289648242	RenameBondPrices1537289648242
18	1537289648243	AlterBond1537289648243
19	1537346377244	AlterBond1537346377244
20	1537533294498	CreatePif1537533294498
21	1537616769091	AddColorIssuer1537616769091
22	1537701426883	AddColorMutualFund1537701426883
23	1537803017298	AddColorPif1537803017298
24	1537850875274	AddOfferTypePif1537850875274
\.


--
-- Data for Name: mutualfund; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.mutualfund (id, "supplierId", "issuerId", "offerType", name, status, logo, "sharePrice", "yearOneYield", "yearThreeYield", "minAmount", currency, info, "offerLink", "createdAt", "updatedAt", color) FROM stdin;
\.


--
-- Data for Name: offer; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.offer (id, "supplierId", name, status, type, logo, "minAmount", "expProfit", "currentProfit", "maxAmount", "minPeriod", "maxPeriod", "depositionAllowed", "depositionMinAmount", "depositionMaxAmount", "earlyWithdrawalCash", "earlyWithdrawalInterest", currency, "taxDeductionAllowed", "investmentProtection", info, "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: pif; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.pif (id, "supplierId", name, status, logo, "minAmount", "maxAmount", "bidPrice", "sixMonthYield", "oneYearYield", "minPeriod", "maxPeriod", "depositionAllowed", "depositionMinAmount", "depositionMaxAmount", "earlyWithdrawalCash", "earlyWithdrawalInterest", currency, "taxDeductionAllowed", "investmentProtection", info, "createdAt", "updatedAt", color, "offerType") FROM stdin;
\.


--
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.stock (id, "supplierId", "issuerId", "offerType", ticker, "shortName", "fullName", "latName", "unicIssuerName", status, logo, "oneMonthYield", "sixMonthYield", "yearYield", "lastPrice", "bidPrice", "offerPrice", "lotSize", "minAmount", currency, info, "offerLink", "createdAt", "updatedAt", "publicName") FROM stdin;
27	\N	26	stock	CLSB	ЧелябЭС ао	"Челябэнергосбыт" ПАО	Chelyab Energo Sbyt ao	chelyab energo sbyt	PUBLISHED	\N	-0.925930023	-46.5	-58.2031212	0.0535000004	0.0549999997	0.0535000004	10000	550	RUB	\N	\N	2018-09-25 17:53:40.171032+03	2018-09-25 17:53:44.437829+03	\N
28	\N	26	stock	CLSBP	ЧелябЭС ап	"Челябэнергосбыт" ПАО ап	Chelyab Energo Sbyt ap	chelyab energo sbyt	PUBLISHED	\N	2.85714006	-55.5555611	-59.0909119	0.0540000014	0.0540000014	0.0529999994	10000	540	RUB	\N	\N	2018-09-25 17:53:40.190511+03	2018-09-25 17:53:44.438577+03	\N
29	\N	27	stock	CNTLP	Телеграф-п	"Центральный Телеграф" ПАО ап	Centrlnyi Telegraf ap	centrlnyi telegraf	PUBLISHED	\N	0.398409992	-1.94553006	111.409401	12.6000004	12.6000004	12.4499998	100	1260	RUB	\N	\N	2018-09-25 17:53:40.199065+03	2018-09-25 17:53:44.456527+03	\N
30	\N	27	stock	CNTL	Телеграф	"Центральный Телеграф" ПАО ао	Centrlnyi Telegraf	centrlnyi telegraf	PUBLISHED	\N	2.94117999	3.55029988	-19.7247696	17.5	17.6000004	17.2000008	100	1760	RUB	\N	\N	2018-09-25 17:53:40.19172+03	2018-09-25 17:53:44.459912+03	\N
35	\N	32	stock	DZRD	iДонскЗР	Донской завод радиодеталей ао	DZRD ao	dzrd	PUBLISHED	\N	2.3041501	-9.7560997	20.6521702	2220	2230	2220	1	2230	RUB	\N	\N	2018-09-25 17:53:40.209214+03	2018-09-25 17:53:44.521808+03	\N
36	\N	32	stock	DZRDP	iДонскЗР п	Донской завод радиодеталей ап	DZRD pref.	dzrd	PUBLISHED	\N	4.59183979	-18	12.0218601	2040	2040	2030	1	2040	RUB	\N	\N	2018-09-25 17:53:40.235077+03	2018-09-25 17:53:44.526184+03	\N
44	\N	37	stock	GAZA	ГАЗ ао	ГАЗ ПАО ао	Gaz ao	gaz	PUBLISHED	\N	3.86597991	-36.0317497	-39.7608414	405	404	403	10	4040	RUB	\N	\N	2018-09-25 17:53:40.279374+03	2018-09-25 17:53:44.571437+03	\N
1	\N	2	stock	AQUA	РусАква ао	Русская Аквакультура ПАО ао	Russkaya Akvakul'tura	russkaya akvakultura	PUBLISHED	\N	5.57377005	-11.5384598	-12.97297	161	162	155	100	16200	RUB	\N	\N	2018-09-25 17:53:39.930203+03	2018-09-25 17:53:46.202955+03	\N
2	\N	3	stock	ALNU	АЛРОСА-Нюр	АЛРОСА-Нюрба ПАО ао	ALROSA-Nurba ao	alrosa-nurba	PUBLISHED	\N	2.77778006	-26	-23.4482803	111000	111000	109000	1	111000	RUB	\N	\N	2018-09-25 17:53:39.957394+03	2018-09-25 17:53:46.213499+03	\N
3	\N	4	stock	AMEZ	АшинскийМЗ	 Ашинский метзавод ПАО ао	Ashinckiy metzavod PAO	ashinckiy metzavod pao	PUBLISHED	\N	19.2682896	16.70644	11.3895197	4.88999987	4.88999987	4.8499999	100	489	RUB	\N	\N	2018-09-25 17:53:39.957826+03	2018-09-25 17:53:46.217085+03	\N
4	\N	5	stock	ABRD	АбрауДюрсо	Абрау-Дюрсо ПАО ао	Abrau-Durso ao	abrau-durso	PUBLISHED	\N	-0.714290023	-4.13792992	-21.9101105	139	140	134	100	14000	RUB	\N	\N	2018-09-25 17:53:39.958924+03	2018-09-25 17:53:46.231194+03	\N
5	\N	6	stock	AKRN	Акрон	Акрон ПАО ао	Acron	acron	PUBLISHED	\N	2.20875001	11.4521799	36.8115883	4720	4720	4716	1	4720	RUB	\N	\N	2018-09-25 17:53:39.959837+03	2018-09-25 17:53:46.243976+03	\N
6	\N	7	stock	APTK	Аптеки36и6	ПАО "Аптечная сеть 36,6" ао	Apteki 36,6	apteki 36,6	PUBLISHED	\N	2.95858002	-33.5031815	-41.3483086	5.28999996	5.28999996	5.26000023	10	52.9000015	RUB	\N	\N	2018-09-25 17:53:39.960883+03	2018-09-25 17:53:46.253807+03	\N
7	\N	8	stock	AFLT	Аэрофлот	Аэрофлот-росс.авиалин(ПАО)ао	Aeroflot	aeroflot	PUBLISHED	\N	0.800379992	-32.3965912	-41.6780205	107.150002	107.150002	107.050003	100	10715	RUB	\N	\N	2018-09-25 17:53:39.961788+03	2018-09-25 17:53:46.265773+03	\N
8	\N	9	stock	AGRO	AGRO-гдр	ГДР ROS AGRO PLC ORD SHS	GDR ROS AGRO PLC ORD SHS	gdr ros agro plc ord shs	PUBLISHED	\N	-5.1189599	11.8096905	-5.32374001	656	657	656.5	1	657	RUB	\N	\N	2018-09-25 17:53:39.962746+03	2018-09-25 17:53:46.276504+03	\N
9	\N	10	stock	ALRS	АЛРОСА ао	АЛРОСА ПАО ао	ALROSA ao	alrosa	PUBLISHED	\N	8.08792973	12.7573299	28.6009693	105.839996	105.860001	105.769997	100	10586	RUB	\N	\N	2018-09-25 17:53:39.989746+03	2018-09-25 17:53:46.299644+03	\N
10	\N	11	stock	AFKS	Система ао	АФК "Система" ПАО ао	AFK Sistema	afk sistema	PUBLISHED	\N	2.83729005	-25.2210503	-34.6097183	8.86999989	8.86999989	8.86499977	100	887	RUB	\N	\N	2018-09-25 17:53:39.990426+03	2018-09-25 17:53:46.306971+03	\N
11	\N	12	stock	ASSB	АстрЭнСб	"Астраханская ЭСК" ПАО	Astrakhan Energo Sbyt	astrakhan energo sbyt	PUBLISHED	\N	-3.37838006	-4.87804985	-9.49367046	0.42899999	0.432999998	0.42899999	1000	433	RUB	\N	\N	2018-09-25 17:53:40.080061+03	2018-09-25 17:53:46.317812+03	\N
16	\N	15	stock	BELU	Белуга ао	Белуга Групп ПАО ао	Beluga Group ao	beluga group	PUBLISHED	\N	-4.0625	-2.53968	-1.60256004	614	614	612	1	614	RUB	\N	\N	2018-09-25 17:53:40.103778+03	2018-09-25 17:53:46.331915+03	\N
17	\N	16	stock	BISVP	БашИнСв ап	Башинформсвязь(ПАО) ап	BashInformSvyaz ap	bashinformsvyaz	PUBLISHED	\N	2.54452991	-0.493829995	6.05262995	4.03000021	4.03999996	3.98000002	1000	4040	RUB	\N	\N	2018-09-25 17:53:40.104578+03	2018-09-25 17:53:46.343481+03	\N
18	\N	17	stock	BLNG	Белон ао	Белон ОАО ао	Belon ao	belon	PUBLISHED	\N	1.45984995	-2.79719996	-6.71141005	2.77999997	2.76999998	2.75	100	277	RUB	\N	\N	2018-09-25 17:53:40.114366+03	2018-09-25 17:53:46.354918+03	\N
19	\N	18	stock	BSPB	БСП ао	ПАО "Банк "Санкт-Петербург" ао	BSP	bsp	PUBLISHED	\N	5.96378994	-12.7193003	-10.2795296	49.8499985	49.9000015	49.8499985	10	499	RUB	\N	\N	2018-09-25 17:53:40.121497+03	2018-09-25 17:53:46.366329+03	\N
20	\N	19	stock	CBOM	МКБ ао	"МКБ" ПАО ао	MKB ao	mkb	PUBLISHED	\N	0.356290013	5.16489983	14.0864096	5.07000017	5.07000017	5.05100012	100	507	RUB	\N	\N	2018-09-25 17:53:40.127985+03	2018-09-25 17:53:46.376622+03	\N
21	\N	20	stock	BRZL	БурЗолото	Бурятзолото ПАО ао	Buryatzoloto ao	buryatzoloto	PUBLISHED	\N	4.11765003	12.0253201	-14.9038496	890	895	890	1	895	RUB	\N	\N	2018-09-25 17:53:40.115078+03	2018-09-25 17:53:46.389358+03	\N
22	\N	21	stock	CHEP	ЧТПЗ ао	"ЧТПЗ" ПАО ао	CHTPZ	chtpz	PUBLISHED	\N	16.5	-31.4705906	0	118.5	118.5	117.5	100	11850	RUB	\N	\N	2018-09-25 17:53:40.128988+03	2018-09-25 17:53:46.400755+03	\N
23	\N	22	stock	CHGZ	РН-ЗапСиб	РН-Западная Сибирь ПАО ао	RN-Western Siberia ao	rn-western siberia	PUBLISHED	\N	0	-13.7931004	-19.3548393	25	25.5	24	100	2550	RUB	\N	\N	2018-09-25 17:53:40.129974+03	2018-09-25 17:53:46.463679+03	\N
24	\N	23	stock	CHMF	СевСт-ао	Северсталь (ПАО)ао	Severstal - ao	severstal -	PUBLISHED	\N	-1.93028998	21.5419502	22.3883991	1075.90002	1076	1075.40002	10	10760	RUB	\N	\N	2018-09-25 17:53:40.131094+03	2018-09-25 17:53:46.479983+03	\N
25	\N	24	stock	CHMK	ЧМК ао	"ЧМК" ПАО ао	CMK	cmk	PUBLISHED	\N	-0.17825	-8.94309044	-30.5210896	2820	2810	2795	1	2810	RUB	\N	\N	2018-09-25 17:53:40.132027+03	2018-09-25 17:53:46.492294+03	\N
26	\N	25	stock	CHZN	ЧЦЗ ао	Челябинский цинк. завод ао	Chelabinskyi cinkovyi zavod	chelabinskyi cinkovyi zavod	PUBLISHED	\N	-4.97924995	-15.4981499	-10.0196505	458	458	456	10	4580	RUB	\N	\N	2018-09-25 17:53:40.169899+03	2018-09-25 17:53:46.507573+03	\N
31	\N	28	stock	DASB	ДагСб ао	ао Дагестанская энергосб.комп.	Dagestan energosbyt. company	dagestan energosbyt. company	PUBLISHED	\N	5.11363983	-24.4897995	-9.31373024	0.0925000012	0.0925000012	0.0920000002	10000	925	RUB	\N	\N	2018-09-25 17:53:40.200114+03	2018-09-25 17:53:46.520548+03	\N
32	\N	29	stock	DIOD	iЗаводДИОД	Завод ДИОД ПАО ао	Zavod DIOD ao	zavod diod	PUBLISHED	\N	-1.16278994	-0.468380004	8.97436047	4.25	4.26999998	4.21999979	100	427	RUB	\N	\N	2018-09-25 17:53:40.206415+03	2018-09-25 17:53:46.538273+03	\N
33	\N	30	stock	DSKY	ДетскийМир	ПАО Детский мир	Detsky mir	detsky mir	PUBLISHED	\N	4.35998011	-3.7628901	-9.10418987	93.4000015	93.4000015	93.3499985	10	934	RUB	\N	\N	2018-09-25 17:53:40.207605+03	2018-09-25 17:53:46.541502+03	\N
34	\N	31	stock	DVEC	ДЭК ао	"ДЭК" ПАО ао	DEC	dec	PUBLISHED	\N	7.22380018	53.3941193	208.979584	1.51999998	1.51999998	1.50999999	1000	1520	RUB	\N	\N	2018-09-25 17:53:40.208482+03	2018-09-25 17:53:46.556201+03	\N
37	\N	33	stock	ENPL	ENPL-гдр	ГДР En+ Group plc ORD SHS	GDR En+ Group plc ORD SHS	gdr en+ group plc ord shs	PUBLISHED	\N	27.8310909	-52.9328613	-58.0604515	333.5	333.5	331.5	1	333.5	RUB	\N	\N	2018-09-25 17:53:40.237019+03	2018-09-25 17:53:46.567239+03	\N
38	\N	34	stock	ELTZ	Электрцинк	Электроцинк ОАО ао	Elektrotsink ao	elektrotsink	PUBLISHED	\N	-6.1188798	-11.2396698	-16.3551407	535	537	534	1	537	RUB	\N	\N	2018-09-25 17:53:40.235981+03	2018-09-25 17:53:46.580008+03	\N
39	\N	35	stock	ENRU	ЭнелРос ао	"Энел Россия" ПАО	Enel Russia	enel russia	PUBLISHED	\N	5.95027018	-20.4666691	-4.02253008	1.18299997	1.18400002	1.18299997	1000	1184	RUB	\N	\N	2018-09-25 17:53:40.25305+03	2018-09-25 17:53:46.601437+03	\N
40	\N	36	stock	FEES	ФСК ЕЭС ао	"ФСК ЕЭС" ПАО ао	FSK EES	fsk ees	PUBLISHED	\N	7.06645012	-5.89743996	-5.35817003	0.165099993	0.165199995	0.165099993	10000	1652	RUB	\N	\N	2018-09-25 17:53:40.254326+03	2018-09-25 17:53:46.605864+03	\N
224	\N	\N	stock	ZVEZ	ЗВЕЗДА ао	ЗВЕЗДА ПАО ао	Zvezda ao	zvezda	PUBLISHED	\N	10.2409601	12.7310104	-13.5433102	4.80000019	4.84000015	4.78999996	1000	4840	RUB	\N	\N	2018-09-25 17:53:41.29265+03	2018-09-25 17:53:41.29265+03	\N
12	\N	13	stock	AVAZ	АВТОВАЗ ао	АВТОВАЗ (ПАО) ао	AVTOVAZ	avtovaz	PUBLISHED	\N	-1.22950995	-7.52111006	18.1372509	12	12.0500002	12	100	1205	RUB	\N	\N	2018-09-25 17:53:40.083036+03	2018-09-25 17:53:44.296252+03	\N
60	\N	40	stock	JNOSP	Слав-ЯНОСп	Славнефть-ЯНОС (ОАО) ап	Slavneft-JANOS (pref)	slavneft-janos	PUBLISHED	\N	-7.0921998	-9.65517044	-9.02777958	13.1000004	13.1000004	13	100	1310	RUB	\N	\N	2018-09-25 17:53:40.359785+03	2018-09-25 17:53:44.615122+03	\N
90	\N	43	stock	MAGEP	МагадЭн ап	"Магаданэнерго" ПАО ап	Magadanenergo ap	magadanenergo	PUBLISHED	\N	6.25	-10.5263205	-19.0476208	1.70000005	1.70000005	1.61000001	1000	1700	RUB	\N	\N	2018-09-25 17:53:40.541937+03	2018-09-25 17:53:44.652979+03	\N
148	\N	48	stock	RLMNP	iРоллман-п	Группа Компаний Роллман ПАО ап	Rollman GK ap	rollman gk	PUBLISHED	\N	-3.94265008	-45.8585892	-63.3879814	26.7999992	26.7999992	26.3999996	10	268	RUB	\N	\N	2018-09-25 17:53:40.91681+03	2018-09-25 17:53:44.709699+03	\N
170	\N	50	stock	SELG	Селигдар	ПАО "Селигдар"  ао	Seligdar	seligdar	PUBLISHED	\N	0.300900012	7.6426301	7.18113995	10	9.98999977	9.94999981	100	999	RUB	\N	\N	2018-09-25 17:53:41.050967+03	2018-09-25 17:53:44.746403+03	\N
41	\N	38	stock	FESH	ДВМП ао	ДВ морское пароходство ПАО ао	DVMP ao	dvmp	PUBLISHED	\N	29.3269196	-16.5891495	-11.0743799	5.36000013	5.3499999	5.32000017	100	535	RUB	\N	\N	2018-09-25 17:53:40.264664+03	2018-09-25 17:53:46.689716+03	\N
50	\N	39	stock	GTRK	ГТМ ао	ПАО "ГТМ" ао	GTM	gtm	PUBLISHED	\N	2.38094997	-21.8181801	-19.3245792	107.5	109.5	107.5	10	1095	RUB	\N	\N	2018-09-25 17:53:40.316575+03	2018-09-25 17:53:46.710702+03	\N
70	\N	41	stock	KRKOP	ТКЗКК ап	ТКЗ Красный котельщик ОАО ап	TKZ Krasny Kotelshchik ap	tkz krasny kotelshchik	PUBLISHED	\N	0.890209973	-19.6217499	-41.580761	3.4000001	3.4000001	3.3499999	100	340	RUB	\N	\N	2018-09-25 17:53:40.424263+03	2018-09-25 17:53:46.716312+03	\N
80	\N	42	stock	LIFE	iФармсинтз	Фармсинтез ПАО ао	Farmsintez ao	farmsintez	PUBLISHED	\N	9.67741966	-24.8618793	-45.1612892	6.80000019	6.80000019	6.6500001	100	680	RUB	\N	\N	2018-09-25 17:53:40.486007+03	2018-09-25 17:53:46.729648+03	\N
100	\N	44	stock	MOEX	МосБиржа	ПАО Московская Биржа	MoscowExchange	moscowexchange	PUBLISHED	\N	1.96337998	-15.7731104	-13.0400801	100.220001	100.239998	100.220001	10	1002.40002	RUB	\N	\N	2018-09-25 17:53:40.573985+03	2018-09-25 17:53:46.749623+03	\N
113	\N	45	stock	MSRS	МОЭСК	ПАО "МОЭСК" ао	MOESK	moesk	PUBLISHED	\N	-1.5625	-11.1538496	-22.1348305	0.689999998	0.693000019	0.690999985	1000	693	RUB	\N	\N	2018-09-25 17:53:40.641545+03	2018-09-25 17:53:46.753351+03	\N
126	\N	46	stock	NKSH	Нижкамшина	Нижнекамскшина ПАО ао	Nizhnekamskshina ao	nizhnekamskshina	PUBLISHED	\N	10.56604	0.34246999	-6.98412991	14.6499996	14.8000002	14.6499996	100	1480	RUB	\N	\N	2018-09-25 17:53:40.758167+03	2018-09-25 17:53:46.766038+03	\N
138	\N	47	stock	PMSBP	ПермьЭнС-п	"Пермэнергосбыт" ПАО ап	Perm' EnergoSbyt (pref)	perm energosbyt	PUBLISHED	\N	0.133330002	-8.07833958	17.34375	75.0999985	75.0999985	74.6999969	10	751	RUB	\N	\N	2018-09-25 17:53:40.830338+03	2018-09-25 17:53:46.779378+03	\N
161	\N	49	stock	RUAL	RUSAL plc	United Company RUSAL Plc	United Company RUSAL Plc	united company rusal plc	PUBLISHED	\N	29.18396	-16.0575199	-34.943119	28.0400009	28.0400009	28.0200005	10	280.399994	RUB	\N	\N	2018-09-25 17:53:40.973807+03	2018-09-25 17:53:46.792773+03	\N
182	\N	51	stock	TANL	ТАНТАЛ ао	ТАНТАЛ ПАО ао	TANTAL ao	tantal	PUBLISHED	\N	20.91255	3.92157006	-2.15385008	31.7999992	32.4000015	31.7999992	10	324	RUB	\N	\N	2018-09-25 17:53:41.113776+03	2018-09-25 17:53:46.812771+03	\N
195	\N	52	stock	TORSP	ТРК ап	ап "Томская распределит.комп."	Tomsk raspredelit. komp ap	tomsk raspredelit. komp	PUBLISHED	\N	-3.79009008	-11.0512104	-15.3846197	0.330000013	0.344000012	0.330000013	10000	3440	RUB	\N	\N	2018-09-25 17:53:41.170099+03	2018-09-25 17:53:46.817306+03	\N
205	\N	53	stock	UTAR	ЮТэйр ао	Авиакомания "ЮТэйр" (ПАО) ао	UTAir Aviacompany	utair aviacompany	PUBLISHED	\N	0.25	-3.83693004	-2.31424999	8.02000046	8.03999996	8.02000046	100	804	RUB	\N	\N	2018-09-25 17:53:41.230872+03	2018-09-25 17:53:46.829095+03	\N
214	\N	54	stock	VTBR	ВТБ ао	ао ПАО Банк ВТБ	VTB	vtb	PUBLISHED	\N	-1.04389	-21.7154694	-33.3066788	0.0417400002	0.0417400002	0.0417300016	10000	417.399994	RUB	\N	\N	2018-09-25 17:53:41.274857+03	2018-09-25 17:53:46.845834+03	\N
160	\N	66	stock	RTSBP	ТНСэнРст-п	ТНС энерго Ростов. ПАО ап	TNS energo Rostov-na-Dony(prf)	tns energo rostov-na-dony	PUBLISHED	\N	0.434780002	-11.4942503	6.45161009	0.231000006	0.238999993	0.232999995	10000	2390	RUB	\N	\N	2018-09-25 17:53:40.967304+03	2018-09-25 17:53:44.944387+03	\N
168	\N	67	stock	SAREP	СаратЭн-ап	Саратовэнерго(ПАО)-ап	SaratovEnergo (pref)	saratovenergo	PUBLISHED	\N	-4.47761011	-16.3398705	-18.4713402	0.064000003	0.0644999966	0.063500002	10000	645	RUB	\N	\N	2018-09-25 17:53:41.025896+03	2018-09-25 17:53:44.963752+03	\N
191	\N	69	stock	TGKD	Квадра	Квадра ПАО ао	Kvadra	kvadra	PUBLISHED	\N	5.33333015	-22.5490208	-9.19540024	0.00316999992	0.00316999992	0.00315500004	100000	317	RUB	\N	\N	2018-09-25 17:53:41.146925+03	2018-09-25 17:53:45.006629+03	\N
42	\N	55	stock	FTRE	БУДУЩЕЕ ао	Финансовая группа БУДУЩЕЕ ао	FG FUTURE ao	fg future	PUBLISHED	\N	5.88234997	-50.1259384	-85.1574173	199	199	197	1	199	RUB	\N	\N	2018-09-25 17:53:40.275253+03	2018-09-25 17:53:46.913205+03	\N
54	\N	56	stock	IGST	Ижсталь2ао	Ижсталь ПАО ао 2в.	Izhstal 2ao	izhstal 2	PUBLISHED	\N	-3.30578995	-12.6865702	-28.2208595	585	580	570	1	580	RUB	\N	\N	2018-09-25 17:53:40.335641+03	2018-09-25 17:53:46.926543+03	\N
66	\N	57	stock	KMAZ	КАМАЗ	КАМАЗ ПАО	KAMAZ	kamaz	PUBLISHED	\N	5.55556011	24.64855	24.5318394	66.5	66.8000031	66.4000015	100	6680	RUB	\N	\N	2018-09-25 17:53:40.406865+03	2018-09-25 17:53:46.938508+03	\N
75	\N	58	stock	KTSB	КСБ ао	"Костромск.сбыт.комп" ПАО	KSB	ksb	PUBLISHED	\N	0	-25.3731308	-30.5555592	0.25	0.263999999	0.239999995	10000	2640	RUB	\N	\N	2018-09-25 17:53:40.444734+03	2018-09-25 17:53:46.951174+03	\N
82	\N	59	stock	LNTA	Лента др	Лента Лтд.  др	Lenta ltd dr	lenta ltd dr	PUBLISHED	\N	-13.9455795	-23.2169991	-30.1105003	252.5	253	252.5	1	253	RUB	\N	\N	2018-09-25 17:53:40.487653+03	2018-09-25 17:53:46.969209+03	\N
99	\N	60	stock	MOBB	МосОблБанк	Московский областной банк ПАО	Moskovskii oblastnoi bank PAO	moskovskii oblastnoi bank pao	PUBLISHED	\N	20.3007507	-19.59799	-52.8023605	1.60000002	1.60000002	1.58000004	100	160	RUB	\N	\N	2018-09-25 17:53:40.551726+03	2018-09-25 17:53:46.98368+03	\N
108	\N	61	stock	MRSB	МордЭнСб	Мордовск.энергсбыт.комп.ПАО ао	Mordovskaya EnergoSbyt Comp.	mordovskaya energosbyt comp.	PUBLISHED	\N	-10.8514204	-11	-17.5925903	0.533999979	0.574999988	0.558000028	10000	5750	RUB	\N	\N	2018-09-25 17:53:40.621002+03	2018-09-25 17:53:46.986181+03	\N
118	\N	62	stock	MVID	М.видео	"М.видео" ПАО ао	M.video	m.video	PUBLISHED	\N	2.34882998	-6.93024015	-4.0749402	409.299988	409.700012	409.299988	10	4097	RUB	\N	\N	2018-09-25 17:53:40.664225+03	2018-09-25 17:53:46.997515+03	\N
129	\N	63	stock	NVTK	Новатэк ао	ПАО "НОВАТЭК" ао	NOVATEK	novatek	PUBLISHED	\N	2.52336001	46.2666702	68.3289871	1097	1097	1096.80005	10	10970	RUB	\N	\N	2018-09-25 17:53:40.777545+03	2018-09-25 17:53:47.008439+03	\N
139	\N	64	stock	POLY	Polymetal	Polymetal International plc	Polymetal International plc	polymetal international plc	PUBLISHED	\N	-3.39041996	-7.0455699	-15.2667103	551.5	551.700012	551.599976	1	551.700012	RUB	\N	\N	2018-09-25 17:53:40.851989+03	2018-09-25 17:53:47.018801+03	\N
151	\N	65	stock	ROSB	Росбанк ао	РОСБАНК ПАО ао	ROSBANK	rosbank	PUBLISHED	\N	5.45454979	0.172710001	3.57142997	58	59	58	10	590	RUB	\N	\N	2018-09-25 17:53:40.920176+03	2018-09-25 17:53:47.028719+03	\N
178	\N	68	stock	SNGSP	Сургнфгз-п	Сургутнефтегаз ПАО ап	Surgut-pref	surgut-	PUBLISHED	\N	3.68875003	24.4819508	27.0943508	37.1949997	37.2000008	37.1800003	100	3720	RUB	\N	\N	2018-09-25 17:53:41.092339+03	2018-09-25 17:53:47.038993+03	\N
199	\N	70	stock	UNAC	iАвиастКао	Об.авиастр.корп. ПАО ао	Ob.aviastroitelnaya korp.	ob.aviastroitelnaya korp.	PUBLISHED	\N	8.45294952	0	-24.4444408	0.680000007	0.680000007	0.675999999	10000	6800	RUB	\N	\N	2018-09-25 17:53:41.192624+03	2018-09-25 17:53:47.049852+03	\N
206	\N	71	stock	UWGN	ОВК ао	ПАО НПК ОВК ао	OVK ao	ovk	PUBLISHED	\N	-11.8144999	-37.6041718	-34.3561592	489.799988	490	489.399994	1	490	RUB	\N	\N	2018-09-25 17:53:41.24213+03	2018-09-25 17:53:47.063856+03	\N
217	\N	72	stock	WTCM	ЦМТ ао	"Центр междун. торговли"ПАО ао	CMT	cmt	PUBLISHED	\N	0	-4.57516003	-8.17609978	7.44999981	7.55000019	7.3499999	100	755	RUB	\N	\N	2018-09-25 17:53:41.279436+03	2018-09-25 17:53:47.07424+03	\N
15	\N	14	stock	BANEP	Башнефт ап	Башнефть АНК ап	Bashneft ANK ap	bashneft ank	PUBLISHED	\N	10.6489697	11.2726202	48.9082985	1877	1877	1875.5	1	1877	RUB	\N	\N	2018-09-25 17:53:40.084716+03	2018-09-25 17:53:44.328384+03	\N
159	\N	66	stock	RTSB	ТНСэнРст	ТНС энерго Ростов. ПАО ао	TNS energo Rostov-na-Dony ao	tns energo rostov-na-dony	PUBLISHED	\N	38.0645218	8.3544302	32.9192505	0.428000003	0.428000003	0.404000014	10000	4280	RUB	\N	\N	2018-09-25 17:53:40.966764+03	2018-09-25 17:53:44.959569+03	\N
167	\N	67	stock	SARE	СаратЭн-ао	Саратовэнерго(ПАО)-ао	SaratovEnergo ao	saratovenergo	PUBLISHED	\N	-2.88066006	7.76255989	-3.2786901	0.118000001	0.116999999	0.1105	10000	1170	RUB	\N	\N	2018-09-25 17:53:41.025171+03	2018-09-25 17:53:44.967139+03	\N
86	\N	77	stock	LSNGP	Ленэнерг-п	Ленэнерго(ПАО)-ап	LenEnrg (pref)	lenenrg	PUBLISHED	\N	1.36986005	-7.45373011	28.4722195	92.6500015	92.6999969	92.5	100	9270	RUB	\N	\N	2018-09-25 17:53:40.491991+03	2018-09-25 17:53:45.089453+03	\N
92	\N	78	stock	MFGS	Мегион-ао	ао "Славнефть-Мегионнефтегаз"	Megion	megion	PUBLISHED	\N	0.890209973	-8.35579967	-33.4637985	340	344	338	10	3440	RUB	\N	\N	2018-09-25 17:53:40.54764+03	2018-09-25 17:53:45.109031+03	\N
43	\N	73	stock	FIVE	FIVE-гдр	ГДР X5 RetailGroup N.V.ORD SHS	GDR X5 RetailGroup N.V.ORD SHS	gdr x5 retailgroup n.v.ord shs	PUBLISHED	\N	3.22784996	-12.2174397	-22.7014198	1632	1633	1632	1	1633	RUB	\N	\N	2018-09-25 17:53:40.274537+03	2018-09-25 17:53:47.108566+03	\N
53	\N	74	stock	HYDR	РусГидро	ПАО "РусГидро"	RusGidro	rusgidro	PUBLISHED	\N	0.0158099998	-13.8147097	-22.4849892	0.633400023	0.633599997	0.633400023	1000	633.599976	RUB	\N	\N	2018-09-25 17:53:40.3351+03	2018-09-25 17:53:47.118478+03	\N
63	\N	75	stock	KBTK	КузбТК ао	Кузбас.Топл.Комп. ПАО ао	Kuzbas.Topl. Kompaniya ao	kuzbas.topl. kompaniya	PUBLISHED	\N	-0.78125	22.5080395	51.1904793	190.5	190.5	189.5	10	1905	RUB	\N	\N	2018-09-25 17:53:40.398898+03	2018-09-25 17:53:47.128897+03	\N
78	\N	76	stock	KZOS	ОргСинт ао	ПАО "Органический синтез" ао	PAO Organicheskiy Sintez ao	pao organicheskiy sintez	PUBLISHED	\N	-0.606670022	7.90339994	35.5862083	98.3000031	99.3000031	98.3000031	100	9930	RUB	\N	\N	2018-09-25 17:53:40.465824+03	2018-09-25 17:53:47.138983+03	\N
109	\N	79	stock	MRKZ	МРСК СЗ	МРСК Северо-Запада ао	MRSK Severo-Zapada	mrsk severo-zapada	PUBLISHED	\N	0.148149997	37.9591789	9.03225994	0.0675999969	0.0683000013	0.0675000027	10000	683	RUB	\N	\N	2018-09-25 17:53:40.602413+03	2018-09-25 17:53:47.149319+03	\N
119	\N	80	stock	NAUK	iНПОНаука	НПО Наука ао	NPO Nauka ao	npo nauka	PUBLISHED	\N	-4.34782982	-19.9029102	4.76189995	330	343	332	10	3430	RUB	\N	\N	2018-09-25 17:53:40.717378+03	2018-09-25 17:53:47.163041+03	\N
131	\N	81	stock	OBUV	ОР ао	ПАО "ОР" ао	OR	or	PUBLISHED	\N	-3.7837801	-27.2875805	-38.1643906	89	89.25	88.5500031	10	892.5	RUB	\N	\N	2018-09-25 17:53:40.778382+03	2018-09-25 17:53:47.1734+03	\N
141	\N	82	stock	QIWI	iQIWI	QIWI PLC	QIWI PLC	qiwi plc	PUBLISHED	\N	-4.13493013	-14.4660196	-11.0101004	877	879	877	1	879	RUB	\N	\N	2018-09-25 17:53:40.856685+03	2018-09-25 17:53:47.183707+03	\N
150	\N	83	stock	ROLO	Русолово	"Русолово" ПАО ао	Rusolovo PAO ao	rusolovo pao	PUBLISHED	\N	9.27834988	-14.1700401	11.5789499	2.11999989	2.1099999	2.0999999	1000	2110	RUB	\N	\N	2018-09-25 17:53:40.919393+03	2018-09-25 17:53:47.193827+03	\N
177	\N	84	stock	SNGS	Сургнфгз	Сургутнефтегаз ПАО акции об.	Surgut	surgut	PUBLISHED	\N	-3.17770004	-5.59113979	-6.54557991	27.2250004	27.2350006	27.2250004	100	2723.5	RUB	\N	\N	2018-09-25 17:53:41.091774+03	2018-09-25 17:53:47.204327+03	\N
186	\N	85	stock	TGKA	ТГК-1	ао ПАО "ТГК-1"	TGK-1	tgk-1	PUBLISHED	\N	10.2866802	-15.7216501	-32.3448296	0.00987000018	0.00987000018	0.00985000003	100000	987	RUB	\N	\N	2018-09-25 17:53:41.127398+03	2018-09-25 17:53:47.214355+03	\N
210	\N	87	stock	VLHZ	ВХЗ-ао	Владимирский химич.з-д(ПАО) ао	VHZ	vhz	PUBLISHED	\N	-3.79747009	-21.6494808	-16.9398899	77	77	76.5	10	770	RUB	\N	\N	2018-09-25 17:53:41.244727+03	2018-09-25 17:53:47.235203+03	\N
196	\N	86	stock	TRNFP	Транснф ап	Транснефть ПАО акц.пр.	Transneft (pref)	transneft	PUBLISHED	\N	6.46104002	-7.63380003	-7.11047983	163300	163250	163150	1	163250	RUB	\N	\N	2018-09-25 17:53:41.189284+03	2018-09-25 17:53:47.224253+03	\N
221	\N	88	stock	YNDX	Yandex clA	PLLC Yandex N.V. class A shs	PLLC Yandex N.V.	pllc yandex n.v.	PUBLISHED	\N	2.60344005	-7.48270988	19.1041603	2197	2197.5	2194.5	1	2197.5	RUB	\N	\N	2018-09-25 17:53:41.29113+03	2018-09-25 17:53:47.24906+03	\N
45	\N	37	stock	GAZAP	ГАЗ ап	ГАЗ ПАО ап	Gaz (pref)	gaz	PUBLISHED	\N	5.34223986	-36.1335983	-33.8574409	316	319	315.5	10	3190	RUB	\N	\N	2018-09-25 17:53:40.299419+03	2018-09-25 17:53:44.575822+03	\N
89	\N	43	stock	MAGE	МагадЭн ао	"Магаданэнерго" ПАО ао	Magadanenergo ao	magadanenergo	PUBLISHED	\N	5.64102983	-8.44443989	-23.7036991	2.05999994	2.03999996	1.99000001	1000	2040	RUB	\N	\N	2018-09-25 17:53:40.514964+03	2018-09-25 17:53:44.657218+03	\N
69	\N	91	stock	KRKNP	СаратНПЗ-п	Саратовский НПЗ ПАО ап	Saratovskiy NPZ ap	saratovskiy npz	PUBLISHED	\N	2.42086005	-6.30323982	-10.3504496	11000	11060	10920	1	11060	RUB	\N	\N	2018-09-25 17:53:40.423456+03	2018-09-25 17:53:45.223238+03	\N
154	\N	100	stock	RSTI	Россети ао	"Российские сети" ПАО ао	Rosseti ao	rosseti	PUBLISHED	\N	2.47779989	-10.941	-30.3378391	0.717100024	0.717100024	0.716199994	1000	717.099976	RUB	\N	\N	2018-09-25 17:53:40.941975+03	2018-09-25 17:53:45.31007+03	\N
207	\N	106	stock	VGSB	ВолгЭнСб	"Волгоград.энергосбыткомп" ПАО	Volgograd Energo Sbyt	volgograd energo sbyt	PUBLISHED	\N	0	-16.6666698	-21.1822701	0.800000012	0.810000002	0.800000012	1000	810	RUB	\N	\N	2018-09-25 17:53:41.242819+03	2018-09-25 17:53:45.381854+03	\N
216	\N	107	stock	VZRZP	Возрожд-п	Банк "Возрождение" - ап	Vozrojdenie (pref)	vozrojdenie	PUBLISHED	\N	1.84332001	30.3834801	42.1221886	221	227	223	10	2270	RUB	\N	\N	2018-09-25 17:53:41.278737+03	2018-09-25 17:53:45.405242+03	\N
52	\N	89	stock	HIMCP	Химпром ап	Химпром ПАО ап	Himprom ap	himprom	PUBLISHED	\N	10.7692299	22.86689	38.7283211	7.5	7.57999992	7.4000001	1000	7580	RUB	\N	\N	2018-09-25 17:53:40.331587+03	2018-09-25 17:53:47.319597+03	\N
61	\N	90	stock	KAZTP	Куйбазот-п	Куйбышевазот ПАО ап	Kuibishevazot ap	kuibishevazot	PUBLISHED	\N	5.88234997	7.91367006	3.4482801	90	90.5	88.5	100	9050	RUB	\N	\N	2018-09-25 17:53:40.385292+03	2018-09-25 17:53:47.342572+03	\N
79	\N	92	stock	KZOSP	ОргСинт ап	ПАО "Органический синтез" ап	PAO Organicheskiy Sintez ap	p	PUBLISHED	\N	-5.08475018	43.5897408	162.295074	11.1999998	11.1999998	11.0500002	1000	11200	RUB	\N	\N	2018-09-25 17:53:40.479516+03	2018-09-25 17:53:47.347741+03	\N
91	\N	93	stock	MAGN	ММК	"Магнитогорск.мет.комб" ПАО ао	MMK	mmk	PUBLISHED	\N	7.26051998	13.9179897	16.7009106	51.1599998	51.1549988	51.1300011	100	5115.5	RUB	\N	\N	2018-09-25 17:53:40.54838+03	2018-09-25 17:53:47.360455+03	\N
101	\N	94	stock	MRKC	МРСК Центр	"МРСК Центра" ПАО ао	MRSK Centra	mrsk centra	PUBLISHED	\N	-0.335009992	-20.4545498	-41.4370117	0.297500014	0.298500001	0.297500014	1000	298.5	RUB	\N	\N	2018-09-25 17:53:40.5911+03	2018-09-25 17:53:47.377231+03	\N
110	\N	95	stock	MSNG	+МосЭнерго	МосЭнерго акции обыкн.	MosEnrg	mosenrg	PUBLISHED	\N	0.583609998	-27.6642303	-33.90028	1.98199999	1.98249996	1.98000002	1000	1982.5	RUB	\N	\N	2018-09-25 17:53:40.621871+03	2018-09-25 17:53:47.390795+03	\N
120	\N	96	stock	NFAZ	Нефтекамск	Нефтекамский автозавод ПАО ао	Neftekamskiy avtozavod PAO ao	neftekamskiy avtozavod pao	PUBLISHED	\N	-4.12371016	-15.4545498	8.13953018	93	93	92	10	930	RUB	\N	\N	2018-09-25 17:53:40.732925+03	2018-09-25 17:53:47.406999+03	\N
128	\N	97	stock	NSVZ	iНаукаСвяз	Наука-Связь ПАО ао	Nauka-Svyaz ao	nauka-svyaz	PUBLISHED	\N	-5.88234997	-10.69767	-7.69230986	192	193	190	10	1930	RUB	\N	\N	2018-09-25 17:53:40.776697+03	2018-09-25 17:53:47.41772+03	\N
136	\N	98	stock	PLSM	Плазмек	Плазмек ПАО ао	Plazmek ao	plazmek	PUBLISHED	\N	-6.25	-43.6619682	-56.52174	0.120999999	0.120999999	0.119999997	1000	121	RUB	\N	\N	2018-09-25 17:53:40.826724+03	2018-09-25 17:53:47.428816+03	\N
145	\N	99	stock	RGSS	РГС СК ао	Росгосстрах СК ПАО ао	Rosgosstrakh ao	rosgosstrakh	PUBLISHED	\N	-12.7371302	-13.20755	-6.93641996	0.321999997	0.321999997	0.31400001	1000	322	RUB	\N	\N	2018-09-25 17:53:40.891646+03	2018-09-25 17:53:47.438825+03	\N
164	\N	101	stock	RZSB	РязЭнСб	"Рязанская энергосб.комп" ПАО	JSC "Ryazanenergosbyt"	jsc "ryazanenergosbyt"	PUBLISHED	\N	0.321539998	-8.23528957	4	3.11999989	3.13000011	3.02999997	1000	3130	RUB	\N	\N	2018-09-25 17:53:40.999729+03	2018-09-25 17:53:47.449654+03	\N
173	\N	102	stock	SFIN	САФМАР ао	САФМАР Фин.Инвестиции ПАО ао	SAFMAR Fin.Invest. ao	safmar fin.invest.	PUBLISHED	\N	-3.47970009	-4.31210995	-10.3846197	700	700	697.599976	10	7000	RUB	\N	\N	2018-09-25 17:53:41.052707+03	2018-09-25 17:53:47.459556+03	\N
181	\N	103	stock	SVAV	СОЛЛЕРС	ОАО "СОЛЛЕРС" ао	Sollers	sollers	PUBLISHED	\N	1.61616004	-11.1307402	-10.3386803	503	501	499	10	5010	RUB	\N	\N	2018-09-25 17:53:41.112647+03	2018-09-25 17:53:47.469859+03	\N
190	\N	104	stock	TGKN	ТГК-14	ао ПАО "ТГК-14"	TGK-14	tgk-14	PUBLISHED	\N	0	5.76922989	21.1453705	0.00549999997	0.00549999997	0.00547999982	1000000	5500	RUB	\N	\N	2018-09-25 17:53:41.148763+03	2018-09-25 17:53:47.479948+03	\N
198	\N	105	stock	UKUZ	ЮжКузб. ао	Южный Кузбасс ПАО ао	Uzhnyi Kuzbass	uzhnyi kuzbass	PUBLISHED	\N	20.7547207	-20	-21.9512196	640	655	635	1	655	RUB	\N	\N	2018-09-25 17:53:41.190907+03	2018-09-25 17:53:47.489416+03	\N
172	\N	50	stock	SELGP	Селигдар-п	ПАО "Селигдар" ап	Seligdar ap	seligdar	PUBLISHED	\N	9.25926018	5.1068902	36.1538506	17.7000008	17.7999992	17.7000008	100	1780	RUB	\N	\N	2018-09-25 17:53:41.051691+03	2018-09-25 17:53:44.754143+03	\N
189	\N	69	stock	TGKDP	Квадра-п	Квадра ПАО ап	Kvadra (pref)	kvadra	PUBLISHED	\N	-0.285710007	-12.5313301	-36.8896904	0.00347999996	0.00347999996	0.00347000011	100000	348	RUB	\N	\N	2018-09-25 17:53:41.147753+03	2018-09-25 17:53:45.009771+03	\N
208	\N	106	stock	VGSBP	ВолгЭнСб-п	"Волгоград.энергосбыткомп" ПАО	Volgograd Energo Sbyt (pref)	volgograd energo sbyt	PUBLISHED	\N	-0.671140015	-17.7777805	-26.7326698	0.75	0.74000001	0.730000019	1000	740	RUB	\N	\N	2018-09-25 17:53:41.243561+03	2018-09-25 17:53:45.382835+03	\N
83	\N	112	stock	LNZL	Лензолото	"Лензолото" ПАО ао	Lenzoloto	lenzoloto	PUBLISHED	\N	-5.43478012	-27.6005497	-22.3214302	5240	5260	5220	1	5260	RUB	\N	\N	2018-09-25 17:53:40.48851+03	2018-09-25 17:53:45.461777+03	\N
180	\N	122	stock	STSBP	СтаврЭнСбп	Ставрополэнергосбыт ПАО ап	StavropolEnergoSbyt (pref)	stavropolenergosbyt	PUBLISHED	\N	-2.8225801	-20.5930805	-29.5321598	0.240999997	0.240999997	0.239999995	1000	241	RUB	\N	\N	2018-09-25 17:53:41.111469+03	2018-09-25 17:53:45.541257+03	\N
46	\N	108	stock	GAZP	ГАЗПРОМ ао	"Газпром" (ПАО) ао	Gazprom	gazprom	PUBLISHED	\N	10.4345398	12.3943701	29.7244606	159.75	159.770004	159.75	10	1597.69995	RUB	\N	\N	2018-09-25 17:53:40.300408+03	2018-09-25 17:53:47.547491+03	\N
56	\N	109	stock	IRGZ	ИркЭнерго	Иркутскэнерго(ПАО)-ао	IrkutskEnrg	irkutskenrg	PUBLISHED	\N	4.70085001	-21.2218609	-31.9444408	12.25	12.3999996	12.3000002	100	1240	RUB	\N	\N	2018-09-25 17:53:40.33664+03	2018-09-25 17:53:47.557242+03	\N
67	\N	110	stock	KMEZ	КМЗ	Ковровский механический завод	Kovrov Mech. Zavod	kovrov mech. zavod	PUBLISHED	\N	-0.887570024	-10.4278097	-18.2926807	335	336	335	1	336	RUB	\N	\N	2018-09-25 17:53:40.407752+03	2018-09-25 17:53:47.566996+03	\N
76	\N	111	stock	KUBE	Кубанэнр	"Кубаньэнерго" ПАО	KubanEnrg	kubanenrg	PUBLISHED	\N	-1.78570998	-22.3163795	-26.6666698	55	55	54.2000008	10	550	RUB	\N	\N	2018-09-25 17:53:40.445939+03	2018-09-25 17:53:47.576753+03	\N
98	\N	113	stock	MISBP	МариЭнСб-п	"Мариэнергосбыт" ПАО ап	Marienergosbyt (pref)	marienergosbyt	PUBLISHED	\N	0	7.14285994	55.4404106	9	9	7.80000019	1000	9000	RUB	\N	\N	2018-09-25 17:53:40.551219+03	2018-09-25 17:53:47.586656+03	\N
102	\N	114	stock	MRKK	МРСК СК	МРСК Сев. Кавказа ао	MRSK Severnogo Kavkaza ao	mrsk severnogo kavkaza	PUBLISHED	\N	-0.334450006	-14.6131802	-33.630291	14.8999996	14.9499998	14.8999996	10	149.5	RUB	\N	\N	2018-09-25 17:53:40.597337+03	2018-09-25 17:53:47.600157+03	\N
111	\N	115	stock	MSST	МультиСис	Мультисистема ОАО ао	Mul'tisistema ao	multisistema	PUBLISHED	\N	114.400002	20.1793709	-7.58620977	1.33000004	1.33000004	1.32000005	100	133	RUB	\N	\N	2018-09-25 17:53:40.642362+03	2018-09-25 17:53:47.609659+03	\N
121	\N	116	stock	NKHP	НКХП ао	НКХП ПАО ао	NKHP ao	nkhp	PUBLISHED	\N	-1.22850001	-12.0350103	0	201	201	200	10	2010	RUB	\N	\N	2018-09-25 17:53:40.733785+03	2018-09-25 17:53:47.619682+03	\N
127	\N	117	stock	NNSBP	ТНСэнНН ап	ТНС энерго Нижний Новг.ПАО ап	TNS energo Nizhniy Novg. pref	tns energo nizhniy novg	PUBLISHED	\N	-10.6382999	-33.3333282	-44	420	425	390	1	425	RUB	\N	\N	2018-09-25 17:53:40.767783+03	2018-09-25 17:53:47.63146+03	\N
135	\N	118	stock	PIKK	ПИК ао	Группа компания ПИК ПАО ао	PIK	pik	PUBLISHED	\N	-4.3502202	9.10803986	10.3908501	346.100006	346.600006	346.100006	10	3466	RUB	\N	\N	2018-09-25 17:53:40.820885+03	2018-09-25 17:53:47.640819+03	\N
144	\N	119	stock	RBCM	РБК ао	РБК ПАО ао	RBK ao	rbk	PUBLISHED	\N	-1.86198997	-10.2204399	-41.6666718	4.48000002	4.48000002	4.46500015	100	448	RUB	\N	\N	2018-09-25 17:53:40.883253+03	2018-09-25 17:53:47.652548+03	\N
153	\N	120	stock	ROST	РОСИНТЕРао	РОСИНТЕР РЕСТОРАНТС (ПАО)	ROSINTER RESTAURANTS ao	rosinter restaurants	PUBLISHED	\N	38.9799614	20.1574802	-2.80255008	76.3000031	76.1999969	74.3000031	10	762	RUB	\N	\N	2018-09-25 17:53:40.937708+03	2018-09-25 17:53:47.663223+03	\N
163	\N	121	stock	RUSP	Русполимет	Русполимет ПАО ао	Ruspolimet ao	ruspolimet	PUBLISHED	\N	12.8440399	4.90404987	2.71398997	0.492000014	0.5	0.492000014	10000	5000	RUB	\N	\N	2018-09-25 17:53:40.994567+03	2018-09-25 17:53:47.673123+03	\N
197	\N	123	stock	TTLK	Таттел. ао	"Таттелеком" ПАО ао	Tattelekom	tattelekom	PUBLISHED	\N	-4.08163023	-16.7088604	13.8408298	0.164499998	0.166500002	0.164499998	10000	1665	RUB	\N	\N	2018-09-25 17:53:41.190017+03	2018-09-25 17:53:47.683345+03	\N
218	\N	124	stock	YAKG	ЯТЭК ао	Якутская топл.-энерг. комп. ао	YaTEK ao	yatek	PUBLISHED	\N	1.19047999	-10.5263205	-21.2963009	8.5	8.60000038	8.30000019	100	860	RUB	\N	\N	2018-09-25 17:53:41.279929+03	2018-09-25 17:53:47.692942+03	\N
147	\N	48	stock	RLMN	iРоллман	Группа Компаний Роллман ПАО ао	Rollman GK ao	rollman gk	PUBLISHED	\N	21.73913	-34.8837204	-66.6666718	29	28	27	10	280	RUB	\N	\N	2018-09-25 17:53:40.893788+03	2018-09-25 17:53:44.708698+03	\N
93	\N	78	stock	MFGSP	Мегион-ап	ап Мегионнефтегаз	Megion (pref)	megion	PUBLISHED	\N	2.95081997	0.641030014	-19.8979607	314	322	314	10	3220	RUB	\N	\N	2018-09-25 17:53:40.548203+03	2018-09-25 17:53:45.109957+03	\N
68	\N	91	stock	KRKN	СаратНПЗ	Саратовский НПЗ ПАО ао	Saratovskiy NPZ ao	saratovskiy npz	PUBLISHED	\N	-14.4607801	-21.5730305	-22.4444408	7120	7160	7000	1	7160	RUB	\N	\N	2018-09-25 17:53:40.408636+03	2018-09-25 17:53:45.227805+03	\N
122	\N	131	stock	NKNC	НКНХ ао	"Нижнекамскнефтехим" ПАО ао	Niznekamskneftekhim ao	niznekamskneftekhim	PUBLISHED	\N	6.33802986	5.77932978	22.26721	61	61	60.5999985	100	6100	RUB	\N	\N	2018-09-25 17:53:40.734775+03	2018-09-25 17:53:45.614739+03	\N
171	\N	134	stock	SBERP	Сбербанк-п	Сбербанк России ПАО ап	Sberbank (pref)	sberbank	PUBLISHED	\N	3.89836001	-23.9727898	5.93365002	167.960007	168.059998	167.960007	100	16806	RUB	\N	\N	2018-09-25 17:53:41.028242+03	2018-09-25 17:53:45.650958+03	\N
220	\N	138	stock	YKENP	Якутскэн-п	АК "Якутскэнерго" (ПАО) ап	YakutskEnergo ap	yakutskenergo	PUBLISHED	\N	10.5769196	2.22221994	-19.01408	0.230000004	0.231000006	0.225999996	10000	2310	RUB	\N	\N	2018-09-25 17:53:41.290724+03	2018-09-25 17:53:45.706291+03	\N
47	\N	125	stock	GCHE	ЧеркизГ-ао	Группа Черкизово ПАО-ао	Cherkizovo Group ao	cherkizovo group	PUBLISHED	\N	7.04225016	-12.3076897	-11.9691095	1140	1150	1140	1	1150	RUB	\N	\N	2018-09-25 17:53:40.312158+03	2018-09-25 17:53:47.75844+03	\N
57	\N	126	stock	IRKT	ИРКУТ-3	Корпорация"ИРКУТ" ПАО ак.об.-3	IRKUT-3	irkut-3	PUBLISHED	\N	114.48468	434.722229	320.765045	76.3499985	76.4000015	76.1999969	100	7640	RUB	\N	\N	2018-09-25 17:53:40.356247+03	2018-09-25 17:53:47.763175+03	\N
77	\N	127	stock	KUZB	КузнецкийБ	Банк "Кузнецкий" ПАО ао	Bank "Kuzneckiy"	bank "kuzneckiy"	PUBLISHED	\N	-11.4285698	-26.1904793	-32.1167908	0.00930000003	0.00930000003	0.00910000037	10000	93	RUB	\N	\N	2018-09-25 17:53:40.461748+03	2018-09-25 17:53:47.776241+03	\N
88	\N	128	stock	LVHK	iЛевенгук	Левенгук ОАО ао	Levenguk ao	levenguk	PUBLISHED	\N	-4.83870983	-7.08660984	-16.3120594	5.9000001	5.9000001	5.5999999	100	590	RUB	\N	\N	2018-09-25 17:53:40.512539+03	2018-09-25 17:53:47.790257+03	\N
103	\N	129	stock	MRKP	МРСК ЦП	МРСК Центр. и Приволж. ао	MRSK CiP	mrsk cip	PUBLISHED	\N	-1.92981994	-16.0660706	-14.1321001	0.279500008	0.279500008	0.277999997	10000	2795	RUB	\N	\N	2018-09-25 17:53:40.598252+03	2018-09-25 17:53:47.805948+03	\N
112	\N	130	stock	MSTT	Мостотрест	ПАО "МОСТОТРЕСТ" ао	Mostotrest	mostotrest	PUBLISHED	\N	0.103200004	-34.3263397	-23.9215698	97	97	96.9000015	10	970	RUB	\N	\N	2018-09-25 17:53:40.643297+03	2018-09-25 17:53:47.821993+03	\N
133	\N	132	stock	OGKB	ОГК-2 ао	ОГК-2 ПАО ао	OGK-2	ogk-2	PUBLISHED	\N	6.61850023	-20.4442501	-35.6195488	0.368800014	0.368800014	0.368099988	1000	368.799988	RUB	\N	\N	2018-09-25 17:53:40.794407+03	2018-09-25 17:53:47.893861+03	\N
157	\N	133	stock	RTKM	Ростел -ао	Ростелеком (ПАО) ао.	Rostelecom	rostelecom	PUBLISHED	\N	3.29157996	5.22254992	3.53285003	70.8899994	70.9000015	70.8700027	10	709	RUB	\N	\N	2018-09-25 17:53:40.964249+03	2018-09-25 17:53:47.905625+03	\N
184	\N	135	stock	TASBP	ТамбЭнСб-п	ап"Тамбов.энергсбыт.комп."ПАО	Tambov EnergoSbyt Comp. (pref)	tambov energosbyt comp.	PUBLISHED	\N	-4.24709988	-2.36220002	-12.3674898	0.123999998	0.123499997	0.120499998	10000	1235	RUB	\N	\N	2018-09-25 17:53:41.114452+03	2018-09-25 17:53:47.916541+03	\N
194	\N	136	stock	TRMK	ТМК ао	ПАО ТМК	TMK ao	tmk	PUBLISHED	\N	-4.05028009	-17.3285198	0.423909992	68.6999969	68.75	68.5999985	10	687.5	RUB	\N	\N	2018-09-25 17:53:41.176192+03	2018-09-25 17:53:47.927397+03	\N
204	\N	137	stock	USBN	УралСиб ао	БАНК УРАЛСИБ ПАО ао	BANK URALSIB ao	bank uralsib	PUBLISHED	\N	11.6504898	-12.1019096	-22.4719105	0.0698999986	0.0697999969	0.0688999966	10000	698	RUB	\N	\N	2018-09-25 17:53:41.23006+03	2018-09-25 17:53:47.937984+03	\N
215	\N	107	stock	VZRZ	Возрожд-ао	Банк "Возрождение"-ао	Vozrojdenie	vozrojdenie	PUBLISHED	\N	6.79612017	6.40871	-22.8070202	438	440	439	1	440	RUB	\N	\N	2018-09-25 17:53:41.27826+03	2018-09-25 17:53:45.406597+03	\N
84	\N	112	stock	LNZLP	Лензол. ап	"Лензолото" ПАО ап	Lenzoloto pref.	lenzoloto	PUBLISHED	\N	1.20000005	-27.0893402	-31.0626698	2550	2550	2530	1	2550	RUB	\N	\N	2018-09-25 17:53:40.489213+03	2018-09-25 17:53:45.462358+03	\N
74	\N	142	stock	KRSBP	Красэсб ап	Красноярскэнергосбыт ап	Krashojarskenergosbyt pref.	krashojarskenergosbyt	PUBLISHED	\N	13.6708899	13.0982399	28.2857094	4.48999977	4.36999989	4.30000019	1000	4370	RUB	\N	\N	2018-09-25 17:53:40.44386+03	2018-09-25 17:53:45.755604+03	\N
115	\N	145	stock	MTLRP	Мечел ап	Мечел ПАО ап	Mechel pref.	mechel	PUBLISHED	\N	8.49514961	-22.6911106	6.5808301	111.650002	111.849998	111.699997	10	1118.5	RUB	\N	\N	2018-09-25 17:53:40.661789+03	2018-09-25 17:53:45.79687+03	\N
188	\N	152	stock	TGKB	ТГК-2	ао ПАО "ТГК-2"	TGK-2	tgk-2	PUBLISHED	\N	1.13636005	-44.4444389	-52.0990295	0.00222499995	0.00222499995	0.00221000006	1000000	2225	RUB	\N	\N	2018-09-25 17:53:41.136172+03	2018-09-25 17:53:45.857398+03	\N
48	\N	139	stock	GMKN	ГМКНорНик	ГМК "Нор.Никель" ПАО ао	NorNickel GMK	nornickel gmk	PUBLISHED	\N	7.3699398	8.09237957	23.1917095	11872	11872	11871	1	11872	RUB	\N	\N	2018-09-25 17:53:40.315092+03	2018-09-25 17:53:48.017704+03	\N
58	\N	140	stock	ISKJ	iИСКЧ ао	ПАО "ИСКЧ"	HSCI ao	hsci	PUBLISHED	\N	-6.21469021	-3.48836994	-33.8645401	8.30000019	8.30000019	8.25	100	830	RUB	\N	\N	2018-09-25 17:53:40.356877+03	2018-09-25 17:53:48.029854+03	\N
65	\N	141	stock	KLSB	КалужскСК	ао"Калужская сбыт.комп."ПАО	Kalugsk. Sbyt. Company ao	kalugsk. sbyt. company	PUBLISHED	\N	3.17459989	7.43802023	-21.6867504	13	13.1999998	12.6999998	100	1320	RUB	\N	\N	2018-09-25 17:53:40.40577+03	2018-09-25 17:53:48.047465+03	\N
96	\N	143	stock	MGNZ	СМЗ-ао	Соликамский магн.завод(ОАО)ао	SMZ	smz	PUBLISHED	\N	12.8000002	-9.90415001	-25.1989403	2820	2910	2830	1	2910	RUB	\N	\N	2018-09-25 17:53:40.55015+03	2018-09-25 17:53:48.059276+03	\N
106	\N	144	stock	MRKV	МРСКВол	МРСК Волги ао	MRSK Volgi	mrsk volgi	PUBLISHED	\N	3.80405998	-19.0243893	-15.3421202	0.100050002	0.100100003	0.0999500006	10000	1001	RUB	\N	\N	2018-09-25 17:53:40.600741+03	2018-09-25 17:53:48.072095+03	\N
124	\N	146	stock	NLMK	НЛМК ао	ПАО "НЛМК" ао	NLMK ao	nlmk	PUBLISHED	\N	10.3620501	19.0251808	37.3417206	176.399994	176.5	176.399994	10	1765	RUB	\N	\N	2018-09-25 17:53:40.76564+03	2018-09-25 17:53:48.08376+03	\N
134	\N	147	stock	PHOR	ФосАгро ао	ФосАгро ПАО ао	PhosAgro ao	phosagro	PUBLISHED	\N	3.48178005	12.5495396	8.71969032	2555	2555	2553	1	2555	RUB	\N	\N	2018-09-25 17:53:40.811473+03	2018-09-25 17:53:48.09391+03	\N
143	\N	148	stock	RASP	Распадская	ПАО Распадская ао	Raspadskaya	raspadskaya	PUBLISHED	\N	16.5813503	16.1151695	39.1851387	115.540001	115.480003	115.410004	10	1154.80005	RUB	\N	\N	2018-09-25 17:53:40.869731+03	2018-09-25 17:53:48.106035+03	\N
152	\N	149	stock	ROSN	Роснефть	ПАО НК Роснефть	Rosneft	rosneft	PUBLISHED	\N	5.56642008	45.9300499	42.7305183	457.350006	457.5	457.350006	10	4575	RUB	\N	\N	2018-09-25 17:53:40.92858+03	2018-09-25 17:53:48.11744+03	\N
162	\N	150	stock	RUGR	Русгрэйн	Русгрэйн Холдинг ПАО ао	Rusgrain Holding ao	rusgrain holding	PUBLISHED	\N	6.59341002	-3.9604001	-30.7142906	4.8499999	4.8499999	4.75	10	48.5	RUB	\N	\N	2018-09-25 17:53:40.978426+03	2018-09-25 17:53:48.136332+03	\N
175	\N	151	stock	SIBN	Газпрнефть	Газпром нефть ПАО ао	Gazprom neft	gazprom neft	PUBLISHED	\N	3.10191989	21.1805592	59.5793304	348.899994	348.899994	348.700012	10	3489	RUB	\N	\N	2018-09-25 17:53:41.063085+03	2018-09-25 17:53:48.148485+03	\N
200	\N	153	stock	UNKL	ЮУНК ао	Южно-Уральский никел. комб. ао	Uzhno-Uralskiy nikel. komb. ao	uzhno-uralskiy nikel. komb.	PUBLISHED	\N	-2.85714006	-2.85714006	-5.22648001	2720	2720	2680	1	2720	RUB	\N	\N	2018-09-25 17:53:41.193379+03	2018-09-25 17:53:48.161702+03	\N
209	\N	154	stock	VJGZ	Варьеган	Варьеганнефтегаз ПАО ао	Var'eganneftegaz ao	vareganneftegaz	PUBLISHED	\N	-1.03093004	-0.41494	-20	470	485	470	10	4850	RUB	\N	\N	2018-09-25 17:53:41.244213+03	2018-09-25 17:53:48.173933+03	\N
14	\N	14	stock	BANE	Башнефт ао	Башнефть АНК ао	Bashneft ANK ao	bashneft ank	PUBLISHED	\N	0.254579991	-12.9916	-6.85903978	1967	1968	1967	1	1968	RUB	\N	\N	2018-09-25 17:53:40.084102+03	2018-09-25 17:53:44.327766+03	\N
59	\N	40	stock	JNOS	Славн-ЯНОС	Славнефть-ЯНОС (ОАО) ао	Slavneft-JANOS	slavneft-janos	PUBLISHED	\N	-4.76189995	-15.8878498	-21.73913	18	18	17.8999996	100	1800	RUB	\N	\N	2018-09-25 17:53:40.357426+03	2018-09-25 17:53:44.619433+03	\N
179	\N	122	stock	STSB	СтаврЭнСб	Ставрополэнергосбыт ПАО ао	StavropolEnergoSbyt	stavropolenergosbyt	PUBLISHED	\N	-2.99624991	-18.5534592	-26	0.259000003	0.254000008	0.250999987	1000	254	RUB	\N	\N	2018-09-25 17:53:41.093123+03	2018-09-25 17:53:45.547533+03	\N
169	\N	134	stock	SBER	Сбербанк	Сбербанк России ПАО ао	Sberbank	sberbank	PUBLISHED	\N	7.56261015	-24.7595406	3.10145998	197.550003	197.570007	197.550003	10	1975.69995	RUB	\N	\N	2018-09-25 17:53:41.026926+03	2018-09-25 17:53:45.654912+03	\N
187	\N	152	stock	TGKBP	ТГК-2 ап	ап ПАО "ТГК-2"	TGK-2 pref	tgk-2	PUBLISHED	\N	-6.17849016	-25.8589497	-40.7514496	0.00410000002	0.00407999987	0.00394999981	1000000	4080	RUB	\N	\N	2018-09-25 17:53:41.145995+03	2018-09-25 17:53:45.862776+03	\N
49	\N	155	stock	GRNT	ГИТ ао	ГородскиеИнновацТехнологии ао	CityInnovativeTechnologies ao	cityinnovativetechnologies	PUBLISHED	\N	-0.800000012	6.20984983	-4.24709988	0.495000005	0.495999992	0.493999988	1000	496	RUB	\N	\N	2018-09-25 17:53:40.31562+03	2018-09-25 17:53:48.227785+03	\N
71	\N	156	stock	KROT	КрасОкт-ао	"КрасныйОктябрь" ПАО - ао	KrasnyiOctyabr	krasnyioctyabr	PUBLISHED	\N	3.59476995	-19.3384209	-29.86726	317	319	315	10	3190	RUB	\N	\N	2018-09-25 17:53:40.42505+03	2018-09-25 17:53:48.23894+03	\N
81	\N	157	stock	LKOH	ЛУКОЙЛ	НК ЛУКОЙЛ (ПАО) - ао	LUKOIL	lukoil	PUBLISHED	\N	6.5872798	25.9130192	60.5033684	4882.5	4884.5	4882.5	1	4884.5	RUB	\N	\N	2018-09-25 17:53:40.486756+03	2018-09-25 17:53:48.257236+03	\N
95	\N	158	stock	MGNT	Магнит ао	"Магнит" ПАО ао	Magnit	magnit	PUBLISHED	\N	0.191620007	-11.8811903	-58.7475319	4185	4186	4183	1	4186	RUB	\N	\N	2018-09-25 17:53:40.549412+03	2018-09-25 17:53:48.259371+03	\N
105	\N	159	stock	MRKU	МРСК Ур	МРСК Урала (ОАО) ао	MRSK Urala ao	mrsk urala	PUBLISHED	\N	-0.284090012	-23.1947498	-6.89655018	0.175500005	0.175500005	0.174999997	10000	1755	RUB	\N	\N	2018-09-25 17:53:40.599801+03	2018-09-25 17:53:48.276397+03	\N
117	\N	160	stock	MUGSP	МурмТЭЦ-п	Мурманская ТЭЦ ПАО ап	Murmanskaya TEC ap	murmanskaya tec	PUBLISHED	\N	-0.657890022	-3.2051301	-3.51437998	0.301999986	0.310000002	0.301999986	10000	3100	RUB	\N	\N	2018-09-25 17:53:40.663431+03	2018-09-25 17:53:48.291197+03	\N
125	\N	161	stock	NMTP	НМТП ао	НМТП (ПАО) ао	NMTP	nmtp	PUBLISHED	\N	10.9523802	-10.2695799	-14.7560997	6.96999979	6.98500013	6.96500015	1000	6985	RUB	\N	\N	2018-09-25 17:53:40.766373+03	2018-09-25 17:53:48.302273+03	\N
137	\N	162	stock	PLZL	Полюс	Полюс ПАО ао	Polus	polus	PUBLISHED	\N	-7.36698008	-8.38768005	-8.13980007	4072	4073	4072	1	4073	RUB	\N	\N	2018-09-25 17:53:40.827965+03	2018-09-25 17:53:48.311075+03	\N
146	\N	163	stock	RKKE	ЭнергияРКК	РКК Энергия им.С.П.Королева ао	RKK Energia	rkk energia	PUBLISHED	\N	4	26.5917606	10.8196697	6680	6760	6600	1	6760	RUB	\N	\N	2018-09-25 17:53:40.892758+03	2018-09-25 17:53:48.322347+03	\N
156	\N	164	stock	RTGZ	ГазпРнД ао	Газпром газорасп Р-н-Д ПАО ао	Gazprom gazorasp. Rostov ao	gazprom gazorasp. rostov	PUBLISHED	\N	2.04081988	-9.9099102	1.01010001	14900	15000	14700	1	15000	RUB	\N	\N	2018-09-25 17:53:40.963484+03	2018-09-25 17:53:48.336566+03	\N
201	\N	165	stock	UPRO	Юнипро ао	Юнипро ПАО ао	Unipro PAO ao	unipro pao	PUBLISHED	\N	3.35877991	-3.9716301	12.9745502	2.7190001	2.72399998	2.7190001	1000	2724	RUB	\N	\N	2018-09-25 17:53:41.197414+03	2018-09-25 17:53:48.346923+03	\N
211	\N	166	stock	VRSB	ТНСэнВорон	ТНС энерго Воронеж ПАО ао	TNS energo Voroneg ao	tns energo voroneg	PUBLISHED	\N	4.04040003	8.42105007	-28.2229996	20.6000004	20.6000004	18.6000004	100	2060	RUB	\N	\N	2018-09-25 17:53:41.245294+03	2018-09-25 17:53:48.362843+03	\N
223	\N	167	stock	ZMZN	ЗМЗ-ао	Заволжский мотор.з-д ПАО ао	ZMZ	zmz	PUBLISHED	\N	2.85714006	-22.8571396	-10.7438002	21.6000004	21.7000008	21.6000004	10	217	RUB	\N	\N	2018-09-25 17:53:41.292119+03	2018-09-25 17:53:48.386761+03	\N
123	\N	131	stock	NKNCP	НКНХ ап	"Нижнекамскнефтехим" ПАО ап	Niznekamskneftekhim (pref)	niznekamskneftekhim	PUBLISHED	\N	0.440530002	19.5804195	28.95928	34.2000008	34.3499985	34.2000008	100	3435	RUB	\N	\N	2018-09-25 17:53:40.756039+03	2018-09-25 17:53:45.615244+03	\N
219	\N	138	stock	YKEN	Якутскэнрг	АК "Якутскэнерго" (ПАО) ао	YakutskEnergo	yakutskenergo	PUBLISHED	\N	5.26316023	-2.22221994	-25.4237309	0.219999999	0.222000003	0.219999999	10000	2220	RUB	\N	\N	2018-09-25 17:53:41.29009+03	2018-09-25 17:53:45.707192+03	\N
114	\N	145	stock	MTLR	Мечел ао	Мечел ПАО ао	Mechel	mechel	PUBLISHED	\N	13.0341902	-20.2412395	-32.9531097	105.900002	105.949997	105.900002	1	105.949997	RUB	\N	\N	2018-09-25 17:53:40.66055+03	2018-09-25 17:53:45.802852+03	\N
166	\N	178	stock	SAGOP	СамарЭн-ап	Самараэнерго (ПАО) - ап	SamaraEnergo(pref)	samaraenergo	PUBLISHED	\N	-10.7142897	6.38297987	11.1111097	0.300000012	0.307999998	0.300000012	10000	3080	RUB	\N	\N	2018-09-25 17:53:41.023292+03	2018-09-25 17:53:46.035352+03	\N
51	\N	168	stock	HALS	Галс-Девел	ПАО "Галс-Девелопмент"	Gals-Development ao	gals-development	PUBLISHED	\N	-2.79719996	-0.714290023	-5.44218016	695	700	685	1	700	RUB	\N	\N	2018-09-25 17:53:40.326059+03	2018-09-25 17:53:48.448932+03	\N
62	\N	169	stock	KBSB	ТНСэКубань	ТНС энерго Кубань ПАО ао	TNS energo Kuban Company	tns energo kuban company	PUBLISHED	\N	6.38297987	13.6363602	-1.31579006	150	149	133	10	1490	RUB	\N	\N	2018-09-25 17:53:40.386686+03	2018-09-25 17:53:48.470811+03	\N
72	\N	170	stock	KROTP	КрасОкт-1п	КрасныйОктябрь-1п	KrasnyiOctabr-1(pr)	krasnyioctabr-1	PUBLISHED	\N	-3.5460999	-21.15942	-19.5266304	270	272	269	10	2720	RUB	\N	\N	2018-09-25 17:53:40.441998+03	2018-09-25 17:53:48.47581+03	\N
87	\N	171	stock	LSRG	ЛСР ао	Группа ЛСР ПАО ао	LSR	lsr	PUBLISHED	\N	-11.9760504	-21.8085098	-18.7346401	660	661.5	660.5	1	661.5	RUB	\N	\N	2018-09-25 17:53:40.511987+03	2018-09-25 17:53:48.494142+03	\N
94	\N	172	stock	MFON	МегаФон ао	МегаФон ПАО ао	MegaFon ao	megafon	PUBLISHED	\N	-10.4887304	10.0897703	-4.08093977	564.5	564.5	563.700012	10	5645	RUB	\N	\N	2018-09-25 17:53:40.548732+03	2018-09-25 17:53:48.526016+03	\N
104	\N	173	stock	MRKS	МРСКСиб	МРСК Сибири ао	MRSK Sibiri	mrsk sibiri	PUBLISHED	\N	-1.63934004	-25.92593	-30.7159405	0.0900000036	0.0909999982	0.0900000036	10000	910	RUB	\N	\N	2018-09-25 17:53:40.599069+03	2018-09-25 17:53:48.53178+03	\N
132	\N	174	stock	OPIN	ИНГРАД ао	ИНГРАД ПАО ао	INGRAD	ingrad	PUBLISHED	\N	-0.568180025	11.4649696	-20.01828	875	880	875	1	880	RUB	\N	\N	2018-09-25 17:53:40.795703+03	2018-09-25 17:53:48.54524+03	\N
140	\N	175	stock	PRTK	ПРОТЕК ао	ПРОТЕК (ПАО) ао	PROTEK ao	protek	PUBLISHED	\N	-1.82927001	-21.9961205	-25.4629593	81	80.6999969	80.5	100	8070	RUB	\N	\N	2018-09-25 17:53:40.854343+03	2018-09-25 17:53:48.561589+03	\N
149	\N	176	stock	RNFT	РуссНфт ао	РуссНефть НК ПАО ао	RussNeft NK	russneft nk	PUBLISHED	\N	-1.62706995	5.14783001	3.50967002	607	607	604.400024	1	607	RUB	\N	\N	2018-09-25 17:53:40.917629+03	2018-09-25 17:53:48.581789+03	\N
158	\N	177	stock	RTKMP	Ростел -ап	Ростелеком (ПАО) ап.	Rostelecom- (pref)	rostelecom-	PUBLISHED	\N	0.0671899989	-4.5964098	12.2056904	59.5699997	59.5699997	59.5	100	5957	RUB	\N	\N	2018-09-25 17:53:40.965049+03	2018-09-25 17:53:48.585881+03	\N
176	\N	179	stock	SLEN	Сахэнер ао	ПАО "Сахалинэнерго" ао	Sakhalinenergo ao	sakhalinenergo	PUBLISHED	\N	-4.31965017	3.74707007	-11.3999996	4.42999983	4.44999981	4.34000015	100	445	RUB	\N	\N	2018-09-25 17:53:41.090954+03	2018-09-25 17:53:48.602708+03	\N
185	\N	180	stock	TATNP	Татнфт 3ап	ПАО "Татнефть" ап 3 вып.	Tatneft (pref)	tatneft	PUBLISHED	\N	8.48029041	34.9186783	86.8600693	546.599976	547	546.599976	10	5470	RUB	\N	\N	2018-09-25 17:53:41.126647+03	2018-09-25 17:53:48.614601+03	\N
193	\N	181	stock	TRCN	ТрансК ао	ТрансКонтейнер ПАО ао	TransKonteiner ao	transkonteiner	PUBLISHED	\N	5.4607501	-5.02049017	18.0891705	4635	4670	4630	1	4670	RUB	\N	\N	2018-09-25 17:53:41.171137+03	2018-09-25 17:53:48.630808+03	\N
203	\N	182	stock	URKZ	УрКузница	ПАО "Уральская кузница" ао	Uralskaya kuznica ao	uralskaya kuznica	PUBLISHED	\N	-4	-10.3362398	-10.11236	7150	7300	7200	1	7300	RUB	\N	\N	2018-09-25 17:53:41.224695+03	2018-09-25 17:53:48.645558+03	\N
213	\N	183	stock	VSYD	ВыбСудЗ ао	Выборгский Суд.Завод ПАО ао	Viborgskii sudostr. Zavod ao	viborgskii sudostr. zavod	PUBLISHED	\N	5.23256016	-10.39604	-27.3092403	1810	1840	1790	1	1840	RUB	\N	\N	2018-09-25 17:53:41.246476+03	2018-09-25 17:53:48.663307+03	\N
13	\N	13	stock	AVAZP	АВТОВАЗ ап	АВТОВАЗ (ПАО) ап	AVTOVAZ pref.	avtovaz	PUBLISHED	\N	-0.833329976	-9.22959995	42.5149689	11.8999996	12.0500002	11.8999996	100	1205	RUB	\N	\N	2018-09-25 17:53:40.083714+03	2018-09-25 17:53:44.298638+03	\N
85	\N	77	stock	LSNG	Ленэнерго	Ленэнерго(ПАО)-ао	LenEnrg	lenenrg	PUBLISHED	\N	9.57983017	20.0736599	15.1943502	6.59499979	6.53000021	6.51000023	100	653	RUB	\N	\N	2018-09-25 17:53:40.490094+03	2018-09-25 17:53:45.090219+03	\N
155	\N	100	stock	RSTIP	Россети ап	"Российские сети" ПАО ап	Rosseti ap	rosseti	PUBLISHED	\N	4.75805998	-15.5396605	-29.0938892	1.29700005	1.30200005	1.29900002	1000	1302	RUB	\N	\N	2018-09-25 17:53:40.943891+03	2018-09-25 17:53:45.311036+03	\N
73	\N	142	stock	KRSB	Красэсб ао	Красноярскэнергосбыт ао	Krashojarskenergosbyt	krashojarskenergosbyt	PUBLISHED	\N	8.35579967	5.51180983	12.6050396	4.01999998	4.01999998	3.95000005	1000	4020	RUB	\N	\N	2018-09-25 17:53:40.442883+03	2018-09-25 17:53:45.759651+03	\N
165	\N	178	stock	SAGO	СамарЭн-ао	Самараэнерго (ПАО) - ао	SamaraEnergo ao	samaraenergo	PUBLISHED	\N	-8.98204041	5.92333984	17.8294601	0.30399999	0.307999998	0.301999986	10000	3080	RUB	\N	\N	2018-09-25 17:53:41.000942+03	2018-09-25 17:53:46.037432+03	\N
55	\N	184	stock	IRAO	ИнтерРАОао	"Интер РАО" ПАО ао	Inter RAO ao	inter rao	PUBLISHED	\N	0.643559992	8.87668991	6.73317003	4.06500006	4.06650019	4.06099987	1000	4066.5	RUB	\N	\N	2018-09-25 17:53:40.336095+03	2018-09-25 17:53:48.704494+03	\N
64	\N	185	stock	KCHE	КамчатЭ ао	Камчатскэнерго ПАО ао	Kamchatskenergo	kamchatskenergo	PUBLISHED	\N	-6.27615023	-2.60870004	-27.7419395	0.112000003	0.112000003	0.1105	10000	1120	RUB	\N	\N	2018-09-25 17:53:40.404972+03	2018-09-25 17:53:48.714475+03	\N
97	\N	186	stock	MGTSP	МГТС-4ап	ПАО "МГТС" ап (4 в)	MGTS-4	mgts-4	PUBLISHED	\N	-1.19047999	-6.21469021	49.8194885	1660	1665	1650	10	16650	RUB	\N	\N	2018-09-25 17:53:40.550713+03	2018-09-25 17:53:48.724536+03	\N
107	\N	187	stock	MRKY	МРСКЮга ао	МРСК Юга ао	MRSK Yuga	mrsk yuga	PUBLISHED	\N	17.7877407	36.8055611	75.1111069	0.0788000003	0.0785999969	0.0781000033	10000	786	RUB	\N	\N	2018-09-25 17:53:40.60163+03	2018-09-25 17:53:48.734153+03	\N
116	\N	188	stock	MTSS	МТС-ао	Мобильные ТелеСистемы ПАО ао	MTS	mts	PUBLISHED	\N	7.78430986	-6.98816013	-0.972800016	273.950012	274.049988	273.950012	10	2740.5	RUB	\N	\N	2018-09-25 17:53:40.662659+03	2018-09-25 17:53:48.747944+03	\N
130	\N	189	stock	NNSB	ТНСэнНН ао	ТНС энерго Нижний Новг.ПАО ао	TNS energo Nizhniy-Novgorod ao	tns energo nizhniy-novgorod	PUBLISHED	\N	0	10.3999996	30.1886806	1380	1400	1040	1	1400	RUB	\N	\N	2018-09-25 17:53:40.767044+03	2018-09-25 17:53:48.760871+03	\N
142	\N	190	stock	PRFN	ЧЗПСН ао	ЧЗПСН-Профнастил (ПАО) ао	CZPSN-Profnasteel	czpsn-profnasteel	PUBLISHED	\N	23.4375	-29.1479797	-59.8984795	1.57000005	1.59000003	1.57000005	1000	1590	RUB	\N	\N	2018-09-25 17:53:40.852899+03	2018-09-25 17:53:48.78353+03	\N
174	\N	191	stock	SIBG	СибГост ао	Сибирский гостинец ПАО ао	PAO Sibirskiy gostinec ao	pao sibirskiy gostinec	PUBLISHED	\N	12.5	-7.69230986	-52.6315804	0.769999981	0.779999971	0.75999999	100	78	RUB	\N	\N	2018-09-25 17:53:41.05384+03	2018-09-25 17:53:48.788516+03	\N
183	\N	192	stock	TATN	Татнфт 3ао	ПАО "Татнефть" ао	Tatneft-3	tatneft-3	PUBLISHED	\N	3.77985001	31.4304199	97.2094193	812.700012	812.799988	812.599976	10	8128	RUB	\N	\N	2018-09-25 17:53:41.125825+03	2018-09-25 17:53:48.802943+03	\N
192	\N	193	stock	TNSE	ТНСэнрг ао	ПАО ГК "ТНС энерго" ао	PAO GK "TNS energo" ao	pao gk "tns energo"	PUBLISHED	\N	-0.416669995	-7.50774002	-13.2801199	1195	1215	1195	1	1215	RUB	\N	\N	2018-09-25 17:53:41.166193+03	2018-09-25 17:53:48.815943+03	\N
202	\N	194	stock	URKA	Уркалий-ао	Уралкалий ПАО ао	Uralkaliy	uralkaliy	PUBLISHED	\N	5.72308016	-22.6474609	-40.7586212	85.8499985	85.9499969	85.8499985	10	859.5	RUB	\N	\N	2018-09-25 17:53:41.20435+03	2018-09-25 17:53:48.828649+03	\N
212	\N	195	stock	VSMO	ВСМПО-АВСМ	Корп. ВСМПО-АВИСМА (ПАО) ао	Corp. VSMPO-AVISMA ao	corp. vsmpo-avisma	PUBLISHED	\N	0.78549999	-4.41261005	3.40980005	16680	16680	16650	1	16680	RUB	\N	\N	2018-09-25 17:53:41.245848+03	2018-09-25 17:53:48.843689+03	\N
222	\N	196	stock	ZILL	ЗИЛ ао	Завод им. И.А.Лихачева ПАО ао	ZIL ao	zil	PUBLISHED	\N	7.69230986	-15.1515198	2.08332992	980	980	965	1	980	RUB	\N	\N	2018-09-25 17:53:41.291631+03	2018-09-25 17:53:48.855544+03	\N
\.


--
-- Data for Name: supplier; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.supplier (id, name, status, logo, "coverLogo", "createdAt", "updatedAt") FROM stdin;
1	Московская Биржа	onReview	https://www.moex.com/images/logo.gif		2018-09-25 17:48:53.245079+03	2018-09-25 17:48:53.245079+03
\.


--
-- Data for Name: user_profile; Type: TABLE DATA; Schema: public; Owner: gorod
--

COPY public.user_profile (id, email, password, status, role, "facebookId", "odnoklassnikiId", "twitterId", "vkontakteId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Name: bond_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.bond_id_seq', 1281, true);


--
-- Name: etf_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.etf_id_seq', 12, true);


--
-- Name: issuer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.issuer_id_seq', 680, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.migrations_id_seq', 24, true);


--
-- Name: mutualfund_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.mutualfund_id_seq', 1, false);


--
-- Name: offer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.offer_id_seq', 1, false);


--
-- Name: pif_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.pif_id_seq', 1, false);


--
-- Name: stock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.stock_id_seq', 224, true);


--
-- Name: supplier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.supplier_id_seq', 1, true);


--
-- Name: user_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gorod
--

SELECT pg_catalog.setval('public.user_profile_id_seq', 1, false);


--
-- Name: migrations PK_8c82d7f526340ab734260ea46be; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);


--
-- Name: bond bond_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.bond
    ADD CONSTRAINT bond_pkey PRIMARY KEY (id);


--
-- Name: etf etf_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.etf
    ADD CONSTRAINT etf_pkey PRIMARY KEY (id);


--
-- Name: issuer issuer_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.issuer
    ADD CONSTRAINT issuer_pkey PRIMARY KEY (id);


--
-- Name: mutualfund mutualfund_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.mutualfund
    ADD CONSTRAINT mutualfund_pkey PRIMARY KEY (id);


--
-- Name: offer offer_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.offer
    ADD CONSTRAINT offer_pkey PRIMARY KEY (id);


--
-- Name: pif pif_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.pif
    ADD CONSTRAINT pif_pkey PRIMARY KEY (id);


--
-- Name: stock stock_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (id);


--
-- Name: supplier supplier_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.supplier
    ADD CONSTRAINT supplier_pkey PRIMARY KEY (id);


--
-- Name: user_profile user_profile_email_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_email_key UNIQUE (email);


--
-- Name: user_profile user_profile_facebookId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT "user_profile_facebookId_key" UNIQUE ("facebookId");


--
-- Name: user_profile user_profile_odnoklassnikiId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT "user_profile_odnoklassnikiId_key" UNIQUE ("odnoklassnikiId");


--
-- Name: user_profile user_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_pkey PRIMARY KEY (id);


--
-- Name: user_profile user_profile_twitterId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT "user_profile_twitterId_key" UNIQUE ("twitterId");


--
-- Name: user_profile user_profile_vkontakteId_key; Type: CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT "user_profile_vkontakteId_key" UNIQUE ("vkontakteId");


--
-- Name: bond bond_issuerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.bond
    ADD CONSTRAINT "bond_issuerId_fkey" FOREIGN KEY ("issuerId") REFERENCES public.issuer(id) ON DELETE CASCADE;


--
-- Name: bond bond_supplierId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.bond
    ADD CONSTRAINT "bond_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.supplier(id) ON DELETE CASCADE;


--
-- Name: etf etf_issuerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.etf
    ADD CONSTRAINT "etf_issuerId_fkey" FOREIGN KEY ("issuerId") REFERENCES public.issuer(id) ON DELETE CASCADE;


--
-- Name: etf etf_supplierId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.etf
    ADD CONSTRAINT "etf_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.supplier(id) ON DELETE CASCADE;


--
-- Name: offer fk_offer_supplier; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.offer
    ADD CONSTRAINT fk_offer_supplier FOREIGN KEY ("supplierId") REFERENCES public.supplier(id) ON DELETE CASCADE;


--
-- Name: mutualfund mutualfund_issuerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.mutualfund
    ADD CONSTRAINT "mutualfund_issuerId_fkey" FOREIGN KEY ("issuerId") REFERENCES public.issuer(id) ON DELETE CASCADE;


--
-- Name: mutualfund mutualfund_supplierId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.mutualfund
    ADD CONSTRAINT "mutualfund_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.supplier(id) ON DELETE CASCADE;


--
-- Name: pif pif_supplierId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.pif
    ADD CONSTRAINT "pif_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.supplier(id) ON DELETE CASCADE;


--
-- Name: stock stock_issuerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT "stock_issuerId_fkey" FOREIGN KEY ("issuerId") REFERENCES public.issuer(id) ON DELETE CASCADE;


--
-- Name: stock stock_supplierId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gorod
--

ALTER TABLE ONLY public.stock
    ADD CONSTRAINT "stock_supplierId_fkey" FOREIGN KEY ("supplierId") REFERENCES public.supplier(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

