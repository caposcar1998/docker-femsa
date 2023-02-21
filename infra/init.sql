CREATE DATABASE IF NOT EXISTS `femsa`;
use `femsa`;

CREATE TABLE IF NOT EXISTS users(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Rol    VARCHAR(20),
    CreatedAt       TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);