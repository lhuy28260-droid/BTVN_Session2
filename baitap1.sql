DROP TABLE IF EXISTS Products;
CREATE TABLE Products (
    -- ID tự động tăng, đảm bảo tính duy nhất và hiệu suất tìm kiếm
    ProductID INT AUTO_INCREMENT PRIMARY KEY, 
    
    -- Giới hạn 150 ký tự (đủ cho tên dài nhất), bắt buộc nhập
    ProductName VARCHAR(150) NOT NULL,        
    
    -- Dùng DECIMAL đảm bảo chính xác 100%, 
    -- 15 chữ số tổng, 2 chữ số thập phân (phù hợp với VNĐ hoặc USD)
    Price DECIMAL(15, 2) NOT NULL DEFAULT 0,  
    
    -- Dùng VARCHAR thay cho TEXT để tăng tốc độ truy vấn 
    -- (giả định mô tả dưới 1000 ký tự)
    Description VARCHAR(1000),                
    
    -- Nên có ngày tạo để kế toán dễ đối soát theo thời gian
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

SELECT * FROM Products;