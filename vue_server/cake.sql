
SET NAMES UTF8;

DROP DATABASE IF EXISTS cake;

CREATE DATABASE cake CHARSET=UTF8;

CREATE DATABASE cake;

USE cake;
/*用户表*/
CREATE TABLE cake_user(
    id      INT PRIMARY KEY AUTO_INCREMENT,
    uid     INT,
    uname   VARCHAR(50),
    upwd    VARCHAR(32),
    email   VARCHAR(32),
    phone   VARCHAR(32),
    user_name   VARCHAR(32)
);
/*商品类别表*/
CREATE TABLE cake_family(
    fid     INT PRIMARY KEY AUTO_INCREMENT,
    fname   VARCHAR(32)
);
/*商品详情表*/
CREATE TABLE cake_product(
    pid         INT PRIMARY KEY AUTO_INCREMENT,
    fid         INT,
    title       VARCHAR(128),
    subtitle    VARCHAR(128),
    price       DECIMAL(10,2),
    detail      VARCHAR(128),
    spec        VARCHAR(64),
    label       VARCHAR(32),
    sweet       VARCHAR(32)
);
/*商品标签类型表*/
CREATE TABLE cake_product_label(
    label_id INT PRIMARY KEY AUTO_INCREMENT,
    label_name      VARCHAR(32),
);
/*商品详情图片表*/
CREATE TABLE cake_product_pic(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    cake_id     INT,
    md          VARCHAR(128),
    lg          VARCHAR(128)
);

/*用户购物车表*/
CREATE TABLE cake_shopping_cart(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    lid INT,
    uid INT,
    count INT,
    lname VARCHAR(255),
    price DECIMAL(10,2)
);

