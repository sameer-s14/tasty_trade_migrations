-- liquibase formatted sql
--changeset sameer:1697889756
--comment: Table will contain type as category and slug as subcategory.
create table type_masters (
    id serial primary key,
    type varchar(70) not null,
    slug varchar(255) not null,
    is_active bool default true,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

--changeset shashiknat:1698048358
--comment: To create User, .
create table roles (
    id serial primary key,
    name varchar(255) not null,
    is_active bool default true,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table users (
    id serial primary key,
    email varchar(70),
    name varchar(255) not null,
    phone varchar(255),
    phone_number_country_code varchar(255) DEFAULT '+91',
    password varchar(255) not null,
    otp varchar(255),
    token varchar(255),
    is_verified bool default false,
    is_active bool default true,
    otp_expire timestamptz,
    token_exp timestamptz,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table user_roles (
    id serial primary key,
    user_id INT REFERENCES users(id),
    role_id INT REFERENCES roles(id),
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table addresses (
    id serial primary key,
    country varchar(70),
    entity_id int,
    entity_type varchar(70),
    state varchar(255),
    city varchar(255),
    district varchar(255),
    landmark varchar(255),
    address varchar(255),
    latitude varchar(255),
    longitude varchar(255),
    building_number varchar(255),
    pin_code varchar(255),
    exact_location bool default false,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table restaurants (
    id serial primary key,
    name varchar(70),
    phone_number varchar(255),
    phone_number_country_code varchar(255) DEFAULT '+91',
    landline_number varchar(255),
    landline_code varchar(10),
    is_phone_verified bool DEFAULT false,
    is_landline_verified bool DEFAULT false,
    status VARCHAR(15),
    current_step int,
    is_verified bool default false,
    owner_id INT NOT NULL,
    whats_app_notifications BOOL DEFAULT false,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table restaurant_details (
    id serial primary key,
    restaurant_id INT REFERENCES restaurants(id),
    kitchen_type INT [],
    outlets INT [],
    cuisines INT [],
    timings JSONB,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table documents (
    id serial primary key,
    id_type varchar(255),
    id_no varchar(255),
    entity_id int NOT NULL,
    entity_type int NOT NULL,
    is_verified bool default false,
    is_approved bool default false,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table avatars (
    id serial primary key,
    entity_type varchar(255),
    url varchar(255),
    public_id varchar(255),
    enity_id int,
    is_verified bool default false,
    is_approved bool default false,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

--changeset shashiknat:1698057369
--comment: To create User,
CREATE TABLE email_templates (
    id serial PRIMARY KEY,
    content VARCHAR(1000),
    type VARCHAR(255),
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

--changeset shashiknat:1698214169
--comment: To alter columns in User table,
ALTER TABLE
    users DROP COLUMN password;

ALTER TABLE
    users
ALTER COLUMN
    name DROP NOT NULL;

ALTER TABLE
    users
ADD
    COLUMN is_phone_exist BOOLEAN DEFAULT false;

--changeset Sameer Khan:1698214169
--comment: Create table to store restaurant timings
CREATE TABLE restaurant_timings (
    id serial PRIMARY KEY,
    day ENUM('sunday', 'monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday'),
    opening_time TIME,
    closing_time TIME,
    restaurant_id int,
    is_active BOOL DEFAULT true,
    created_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL DEFAULT (current_timestamp AT TIME ZONE 'UTC')
)