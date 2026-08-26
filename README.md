# 💰 Expense Tracker SQL Database

A lightweight, practical SQL database project designed to track personal daily expenses and generate automated spending reports by category. Built to master relational database concepts.

---

## 🚀 Features & Concepts Applied
- **Relational Database Design**: Implemented primary keys and **Foreign Keys** (`FK`) to maintain data integrity and establish relationships between tables.
- **Data Querying**: Used **SQL JOIN** to combine data across multiple tables for comprehensive viewing.
- **Data Aggregation**: Applied **GROUP BY** along with aggregate functions (`SUM`) to calculate total spending per category.

---

## 🗄️ Database Schema

The database consists of two main tables:
1. **`categories`**: Stores expense categories (e.g., Food, Transport, Bills, Entertainment).
2. **`expenses`**: Stores individual transactions linked to categories via a Foreign Key (`cat_id`).

---

## 💻 SQL Scripts

### 1. Schema & Data Insertion (`schema.sql`)
```sql
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

INSERT INTO categories (category_id, category_name) VALUES 
(1, 'طعام'),
(2, 'مواصلات'),
(3, 'فواتير'),
(4, 'ترفيه');

CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    expense_title VARCHAR(100) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    expense_date DATE,
    cat_id INT,
    FOREIGN KEY (cat_id) REFERENCES categories(category_id)
);

INSERT INTO expenses (expense_id, expense_title, amount, expense_date, cat_id) VALUES 
(1, 'وجبة غداء', 45.50, '2026-08-26', 1),
(2, 'بنزين سيارة', 60.00, '2026-08-25', 2),
(3, 'فاتورة الإنترنت', 250.00, '2026-08-20', 3),
(4, 'قهوة وسناك', 22.00, '2026-08-26', 1),
(5, 'سينما', 75.00, '2026-08-22', 4);
