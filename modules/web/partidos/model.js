const { queryMYSQL } = require("../../../database")


exports.execQuery = (query, params) => {
    return queryMYSQL(query, params)
}

exports.getAll = () => {
    return queryMYSQL(`
       SELECT 
            p.*,
            eA.nombre AS equipoA,
            eB.nombre AS equipoB,
            (
                SELECT COALESCE(SUM(e.valor), 0)
                FROM eventos_partido e
                LEFT JOIN jugadores j ON e.id_jugador_fk = j.id
                WHERE e.id_partido_fk = p.id
                AND e.evento = 'puntos'
                AND j.id_equipo_fk = p.id_equipoA_fk
            ) AS puntosEquipoA,
            (
                SELECT COALESCE(SUM(e.valor), 0)
                FROM eventos_partido e
                LEFT JOIN jugadores j ON e.id_jugador_fk = j.id
                WHERE e.id_partido_fk = p.id
                AND e.evento = 'puntos'
                AND j.id_equipo_fk = p.id_equipoB_fk
            ) AS puntosEquipoB
        FROM partidos p
        LEFT JOIN equipos eA ON p.id_equipoA_fk = eA.id
        LEFT JOIN equipos eB ON p.id_equipoB_fk = eB.id
        ORDER BY p.fecha_hora ASC;
    `, [])
}
