-- database/init.sql

CREATE DATABASE IF NOT EXISTS nonamestore;
USE nonamestore;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image_url VARCHAR(512)
);

-- Seed Data (Productos de prueba para la vitrina del MVP)
INSERT INTO products (name, description, price, image_url) VALUES
('Teclado Mecánico RGB', 'Teclado mecánico con switches red, ideal para programar toda la noche sin molestar a nadie.', 89.99, 'https://images.unsplash.com/photo-1595225476474-87563907a212?w=500'),
('Ratón Ergonómico Inalámbrico', 'Ratón vertical diseñado para prevenir el síndrome del túnel carpiano en jornadas largas de DevOps.', 49.99, 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=500'),
('Monitor UltraWide 34"', 'Monitor curvo perfecto para tener múltiples terminales y el dashboard de Grafana abiertos a la vez.', 349.99, 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=500'),
('Auriculares con Cancelación de Ruido', 'Aíslate del ruido exterior y concéntrate al máximo en tus playbooks de Ansible.', 199.99, 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500'),
('Hub USB-C 8 en 1', 'Adaptador de aluminio con puertos HDMI, USB 3.0, Ethernet y passthrough de energía para tu Mac.', 29.99, 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=500'),
('Soporte Elevador para Laptop', 'Estructura ajustable de aluminio para mantener tu pantalla a la altura de tus ojos.', 39.99, 'https://images.unsplash.com/photo-1616353071588-709ea4917f99?w=500'),
('Cafetera Espresso Italiana', 'El verdadero combustible de un Ingeniero DevOps. Capacidad para 6 tazas de café espresso.', 24.99, 'https://images.unsplash.com/photo-1517701550927-30cf4ba1dba5?w=500');