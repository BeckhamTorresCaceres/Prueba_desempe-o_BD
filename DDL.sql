CREATE TABLE branch (
    branchID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE City (
    cityID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
);

CREATE TABLE client (
    clientID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL
);

CREATE TABLE technician (
    technicianID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE servicesType (
    servicesTypeID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL
);

CREATE TABLE category (
    categoryID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
);

CREATE TABLE equipament (
    equipamentID SERIAL PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    fk_category INTEGER NOT NULL,
    CONSTRAINT fk_equipament_category FOREIGN KEY (fk_category)
        REFERENCES category(categoryID) ON DELETE RESTRICT
);
CREATE TABLE category_services (
    categoryID INTEGER NOT NULL,
    servicesTypeID INTEGER NOT NULL,
    PRIMARY KEY (categoryID, servicesTypeID),
    CONSTRAINT fk_cat_serv_cat FOREIGN KEY (categoryID) REFERENCES category(categoryID),
    CONSTRAINT fk_cat_serv_srv FOREIGN KEY (servicesTypeID) REFERENCES servicesType(servicesTypeID)
);
CREATE TABLE city_branch (
    cityID INTEGER NOT NULL,
    branchID INTEGER NOT NULL,
    PRIMARY KEY (cityID, branchID),
    CONSTRAINT fk_cat_serv_cat FOREIGN KEY (cityID) REFERENCES city(cityID),
    CONSTRAINT fk_cat_serv_srv FOREIGN KEY (branchID) REFERENCES branch(branchID)
);

CREATE TABLE invoice (
    workOrder SERIAL PRIMARY KEY,
    fk_client INTEGER NOT NULL,
    fk_city INTEGER NOT NULL,
    fk_technician INTEGER NOT NULL,
    fk_equipament INTEGER NOT NULL,
    serviceDate DATE NOT NULL,
    hours INTERVAL,
    cost DECIMAL,
    CONSTRAINT fk_invoice_client FOREIGN KEY (fk_client)
        REFERENCES client(clientID),
    CONSTRAINT fk_invoice_city FOREIGN KEY (fk_city)
        REFERENCES City(cityID),
    CONSTRAINT fk_invoice_technician FOREIGN KEY (fk_technician)
        REFERENCES technician(technicianID),
    CONSTRAINT fk_invoice_equipament FOREIGN KEY (fk_equipament)
        REFERENCES equipament(equipamentID)
);