

CREATE TABLE `cargos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `editable` tinyint(1) DEFAULT '1' COMMENT 'si se puede modificar (IDs: de 1 hasta 5 NO PERMITIDO)',
  `activo` tinyint(1) DEFAULT '1',
  `nivel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




CREATE TABLE `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nro_legajo` int DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellido` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dni` int DEFAULT NULL,
  `cuil` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL COMMENT 'fecha de nacimiento',
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `id_cargo_fk` int DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




CREATE TABLE `eventos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT CURRENT_TIMESTAMP,
  `tabla` varchar(70) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_usuario_fk` int DEFAULT NULL,
  `observacion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




CREATE TABLE `menuitems` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `parent` int DEFAULT NULL,
  `icono` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_pantalla` int DEFAULT NULL,
  `orden` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;




CREATE TABLE `pantallas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(70) DEFAULT NULL,
  `ayuda` text,
  `activa` tinyint(1) DEFAULT NULL,
  `ruta` varchar(60) DEFAULT NULL,
  `nivel` varchar(30) DEFAULT 'Lista',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;




CREATE TABLE `secr` (
  `unica` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(25) DEFAULT NULL,
  `clave` varchar(60) DEFAULT NULL,
  `mail` varchar(80) NOT NULL,
  `niveles` varchar(200) DEFAULT NULL,
  `alta` datetime DEFAULT NULL,
  `baja` datetime DEFAULT NULL,
  `activa` int DEFAULT NULL,
  `id_empleado_fk` int DEFAULT NULL,
  PRIMARY KEY (`unica`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;




CREATE TABLE `secr2` (
  `unica` int NOT NULL,
  `menu` int DEFAULT NULL,
  `a` tinyint(1) DEFAULT NULL,
  `b` tinyint(1) DEFAULT NULL,
  `c` tinyint(1) DEFAULT NULL,
  `m` tinyint(1) DEFAULT NULL,
  `x` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `secr2_cargos` (
  `id_cargo_fk` int NOT NULL,
  `menu` int DEFAULT NULL,
  `a` tinyint(1) DEFAULT NULL,
  `b` tinyint(1) DEFAULT NULL,
  `c` tinyint(1) DEFAULT NULL,
  `m` tinyint(1) DEFAULT NULL,
  `x` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO menuitems (id,titulo,parent,icono,id_pantalla,orden) VALUES
	 (1,'Usuarios',NULL,'fa fa-user-group',1,100);


INSERT INTO pantallas (id,titulo,ayuda,activa,ruta,nivel) VALUES
	 (1,'Usuarios','usuarios',1,'/usuarios','Administrador');

--13/01
CREATE TABLE categorias (
id int(11) auto_increment primary key,
desc_corta varchar(4) default null,
descripcion varchar(40) default null,
activo tinyint(1) default 1
)
--14/01
CREATE TABLE sub_Categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    desc_corta VARCHAR(40) NOT NULL,
    descripcion VARCHAR(100),
    id_categoria_fk INT NOT NULL,
    activo TINYINT(1) DEFAULT 1,
    CONSTRAINT fk_subcategorias_categoria
        FOREIGN KEY (id_categoria_fk)
        REFERENCES categorias(id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
)



CREATE TABLE `tipos_documentos_afip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codigo_afip` int DEFAULT NULL,
  `activo` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO tipos_documentos_afip (id,descripcion,codigo_afip,activo) VALUES
	 (1,'CUIT',80,1),
	 (2,'CDI',87,1),
	 (3,'CI Extranjera',91,1),
	 (4,'Pasaporte',94,1),
	 (5,'DNI',96,1),
	 (6,'Otro',99,1);


   CREATE TABLE `condiciones_iva` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) COLLATE utf8mb4_general_ci NOT NULL,
  `codigo_afip` int DEFAULT NULL,
  `A_M` tinyint(1) DEFAULT '0',
  `B` tinyint(1) DEFAULT '0',
  `C` tinyint(1) DEFAULT '0',
  `activo` tinyint(1) DEFAULT '1',
  `usar_dni` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO condiciones_iva (id,descripcion,codigo_afip,A_M,B,C,activo,usar_dni) VALUES
	 (1,'Resp. Inscripto',1,1,0,1,1,0),
	 (2,'Resp. No Inscri.',2,0,0,0,0,0),
	 (3,'No Responsable',3,0,0,0,0,0),
	 (4,'Exento',4,0,1,1,1,0),
	 (5,'Consumidor Final',5,0,1,1,1,1),
	 (6,'Resp.Monotributo',6,1,0,1,1,0),
	 (7,'Sujeto No Categorizado',7,0,1,1,1,0),
	 (8,'Proveedor del Exterior',8,0,1,1,1,0),
	 (9,'Cliente del Exterior',9,0,1,1,1,0),
	 (10,'IVA Liberado - Ley N° 19.640',10,0,1,1,1,0);
INSERT INTO condiciones_iva (id,descripcion,codigo_afip,A_M,B,C,activo,usar_dni) VALUES
	 (11,'Monotributista Social',13,1,0,1,1,0),
	 (12,'IVA No Alcanzado',15,0,1,1,1,0),
	 (13,'Monotributo Trabajador Independiente Promovido',16,1,0,1,1,0);


   CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) DEFAULT NULL,
  `nro_doc` varchar(13) DEFAULT NULL,
  `id_condicioniva_fk` int DEFAULT NULL,
  `id_localidad_fk` int DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `observaciones` varchar(5000) DEFAULT NULL,
  `activo` tinyint DEFAULT '1',
  `id_tipodoc_fk` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

ALTER TABLE clientes add COLUMN id_provincia_fk int(11)
