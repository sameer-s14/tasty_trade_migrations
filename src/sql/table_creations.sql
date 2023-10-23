-- liquibase formatted sql
--changeset sameer:1697889756
--comment: Table will contain type as category and slug as subcategory.
create table type_masters (  
    id serial primary key, 
    type varchar(70) not null,
    slug varchar(255) not null,
    is_active bool default true,
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);
--changeset shashiknat:1698048358
--comment: To create User, .
create table roles (  
    id serial primary key, 
    name varchar(255) not null,
    is_active bool default true,
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);
create table users (  
    id serial primary key, 
    email varchar(70),
    name varchar(255) not null,
    phone varchar(255),
    password varchar(255) not null,
    otp varchar(255),
    token varchar(255),
    is_verified bool default false,
    is_active bool default true,
    otp_expire timestamptz,
    token_exp timestamptz,
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);
create table user_roles (  
    id serial primary key, 
    user_id INT REFERENCES users(id),
    role_id INT REFERENCES roles(id), 
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table addresses (  
    id serial primary key, 
    country varchar(70),
    entity_id int,                                       
    state varchar(255),
    city varchar(255),
    district varchar(255),
    landmark varchar(255),
    address varchar(255),
    latitude varchar(255),
    longitude varchar(255),
    building_number varchar(255),
    pinCode varchar(255),
    exact_location bool default false,
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);
create table resturents (  
    id serial primary key, 
    name varchar(70),
    otp varchar(255),
    phone varchar(255),
    current_step int,
    open_time TIME, 
    close_time TIME, 
    working_days varchar(255),
    is_verified bool default false,
    is_phone_same bool default false,
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table documents (  
    id serial primary key,
    id_type varchar(255),
    id_no varchar(255),
    entity_id int,                       
    is_verified bool default false,
    is_approved bool default false,
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table avtars (  
    id serial primary key,
    entity_type varchar(255),
    url varchar(255),
    public_id varchar(255),
    enity_id int,                       
    is_verified bool default false,
    is_approved bool default false,
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);

create table resturent_type_mappings (  
    id serial primary key, 
    resturent_id INT REFERENCES resturents(id),
    type_master_id INT REFERENCES type_masters(id),
    created_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC'),
    updated_at timestamp without time zone NOT NULL
    DEFAULT (current_timestamp AT TIME ZONE 'UTC')
);