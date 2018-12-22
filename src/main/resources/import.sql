// Persons
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('1680 Edsel Road', '062059316', 'BMW', 'abc@abc.com', 'Nikos', '$2a$10$lqTjMbusW7IkfE1fPQKM/.js0HR26ehshDwwPOG7Q2p/v74PJCEW', 'ABC-1234', 'Mpekas', 'USER');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('3912 Hillhaven Drive', '313615519', 'ALFA_ROMEO', 'giorgos@gmail.com', 'Giorgos', '$2a$10$phTSm.9d9SxZcKKpBgW5O.BFyvkIe.MYk/frwSC7Ku4zXPBuymTy.', 'JKD-1234', 'Giakoumis', 'USER');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('587 Fulton Street', '096318033', 'FERRARI', 'eleftheria@gmail.com', 'Eleftheria', '$2a$10$dG5THgAD5FwMl3L.F74xBOI/1fFYuOotTn3s2F1eeo4TEPAnvQzSy', 'MNK-1234', 'Papadopoulou', 'ADMIN');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('3524 Hurry Street', '176823413', 'FIAT', 'dimitris@gmail.com', 'Dimitris', '$2a$10$oJGRtJtlEtyQYKWsGxle1OcR5WekdjDGqdeyWQA0CKAaSYG5epHrW', 'PPP-1234', 'Xenakis', 'ADMIN');
INSERT INTO persons (address, afm, car_brand, email, name, password, plate_number, surname, user_type) VALUES('4100 Carson Street', '837585289', 'LAND_ROVER', 'argiris@gmail.com', 'Argiris', '$2a$10$41ddYxlhi6nKMvSRGoQ2K.uoJXlPWrTC./8SQMPO4O0ZOm4xlI/46', 'AAA-1234', 'Stamatopoulos', 'ADMIN');

// Repairs

INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 250, '2018-12-25 9:30', 'WAITING', 'MINOR', 1);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Lights replacement', 550, '2018-12-22 10:45', 'WAITING', 'MAJOR', 2);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 4250, '2017-12-25 14:25', 'COMPLETED', 'MAJOR', 3);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 350, '2015-12-25 18:00', 'WAITING', 'MAJOR', 4);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 330, '2022-12-25 12:00', 'COMPLETED', 'MINOR', 1);

INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 250, '2018-12-20 02:18', 'WAITING', 'MINOR', 1);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Lights replacement', 550, '2018-12-20 02:18', 'WAITING', 'MAJOR', 2);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 4250, '2018-12-20 02:18', 'COMPLETED', 'MAJOR', 3);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 350, '2018-12-20 02:18', 'WAITING', 'MAJOR', 4);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 330, '2018-12-20 02:18', 'COMPLETED', 'MINOR', 1);

INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 250, '2018-12-20 02:18', 'WAITING', 'MINOR', 1);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Lights replacement', 550, '2018-12-20 02:18', 'WAITING', 'MAJOR', 2);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 4250, '2018-12-20 02:18', 'COMPLETED', 'MAJOR', 3);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 350, '2018-12-20 02:18', 'WAITING', 'MAJOR', 4);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 330, '2018-12-20 02:18', 'COMPLETED', 'MINOR', 1);

INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 250, '2018-12-20 08:32', 'WAITING', 'MINOR', 1);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Lights replacement', 550, '2018-12-20 10:15', 'WAITING', 'MAJOR', 2);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 4250, '2018-12-20 12:18', 'WAITING', 'MAJOR', 3);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('Door replacement', 350, '2018-12-20 15:00', 'WAITING', 'MAJOR', 4);
INSERT INTO repairs (comment, price, repair_date, repair_status, repair_Type, person_id) VALUES('New tires', 330, '2018-12-20 20:45', 'WAITING', 'MINOR', 1);
