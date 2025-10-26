use salesreport;
-- indexs 
CREATE INDEX idx_customer_id ON Orders(CustomerID);
CREATE INDEX idx_product_id ON OrderItems(ProductID);
CREATE INDEX idx_order_date ON Orders(OrderDate);
CREATE INDEX idx_category_id ON Products(CategoryID);
