--
-- Table structure for table `alertas`
--

DROP TABLE IF EXISTS `alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_moduloalerta_fk` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `id_cargo_fk` int(11) DEFAULT NULL,
  `activo_inicio` tinyint(1) DEFAULT 1,
  `activo_popup` tinyint(1) DEFAULT 0,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alertas_modulos`
--

DROP TABLE IF EXISTS `alertas_modulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertas_modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_modulo_fk` int(11) DEFAULT NULL COMMENT 'tabla pantallas',
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `observacion` varchar(500) DEFAULT NULL,
  `id_rubro_fk` int(11) DEFAULT NULL,
  `costo` decimal(12,2) DEFAULT NULL,
  `precio1` decimal(12,2) DEFAULT NULL,
  `precio2` decimal(12,2) DEFAULT NULL,
  `iva` decimal(6,2) DEFAULT NULL,
  `id_empresa_fk` int(11) DEFAULT NULL,
  `id_unmed_fk` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ayuda`
--

DROP TABLE IF EXISTS `ayuda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ayuda` (
  `id` int(11) DEFAULT NULL,
  `menu` int(11) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `texto` varchar(500) DEFAULT NULL,
  `ruta` varchar(80) DEFAULT NULL,
  `icono` varchar(100) DEFAULT NULL,
  `grupoMenu` tinyint(4) DEFAULT NULL,
  `orden` tinyint(4) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `barrios`
--

DROP TABLE IF EXISTS `barrios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barrios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(5) DEFAULT NULL,
  `id_localidad_fk` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `editable` tinyint(1) DEFAULT 1,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) DEFAULT NULL,
  `razon_social` varchar(100) DEFAULT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  `id_condicioniva_fk` int(11) DEFAULT NULL,
  `id_localidad_fk` int(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `lista_precio` tinyint(4) DEFAULT NULL,
  `nombre_fantasia` varchar(100) DEFAULT NULL,
  `telefono1` varchar(30) DEFAULT NULL,
  `telefono2` varchar(30) DEFAULT NULL,
  `contacto` varchar(60) DEFAULT NULL,
  `resp_pagos` varchar(60) DEFAULT NULL,
  `resp_pagos_telefono` varchar(30) DEFAULT NULL,
  `resp_pagos_email` varchar(60) DEFAULT NULL,
  `dias_venc_pagos` int(11) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `observaciones` varchar(5000) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `documentacion`
--

DROP TABLE IF EXISTS `documentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `id_tipodocumentacion_fk` int(11) DEFAULT NULL,
  `dias_vigencia` smallint(6) DEFAULT NULL,
  `dias_alarma` smallint(6) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nro_legajo` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `dni` int(11) DEFAULT NULL,
  `cuil` varchar(15) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `id_obrasocial_fk` int(11) DEFAULT NULL,
  `os_plan` varchar(100) DEFAULT NULL,
  `os_numero` varchar(15) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `id_cargo_fk` int(11) DEFAULT NULL,
  `id_provincia_fk` int(11) DEFAULT NULL,
  `id_localidad_fk` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(50) DEFAULT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `datos` varchar(4000) DEFAULT NULL,
  `clave` varchar(20) DEFAULT NULL,
  `puerto_fe` int(11) DEFAULT NULL,
  `ruta_comun` varchar(100) DEFAULT NULL,
  `id_iva_fk` int(11) DEFAULT NULL,
  `fecha_inicio` varchar(10) DEFAULT NULL,
  `nro_iibb` varchar(20) DEFAULT NULL,
  `telefono` varchar(60) DEFAULT NULL,
  `id_localidad_fk` int(11) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `path_imagen` varchar(100) DEFAULT NULL,
  `id_empresa_lowcost_fk` int(11) DEFAULT NULL,
  `id_empresa_sql_fk` int(11) DEFAULT NULL,
  `num_cliente` bigint(20) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `enfermedades`
--

DROP TABLE IF EXISTS `enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT current_timestamp(),
  `tabla` varchar(70) DEFAULT NULL,
  `id_usuario_fk` int(4) DEFAULT NULL,
  `observacion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inasistencias`
--

DROP TABLE IF EXISTS `inasistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inasistencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `fecha_real` datetime DEFAULT NULL,
  `cargar_para` char(1) DEFAULT NULL,
  `id_empleado_fk` int(11) DEFAULT NULL,
  `dias` smallint(6) DEFAULT NULL,
  `id_tipoinasistencia_fk` int(11) DEFAULT NULL,
  `id_enfermedad_fk` int(11) DEFAULT NULL,
  `medico` varchar(50) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `localidades`
--

DROP TABLE IF EXISTS `localidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localidades` (
  `id` int(4) DEFAULT NULL,
  `id_provincia_fk` int(5) DEFAULT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  `cp` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `medios_pagos`
--

DROP TABLE IF EXISTS `medios_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medios_pagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(5) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `menuitems`
--

DROP TABLE IF EXISTS `menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `icono` varchar(30) DEFAULT NULL,
  `id_pantalla` int(11) DEFAULT NULL,
  `orden` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `obras_sociales`
--

DROP TABLE IF EXISTS `obras_sociales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obras_sociales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(5) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes_cargas`
--

DROP TABLE IF EXISTS `ordenes_cargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_cargas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_carga` date DEFAULT NULL,
  `hora_carga` varchar(5) DEFAULT NULL,
  `id_empresa_fk` int(11) DEFAULT NULL,
  `id_cliente_fk` int(11) DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `id_envio` varchar(20) DEFAULT NULL COMMENT 'numero/codigo asignado por el cliente (Nro. viaje). El interno es el ID',
  `id_provincia_origen_fk` int(11) DEFAULT NULL,
  `provincia_origen` varchar(100) DEFAULT NULL,
  `id_localidad_origen_fk` int(11) DEFAULT NULL,
  `localidad_origen` varchar(100) DEFAULT NULL,
  `localidad_origen_cp` varchar(6) DEFAULT NULL,
  `id_provincia_destino_fk` int(11) DEFAULT NULL,
  `provincia_destino` varchar(100) DEFAULT NULL,
  `id_localidad_destino_fk` int(11) DEFAULT NULL,
  `localidad_destino` varchar(100) DEFAULT NULL,
  `localidad_destino_cp` varchar(6) DEFAULT NULL,
  `id_producto_fk` int(11) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_unmed_fk` varchar(100) DEFAULT NULL,
  `unidad_medida` varchar(100) DEFAULT NULL,
  `importe_costo` decimal(12,2) DEFAULT NULL,
  `importe_pago` decimal(12,2) DEFAULT NULL,
  `observaciones` varchar(3000) DEFAULT NULL,
  `id_chofer_fk` int(11) DEFAULT NULL,
  `chofer` varchar(100) DEFAULT NULL,
  `id_camion_fk` int(11) DEFAULT NULL,
  `camion` varchar(100) DEFAULT NULL,
  `id_semi_fk` int(11) DEFAULT NULL,
  `semi` varchar(100) DEFAULT NULL,
  `fecha_real` datetime DEFAULT NULL,
  `id_unica_fk` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes_cargas_estados`
--

DROP TABLE IF EXISTS `ordenes_cargas_estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_cargas_estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(3) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes_cargas_estados_historico`
--

DROP TABLE IF EXISTS `ordenes_cargas_estados_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_cargas_estados_historico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordencarga_fk` int(11) DEFAULT NULL,
  `id_estado_fk` int(11) DEFAULT NULL COMMENT 'FK ordenes_cargas_estados',
  `observaciones` varchar(200) DEFAULT NULL,
  `fecha_real` datetime DEFAULT NULL,
  `id_unica_fk` int(11) DEFAULT NULL,
  `borrado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes_cargas_remitos`
--

DROP TABLE IF EXISTS `ordenes_cargas_remitos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_cargas_remitos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordencarga_fk` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_cliente_fk` int(11) DEFAULT NULL,
  `nro_remito` varchar(20) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `fecha_real` datetime DEFAULT NULL,
  `id_unica_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes_pago_comprobantes`
--

DROP TABLE IF EXISTS `ordenes_pago_comprobantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_pago_comprobantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_orden_pago_fk` int(11) DEFAULT NULL,
  `id_comprobante_fk` int(11) DEFAULT NULL,
  `id_usuario_fk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes_pagos`
--

DROP TABLE IF EXISTS `ordenes_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_pagos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proveedor_fk` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `observacion` varchar(100) DEFAULT NULL,
  `id_empresa_fk` bigint(20) DEFAULT NULL,
  `id_usuario_fk` bigint(20) DEFAULT NULL,
  `impreso` tinyint(4) DEFAULT NULL,
  `fecha_impresion` date DEFAULT NULL,
  `blindado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ordenes_pagos_pagos`
--

DROP TABLE IF EXISTS `ordenes_pagos_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordenes_pagos_pagos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_orden_pago_fk` int(11) DEFAULT NULL,
  `id_medio_pago_fk` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `importe` decimal(12,3) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `id_usuario_fk` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pantallas`
--

DROP TABLE IF EXISTS `pantallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pantallas` (
  `id` int(4) DEFAULT NULL,
  `titulo` varchar(70) DEFAULT NULL,
  `ayuda` text DEFAULT NULL,
  `activa` tinyint(1) DEFAULT NULL,
  `ruta` varchar(60) DEFAULT NULL,
  `nivel` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `id_unmed_fk` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) DEFAULT NULL,
  `nombre_fantasia` varchar(100) DEFAULT NULL,
  `cuit` varchar(13) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `id_localidad_fk` int(11) DEFAULT NULL,
  `id_condicioniva_fk` int(11) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `observaciones` varchar(5000) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincias` (
  `id` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `codigo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rubros`
--

DROP TABLE IF EXISTS `rubros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rubros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `id_rubro_grupo_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `secr`
--

DROP TABLE IF EXISTS `secr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secr` (
  `unica` int(4) DEFAULT NULL,
  `usuario` varchar(25) DEFAULT NULL,
  `clave` varchar(60) DEFAULT NULL,
  `mail` varchar(80) DEFAULT NULL,
  `niveles` varchar(200) DEFAULT NULL,
  `alta` datetime DEFAULT NULL,
  `baja` datetime DEFAULT NULL,
  `activa` int(11) DEFAULT NULL,
  `id_empleado_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `secr2`
--

DROP TABLE IF EXISTS `secr2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secr2` (
  `unica` int(4) DEFAULT NULL,
  `menu` int(2) DEFAULT NULL,
  `a` tinyint(1) DEFAULT NULL,
  `b` tinyint(1) DEFAULT NULL,
  `c` tinyint(1) DEFAULT NULL,
  `m` tinyint(1) DEFAULT NULL,
  `x` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `secr2_cargos`
--

DROP TABLE IF EXISTS `secr2_cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secr2_cargos` (
  `id_cargo_fk` int(4) DEFAULT NULL,
  `menu` int(2) DEFAULT NULL,
  `a` tinyint(1) DEFAULT NULL,
  `b` tinyint(1) DEFAULT NULL,
  `c` tinyint(1) DEFAULT NULL,
  `m` tinyint(1) DEFAULT NULL,
  `x` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(5) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `id_cliente_fk` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `tipos_documentacion`
--

DROP TABLE IF EXISTS `tipos_documentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_documentacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipos_inasistencias`
--

DROP TABLE IF EXISTS `tipos_inasistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_inasistencias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tipos_vehiculos`
--

DROP TABLE IF EXISTS `tipos_vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipos_vehiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `ejes` tinyint(4) DEFAULT NULL,
  `largo` decimal(4,2) DEFAULT 0.00,
  `asigna_chofer` tinyint(1) DEFAULT 1,
  `asigna_semi` tinyint(1) DEFAULT 1,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unmed`
--

DROP TABLE IF EXISTS `unmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unmed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vehiculos`
--

DROP TABLE IF EXISTS `vehiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiculos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nro_interno` int(11) DEFAULT NULL,
  `patente` varchar(10) DEFAULT NULL,
  `id_marca_fk` int(11) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `anio` varchar(4) DEFAULT NULL,
  `ejes` varchar(3) DEFAULT NULL,
  `tara` decimal(4,1) DEFAULT NULL,
  `nro_chasis` varchar(50) DEFAULT NULL,
  `nro_motor` varchar(50) DEFAULT NULL,
  `mas_datos` varchar(1000) DEFAULT NULL,
  `id_tipovehiculo_fk` int(11) DEFAULT NULL,
  `id_chofer_fk` int(11) DEFAULT NULL,
  `id_camion_fk` int(11) DEFAULT NULL,
  `id_semi_fk` int(11) DEFAULT NULL,
  `cargas_peligrosas` tinyint(1) DEFAULT 0,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vencimientos`
--

DROP TABLE IF EXISTS `vencimientos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vencimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipodocumentacion_fk` int(11) DEFAULT NULL,
  `id_empresa_fk` int(11) DEFAULT 1,
  `id_empleado_fk` int(11) DEFAULT NULL,
  `id_vehiculo_fk` int(11) DEFAULT NULL,
  `id_documentacion_fk` int(11) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `fecha_real` datetime DEFAULT NULL,
  `id_unica_fk` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `eliminado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `viajes_estados_oc`
--

DROP TABLE IF EXISTS `viajes_estados_oc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viajes_estados_oc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#FFF',
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'tsl'
--

--
-- Dumping routines for database 'tsl'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 18:36:46





INSERT INTO secr (unica,usuario,clave,mail,niveles,alta,baja,activa) VALUES (1,'ejemplo','$2a$10$N7WwFEeL12dAVsWGs76djOKGXWQBzmul/eNLXBEHQHVQQ31Ug7yla','test@asd.com','Lista','2023-11-13 14:09:14.0',NULL,1);


INSERT INTO tipos_documentacion (id, descripcion, activo) VALUES(1, 'Empresa', 1);
INSERT INTO tipos_documentacion (id, descripcion, activo) VALUES(2, 'Vehiculos', 1);
INSERT INTO tipos_documentacion (id, descripcion, activo) VALUES(3, 'Empleados', 1);


INSERT INTO viajes_estados_oc (descripcion, desc_corta, color) VALUES('Vacio', 'VAC', '#fdfd96');
INSERT INTO viajes_estados_oc (descripcion, desc_corta, color) VALUES('Cargado', 'CAR', '#77dd77');
INSERT INTO viajes_estados_oc (descripcion, desc_corta, color) VALUES('Interno', 'INT', '#84b6f4');
INSERT INTO viajes_estados_oc (descripcion, desc_corta, color) VALUES('Enfermo', 'ENF', '#ff6961');
INSERT INTO viajes_estados_oc (descripcion, desc_corta, color) VALUES('Parado chofer', 'PCH', '#fdcae1');
INSERT INTO viajes_estados_oc (descripcion, desc_corta, color) VALUES('En reparacion / Taller', 'REP', '#c33a2a');
INSERT INTO viajes_estados_oc (descripcion, desc_corta, color) VALUES('ART', 'ART', '#c33a2a');


INSERT INTO ordenes_cargas_estados (descripcion, desc_corta) VALUES('Pendiente', 'PEN');
INSERT INTO ordenes_cargas_estados (descripcion, desc_corta) VALUES('Autorizado', 'AUT');
INSERT INTO ordenes_cargas_estados (descripcion, desc_corta) VALUES('Cargado', 'CAR');
INSERT INTO ordenes_cargas_estados (descripcion, desc_corta) VALUES('Facturado', 'FAC');
INSERT INTO ordenes_cargas_estados (descripcion, desc_corta) VALUES('Descargado', 'DES');
INSERT INTO ordenes_cargas_estados (descripcion, desc_corta) VALUES('Anulado', 'ANU');


INSERT INTO tipos_inasistencias (descripcion) VALUES ('Accidente laboral');
INSERT INTO tipos_inasistencias (descripcion) VALUES ('No justificado');
INSERT INTO tipos_inasistencias (descripcion) VALUES ('Justificado');



INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(1, 'Configuración', NULL, 'fa-solid fa-gear', NULL, 5);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(2, 'Unidades de medidas', 17, 'fa-solid fa-gear', 5, 5);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(4, 'ABM Empleados', 38, 'fa-solid fa-people-group', 10, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(5, 'ABM  Usuarios', 38, 'fa-solid fa-users', 1, 2);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(6, 'ABM  Cargos', 38, 'fa fa-star', 4, 3);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(7, 'ABM  Centro  de costos', 17, 'fa-solid fa-money-check-dollar', 7, 2);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(8, 'ABM Articulos', 17, 'fa-solid fa-stamp', 17, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(9, 'ABM  Rubros', 17, 'fa-solid fa-chart-bar', 6, 2);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(10, 'Reportes', NULL, 'fa-solid fa-chart-gantt', NULL, 5);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(11, 'ABM  Medios de pago', 17, 'fa-solid fa-dollar', 13, 8);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(12, 'Logística', NULL, 'fas fa-route', NULL, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(13, 'Personal ', NULL, 'fa fa-person', NULL, 2);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(14, 'Mantenimiento', NULL, 'fas fa-cogs', NULL, 3);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(18, 'ABM artículos', 1, 'fas fa-store-alt', 17, 2);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(19, 'ABM Unidades de med.', 1, 'fas fa-ruler-combined', 5, 5);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(20, 'ABM marcas', 1, 'fas fa-tag', 21, 3);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(21, 'ABM enfermedades', 1, 'fas fa-virus', 22, 7);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(22, 'ABM tareas OT *', 1, 'fas fa-tasks', 12, 6);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(23, 'ABM clientes', 12, 'fas fa-users', 8, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(24, 'ABM sucursales', 12, 'fas fa-store', 32, 2);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(25, 'ABM órdenes de cargas/viajes', 12, 'fas fa-people-carry', 14, 4);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(26, 'ABM estados OC', 12, 'fas fa-star', 23, 6);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(27, 'Estados por viajes OC', 12, 'fas fa-star', 24, 7);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(28, 'ABM administración *', 12, 'fas fa-plus', 25, 5);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(29, 'ABM  empleados', 13, 'fas fa-user-circle', 10, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(30, 'ABM cargos', 13, 'fas fa-bezier-curve', 4, 2);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(31, 'ABM documentación', 13, 'fas fa-folder', 27, 4);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(32, 'ABM vencimientos', 13, 'far fa-id-card', 28, 5);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(33, 'ABM inasistencias', 13, 'fas fa-user-check', 29, 8);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(34, 'ABM vehículos', 14, 'fas fa-truck', 2, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(35, 'ABM tipos de vehículos', 14, 'fas fa-truck-moving', 30, 2);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(36, 'ABM órdenes de trabajos *', 14, 'fas fa-tasks', 31, 3);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(37, 'ABM rubros', 1, 'fa-solid fa-code-merge', 6, 4);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(38, 'ABM alertas', 1, 'fas fa-bell', 26, 9);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(39, 'ABM usuarios', 1, 'fas fa-user', 1, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(40, 'ABM productos', 12, 'fas fa-dolly', 15, 3);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(41, 'ABM obras sociales', 1, 'fas fa-user-md', 33, 8);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(42, 'Administracion', NULL, 'fas fa-users', NULL, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(43, 'ABM Clientes', 42, 'fa-solid fa-building', 8, 1);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(44, 'Localidades', 1, 'fa-solid fa-building', 3, 6);
INSERT INTO menuitems (id, titulo, parent, icono, id_pantalla, orden) VALUES(45, 'ABM puestos', 13, 'fas fa-user-cog', 34, 3);



INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(1, 'Usuarios', 'usuarios', 1, '/usuarios', 'Administrador');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(2, 'Vehiculos', 'ABM vehiculos', 1, '/vehiculos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(3, 'Localidades', 'Listado  de localidades', 1, '/localidades', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(4, 'Cargos', 'Abm para administrar cargos', 1, '/cargos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(5, 'Unidades de medida', 'adm de unidades de medidas', 1, '/unmed', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(6, 'Rubros', 'Abm rubros ', 1, '/rubros', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(7, 'Centro de costos', 'Ab m de conceptos  para ingreso e egresos', 1, '/conceptos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(8, 'Clientes', 'texto clientes', 1, '/clientes', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(9, 'Proveedores', 'texto proveedores', 1, '/proveedores', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(10, 'Empleados', 'texto empleados', 1, '/empleados', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(11, 'Tipos de tareas', 'texto tipos de tareas', 1, '/tipostareas', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(12, 'Tareas para OT', 'Abm de tareas para ordenes de trabajo', 1, '/tareasOrdenesTrabajo', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(13, 'Medios de pagos', '', 1, '/mediospagos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(14, 'Ordenes de carga', 'ABM ordenes de cargas/viajes', 1, '/ordenesCargas', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(15, 'Productos', 'ABM productos', 1, '/productos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(16, 'Presupuestos', '', 1, '/presupuestos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(17, 'Artículos', '', 1, '/articulos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(18, 'Comprobantes proveedores', '', 1, '/comprobantesCompras', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(19, 'Ordenes de pago', '', 1, '/ordenesPagos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(20, 'Comprobantes Ventas', '', 1, '/comprobantesventas', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(21, 'Marcas', 'ABM marcas', 1, '/marcas', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(22, 'Enfermedades', 'ABM enfermedades', 1, '/enfermedades', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(23, 'Estados de ordenes de cargas', 'ABM de estados de ordenes de cargas/viajes', 1, '/estadosOrdenesCargas', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(24, 'Estados de viajes OC', 'ABM de estados de viajes de ordenes de cargas', 1, '/estadosViajesOrdenesCargas', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(25, 'Administracion', 'ABM remitos, gastos por viajes y kilometros', 1, '/adminstracion', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(26, 'Alertas', 'ABM alertas', 1, '/alertas', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(27, 'Documentacion', 'ABM documentacion', 1, '/documentacion', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(28, 'Vencimientos', 'ABM vencimientos', 1, '/vencimientos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(29, 'Inasistencias', 'ABM inasistencias', 1, '/inasistencias', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(30, 'Tipos de vehiculos', 'ABM tipos de vehiculos', 1, '/tiposVehiculos', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(31, 'Ordenes de trabajo', 'ABM ordenes de trabajo', 1, '/ordenesTrabajo', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(32, 'Sucursales', 'ABM sucursales de clientes', 1, '/sucursales', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(33, 'Obras sociales', 'ABM', 1, '/obrasSociales', 'Lista');
INSERT INTO pantallas (id, titulo, ayuda, activa, ruta, nivel) VALUES(34, 'Puestos', 'ABM puestos', 1, '/puestos', 'Lista');



-- 10/03/2025

ALTER TABLE tsl.empleados ADD id_puesto_fk INT(11) DEFAULT 0 NULL;

CREATE TABLE `puestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;




-- 11/03/2025

INSERT INTO tipos_inasistencias (descripcion) VALUES ('Acc. Initinere'), ('Acc. Laboral'), ('Enf. Prof.'), ('Enfermo');



CREATE TABLE `ordenes_cargas_productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordencarga_fk` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_producto_fk` int(11) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `producto` varchar(100) DEFAULT NULL,
  `id_unmed_fk` int(11) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `ordenes_cargas_repartos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordencarga_fk` int(11) DEFAULT NULL,
  `orden` smallint(6) DEFAULT NULL,
  `id_provincia_fk` int(11) DEFAULT NULL,
  `id_localidad_fk` int(11) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



CREATE TABLE `tanques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


--  11/05/2025
CREATE TABLE `rubros_grupos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(8) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



INSERT INTO rubros (desc_corta,descripcion,id_grupo_fk,codigo,activo,id) VALUES
	 ('CUBI','CUBIERTA CON TACO ',9,'CT',1,6),
	 ('CL','CUBIERTA LISA',9,'CL',1,7),
	 ('CR','CUBIERTA RECAPADA',9,'CR',NULL,8),
	 ('HERR','HERRAMIENTAS ELECTRICAS ',18,'HE',NULL,13),
	 ('HERR','HERRAMIENTAS NEUMATICAS ',18,'HN',NULL,14),
	 ('HERR','HERRAMIENTAS MECANICAS ',18,'HET',NULL,15);

INSERT INTO marcas (desc_corta,descripcion,activo,id) VALUES
	 ('MBEN','Mercedes Benz ',1,2),
	 ('RAN','Randon',1,3),
	 ('HEL','Helvetica',1,4),
	 ('BONA','Bonano',1,5),
	 ('MONT','Montenegro',1,6),
	 ('OMBU','Ombu',1,7),
	 ('PEUG','Peugeot',1,8),
	 ('VOLS','Volskwagen ',1,9),
	 ('FATE','FATE',1,10),
	 ('PA','PACE',1,11);
INSERT INTO marcas (desc_corta,descripcion,activo,id) VALUES
	 ('BLU','BLUWELL',1,12),
	 ('STAN','STANLEY ',1,13),
	 ('BRID','BRIDGESTONE ',1,14),
	 ('GOOD','GOOD YEAR',1,15),
	 ('PIRE','PIRELLI',1,16),
	 ('XBRY','XBRY',1,17),
	 ('KELL','KELLY ',1,18),
	 ('KUMH','KUMHO',1,19),
	 ('BAHC','BAHCO',1,20),
	 ('WABC','WABCO',1,21);
INSERT INTO marcas (desc_corta,descripcion,activo,id) VALUES
	 ('BREM','BREMENN',1,22),
	 ('HANK','HANKOOK',1,23),
	 ('FORM','FORMULA ',1,24),
	 ('MICH','MICHELIN',1,25),
	 ('KNHO','KNHOR - BREMSE',1,26),
	 ('FAG','FAG',1,27),
	 ('TIMK','TIMKEN ',1,28),
	 ('SKF ','SKF ',1,29),
	 ('STHI','STHILL',1,30),
	 ('GAMM','GAMMA',1,31);
INSERT INTO marcas (desc_corta,descripcion,activo,id) VALUES
	 ('BLAC','BLACK & DECKER',1,32),
	 ('TOTA','TOTAL',1,33),
	 ('COND','CONDOR ',1,34),
	 ('LUSQ','LUSQTOFF',1,35),
	 ('BARB','BARBERO',1,36),
	 ('HERR','HERRAMIENTAS VARIAS',1,37),
	 ('DEWA','DEWALT',1,38),
	 ('JIT','JIT',1,39),
	 ('ROPA','ROPACO',1,40),
	 ('CHRO','CHROME-VANADIUM',1,41);
INSERT INTO marcas (desc_corta,descripcion,activo,id) VALUES
	 ('VERO','VEROLL',1,42),
	 ('YPF','YPF',1,43),
	 ('MANN','MANN FILTER',1,44),
	 ('MAHL','MAHLE',1,45),
	 ('TECF','TECFIL',1,46),
	 ('BOSC','BOSCH',1,47),
	 ('HENG','HENGST FILTROS',1,48),
	 ('VADE','VADEN ',1,49),
	 ('PARK','PARKER ',1,50),
	 ('MOUR','MOURA',1,51);
INSERT INTO marcas (desc_corta,descripcion,activo,id) VALUES
	 ('MAGN','MAGNETTI MARELLI',1,52),
	 ('VIGI','VIGIA - VIESA',1,53),
	 ('BEPO','BEPO',1,54),
	 ('BAIM','BAIML',1,55),
	 ('NEUM','NEUMACARG',1,56),
	 ('ACDE','ACEDELCO',1,57),
	 ('VIPA','VIPAL',1,58),
	 ('VMG','VMG',1,59),
	 ('CONT','CONTINENTAL ',1,60),
	 ('SHEL','SHELL',1,61);
INSERT INTO marcas (desc_corta,descripcion,activo,id) VALUES
	 ('JOST','JOST',1,62),
	 ('RG','RG',1,63),
	 ('PHIL','PHILLIPS',1,64),
	 ('OSRA','OSRAM',1,65),
	 ('NILD','NILDATEX',1,66),
	 ('ZON','ZONDA 500',1,67),
	 ('VALE','VALEO',1,68),
	 ('SACH','SACHS',1,69),
	 ('PROT','PROTTO',1,70),
	 ('ELRI','ELRING',1,71);
INSERT INTO marcas (desc_corta,descripcion,activo,id) VALUES
	 ('SABO','SABO',1,72),
	 ('SEST','SESTANTE STEER ',1,73);


   -- TPellegrino.depositos definition

CREATE TABLE `depositos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO depositos (desc_corta,descripcion,ubicacion,observaciones,activo,id) VALUES
	 ('CONT','CONTAINER 1','PLAYA ','IZQUIERDO ',1,7),
	 ('GAL','Galpon','Paredes del galpon','',1,2),
	 ('B1','Banco Taller 1 ','Galpon taller','',1,3),
	 ('B2','Banco Taller 2','Galpon taller','',1,4),
	 ('B3','Banco Taller 3','Galpon taller','',1,5),
	 ('CONT','CONTAINER 2','PLAYA ','CONTAINER DERECHO ',1,6),
	 ('JAUL','JAULA NEGRA ','INTERIOR GALPON ','DEPOSITO DE REPUESTOS ',1,8);


   ALTER TABLE tipos_vehiculos ADD gasoil TINYINT(1) DEFAULT 1 NULL;




CREATE TABLE `condiciones_neumaticos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(5) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO condiciones_neumaticos (id, desc_corta, descripcion, activo) VALUES(1, 'NUE', 'Nuevos', 1);
INSERT INTO condiciones_neumaticos (id, desc_corta, descripcion, activo) VALUES(2, 'USA', 'Usados', 1);
INSERT INTO condiciones_neumaticos (id, desc_corta, descripcion, activo) VALUES(3, '1REC', '1er recapado', 1);
INSERT INTO condiciones_neumaticos (id, desc_corta, descripcion, activo) VALUES(4, '2REC', '2do recapado', 1);




-- 21/05/2024
CREATE TABLE `gasoil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nro_vale` int(11) DEFAULT NULL,
  `id_chofer_fk` int(11) DEFAULT NULL,
  `id_vehiculo_fk` int(11) DEFAULT NULL,
  `litros` decimal(9,2) DEFAULT NULL,
  `km` decimal(9,2) DEFAULT 0.00,
  `historico_lts` decimal(9,2) DEFAULT NULL,
  `fecha_hora` datetime DEFAULT NULL,
  `id_unica_fk` int(11) DEFAULT NULL,
  `id_tanque_fk` int(11) DEFAULT NULL,
  `entregado` tinyint(4) DEFAULT 0,
  `observaciones` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;


-- 21/05/2025
CREATE TABLE `repuestos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(8) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `valor` decimal(12,2) DEFAULT 0.00,
  `minimo` decimal(12,2) DEFAULT NULL,
  `maximo` decimal(12,2) DEFAULT NULL,
  `punto_pedido` decimal(12,2) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `id_marca_fk` int(11) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `id_rubro_fk` int(11) DEFAULT NULL,
  `codigo_rep_original` char(20) DEFAULT NULL,
  `codigo_rep_alt` char(20) DEFAULT NULL,
  `id_deposito_fk` int(11) DEFAULT NULL,
  `es_neumatico` tinyint(1) DEFAULT 0,
  `es_ficha` tinyint(1) DEFAULT 0,
  `activo` tinyint(4) DEFAULT 1,
  `id_comprobantedetalle_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `repuestos_ficha` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_repuesto_fk` int(11) DEFAULT NULL,
  `id_proveedor_fk` int(11) DEFAULT NULL,
  `id_comprobante_fk` int(11) DEFAULT NULL,
  `nro_serie` varchar(18) NOT NULL,
  `chas` varchar(18) DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `neumatico` tinyint(1) DEFAULT 0,
  `id_condicion_fk` int(11) DEFAULT NULL,
  `motivo_baja` varchar(100) DEFAULT NULL,
  `medida_neumatico` varchar(50) DEFAULT NULL,
  `tipo_neumatico` varchar(50) DEFAULT NULL,
  `valor_compra` decimal(16,2) DEFAULT 0.00,
  `modelo` varchar(100) DEFAULT NULL,
  `observaciones` varchar(500) DEFAULT NULL,
  `id_deposito_fk` int(11) DEFAULT NULL COMMENT 'origen',
  `id_comprobantedetalle_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `conceptos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT '',
  `tipo` varchar(1) DEFAULT '',
  `descripcion` varchar(100) DEFAULT NULL,
  `editable` tinyint(1) DEFAULT 1,
  `activo_flujo` tinyint(1) DEFAULT 1,
  `blindado` tinyint(1) DEFAULT 0,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `alicuotas_iva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(5) DEFAULT NULL,
  `valor` decimal(4,2) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `alicuotas_iva` VALUES (1,'0%',0.00,0),(2,'10,5%',10.50,1),(3,'21%',21.00,1),(4,'27%',27.00,0);



CREATE TABLE `conceptos_afip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(60) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `conceptos_afip` VALUES (1,'Productos',1),(2,'Servicios',1),(3,'Productos y servicios',1);


CREATE TABLE `tipos_comprobantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `codigo_afip` varchar(20) DEFAULT NULL,
  `letra` varchar(1) NOT NULL,
  `desc_corta` varchar(10) DEFAULT NULL,
  `desc_impresion` varchar(100) DEFAULT NULL,
  `cuenta` enum('debe','haber') DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO `tipos_comprobantes` VALUES (1,'Factura A','1','A','FA','Factura','debe',1),(2,'Nota de Débito A','2','A','NDA','Nota de Débito','debe',1),(3,'Nota de Crédito A','3','A','NCA','Nota de Crédito','haber',1),(4,'Factura B','6','B','FB','Factura','debe',1),(5,'Nota de Débito B','7','B','NDB','Nota de Débito','debe',1),(6,'Nota de Crédito B','8','B','NCB','Nota de Crédito','haber',1),(7,'Recibos A','4','A','RA','Recibo',NULL,0),(8,'Notas de Venta al contado A','5','A','NVCA','',NULL,0),(9,'Recibos B','9','B','RB','Recibo',NULL,0),(10,'Notas de Venta al contado B','10','B','NVCB','',NULL,0),(11,'Liquidacion A','63','A','LA','',NULL,0),(12,'Liquidacion B','64','B','LB','',NULL,0),(13,'Cbtes. A del Anexo I, Apartado A, inc.f), R.G.Nro. 1415','34','A','CA','',NULL,0),(14,'Cbtes. B del Anexo I, Apartado A, inc. f), R.G. Nro. 1415','35','B','CB','',NULL,0),(15,'Otros comprobantes A que cumplan con R.G.Nro. 1415','39','A','OCA','',NULL,0),(16,'Otros comprobantes B que cumplan con R.G.Nro. 1415','40','B','OCB','',NULL,0),(17,'Cta de Vta y Liquido prod. A','60','A','CVLA','',NULL,0),(18,'Cta de Vta y Liquido prod. B','61','B','CVLB','',NULL,0),(19,'Factura C','11','C','FC','Factura',NULL,1),(20,'Nota de Débito C','12','C','NDC','Nota de Débito',NULL,1),(21,'Nota de Crédito C','13','C','NCC','Nota de Crédito',NULL,1),(22,'Recibo C','15','C','RC','Recibo',NULL,0),(23,'Comprobante de Compra de Bienes Usados a Consumidor Final','49',' ','CBU','',NULL,0),(24,'Factura M','51','M','FM','Factura',NULL,0),(25,'Nota de Débito M','52','M','NDM','Nota de Débito',NULL,0),(26,'Nota de Crédito M','53','M','NCM','Nota de Crédito',NULL,0),(27,'Recibo M','54','M','RM','Recibo',NULL,0),(28,'Factura de Crédito electrónica MiPyMEs (FCE) A','201','A','FCEA','Factura',NULL,0),(29,'Nota de Débito electrónica MiPyMEs (FCE) A','202','A','NDFCEA','Nota de Débito',NULL,0),(30,'Nota de Crédito electrónica MiPyMEs (FCE) A','203','A','NCFCEA','Nota de Crédito',NULL,0),(31,'Factura de Crédito electrónica MiPyMEs (FCE) B','206','B','FCEB','Factura',NULL,0),(32,'Nota de Débito electrónica MiPyMEs (FCE) B','207','B','NDFCEB','Nota de Débito',NULL,0),(33,'Nota de Crédito electrónica MiPyMEs (FCE) B','208','B','NCFCEB','Nota de Crédito',NULL,0),(34,'Factura de Crédito electrónica MiPyMEs (FCE) C','211','C','FCEC','Factura',NULL,0),(35,'Nota de Débito electrónica MiPyMEs (FCE) C','212','C','NDFCEC','Nota de Débito',NULL,0),(36,'Nota de Crédito electrónica MiPyMEs (FCE) C','213','C','NCFCEC','Nota de Crédito',NULL,0),(37,'Presupuesto','0','P','P','Presupuesto',NULL,0),(38,'Remitos Venta Anticipada','0','R','RVA','Remito',NULL,0),(39,'Interno','0','I','I','Interno','debe',1),(40,'Nota de Crédito I','0','I','NCI','Nota de Crédito','haber',1);




CREATE TABLE `comprobantes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_cliente_fk` int(11) DEFAULT 0,
  `id_proyectotitulo_fk` int(11) DEFAULT 0,
  `id_proveedor_fk` int(11) DEFAULT 0,
  `fecha` date DEFAULT NULL COMMENT 'fecha de alta NOW',
  `fecha_comprobante` date DEFAULT NULL,
  `total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `id_puntoventa_fk` int(11) DEFAULT NULL,
  `punto_venta` int(11) DEFAULT 0,
  `numero` bigint(20) NOT NULL DEFAULT 0 COMMENT 'luego de obtener el CAE, updatear ult. comprobante',
  `cod_afip` int(11) DEFAULT 0 COMMENT '1 factura A 2 Factura B.... segun Afip',
  `iva21` decimal(20,2) DEFAULT 0.00,
  `iva105` decimal(20,2) DEFAULT 0.00,
  `neto` decimal(20,2) DEFAULT 0.00,
  `cae` varchar(100) DEFAULT '0',
  `cae_vence` varchar(100) DEFAULT '0',
  `cae_resultado` varchar(100) DEFAULT '0',
  `cae_obs` varchar(100) DEFAULT '0',
  `cond_iva` int(11) DEFAULT 0,
  `observaciones` varchar(500) DEFAULT NULL,
  `ctacte` char(1) DEFAULT '0' COMMENT 'Cuetna Corriente = "1" contado ="0"',
  `id_empresa_fk` bigint(20) DEFAULT 1,
  `iva0` decimal(20,2) DEFAULT 0.00,
  `iva27` decimal(20,2) DEFAULT 0.00,
  `neto27` decimal(20,2) DEFAULT 0.00,
  `neto0` decimal(20,2) DEFAULT 0.00,
  `neto21` decimal(20,2) DEFAULT 0.00,
  `neto105` decimal(20,2) DEFAULT 0.00,
  `iva` decimal(20,2) DEFAULT 0.00,
  `excento` decimal(20,2) DEFAULT 0.00,
  `letra` varchar(1) DEFAULT '0',
  `tipo_comp` varchar(100) DEFAULT NULL,
  `codigo_comp` varchar(3) DEFAULT '0',
  `id_tipo_comp_fk` int(11) NOT NULL DEFAULT 0,
  `dni` bigint(20) DEFAULT 0,
  `cliente` varchar(50) DEFAULT '0',
  `bandera` bigint(20) DEFAULT 0,
  `usuario` bigint(20) DEFAULT 0,
  `suc_aso` int(11) DEFAULT 0,
  `num_aso` bigint(20) DEFAULT 0,
  `blindado` tinyint(1) DEFAULT 0 COMMENT 'Se usa para los compr. de compras (proveedores). no permitir ageregar items al detalle comprob.',
  `id_conceptoafip_fk` int(11) DEFAULT NULL,
  `fecha_serv_desde` date DEFAULT NULL COMMENT 'fecha desde solo para concepto de SERVICIO en afip',
  `fecha_serv_hasta` varchar(100) DEFAULT NULL COMMENT 'fecha hasta solo para concepto de SERVICIO en afip',
  `fecha_serv_venc_pago` varchar(100) DEFAULT NULL COMMENT 'fecha vencimiento de pago solo para concepto de SERVICIO en afip',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `tipos_documentos_afip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  `codigo_afip` int(6) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO `tipos_documentos_afip` VALUES (1,'CUIT',80,1),(2,'CDI',87,1),(3,'CI Extranjera',91,1),(4,'Pasaporte',94,1),(5,'DNI',96,1),(6,'Otro',99,1);



CREATE TABLE `condiciones_iva` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  `codigo_afip` int(11) DEFAULT NULL,
  `A_M` tinyint(1) DEFAULT 0,
  `B` tinyint(1) DEFAULT 0,
  `C` tinyint(1) DEFAULT 0,
  `activo` tinyint(1) DEFAULT 1,
  `usar_dni` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

INSERT INTO `condiciones_iva` VALUES (1,'Resp. Inscripto',1,1,0,1,1,0),(2,'Resp. No Inscri.',2,0,0,0,0,0),(3,'No Responsable',3,0,0,0,0,0),(4,'Exento',4,0,1,1,1,0),(5,'Consumidor Final',5,0,1,1,1,1),(6,'Resp.Monotributo',6,1,0,1,1,0),(7,'Sujeto No Categorizado',7,0,1,1,1,0),(8,'Proveedor del Exterior',8,0,1,1,1,0),(9,'Cliente del Exterior',9,0,1,1,1,0),(10,'IVA Liberado - Ley N° 19.640',10,0,1,1,1,0),(11,'Monotributista Social',13,1,0,1,1,0),(12,'IVA No Alcanzado',15,0,1,1,1,0),(13,'Monotributo Trabajador Independiente Promovido',16,1,0,1,1,0);


CREATE TABLE `eventos_afip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime DEFAULT NULL,
  `id_usuario_fk` int(11) DEFAULT NULL,
  `error` varchar(1000) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  `objeto_enviado` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `resultado` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



CREATE TABLE `comprobantes_items` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_comprobante_fk` bigint(20) DEFAULT 0,
  `id_articulo_fk` bigint(20) DEFAULT NULL,
  `id_repuesto_fk` bigint(20) DEFAULT NULL,
  `id_tarea_fk` bigint(20) DEFAULT NULL,
  `id_tarea_presupuesto_fk` bigint(20) DEFAULT NULL,
  `es_adicional` tinyint(1) DEFAULT 0,
  `id_umed_fk` bigint(20) DEFAULT 0,
  `descripcion` varchar(350) DEFAULT NULL,
  `costo` decimal(20,2) DEFAULT 0.00,
  `precio` decimal(20,2) DEFAULT 0.00,
  `total` decimal(20,2) DEFAULT 0.00,
  `iva` decimal(20,2) DEFAULT 0.00,
  `cantidad` decimal(10,2) DEFAULT 0.00,
  `dto` decimal(20,2) DEFAULT 0.00,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



CREATE TABLE `ordenes_trabajos_tareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo_tarea_fk` int(11) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `precio` decimal(12,2) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `ordenes_trabajos_tipos_tareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;





-- 05/06
CREATE TABLE `ordenes_trabajos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_creado` datetime DEFAULT NULL,
  `fecha` date DEFAULT NULL COMMENT 'de la orden de trabajo',
  `id_tipoot_fk` int(11) DEFAULT NULL COMMENT 'FK a tabla tipos_ordenes_trabajos',
  `id_vehiculo_fk` int(11) DEFAULT NULL,
  `id_usuario_fk` int(11) DEFAULT NULL,
  `id_estadoot_fk` int(11) DEFAULT NULL COMMENT 'FK tabla ordenes_trabajo_estados',
  `id_empleado_fk` int(11) DEFAULT NULL COMMENT 'FK id empleado responsable de la OT',
  `responsable` varchar(100) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `blindado` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;




CREATE TABLE `ordenes_trabajos_estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(4) DEFAULT NULL,
  `color` varchar(10) DEFAULT '#FFF',
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO ordenes_trabajos_estados (descripcion,desc_corta,color,activo) VALUES
	 ('Borrador','BOR','#fdfd96',1),
	 ('Confirmado','CON','#84b6f4',1),
	 ('Impreso','IMP','#77dd77',1),
	 ('Realizado','REA','#ff6961',1);



CREATE TABLE `ordenes_trabajos_tipos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `desc_corta` varchar(5) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO ordenes_trabajos_tipos (descripcion,desc_corta,activo) VALUES
	 ('Service','SMP',1),
	 ('Checklist','CHK',1),
	 ('Rotura','ROT',1),
	 ('Mantenimiento','MANT',1),
   ('Entrega EPP','EPP',1),
	 ('Otro','OTR',1);



CREATE TABLE `ot_tareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ordentrabajo_fk` int(11) DEFAULT NULL,
  `id_tarea_fk` int(11) DEFAULT NULL,
  `tarea` varchar(100) DEFAULT NULL,
  `detalles` varchar(3000) DEFAULT NULL,
  `importe_total` decimal(14,2) DEFAULT NULL,
  `realizado` tinyint(1) DEFAULT 0,
  `id_imputacion_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



CREATE TABLE `ot_movimientos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_ordentrabajo_fk` bigint(20) DEFAULT NULL,
  `fecha_creado` datetime DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_repuesto_fk` int(11) DEFAULT NULL,
  `id_ubicacion_fk` int(11) DEFAULT NULL,
  `id_tipomovimiento_fk` int(11) DEFAULT NULL,
  `id_deposito_fk` int(11) DEFAULT NULL,
  `id_vehiculo_fk` int(11) DEFAULT NULL,
  `detalles` varchar(1000) DEFAULT NULL,
  `kms_iniciales` decimal(9,2) DEFAULT NULL,
  `kms_finales` decimal(9,2) DEFAULT NULL,
  `kms_totales` decimal(9,2) DEFAULT NULL,
  `id_imputacion_fk` int(11) DEFAULT NULL,
  `valor_total` decimal(12,2) DEFAULT NULL,
  `id_vehiculodestino_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;



-- 09/06

CREATE TABLE `ubicaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(15) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO ubicaciones (codigo,descripcion,activo) VALUES
	 ('del_iz','Direccion Izquierda',1),
	 ('del_der','Direccion derecha',1),
	 ('mot_int_iz','Motriz Interna Izquierda',1),
	 ('mot_ext_iz','Motriz Externa Izquierda',1),
	 ('mot_int_der','Motriz interna derecha',1),
	 ('mot_ext_der','Motriz Externa derecha',1),
	 ('esca_int_iz','Adicional Interna Izquierda',1),
	 ('esca_ext_iz','Adicional externa inzquierda',1),
	 ('esca_int_der','Adicional interna Derecha',1),
	 ('esca_ext_der','Adicional externa derecha',1);
INSERT INTO ubicaciones (codigo,descripcion,activo) VALUES
	 ('dir_int_iz','Eje Neumatico interno Izquierda',1),
	 ('dir_ext_iz','Direccional externo izquierda',1),
	 ('dir_int_der','Direccional Interno derecha',1),
	 ('dir_ext_der','Direccional externo derecha',1),
	 ('pri_int_iz','Primer eje interno izquierdo',1),
	 ('pri_ext_iz','Primer eje externo izquierdo',1),
	 ('pri_int_der','Primer eje interno derecho',1),
	 ('pri_ext_der','Primer eje externo derecho',1),
	 ('seg_int_iz','Segundo eje Interno izquierdo',1),
	 ('seg_ext_iz','Segundo eje externo izquierdo',1);
INSERT INTO ubicaciones (codigo,descripcion,activo) VALUES
	 ('seg_int_der','Segundo eje interno derecho',1),
	 ('seg_ext_der','Segundo eje externo derecho',1),
	 ('aux1','Primer auxilio',1),
	 ('aux2','Segundo auxilio',1);



CREATE TABLE `imputaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(5) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `tipos_movimientos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(5) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO tipos_movimientos (desc_corta,descripcion,activo) VALUES
	 ('ACOCH','Agregar a coche desde deposito ',1),
	 ('CADEP','de coche a un deposito',1),
	 ('COACO','DE COCHE A COCHE',0);




--26/06
CREATE TABLE `ordenes_trabajos_novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  `prioridad` ENUM('ALTA', 'MEDIA', 'BAJA') default null,
  `id_vehiculo_fk` int(11),
  `id_imputacion_fk` int(11),
  `id_ordentrabajo_fk` int (11) default null,
  `fecha` date default null,
  `id_usuariocreador_fk` int(11) default null,
  `estado` varchar(15),
  `id_empleado_fk` int(11) default null,
  PRIMARY KEY (`id`)
)

--04/07
ALTER TABLE tpellegrino.ot_movimientos ADD id_repuesto_ficha_fk INT NULL;

--07/07
ALTER TABLE tpellegrino.ordenes_trabajos_novedades ADD observaciones varchar(200) DEFAULT NULL;



-- 02/08

DROP TABLE IF EXISTS Productos;

CREATE TABLE Productos (
  id int(11) auto_increment primary key,
  Cod_Producto VARCHAR(50),
  Desc_Producto VARCHAR(50),
  id_rubro_fk INT(11),
  id_marca_fk INT(11),
  Stock int NULL,
  Costo DECIMAL(9,2),
  Porcentaje DECIMAL(9,2),
  Estado varchar(15),
  PuntoPed INT,
  Activo tinyint(1) default null,
  id_unmed_fk INT(11) default null
);


update productos set id_unmed_fk = 2

select * from productos

select * from marcas

delete from marcas


update marcas set activo = 1

update rubros set activo = 1

select * from PRODUCTOS

update productos set activo = 1 where estado = 'ACT'

update productos set activo = 0 where estado = 'BAJ'


ALTER TABLE lodenacho.productos ADD id_alicuota_iva_fk int(11) NULL;

update productos set id_alicuota_iva_fk = 1

update alicuotas_iva ai set activo = 1


CREATE TABLE `puntos_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_empresa_fk` int(11) DEFAULT NULL,
  `punto_venta` int(11) DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `habilita_recibo` tinyint(1) DEFAULT 1,
  `habilita_interno` tinyint(1) DEFAULT 0,
  `habilita_arca` tinyint(1) DEFAULT 0,
  `habilita_manual` tinyint(1) DEFAULT 0,
  `id_cargo_fk` int(11) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT 1,
  `id_tipo_comprobante_fk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `localidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_provincia_fk` int(5) DEFAULT NULL,
  `descripcion` varchar(60) DEFAULT NULL,
  `cp` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22974 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


-- transalonso.provincias definition

CREATE TABLE `provincias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `codigo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO provincias (id,descripcion,codigo) VALUES
	 (1,'Ciudad Autónoma de Buenos Aires (CABA)','AR-C'),
	 (2,'Buenos Aires','AR-B'),
	 (3,'Catamarca','AR-K'),
	 (4,'Córdoba','AR-X'),
	 (5,'Corrientes','AR-W'),
	 (6,'Entre Ríos','AR-E'),
	 (7,'Jujuy','AR-Y'),
	 (8,'Mendoza','AR-M'),
	 (9,'La Rioja','AR-F'),
	 (10,'Salta','AR-A');
INSERT INTO provincias (id,descripcion,codigo) VALUES
	 (11,'San Juan','AR-J'),
	 (12,'San Luis','AR-D'),
	 (13,'Santa Fe','AR-S'),
	 (14,'Santiago del Estero','AR-G'),
	 (15,'Tucumán','AR-T'),
	 (16,'Chaco','AR-H'),
	 (17,'Chubut','AR-U'),
	 (18,'Formosa','AR-P'),
	 (19,'Misiones','AR-N'),
	 (20,'Neuquén','AR-Q');
INSERT INTO provincias (id,descripcion,codigo) VALUES
	 (21,'La Pampa','AR-L'),
	 (22,'Río Negro','AR-R'),
	 (23,'Santa Cruz','AR-Z'),
	 (24,'Tierra del Fuego','AR-V');


   ALTER TABLE lodenacho.comprobantes_items ADD id_producto_fk decimal(9,2) DEFAULT NULL;

   ALTER TABLE lodenacho.comprobantes ADD punto_venta int DEFAULT NULL NULL;
ALTER TABLE lodenacho.comprobantes ADD id_puntoventa_fk int(11) DEFAULT NULL NULL;


--15/10
CREATE TABLE lodenacho.movimientos (
	id int(11) NOT NULL AUTO_INCREMENT,
	tipo tinyint(1) DEFAULT 0 NULL COMMENT '0 = Ingreso 1 = Egreso',
	id_usuario_creador_fk int(11) NULL,
	motivo varchar(100) NULL,
	fechaHora DATETIME NULL,
	CONSTRAINT movimientos_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


CREATE TABLE lodenacho.movimientos_detalle (
	id int(11) NOT NULL AUTO_INCREMENT,
	id_producto_fk int(11) NULL,
	cantidad float(9,2) NULL,
	CONSTRAINT movimientos_detalle_pk PRIMARY KEY (id)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


ALTER TABLE movimientos DROP COLUMN fechaHora;
ALTER TABLE movimientos ADD fecha DATE NULL;
ALTER TABLE movimientos ADD blindado TINYINT DEFAULT 0 NULL;
ALTER TABLE movimientos_detalle ADD id_movimiento_fk int(11) NULL;

--23/10
ALTER TABLE productos CHANGE PuntoPed stockMinimo DECIMAL(10,2) DEFAULT 0 NULL;



--23/12
CREATE TABLE equipos (
id int(11) auto_increment primary key,
nombre varchar(40) not null,
escudo varchar(200) default null,
activo tinyint(1) default 1
)

--24/12
CREATE TABLE partidos(
  id int(11) auto_increment primary key,
  fecha_hora datetime,
  id_equipoA_fk int(11),
  id_equipoB_fk int(11),
  estado tinyint(1) default 0,
  puntosA int(3) default 0,
  puntosB int(3) default 0
)


CREATE TABLE eventos_partido (
    id int auto_increment PRIMARY KEY,
    id_partido_fk INT NOT NULL,
    id_jugador_fk INT NOT NULL,
    evento VARCHAR(50) NOT NULL,         -- Ej: 'puntos', 'rebote', 'asistencia', 'falta', etc.
    periodo INT NOT NULL,
    tiempo_restante INT NOT NULL,        -- En segundos, o formato que uses
    fecha_hora TIMESTAMP DEFAULT NOW()  -- Opcional, para trazabilidad
);

alter table eventos_partido add column valor int not null


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



CREATE TABLE `cargos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `desc_corta` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `editable` tinyint(1) DEFAULT '1' COMMENT 'si se puede modificar (IDs: de 1 hasta 5 NO PERMITIDO)',
  `activo` tinyint(1) DEFAULT '1',
  `nivel` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;