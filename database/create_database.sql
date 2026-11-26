CREATE DATABASE IF NOT EXISTS echoes_of_the_shadow;

USE echoes_of_the_shadow;
-- ==========================================
-- 1. PERFIL
-- ==========================================

CREATE TABLE Perfil (
    id_perfil INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- ==========================================
-- 2. CATEGORIA
-- ==========================================

CREATE TABLE Categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT
);

-- ==========================================
-- 3. LOGRO
-- ==========================================

CREATE TABLE Logro (
    id_logro INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT NOT NULL,
    codigo VARCHAR(50) NOT NULL UNIQUE,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    objetivo INT NOT NULL DEFAULT 1,
    recompensa_ecos INT NOT NULL DEFAULT 0,
    activo BOOLEAN NOT NULL DEFAULT TRUE,

    FOREIGN KEY (id_categoria)
        REFERENCES Categoria(id_categoria),

    CHECK (objetivo > 0),
    CHECK (recompensa_ecos >= 0)
);

-- ==========================================
-- 4. PROGRESO_LOGRO
-- ==========================================

CREATE TABLE Progreso_Logro (
    id_progreso INT AUTO_INCREMENT PRIMARY KEY,
    id_perfil INT NOT NULL,
    id_logro INT NOT NULL,
    progreso_actual INT NOT NULL DEFAULT 0,
    fecha_actualizacion DATETIME DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (id_perfil)
        REFERENCES Perfil(id_perfil)
        ON DELETE CASCADE,

    FOREIGN KEY (id_logro)
        REFERENCES Logro(id_logro)
        ON DELETE CASCADE,

    UNIQUE (id_perfil, id_logro),
    CHECK (progreso_actual >= 0)
);

-- ==========================================
-- 5. LOGRO_DESBLOQUEADO
-- ==========================================

CREATE TABLE Logro_Desbloqueado (
    id_desbloqueo INT AUTO_INCREMENT PRIMARY KEY,
    id_perfil INT NOT NULL,
    id_logro INT NOT NULL,
    fecha_desbloqueo DATETIME DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (id_perfil)
        REFERENCES Perfil(id_perfil)
        ON DELETE CASCADE,

    FOREIGN KEY (id_logro)
        REFERENCES Logro(id_logro)
        ON DELETE CASCADE,

    UNIQUE (id_perfil, id_logro)
);

-- ==========================================
-- 6. INDICES
-- ==========================================

CREATE INDEX idx_logro_categoria
ON Logro(id_categoria);

CREATE INDEX idx_progreso_perfil
ON Progreso_Logro(id_perfil);

CREATE INDEX idx_desbloqueado_perfil
ON Logro_Desbloqueado(id_perfil);
