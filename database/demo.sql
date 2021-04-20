CREATE DATABASE `demodb` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
use demodb;
CREATE TABLE IF NOT EXISTS category (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE,
  status tinyint(1) DEFAULT '1' COMMENT '1 is public, 0 is hidden',
  priority tinyint DEFAULT'0',
  created_at date DEFAULT current_timestamp(),
  updated_at date DEFAULT NOW()
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS banner (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  image VARCHAR(255) NOT NULL,
  link VARCHAR(255) DEFAULT '#',
  price float(9,3) NOT NULL,
  promotion_price float(9,3) DEFAULT '0',
  description TEXT,
  image_list TEXT,
  status tinyint(1) DEFAULT '1' COMMENT '1 is public, 0 is hidden',
  priority tinyint DEFAULT'0',
  created_at date DEFAULT current_timestamp(),
  updated_at date DEFAULT NOW()
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS porducts (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  image VARCHAR(255) NOT NULL,
  link VARCHAR(255) DEFAULT '#',
  description VARCHAR(255),
  status tinyint(1) DEFAULT '1' COMMENT '1 is public, 0 is hidden',
  category_id int NOT NULL,
  created_at date DEFAULT current_timestamp(),
  updated_at date DEFAULT NOW(),
  FOREIGN KEY (category_id)REFERENCES category (id)
) ENGINE = InnoDB;

