const { queryMYSQL } = require("../../database")


exports.execQuery = (query, params) => {
    return queryMYSQL(query, params)
}

exports.getAll = () => {
    return queryMYSQL(`
        SELECT p.*, s.descripcion as subcategoria
        FROM productos p
        LEFT JOIN sub_Categorias s ON p.id_subcategoria_fk = s.id
        ORDER BY p.nombre
    `, [])
}

exports.getAllbyActivo = a => {
    return queryMYSQL(`
        SELECT p.*, s.descripcion as subcategoria
        FROM productos p
        LEFT JOIN sub_Categorias s ON p.id_subcategoria_fk = s.id
        WHERE p.activo = ?
        ORDER BY p.nombre
    `, [a])
}

exports.getById = id => {
    return queryMYSQL(`
        SELECT p.*, s.id_categoria_fk
        FROM productos p 
        LEFT JOIN sub_Categorias s ON p.id_subcategoria_fk = s.id
        WHERE p.id = ?
    `, [id])
}

exports.getByCodigo = async codigo => {
    return queryMYSQL(`
        SELECT p.*
        FROM productos p 
        WHERE p.codigo = ?
    `, [codigo])
}

exports.insert = o => {
    return queryMYSQL(`
        INSERT INTO productos (codigo, nombre, id_subcategoria_fk, descripcion, path_foto, precio, porc_ecommerce, activo_ecommerce, activo) 
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
    `, [o.codigo, o.nombre, o.id_subcategoria_fk, o.descripcion, o.path_foto, o.precio, o.porc_ecommerce, o.activo_ecommerce, o.activo])
}

exports.update = o => {
    return queryMYSQL(`
        UPDATE productos 
        SET codigo=?, nombre=?, id_subcategoria_fk=?, descripcion=?, path_foto=?, precio=?, porc_ecommerce=?, activo_ecommerce=?, activo=? 
        WHERE id=?
    `, [o.codigo, o.nombre, o.id_subcategoria_fk, o.descripcion, o.path_foto, o.precio, o.porc_ecommerce, o.activo_ecommerce, o.activo, o.id])
}

exports.delete = async id => {
    return queryMYSQL(`
        DELETE FROM productos 
        WHERE id = ?
    `, [id])
}
