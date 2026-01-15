const { queryMYSQL } = require("../../database")


exports.execQuery = (query, params) => {
    return queryMYSQL(query, params)
}

exports.getAll = () => {
    return queryMYSQL(`
        SELECT 
            c.*,
            sc.descripcion AS categoria
        FROM sub_Categorias c
        LEFT JOIN categorias sc ON sc.id = c.id_categoria_fk
        ORDER BY c.descripcion
    `, [])
}

exports.getAllbyActivo = a => {
    return queryMYSQL(`
        SELECT c.*
        FROM sub_Categorias c
        WHERE c.activo = ?
        ORDER BY c.descripcion
    `, [a])
}

exports.getById = id => {
    return queryMYSQL(`
        SELECT c.*
        FROM sub_Categorias c 
        WHERE c.id = ?
    `, [id])
}

exports.getByDesc = async desc => {
    return queryMYSQL(`
        select c.*
        FROM sub_Categorias c 
        where c.descripcion = ?
    `, [desc])
}

exports.insert = o => {
    return queryMYSQL(`
        INSERT INTO sub_Categorias (desc_corta, descripcion, id_categoria_fk) 
        VALUES (?, ?, ?)
    `, [o.desc_corta, o.descripcion, o.id_categoria_fk])
}

exports.update = o => {
    return queryMYSQL(`
        UPDATE sub_Categorias
        SET desc_corta = ?,
            descripcion = ?,
            id_categoria_fk = ?,
            activo = ?
        WHERE id = ?
    `, [o.desc_corta, o.descripcion, o.id_categoria_fk, o.activo, o.id])
}

exports.delete = async id => {
    return queryMYSQL(`
        DELETE FROM sub_Categorias 
        WHERE id = ?
    `, [id])
}