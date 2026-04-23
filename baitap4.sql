-- Đảm bảo bạn đã chọn database trước khi chạy (ví dụ database tên là ss3)
USE ss3;

DROP TABLE IF EXISTS USERS;

CREATE TABLE USERS (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    Phone INT, 
    user_email VARCHAR(100) UNIQUE NOT NULL,
    user_birthday DATE
);

-- Thay đổi kiểu dữ liệu sang VARCHAR
ALTER TABLE USERS 
MODIFY COLUMN Phone VARCHAR(15) NOT NULL;


-- Cập nhật lại dữ liệu: nối số '0' vào đầu
-- Chỉ áp dụng cho những số chưa bắt đầu bằng '0'
UPDATE USERS 
SET Phone = CONCAT('0', Phone)
WHERE Phone NOT LIKE '0%' 
  AND Phone IS NOT NULL;
  
SELECT * FROM USERS LIMIT 10;