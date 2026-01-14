const { queryMYSQL } = require("../../database")


exports.execQuery = (query, params) => {
    return queryMYSQL(query, params)
}

exports.getAll = () => {
    return queryMYSQL(`
        SELECT s.*
        FROM sub_Categorias s
        ORDER BY s.descripcion
    `, [])
}

exports.getAllbyActivo = a => {
    return queryMYSQL(`
        SELECT s.*
        FROM sub_Categorias s
        WHERE s.activo = ?
        ORDER BY s.descripcion
    `, [a])
}

exports.getById = id => {
    return queryMYSQL(`
        SELECT s.*
        FROM sub_Categorias s
        WHERE s.id = ?
    `, [id])
}

exports.getByDesc = async desc => {
    return queryMYSQL(`
        select s.*
        FROM sub_Categorias s
        where s.descripcion = ?
    `, [desc])
}

exports.insert = o => {
    return queryMYSQL(`
        INSERT INTO sub_Categorias (descripcion) 
        VALUES (?)
    `, [o.descripcion])
}

exports.update = o => {
    return queryMYSQL(`
        UPDATE sub_Categorias 
        SET descripcion=?, activo=? 
        WHERE id=?
    `, [ o.descripcion, o.activo, o.id])
}

exports.delete = async id => {
    return queryMYSQL(`
        DELETE FROM sub_Categorias 
        WHERE id = ?
    `, [id])
}