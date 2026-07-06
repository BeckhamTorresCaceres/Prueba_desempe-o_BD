select * from client;
INSERT INTO client (name) values
('InnovaS.A.S'),
('NovaTech'),
('BioHealth'),
('SoftCorp'),
('VisionS.A'),
('RetailOne'),
('Edu Center'),
('HealthPlus'),
('MegaFoods')
;

select * from branch;
INSERT INTO branch (name) values
    ('North Office'),
    ('HeadQuarters'),
    ('West'),
    ('Main Office'),
    ('Coast'),
    ('Coffe'),
    ('East Office'),
    ('NorthEast'),
    ('Central Office'),
    ('Caribe')
    ;
SELECT * FROM city_branch;
INSERT INTO  city_branch (cityid, branchid) VALUES
    ('2','1'),
    ('3','2'),
    ('4','3'),
    ('5','4'),
    ('6','5'),
    ('7','6'),
    ('8','7'),
    ('9','8'),
    ('10','9'),
    ('11','10')

;

select * from  city;
INSERT INTO city (name) values
    ('Bogota'),
    ('Medellin'),
    ('Cali'),
    ('Barranquilla'),
    ('Cartagena'),
    ('Pereira'),
    ('Bucaramanga'),
    ('Cucuta'),
    ('Manizales'),
    ('Santa Marta')
    ;
select * from technician;
INSERT INTO technician ( name, apellido) values
    ('juan perez','perez'),
    ('maria' , 'gomez'),
    ('carlos','ruiz'),
    ('Andres','Mora'),
    ('Laura','Diaz')
    ;

select * from servicestype;
INSERT INTO  servicestype (name) values
('preventive'),
('Corrective'),
('Repair'),
('Installation'),
('Corrective'),
('Maintenance')
;
select * from category;
INSERT INTO  category (name)  VALUES
('Laptops'),
('Desktops'),
('Network'),
('Printers')
;
select * from category_services;
INSERT INTO category_services (categoryid, servicestypeid) VALUES
('1','1'),
('1','3'),
('1','2'),
('2','2'),
('2','3'),
('2','4'),
('3','4'),
('3','1'),
('4','2'),
('4','3'),
('4','1'),
('4','4')
;