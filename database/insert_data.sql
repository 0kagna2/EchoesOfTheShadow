
-- ==========================================
-- PERFILES
-- ==========================================

INSERT INTO Perfil (nombre) VALUES
('Alejandro'),
('Jugador2');

-- ==========================================
-- CATEGORIAS
-- ==========================================

INSERT INTO Categoria (nombre, descripcion) VALUES
('Combate', 'Logros relacionados con enemigos y combates.'),
('Exploracion', 'Logros relacionados con descubrir el mundo.'),
('Coleccionismo', 'Logros relacionados con conseguir objetos.'),
('Progresion', 'Logros relacionados con avanzar en la aventura.'),
('Especiales', 'Logros por realizar acciones especiales.');

-- ==========================================
-- LOGROS
-- ==========================================

INSERT INTO Logro
(id_categoria, codigo, nombre, descripcion, objetivo, recompensa_ecos)
VALUES

(1, 'PRIMERA_VICTORIA', 'Primera victoria',
 'Derrota a tu primer enemigo.', 1, 50),

(1, 'CAZADOR', 'Cazador de criaturas',
 'Derrota a 10 enemigos.', 10, 150),

(1, 'MATADOR_JEFES', 'Matador de jefes',
 'Derrota a 5 jefes finales.', 5, 500),

(2, 'PRIMERA_EXPLORACION', 'Un mundo desconocido',
 'Descubre tu primera zona.', 1, 50),

(2, 'EXPLORADOR', 'Explorador experimentado',
 'Descubre 5 zonas diferentes.', 5, 200),

(3, 'PRIMER_OBJETO', 'Coleccionista principiante',
 'Consigue tu primer objeto.', 1, 50),

(3, 'COLECCIONISTA', 'Gran coleccionista',
 'Consigue 20 objetos.', 20, 250),

(4, 'PRIMERA_MISION', 'El comienzo del viaje',
 'Completa tu primera misión.', 1, 75),

(4, 'GUERRERO_EXPERIMENTADO', 'Guerrero experimentado',
 'Alcanza el nivel 10.', 10, 300),

(5, 'SUPERVIVIENTE', 'Superviviente',
 'Derrota a un jefe sin morir durante el combate.', 1, 200);

-- ==========================================
-- PROGRESO DE ALEJANDRO
-- ==========================================

INSERT INTO Progreso_Logro
(id_perfil, id_logro, progreso_actual)
VALUES
(1, 1, 1),
(1, 2, 6),
(1, 3, 2),
(1, 4, 1),
(1, 5, 3),
(1, 6, 1),
(1, 7, 8),
(1, 8, 1),
(1, 9, 4),
(1, 10, 0);

-- ==========================================
-- PROGRESO DE JUGADOR 2
-- ==========================================

INSERT INTO Progreso_Logro
(id_perfil, id_logro, progreso_actual)
VALUES
(2, 1, 1),
(2, 2, 10),
(2, 3, 5),
(2, 4, 1),
(2, 5, 5),
(2, 6, 1),
(2, 7, 20),
(2, 8, 1),
(2, 9, 10),
(2, 10, 1);
