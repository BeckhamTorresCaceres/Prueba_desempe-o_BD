-- CLIENTES
INSERT INTO CLIENT (NAME) VALUES
('ACME LTDA'),
('Innova S.A.S.'),
('NovaTech'),
('BioHealth'),
('SoftCorp'),
('Vision S.A.'),
('RetailOne'),
('Edu Center'),
('HealthPlus'),
('MegaFoods');

-- CIUDADES
INSERT INTO CITY (NAME) VALUES
('Bogotá'),
('Medellín'),
('Cali'),
('Barranquilla'),
('Cartagena'),
('Pereira'),
('Bucaramanga'),
('Cúcuta'),
('Manizales'),
('Santa Marta');

-- TÉCNICOS
INSERT INTO TECHNICIAN (NAME, lastName) VALUES
('Juan', 'Pérez'),
('Maria', 'Gómez'),
('Carlos', 'Ruiz'),
('Andres', 'Mora'),
('Laura', 'Díaz');

-- TIPOS DE SERVICIO
INSERT INTO SERVICETYPE (NAME) VALUES
('Preventive'),
('Corrective'),
('Repair'),
('Installation'),
('Maintenance');

-- CATEGORÍAS
INSERT INTO CATEGORY (NAME) VALUES
('Laptops'),
('Desktops'),
('Network'),
('Printers');
-- BRANCH
INSERT INTO BRANCH (NAME, FK_CITY) VALUES
('North Office', 1),   -- Bogotá
('HeadQuarters', 2),   -- Medellín
('West', 3),           -- Cali
('Main Office', 4),    -- Barranquilla
('Coast', 5),          -- Cartagena
('Coffee', 6),         -- Pereira
('East Office', 7),    -- Bucaramanga
('NorthEast', 8),      -- Cúcuta
('Central Office', 9), -- Manizales
('Caribe', 10);        -- Santa Marta
-- EQUIPAMENT
INSERT INTO EQUIPAMENT (NAME, FK_CATEGORY) VALUES
('Dell Latitude 5420', 1),
('HP ProDesk', 2),
('Cisco 2960', 3),
('Canon Printer', 4),
('Lenovo ThinkPad', 1);

-- INVOICE
INSERT INTO INVOICE (FK_CLIENT, FK_BRANCH, FK_TECHNICIAN, FK_EQUIPAMENT, FK_SERVICETYPE, SERVICE_DATE, HOURS, COST) VALUES
-- Fila 1: ACME LTDA (ID 1)
(1, 1, 1, 1, 1, '2026-05-01', 2.00, 120.00),
-- Fila 2: ACME LTDA (ID 1)
(1, 1, 1, 1, 1, '2026-05-02', 3.00, 180.00),
-- Fila 3: Innova SAS (ID 2)
(2, 2, 2, 2, 2, '2026-05-03', 4.00, 250.00),
-- Fila 4: Innova S.A.S. (ID 2)
(2, 2, 2, 2, 3, '2026-05-04', 2.00, 150.00),
-- Fila 5: NovaTech (ID 3)
(3, 3, 3, 3, 4, '2026-05-05', 5.00, 500.00),
-- Fila 6: Nova Tech (ID 3)
(3, 3, 3, 3, 4, '2026-05-06', 4.00, 450.00),
-- Fila 7: BioHealth (ID 4)
(4, 4, 5, 4, 2, '2026-05-07', 2.00, 130.00),
-- Fila 8: BioHealth  (ID 4)
(4, 4, 5, 4, 3, '2026-05-08', 3.00, 200.00),
-- Fila 9: SoftCorp (ID 5)
(5, 5, 4, 5, 1, '2026-05-09', 2.00, 140.00),
-- Fila 10: Soft Corp  (ID 5)
(5, 5, 4, 5, 5, '2026-05-10', 3.00, 190.00),
-- Fila 11: Vision SA (ID 6)
(6, 6, 1, 2, 4, '2026-05-11', 6.00, 550.00),
-- Fila 12: Vision S.A. (ID 6)
(6, 6, 1, 2, 4, '2026-05-12', 5.00, 520.00),
-- Fila 13: RetailOne (ID 7)
(7, 7, 2, 1, 2, '2026-05-13', 2.00, 160.00),
-- Fila 14: Retail One  (ID 7)
(7, 7, 2, 1, 3, '2026-05-14', 3.00, 210.00),
-- Fila 15: EduCenter  (ID 8)
(8, 8, 3, 3, 1, '2026-05-15', 2.00, 125.00),
-- Fila 16: Edu Center (ID 8)
(8, 8, 3, 3, 5, '2026-05-16', 2.00, 135.00),
-- Fila 17: HealthPlus (ID 9)
(9, 9, 5, 4, 4, '2026-05-17', 4.00, 400.00),
-- Fila 18: HealthPlus  (ID 9)
(9, 9, 5, 4, 4, '2026-05-18', 5.00, 430.00),
-- Fila 19: MegaFoods (ID 10)
(10, 10, 4, 5, 2, '2026-05-19', 3.00, 220.00),
-- Fila 20: Mega Foods -> MegaFoods (ID 10)
(10, 10, 4, 5, 3, '2026-05-20', 4.00, 260.00);