CREATE DATABASE IF NOT EXISTS olist_ecommerce;
USE olist_ecommerce;

-- 1. Customers
CREATE TABLE IF NOT EXISTS olist_customers (
    customer_id VARCHAR(50) PRIMARY KEY,
    customer_unique_id VARCHAR(50) NOT NULL,
    customer_zip_code_prefix INT NOT NULL,
    customer_city VARCHAR(100),
    customer_state VARCHAR(5)
);

-- 2. Sellers
CREATE TABLE IF NOT EXISTS olist_sellers (
    seller_id VARCHAR(50) PRIMARY KEY,
    seller_zip_code_prefix INT NOT NULL,
    seller_city VARCHAR(100),
    seller_state VARCHAR(5)
);

-- 3. Products (Reverted back to INT)
CREATE TABLE IF NOT EXISTS olist_products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_category_name VARCHAR(100),
    product_name_length INT,
    product_description_length INT,
    product_photos_qty INT,
    product_weight_g INT,
    product_length_cm INT,
    product_height_cm INT,
    product_width_cm INT
);

-- 4. Product Category Translation
CREATE TABLE IF NOT EXISTS product_category_translation (
    product_category_name VARCHAR(100) PRIMARY KEY,
    product_category_name_english VARCHAR(100)
);

-- 5. Orders
CREATE TABLE IF NOT EXISTS olist_orders (
    order_id VARCHAR(50) PRIMARY KEY,
    customer_id VARCHAR(50) NOT NULL,
    order_status VARCHAR(20),
    order_purchase_timestamp DATETIME,
    order_approved_at DATETIME,
    order_delivered_carrier_date DATETIME,
    order_delivered_customer_date DATETIME,
    order_estimated_delivery_date DATETIME,
    FOREIGN KEY (customer_id) REFERENCES olist_customers(customer_id)
);

-- 6. Order Items
CREATE TABLE IF NOT EXISTS olist_order_items (
    order_id VARCHAR(50),
    order_item_id INT,
    product_id VARCHAR(50),
    seller_id VARCHAR(50),
    shipping_limit_date DATETIME,
    price DECIMAL(10,2),
    freight_value DECIMAL(10,2),
    PRIMARY KEY (order_id, order_item_id),
    FOREIGN KEY (order_id) REFERENCES olist_orders(order_id),
    FOREIGN KEY (product_id) REFERENCES olist_products(product_id),
    FOREIGN KEY (seller_id) REFERENCES olist_sellers(seller_id)
);

-- 7. Order Payments
CREATE TABLE IF NOT EXISTS olist_order_payments (
    order_id VARCHAR(50),
    payment_sequential INT,
    payment_type VARCHAR(30),
    payment_installments INT,
    payment_value DECIMAL(10,2),
    PRIMARY KEY (order_id, payment_sequential),
    FOREIGN KEY (order_id) REFERENCES olist_orders(order_id)
);

-- 8. Order Reviews
CREATE TABLE IF NOT EXISTS olist_order_reviews (
    review_id VARCHAR(50),
    order_id VARCHAR(50),
    review_score INT,
    review_comment_title TEXT,
    review_comment_message TEXT,
    review_creation_date DATETIME,
    review_answer_timestamp DATETIME,
    PRIMARY KEY (review_id, order_id),
    FOREIGN KEY (order_id) REFERENCES olist_orders(order_id)
);

-- 9. Geolocation
CREATE TABLE IF NOT EXISTS olist_geolocation (
    geolocation_zip_code_prefix INT,
    geolocation_lat DECIMAL(10,8),
    geolocation_lng DECIMAL(11,8),
    geolocation_city VARCHAR(100),
    geolocation_state VARCHAR(5)
);