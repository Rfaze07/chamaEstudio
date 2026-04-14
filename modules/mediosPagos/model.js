const { queryMYSQL } = require("../../database")


exports.execQuery = (query, params) => {
    return queryMYSQL(query, params)
}

exports.getAll = () => {
    return queryMYSQL(`
        SELECT mp.*
        FROM medios_pagos mp
        ORDER BY mp.descripcion
    `, [])
}

exports.getAllbyActivo = a => {
    return queryMYSQL(`
        SELECT mp.*
        FROM medios_pagos mp
        WHERE mp.activo = ?
        ORDER BY mp.descripcion
    `, [a])
}

exports.getById = id => {
    return queryMYSQL(`
        SELECT mp.*
        FROM medios_pagos mp
        WHERE mp.id = ?
    `, [id])
}

exports.getByDesc = async desc => {
    return queryMYSQL(`
        SELECT mp.*
        FROM medios_pagos mp
        WHERE mp.descripcion = ?
    `, [desc])
}

exports.insert = o => {
    return queryMYSQL(`
        INSERT INTO medios_pagos (desc_corta, descripcion) 
        VALUES (?, ?)
    `, [o.desc_corta, o.descripcion])
}

exports.update = o => {
    return queryMYSQL(`
        UPDATE medios_pagos 
        SET desc_corta=?, descripcion=?, activo=? 
        WHERE id=?
    `, [o.desc_corta, o.descripcion, o.activo, o.id])
}

exports.delete = async id => {
    return queryMYSQL(`
        DELETE FROM medios_pagos 
        WHERE id = ?
    `, [id])
}