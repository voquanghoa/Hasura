-- CREATE DATABASE postgres;

CREATE TABLE long_tails (
   tail text,
   json_id numeric
);

INSERT INTO long_tails(tail, json_id) VALUES('front', 1);
INSERT INTO long_tails(tail, json_id) VALUES('data', 2);
INSERT INTO long_tails(tail, json_id) VALUES('api', 3);