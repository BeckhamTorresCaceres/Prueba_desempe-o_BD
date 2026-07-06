# Prueba_desempe-o_BD
# Service Order Database

## 1. What is this?
I built this database to manage technical service orders. It tracks **who** (client), **where** (city/branch), **what** (equipment), and **who fixed it** (technician). Its main purpose is to store service history and generate reports to improve our work distribution.

## 2. Tools Used
*   **Database:** PostgreSQL

## 3. How I Organized the Data
I separated the information into logical tables to avoid repeating data:
*   **People & Places:** Tables for `client`, `technician`, `branch`, and `City`.
*   **Items & Services:** Tables for `equipament`, `category`, and `servicesType`.
*   **The Action:** The `invoice` table is where everything comes together to record a specific job done (date, cost, hours).
*   **Connections:** I used extra tables (`city_branch`, `category_services`) only to link related items correctly.

## 5. How to Run It
You need PostgreSQL installed. Then, just run these two steps:

**Step 1: Create the structure**
Copy the code from my `schema.sql` file (the `CREATE TABLE` parts) and run it in your database tool. This creates all the empty tables.

**Step 2: Add data**
Copy the `INSERT` statements from my `data.sql` file and run them.
*Note: Add data in this order: Cities/Branches first, then Clients/Technicians/Equipment, and finally the Invoices.*

## 6. The Reports I Created
I wrote 6 simple queries to answer important business questions:

1.  **Work per Technician:** Counts how many jobs each technician has done.
2.  **Jobs per City:** Shows which cities request the most service.
3.  **Popular Services:** Tells us which types of service are requested most often.
4.  **Problematic Equipment:** Lists the specific machines that break down the most.
5.  **Top Clients:** Identifies our most frequent customers.
6.  **Work per Branch:** Shows which office location is the busiest.   