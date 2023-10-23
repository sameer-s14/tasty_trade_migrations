-- liquibase formatted sql
--changeset shashi:1698054535
--comment: Use for storing data in table
INSERT INTO roles (name) 
VALUES ('admin'),('owner'),('user'),('delivery_boy'),('back_office');
--changeset shashi:1698058343
--comment: Use for storing email template in table

INSERT INTO email_templates (type, content)
VALUES
    ('add_resturent', 'Your OTP 
Hey {{name}},
Thank you for choosing tasty-trade Company. Use the following OTP to complete the procedure to change your email address. OTP is valid for 5 minutes. Do not share this code with others, including tasty-trade employees.
{{otp}}
');