CREATE DATABASE complaint_analytics;
USE complaint_analytics;

DROP TABLE IF EXISTS complaints;

CREATE TABLE complaints (
    complaint_id BIGINT PRIMARY KEY,
    date_received DATE,
    product VARCHAR(255),
    sub_product VARCHAR(255),
    issue VARCHAR(255),
    sub_issue VARCHAR(255),
    complaint_text LONGTEXT,
    company VARCHAR(255),
    state VARCHAR(50),
    submitted_via VARCHAR(100),
    timely_response VARCHAR(20),
    consumer_disputed VARCHAR(20)
);