const { queryMYSQL } = require("../../database");


exports.execQuery = (query, params) => {
    return queryMYSQL(query, params)
}

exports.getAll = () => {
	return queryMYSQL(`
        SELECT c.*, ci.descripcion AS descCondIvaTxt
        FROM clientes c
        LEFT JOIN condiciones_iva ci ON ci.id = c.id_condicioniva_fk
        ORDER BY c.activo DESC, c.razon_social
    `, [])
}

exports.getAllActivos = () => {
	return queryMYSQL(`
        SELECT c.*, ci.descripcion AS descCondIvaTxt
        FROM clientes c
        LEFT JOIN condiciones_iva ci ON ci.id = c.id_condicioniva_fk 
        WHERE c.activo = 1
    `, [])
}

exports.getById = id => {
	return queryMYSQL(`
        SELECT c.*
        FROM clientes c
        WHERE c.id=?
    `, [id])
}

exports.insert = o => {
    return queryMYSQL(`
        INSERT INTO clientes (razon_social, cuit, id_condicioniva_fk, direccion, 
            mail, telefono1, fecha_alta)
        VALUES (?,?,?,?,?,?,NOW())
    `, [o.razonSocial, o.cuit, o.condicionIva, o.direccion, o.mail, o.telefono1])
}

exports.update = o => {
    return queryMYSQL(`
        UPDATE clientes 
        SET razon_social=?, cuit=?, id_condicioniva_fk=?, direccion=?, 
            mail=?, telefono1=?, fecha_alta=?
        WHERE id=?
    `, [o.razonSocial, o.cuit, o.condicionIva, o.direccion, o.mail, o.telefono1, o.fechaAlta, o.id])
}

// exports.delete = id => {
//     return db.query(`UPDATE clientes SET activo=0 WHERE id=?`, [id])
// }