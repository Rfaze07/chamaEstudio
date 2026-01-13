

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
