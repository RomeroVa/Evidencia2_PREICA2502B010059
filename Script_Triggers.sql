-- Trigger para guardar una copia de los registros antes de su actualización
DELIMITER //
CREATE TRIGGER tr_before_update_proyectos
BEFORE UPDATE ON PROYECTOS
FOR EACH ROW
BEGIN
	INSERT INTO copia_actualizados_proyectos (proyecto_id, nombre, descripcion, presupuesto, horas)
	VALUES (OLD.proyecto_id, OLD.nombre, OLD.descripcion, OLD.presupuesto, OLD.horas);
END//
DELIMITER ;

-- Trigger para guardar una copia de los registros antes de su eliminación
DELIMITER //
CREATE TRIGGER tr_before_delete_proyectos
BEFORE DELETE ON PROYECTOS
FOR EACH ROW
BEGIN
	INSERT INTO copia_eliminados_proyectos (proyecto_id, nombre, descripcion, presupuesto, horas)
	VALUES (OLD.proyecto_id, OLD.nombre, OLD.descripcion, OLD.presupuesto, OLD.horas);
END//
DELIMITER ;

-- Actualizacion del campo presupuesto
-- Se guarda en la tabla de copia_actualizados
USE proyectos_informaticos;
UPDATE PROYECTOS SET presupuesto = 420000.00 WHERE proyecto_id = 4;
SELECT * FROM copia_actualizados_proyectos;

-- Eliminar una fila en la tabla proyecto
-- Se guarda en la tabla de copia_eliminados
USE proyectos_informaticos;
DELETE FROM PROYECTOS WHERE proyecto_id = 1;
SELECT * FROM copia_eliminados_proyectos;

-- Llamado de la función para calcular costo por hora del proyecto ID 4
SELECT calcular_costo_por_hora(420.000, 600.75);