1. Cantidad de órdenes atendidas por técnico
Esta consulta agrupa las órdenes de trabajo por técnico para evaluar la carga laboral individual.

SELECT 
    t.technicianID,
    t.Name AS nombre_tecnico,
    COUNT(i.workOrder) AS cantidad_ordenes
FROM technician t
LEFT JOIN invoice i ON t.technicianID = i.fk_technician
GROUP BY t.technicianID, t.Name
ORDER BY cantidad_ordenes DESC;

2. Historial de servicios realizados por ciudad
Identifica el volumen de servicios por ubicación geográfica utilizando la tabla intermedia city_branch o directamente la ciudad en la factura. Dado que invoice tiene fk_city, usamos esa relación directa.

SELECT 
    c.cityID,
    c.Name AS nombre_ciudad,
    COUNT(i.workOrder) AS total_servicios
FROM City c
LEFT JOIN invoice i ON c.cityID = i.fk_city
GROUP BY c.cityID, c.Name
ORDER BY total_servicios DESC;

3. Total de servicios realizados por tipo de servicio
Para obtener el tipo de servicio, debemos unir invoice con equipament, luego con category_services y finalmente con servicesType.

SELECT 
    st.servicesTypeID,
    st.Name AS tipo_servicio,
    COUNT(i.workOrder) AS cantidad_servicios
FROM servicesType st
JOIN category_services cs ON st.servicesTypeID = cs.servicesTypeID
JOIN equipament e ON cs.categoryID = e.fk_category
JOIN invoice i ON e.equipamentID = i.fk_equipament
GROUP BY st.servicesTypeID, st.Name
ORDER BY cantidad_servicios DESC;

4. Equipos con mayor cantidad de mantenimientos
Ranking de equipos específicos que más han requerido intervención técnica.

SELECT 
    e.equipamentID,
    e.Name AS nombre_equipo,
    COUNT(i.workOrder) AS cantidad_mantenimientos
FROM equipament e
JOIN invoice i ON e.equipamentID = i.fk_equipament
GROUP BY e.equipamentID, e.Name
ORDER BY cantidad_mantenimientos DESC;

5. Clientes con mayor número de órdenes de servicio
Identifica a los clientes más frecuentes para estrategias de fidelización.

SELECT 
    cl.clientID,
    cl.Name || ' ' || cl.apellido AS nombre_completo,
    COUNT(i.workOrder) AS total_ordenes
FROM client cl
JOIN invoice i ON cl.clientID = i.fk_client
GROUP BY cl.clientID, cl.Name, cl.apellido
ORDER BY total_ordenes DESC;

6. Cantidad de órdenes gestionadas por sede
Asumiendo que "sede" se refiere a la sucursal (branch), necesitamos unir invoice con city_branch para llegar a la tabla branch, ya que la factura tiene la ciudad pero la relación ciudad-sucursal está en la tabla intermedia.

Nota: Esta consulta asume que la ciudad en la factura es suficiente para vincularla a la sucursal operativa en esa ciudad.

SELECT 
    b.branchID,
    b.Name AS nombre_sede,
    COUNT(i.workOrder) AS carga_operativa
FROM branch b
JOIN city_branch cb ON b.branchID = cb.branchID
JOIN invoice i ON cb.cityID = i.fk_city
GROUP BY b.branchID, b.Name
ORDER BY carga_operativa DESC;