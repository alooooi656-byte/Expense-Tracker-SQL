use company;
CREATE TABLE expenses (
    expense_id INT PRIMARY KEY,
    expense_title VARCHAR(100) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    expense_date DATE,
    cat_id INT,
    foreign key (cat_id ) references categories (category_id) 
);

