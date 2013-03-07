--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.project DROP CONSTRAINT project_owner_fkey;
ALTER TABLE ONLY public.issue DROP CONSTRAINT issue_project_fkey;
ALTER TABLE ONLY public.issue DROP CONSTRAINT issue_owner_fkey;
ALTER TABLE ONLY public.project DROP CONSTRAINT project_pkey;
ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
DROP TABLE public.project;
DROP TABLE public.login;
DROP TABLE public.issue;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: issue; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE issue (
    name character varying(20),
    type character varying(10),
    requester character varying(20),
    owner character varying(20),
    project character varying(20),
    status character varying(20)
);


ALTER TABLE public.issue OWNER TO postgres;

--
-- Name: login; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE login (
    username character varying(20) NOT NULL,
    password character varying(20)
);


ALTER TABLE public.login OWNER TO postgres;

--
-- Name: project; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE project (
    name character varying(20) NOT NULL,
    owner character varying(20)
);


ALTER TABLE public.project OWNER TO postgres;

--
-- Data for Name: issue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY issue (name, type, requester, owner, project, status) FROM stdin;
\.


--
-- Data for Name: login; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY login (username, password) FROM stdin;
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY project (name, owner) FROM stdin;
\.


--
-- Name: login_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY login
    ADD CONSTRAINT login_pkey PRIMARY KEY (username);


--
-- Name: project_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_pkey PRIMARY KEY (name);


--
-- Name: issue_owner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issue
    ADD CONSTRAINT issue_owner_fkey FOREIGN KEY (owner) REFERENCES login(username) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: issue_project_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY issue
    ADD CONSTRAINT issue_project_fkey FOREIGN KEY (project) REFERENCES project(name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: project_owner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY project
    ADD CONSTRAINT project_owner_fkey FOREIGN KEY (owner) REFERENCES login(username) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

