const { queryMYSQL } = require("../../database")


exports.execQuery = (query, params) => {
    return queryMYSQL(query, params)
}

exports.getAll = () => {
    return queryMYSQL(`
        SELECT tmp.*
        FROM tipos_materias_primas tmp
        ORDER BY tmp.descripcion
    `, [])
}

exports.getAllbyActivo = a => {
    return queryMYSQL(`
        SELECT tmp.*
        FROM tipos_materias_primas tmp
        WHERE tmp.activo = ?
        ORDER BY tmp.descripcion
    `, [a])
}

exports.getById = id => {
    return queryMYSQL(`
        SELECT tmp.*
        FROM tipos_materias_primas tmp
        WHERE tmp.id = ?
    `, [id])
}

exports.getByDesc = async desc => {
    return queryMYSQL(`
        select tmp.*
        FROM tipos_materias_primas tmp
        where tmp.descripcion = ?
    `, [desc])
}

exports.insert = o => {
    return queryMYSQL(`
        INSERT INTO tipos_materias_primas (desc_corta, descripcion) 
        VALUES (?, ?)
    `, [o.desc_corta, o.descripcion])
}

exports.update = o => {
    return queryMYSQL(`
        UPDATE tipos_materias_primas 
        SET desc_corta=?, descripcion=?, activo=? 
        WHERE id=?
    `, [o.desc_corta, o.descripcion, o.activo, o.id])
}

exports.delete = async id => {
    return queryMYSQL(`
        DELETE FROM tipos_materias_primas 
        WHERE id = ?
    `, [id])
}