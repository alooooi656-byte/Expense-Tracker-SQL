use company;
INSERT INTO expenses
values 
(1, 'وجبة غداء', 45.50, '2026-08-26', 1),
(2, 'بنزين سيارة', 60.00, '2026-08-25', 2),
(3, 'فاتورة الإنترنت', 250.00, '2026-08-20', 3),
(4, 'قهوة وسناك', 22.00, '2026-08-26', 1),
(5, 'سينما', 75.00, '2026-08-22', 4);

SELECT categories.category_name, SUM(expenses.amount) AS total_spent
FROM expenses
JOIN categories ON expenses.cat_id = categories.category_id
GROUP BY categories.category_name;