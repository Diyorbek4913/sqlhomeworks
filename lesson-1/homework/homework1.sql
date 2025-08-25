1. Quyidagi tushunchalarni izohlang:

Ma’lumot (Data) – qayta ishlanmagan, tartibga solinmagan fakt va raqamlar (masalan: 25, Ali, 2025).

Ma’lumotlar bazasi (Database) – ma’lumotlarni elektron ko‘rinishda saqlash va boshqarish tizimi.

Aloqador ma’lumotlar bazasi (Relational Database) – ma’lumotlar jadval (table) shaklida qator (row) va ustunlarda (column) saqlanadigan hamda ular o‘zaro bog‘lanadigan ma’lumotlar bazasi turi.

Jadval (Table) – ma’lumotlarni saqlash uchun ishlatiladigan tuzilma, unda qatorlar (yozuvlar) va ustunlar (maydonlar) bo‘ladi.

2. SQL Server’ning 5 ta asosiy xususiyati:

Yuqori darajadagi xavfsizlik (autentifikatsiya va shifrlash).

Katta hajmdagi ma’lumotlarni tez va samarali boshqarish (indekslar, so‘rovlarni optimallashtirish).

Zaxiralash (backup) va tiklash (restore) imkoniyati.

SSIS, SSRS, SSAS kabi qo‘shimcha xizmatlar (Integratsiya, Hisobot, Tahlil).

Turli xil ma’lumot turlarini qo‘llab-quvvatlaydi (relatsion, JSON, XML).

3. SQL Server’ga ulanadigan autentifikatsiya turlari:

Windows Authentication Mode – Windows foydalanuvchi hisoblari orqali ulanish.

SQL Server Authentication Mode – SQL Server’da yaratilgan login va parol orqali ulanish.
(Mixed Mode – ikkisini ham ishlatish varianti mavjud).
  Medium
  1. CREATE DATABASE SchoolDB;
GO
2. USE SchoolDB;
GO

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
3. SQL Server, SSMS va SQL farqlari:

SQL Server – Microsoft ishlab chiqqan ma’lumotlar bazasini boshqarish tizimi (DBMS).

SSMS (SQL Server Management Studio) – SQL Server bilan ishlash uchun grafik interfeysli dastur. Unda ma’lumotlar bazasini yaratish, so‘rov yozish, zaxira olish va boshqa amallarni qilish mumkin.

SQL (Structured Query Language) – ma’lumotlar bilan ishlash uchun so‘rov tili. (Masalan: SELECT, INSERT, UPDATE).
  Hard
1. SELECT * FROM Students;-- dql
select * from Students
  --dml
update Students set score = 21 where student_id = 1
delete from Students where student_id = 1
--ddl
ALTER TABLE Students ADD Gender VARCHAR(10);
DROP TABLE Students;
--dcl
GRANT SELECT ON Students TO User1;
REVOKE SELECT ON Students FROM User1;
--tcl
BEGIN TRANSACTION;
UPDATE Students SET Age = 22 WHERE StudentID = 1;
COMMIT; -- o‘zgarishlarni saqlash
ROLLBACK; -- xatolik bo‘lsa bekor qilish
2. INSERT INTO Students (StudentID, Name, Age) VALUES (1, 'Ali', 20);
INSERT INTO Students (StudentID, Name, Age) VALUES (2, 'Gulnoza', 21);
INSERT INTO Students (StudentID, Name, Age) VALUES (3, 'Javlon', 22);
3.3.1GitHub linkidan AdventureWorksDW2022.bak faylini yuklab oling:
3.2Yuklab olingan faylni quyidagi papkaga joylashtiring:
C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup
(Papka sizda biroz boshqacha bo‘lishi mumkin).
3.3 SSMS (SQL Server Management Studio) ni oching.
3.4 Object Explorer’da Databases ustida sichqonchaning o‘ng tugmasini bosing → Restore Database… ni tanlang.
3.5 Source → Device bo‘limidan .bak faylni ko‘rsating.
3.6 Destination bo‘limida AdventureWorksDW2022 avtomatik chiqadi (o‘zgartirmasangiz ham bo‘ladi).
3.7 Files bo‘limida joylashuvni tekshiring (odatda default bo‘ladi).
3.8 Options bo‘limidan Overwrite the existing database belgisini qo‘ysangiz, eski baza ustidan yozadi.
3.9 OK tugmasini bosing → tiklash jarayoni tugaydi.
3.10 Endi Object Explorer’dagi Databases bo‘limida AdventureWorksDW2022 bazasi paydo bo‘ladi.
