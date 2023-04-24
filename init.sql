CREATE DATABASE project
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

use project;

CREATE TABLE public.blog_post
(
    id serial,
    title character varying NOT NULL,
    content text NOT NULL,
    author character varying NOT NULL,
    date_posted timestamp with time zone NOT NULL DEFAULT NOW(),
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public.blog_post
    OWNER to postgres;