# 🛠️ Technical Support Order Management System

This project contains the relational design and the database to control the history of maintenance, installations and repairs of technological equipment of different corporate clients.

## 📊 Database Architecture

The design follows a **Star Model** architecture optimized for analytics, where the master tables (dimensions) feed into a central fact table called `INVOICE`.

* **Facts (Central):** `INVOICE` (Records hours, costs and dates of each work order).
* **Dimensions (Catalogs):** `CUSTOMER`, `TECHNICIAN`, `TYPE OF SERVICE`, `CATEGORY`, `BRANCH` and `CITY`.

---

## 🚀 How to Get Started

### 1. Prerequisites
* Have **PostgreSQL** installed (version 13 or higher recommended).
* A database manager such as **pgAdmin**, **DBeaver** or the psql console.

### 2. Steps to Assemble the Project

1. **Create the Tables:** Run your DDL script in order (first the standalone catalogs, then the hierarchies like branches and teams, and finally the `INVOICE` table).
2. **Populate the Catalogs:** Insert the master data of clients, technicians, cities, etc.
3. **Load History:** Executes the `INVOICE` insert block (numeric IDs cross and clean up inconsistencies from the original Excel automatically).

---

## 📈 Report Queries

The project includes a file called `queries.sql` with 6 key queries prepared to answer the specific needs of company leaders:

1. **Workload:** Number of orders attended to by each technician (Support Coordinator).
2. **Regional Expansion:** History of services organized by city (Regional Manager).
3. **Demand Analysis:** Most requested services by type of support (Operational Director).
4. **Hardware Quality:** Equipment that requires maintenance more frequently (Support Analyst).
5. **VIP Loyalty:** Customers with the highest number of orders generated (Commercial Director).
6. **Operational Load by Headquarters:** Flow of orders managed by each branch (Operations Manager).

---

## 🧹 Environment Maintenance (Reset)

If you need to completely empty the database to retest from scratch without breaking relationships or damaging the table structure, run the following command:

```sql
TRUNCATED TABLE
INVOICE, BRANCH, TEAM, CITY, CUSTOMER, TECHNICIAN, TYPE OF SERVICE, CATEGORY
RESET IDENTITY CASCADE;