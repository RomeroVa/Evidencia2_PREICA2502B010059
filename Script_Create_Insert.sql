-- Crear base de datos
CREATE DATABASE proyectos_informaticos;
USE proyectos_informaticos;

-- Crear tabla DOCENTES
CREATE TABLE DOCENTES (
	docente_id INT PRIMARY KEY AUTO_INCREMENT,
	numero_documento BIGINT (10) NOT NULL,
	nombres VARCHAR (200) NOT NULL,
	titulo_profesional VARCHAR (150),
	anios_experiencia INT (2),
	direccion VARCHAR (200),
	tipo_docente VARCHAR (10)
);

-- Crear tabla PROYECTOS
CREATE TABLE PROYECTOS (
	proyecto_id INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR (200) NOT NULL,
	descripcion VARCHAR (250) NOT NULL,
	fecha_inicio DATE NOT NULL,
	fecha_final DATE NOT NULL,
	presupuesto DECIMAL (10,2),
	horas DECIMAL (10,2)
);

-- Inserción de 7 registros para la tabla DOCENTES
INSERT INTO DOCENTES (numero_documento, nombres, titulo_profesional, anios_experiencia, direccion, tipo_docente) VALUES
(1020304050, 'Ana María Pérez', 'Doctora en Matemáticas', 15, 'Calle 10 # 5 - 20', 'Titular'),
(2030405060, 'Juan Carlos López', 'Magíster en Física', 10, 'Avenida 20 # 15 - 30', 'Asociado'),
(3040506070, 'Sofía García', 'Licenciada en Literatura', 8, 'Carrera 5 # 10 - 50', 'Auxiliar'),
(4050607080, 'Pedro Ramírez', 'Ingeniero de Sistemas', 20, 'Calle 30 # 25 - 10', 'Titular'),
(5060708090, 'Laura Fernández', 'Arquitecta', 12, 'Avenida 40 # 35 - 45', 'Asociado'),
(6070809010, 'Diego Castro', 'Contador Público', 7, 'Carrera 15 # 50 - 60', 'Auxiliar'),
(7080901020, 'Valeria Soto', 'Abogada', 18, 'Calle 50 # 5 - 75', 'Titular');

-- Inserción de 7 registros para la tabla PROYECTOS
INSERT INTO PROYECTOS (nombre, descripcion, fecha_inicio, fecha_final, presupuesto, horas) VALUES
('Investigación Energías Renovables', 'Estudio sobre la eficiencia de paneles solares en zonas tropicales.', '2023-01-15', '2024-06-30', 250000.00, 500.50),
('Desarrollo de Software Educativo', 'Creación de una plataforma interactiva para el aprendizaje de matemáticas.', '2023-03-01', '2024-12-15', 150000.00, 750.00),
('Análisis de Tendencias Literarias', 'Análisis de los géneros literarios más populares en los últimos 5 años.', '2023-05-10', '2024-08-20', 80000.00, 300.25),
('Optimización de Redes de Datos', 'Mejora de la infraestructura de red para aumentar la velocidad y seguridad.', '2023-07-20', '2024-04-10', 300000.00, 600.75),
('Diseño de Viviendas Sostenibles', 'Creación de modelos de casas ecológicas con materiales reciclados.', '2023-09-05', '2024-11-01', 180000.00, 450.00),
('Auditoría Financiera Integral', 'Revisión completa de las finanzas de una empresa para detectar irregularidades.', '2023-11-12', '2024-03-31', 100000.00, 200.50),
('Estudio de Mercado de Abogados', 'Investigación sobre la demanda de servicios jurídicos en la región.', '2024-01-25', '2024-09-15', 95000.00, 280.00);
