const { queryMYSQL } = require("../../database")


exports.execQuery = (query, params) => {
    return queryMYSQL(query, params)
}

exports.getAll = () => {
    return queryMYSQL(`
        SELECT mp.*, tmp.descripcion AS tipoTxt, u.descripcion AS unmedTxt
        FROM materias_primas mp
        LEFT JOIN tipos_materias_primas tmp ON mp.id_tipo_materia_prima_fk = tmp.id
        LEFT JOIN unmed u ON mp.id_unmed_fk = u.id
        ORDER BY mp.descripcion
    `, [])
}

exports.getAllbyActivo = a => {
    return queryMYSQL(`
        SELECT mp.*, tmp.descripcion AS tipoTxt, u.descripcion AS unmedTxt
        FROM materias_primas mp
        LEFT JOIN tipos_materias_primas tmp ON mp.id_tipo_materia_prima_fk = tmp.id
        LEFT JOIN unmed u ON mp.id_unmed_fk = u.id
        WHERE mp.activo = ?
        ORDER BY mp.descripcion
    `, [a])
}

exports.getById = id => {
    return queryMYSQL(`
        SELECT mp.*, tmp.descripcion AS tipoTxt, u.descripcion AS unmedTxt
        FROM materias_primas mp
        LEFT JOIN tipos_materias_primas tmp ON mp.id_tipo_materia_prima_fk = tmp.id
        LEFT JOIN unmed u ON mp.id_unmed_fk = u.id
        WHERE mp.id = ?
    `, [id])
}

exports.getByDesc = async desc => {
    return queryMYSQL(`
        select mp.*, tmp.descripcion AS tipoTxt, u.descripcion AS unmedTxt
        FROM materias_primas mp
        LEFT JOIN tipos_materias_primas tmp ON mp.id_tipo_materia_prima_fk = tmp.id
        LEFT JOIN unmed u ON mp.id_unmed_fk = u.id
        WHERE mp.descripcion = ?
    `, [desc])
}

exports.insert = o => {
    return queryMYSQL(`
        INSERT INTO materias_primas (desc_corta, descripcion, id_unmed_fk, id_tipo_materia_prima_fk, costo) 
        VALUES (?, ?, ?, ?, ?)
    `, [o.desc_corta, o.descripcion, o.id_unmed_fk, o.id_tipo_materia_prima_fk, o.costo])
}

exports.update = o => {
    return queryMYSQL(`
        UPDATE materias_primas 
        SET desc_corta=?, descripcion=?, id_unmed_fk=?, id_tipo_materia_prima_fk=?, costo=?, activo=? 
        WHERE id=?
    `, [o.desc_corta, o.descripcion, o.id_unmed_fk, o.id_tipo_materia_prima_fk, o.costo, o.activo, o.id])
}

exports.delete = async id => {
    return queryMYSQL(`
        DELETE FROM materias_primas 
        WHERE id = ?
    `, [id])
}