-- ============================================================
--   Smart Mini E-Commerce System
--   Milestone 4 — DDL Scripts (CREATE TABLE Statements)
--   Student: Abdul Hameed & Numan Ali | BSAI (B)
--   Database Systems Lab
-- ============================================================

-- Drop database if exists and recreate
DROP DATABASE IF EXISTS ecommerce_db;
CREATE DATABASE ecommerce_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ecommerce_db;

-- ============================================================
-- TABLE 1: categories
-- (Created first — referenced by products as FK)
-- ============================================================
CREATE TABLE categories (
    category_id   INT            NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(100)   NOT NULL,

    -- Constraints
    CONSTRAINT pk_categories PRIMARY KEY (category_id),
    CONSTRAINT uq_category_name UNIQUE (category_name)
);

-- Index on category_name for fast search
CREATE INDEX idx_category_name ON categories(category_name);

-- ============================================================
-- TABLE 2: users
-- ============================================================
CREATE TABLE users (
    user_id    INT          NOT NULL AUTO_INCREMENT,
    name       VARCHAR(100) NOT NULL,
    email      VARCHAR(100) NOT NULL,
    password   VARCHAR(255) NOT NULL,
    role       ENUM('admin','customer') NOT NULL DEFAULT 'customer',
    created_at TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP,

    -- Constraints
    CONSTRAINT pk_users      PRIMARY KEY (user_id),
    CONSTRAINT uq_user_email UNIQUE (email),
    CONSTRAINT chk_user_name CHECK (CHAR_LENGTH(name) >= 2)
);

-- Index on email for fast login queries
CREATE INDEX idx_user_email ON users(email);
CREATE INDEX idx_user_role  ON users(role);

-- ============================================================
-- TABLE 3: products
-- (References categories)
-- ============================================================
CREATE TABLE products (
    product_id  INT            NOT NULL AUTO_INCREMENT,
    name        VARCHAR(150)   NOT NULL,
    price       DECIMAL(10,2)  NOT NULL,
    stock       INT            NOT NULL DEFAULT 0,
    category_id INT            NOT NULL,
    image       VARCHAR(255)       NULL,
    created_at  TIMESTAMP      NOT NULL DEFAULT CURRENT_TIMESTAMP,

    -- Constraints
    CONSTRAINT pk_products        PRIMARY KEY (product_id),
    CONSTRAINT fk_product_category FOREIGN KEY (category_id)
        REFERENCES categories(category_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_product_price CHECK (price > 0),
    CONSTRAINT chk_product_stock CHECK (stock >= 0)
);

-- Indexes on FK and frequently queried columns
CREATE INDEX idx_product_category ON products(category_id);
CREATE INDEX idx_product_name     ON products(name);
CREATE INDEX idx_product_price    ON products(price);

-- ============================================================
-- TABLE 4: cart
-- (References users and products)
-- ============================================================
CREATE TABLE cart (
    cart_id    INT NOT NULL AUTO_INCREMENT,
    user_id    INT NOT NULL,
    product_id INT NOT NULL,
    quantity   INT NOT NULL DEFAULT 1,

    -- Constraints
    CONSTRAINT pk_cart            PRIMARY KEY (cart_id),
    CONSTRAINT fk_cart_user       FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_cart_product    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT uq_cart_user_product UNIQUE (user_id, product_id),
    CONSTRAINT chk_cart_quantity    CHECK (quantity > 0)
);

-- Indexes on FK columns
CREATE INDEX idx_cart_user    ON cart(user_id);
CREATE INDEX idx_cart_product ON cart(product_id);

-- ============================================================
-- TABLE 5: orders
-- (References users)
-- ============================================================
CREATE TABLE orders (
    order_id    INT           NOT NULL AUTO_INCREMENT,
    user_id     INT           NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status      ENUM('Pending','Shipped','Delivered','Cancelled')
                              NOT NULL DEFAULT 'Pending',
    order_date  TIMESTAMP     NOT NULL DEFAULT CURRENT_TIMESTAMP,

    -- Constraints
    CONSTRAINT pk_orders          PRIMARY KEY (order_id),
    CONSTRAINT fk_order_user      FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_order_price    CHECK (total_price > 0)
);

-- Indexes on FK and status for filtering
CREATE INDEX idx_order_user   ON orders(user_id);
CREATE INDEX idx_order_status ON orders(status);
CREATE INDEX idx_order_date   ON orders(order_date);

-- ============================================================
-- TABLE 6: order_items
-- (References orders and products)
-- ============================================================
CREATE TABLE order_items (
    item_id    INT           NOT NULL AUTO_INCREMENT,
    order_id   INT           NOT NULL,
    product_id INT           NOT NULL,
    quantity   INT           NOT NULL,
    price      DECIMAL(10,2) NOT NULL,

    -- Constraints
    CONSTRAINT pk_order_items       PRIMARY KEY (item_id),
    CONSTRAINT fk_item_order        FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_item_product      FOREIGN KEY (product_id)
        REFERENCES products(product_id)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT chk_item_quantity    CHECK (quantity > 0),
    CONSTRAINT chk_item_price       CHECK (price > 0)
);

-- Indexes on FK columns
CREATE INDEX idx_item_order   ON order_items(order_id);
CREATE INDEX idx_item_product ON order_items(product_id);

-- ============================================================
-- VERIFICATION QUERY
-- Show all created tables
-- ============================================================
SHOW TABLES;

-- Show structure of each table
DESCRIBE categories;
DESCRIBE users;
DESCRIBE products;
DESCRIBE cart;
DESCRIBE orders;
DESCRIBE order_items;
