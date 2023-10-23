-- liquibase formatted sql
--changeset shashi:1698054535
--comment: Use for storing data in table
INSERT INTO roles (name) 
VALUES ('admin'),('owner'),('user'),('delivery_boy'),('back_office');