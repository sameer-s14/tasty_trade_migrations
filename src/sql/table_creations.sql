-- liquibase formatted sql
--changeset sameer:1697889756
--comment: Table will contain type as category and slug as subcategory.
create table type_masters (  
    id int primary key, 
    type varchar(70) not null,
    slug varchar(255) not null,
    is_active bool default true
);

