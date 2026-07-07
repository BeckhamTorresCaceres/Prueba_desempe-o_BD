-- -------------------------------------------------------------------------
-- CONSULTA 1: Cantidad de órdenes atendidas por técnico
-- -------------------------------------------------------------------------
SELECT 
    t.ID AS technician_id,
    t.NAME AS technician_name,
    t.lastName AS technician_lastname,
    COUNT(i.WorkOrder) AS total_orders
FROM INVOICE i
JOIN TECHNICIAN t ON i.FK_TECHNICIAN = t.ID
GROUP BY t.ID, t.NAME, t.lastName
ORDER BY total_orders DESC;


-- -------------------------------------------------------------------------
-- CONSULTA 2: Historial de servicios realizados por ciudad
-- -------------------------------------------------------------------------
SELECT 
    c.ID AS city_id,
    c.NAME AS city_name,
    COUNT(i.WorkOrder) AS total_services
FROM INVOICE i
JOIN BRANCH b ON i.FK_BRANCH = b.ID
JOIN CITY c ON b.FK_CITY = c.ID
GROUP BY c.ID, c.NAME
ORDER BY total_services DESC;


-- -------------------------------------------------------------------------
-- CONSULTA 3: Total de servicios realizados por tipo de servicio
-- -------------------------------------------------------------------------
SELECT 
    st.ID AS service_type_id,
    st.NAME AS service_type_name,
    COUNT(i.WorkOrder) AS total_services
FROM INVOICE i
JOIN SERVICETYPE st ON i.FK_SERVICETYPE = st.ID
GROUP BY st.ID, st.NAME
ORDER BY total_services DESC;


-- -------------------------------------------------------------------------
-- CONSULTA 4: Equipos con mayor cantidad de mantenimientos
-- -------------------------------------------------------------------------
SELECT 
    e.ID AS equipment_id,
    e.NAME AS equipment_name,
    COUNT(i.WorkOrder) AS maintenance_frequency
FROM INVOICE i
JOIN EQUIPAMENT e ON i.FK_EQUIPAMENT = e.ID
GROUP BY e.ID, e.NAME
ORDER BY maintenance_frequency DESC;


-- -------------------------------------------------------------------------
-- CONSULTA 5: Clientes con mayor número de órdenes de servicio
-- -------------------------------------------------------------------------
SELECT 
    cl.ID AS client_id,
    cl.NAME AS client_name,
    COUNT(i.WorkOrder) AS total_orders
FROM INVOICE i
JOIN CLIENT cl ON i.FK_CLIENT = cl.ID
GROUP BY cl.ID, cl.NAME
ORDER BY total_orders DESC;


-- -------------------------------------------------------------------------
-- CONSULTA 6: Cantidad de órdenes gestionadas por sede (Sucursal)
-- -------------------------------------------------------------------------
SELECT 
    b.ID AS branch_id,
    b.NAME AS branch_name,
    COUNT(i.WorkOrder) AS operational_load
FROM INVOICE i
JOIN BRANCH b ON i.FK_BRANCH = b.ID
GROUP BY b.ID, b.NAME
ORDER BY operational_load DESC;