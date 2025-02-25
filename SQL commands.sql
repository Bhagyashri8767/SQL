mysql> use company_db;
Database changed
mysql> create TABLE emp;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE emp (
    ->     id INT PRIMARY KEY,
    ->     name VARCHAR(50),
    ->     mobileno VARCHAR(15),
    ->     address VARCHAR(100),
    ->     salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> insert into emp(id,mobileno,address,salary) Values
    -> (1,8767220000,"america",30000.00),
    ->  (2,9747330000,"africa",40000.00),
    ->  (3,8366820000,"asia",50000.00);
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+----+------+------------+---------+----------+
| id | name | mobileno   | address | salary   |
+----+------+------------+---------+----------+
|  1 | NULL | 8767220000 | america | 30000.00 |
|  2 | NULL | 9747330000 | africa  | 40000.00 |
|  3 | NULL | 8366820000 | asia    | 50000.00 |
+----+------+------------+---------+----------+
3 rows in set (0.01 sec)

mysql> UPDATE emp SET salary = salary + 50000 WHERE id = 3;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM emp WHERE id = 1;
Query OK, 1 row affected (0.01 sec)