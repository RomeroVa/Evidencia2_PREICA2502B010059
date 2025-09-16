-- Creación de tabla copia_actualizados_proyectos
USE proyectos_informaticos;
CREATE TABLE IF NOT EXISTS copia_actualizados_proyectos (
	log_id INT PRIMARY KEY AUTO_INCREMENT,
    proyecto_id INT,
	nombre VARCHAR(200),
	descripcion VARCHAR(250),
	presupuesto DECIMAL(10,2),
	horas DECIMAL(10,2),
    fecha_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear tabla de copia para registros eliminados
USE proyectos_informaticos;
CREATE TABLE IF NOT EXISTS copia_eliminados_proyectos (
	log_id INT PRIMARY KEY AUTO_INCREMENT,
    proyecto_id INT,
	nombre VARCHAR(200),
	descripcion VARCHAR(250),
	presupuesto DECIMAL(10,2),
	horas DECIMAL(10,2),
    fecha_eliminacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Funcion para calcular el costo por hora de un proyecto
-- Tomando como argumento el presupesto y las horas.
DELIMITER //
CREATE FUNCTION calcular_costo_por_hora(presupuesto DECIMAL(10,2), horas DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE costo_por_hora DECIMAL(10,2);
    -- Evitar división por cero
    IF horas <= 0 THEN
        SET costo_por_hora = 0.00;
    ELSE
        SET costo_por_hora = presupuesto / horas;
    END IF;
    RETURN costo_por_hora;
END//
DELIMITER ;
