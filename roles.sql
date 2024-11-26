--- Role: Administrador
----    Acceso completo con privilegios de escritura y lectura en todas las tablas.
CREATE ROLE administrador WITH LOGIN PASSWORD 'admin123';
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO administrador;

-- Role: Supervisor
----    Permisos de lectura y escritura en productos y movimientos de stock.
CREATE ROLE supervisor WITH LOGIN PASSWORD 'super123';
GRANT SELECT, INSERT, UPDATE ON productos, movimientos_stock TO supervisor;

--- Role: Analista
---     Acceso solo de lectura para todas las tablas.
CREATE ROLE analista WITH LOGIN PASSWORD 'analista123';
GRANT SELECT ON ALL TABLES IN SCHEMA public TO analista;