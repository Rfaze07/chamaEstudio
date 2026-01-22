const model = require('./model')
const utils = require('../../utils')
const eventos = require("../eventos/controller")


exports.getLista = async (req, res) => {
    try {
        res.render('productos/views/index', {
            pagename: "Productos",
            permisos: req.session.user.permisos
        })
    } catch (error) {
        console.log(error)
        res.redirect('/inicio')
    }
}

exports.getListaAjax = async (req, res) => {
    try {
        let data = await model.getAll()
        if(!data.length) return res.json({ status: false, icon:"warning", title: "Alerta", text: "No existen registros cargados" })
        res.json({ status: true, data })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon:"error", title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

exports.getListaSelectAjax = async (req, res) => {
    try {
        const data = await model.getAllbyActivo(1)
        if(!data.length) return res.json({ status: false, icon:"warning", title: "Alerta", text: "No existen productos cargados" })
        return res.json({ status: true, data })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon: "error", title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

exports.postAlta = async (req, res) => {
    try {
        const validaciones = await ValidarCampos(req.body)
        if(!validaciones.status) return res.json(validaciones)

        let resInsert = await model.insert(req.body)
        if(!resInsert.affectedRows) return res.json({ status: false, icon:"error", title: "Error", text: "Hubo un error al procesar la solicitud" })
        await eventos.insertarEvento({ usuario: req.session.user.id, tabla: "Productos", acc: "a", registro: resInsert.insertId })
        res.json({ status: true, icon:"success", title: "Éxito", text: "Solicitud procesada correctamente" })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon:'error', title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

exports.getById = async (req, res) => {    
    const data = await model.getById(req.body.id)
    if(!data.length) return res.json({ status: false, icon:'error', title: "Error", text: "No existen registros cargados" })
    res.json({ status: true, data: data[0] })
}

exports.postModificar = async (req, res) => {
    try {
        const validaciones = await ValidarCampos(req.body)
        if(!validaciones.status) return res.json(validaciones)

        let result = await model.update(req.body)
        if(result.affectedRows == 0) return res.json({ status: false, icon:'error', title: "Error", text: "Hubo un error al procesar la solicitud" })
        await eventos.insertarEvento({ usuario: req.session.user.id, tabla: "Productos", acc: "m", registro: req.body.id })
        return res.json({ status: true, icon: "success", title: "Éxito", text: "Solicitud procesada correctamente" })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon: "error", title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

exports.postEliminar = async (req, res) => {
    try {
        let result = await model.delete(req.body.id)
        if(result.affectedRows == 0) return res.json({ status: false, icon: "error", title: "Error", text: "Hubo un error al procesar la solicitud" })
        await eventos.insertarEvento({ usuario: req.session.user.id, tabla: "Productos", acc: "b", registro: req.body.id })            
        return res.json({ status: true, icon: "success", title: "Éxito", text: "Solicitud procesada correctamente" })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon: "error", title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

const ValidarCampos = o => {
    return new Promise((resolve, reject) => {
        if(String(o.codigo).trim().length == 0) return resolve({ status: false, icon:'error', title: 'Error', text: 'Debe ingresar el código' })
        if(String(o.codigo).trim().length > 50) return resolve({ status: false, icon:'error', title: 'Error', text: 'El código supera la cantidad permitida' })
        if(String(o.nombre).trim().length == 0) return resolve({ status: false, icon:'error', title: 'Error', text: 'Debe ingresar el nombre' })
        if(String(o.nombre).trim().length > 150) return resolve({ status: false, icon:'error', title: 'Error', text: 'El nombre supera la cantidad permitida' })
        if(!o.id_subcategoria_fk || o.id_subcategoria_fk == 0) return resolve({ status: false, icon:'error', title: 'Error', text: 'Debe seleccionar una subcategoría' })
        if(!o.precio || parseFloat(o.precio) <= 0) return resolve({ status: false, icon:'error', title: 'Error', text: 'Debe ingresar un precio válido' })
        
        // Conversiones
        o.activo = utils.changeToBoolean(o.activo)
        o.activo_ecommerce = utils.changeToBoolean(o.activo_ecommerce)
        o.precio = parseFloat(o.precio)
        o.porc_ecommerce = o.porc_ecommerce ? parseFloat(o.porc_ecommerce) : null
        o.path_foto = o.path_foto || null

        return resolve({ status: true })
    })
}


//============================= Colores ============================//

exports.getColoresByProductoIdAjax = async (req, res) => {
    try {
        const data = await model.getColoresByProductoId(req.body.id_producto_fk)
        if(!data.length) return res.json({ status: false, icon:"warning", title: "Alerta", text: "No existen colores cargados para este producto" })
        return res.json({ status: true, data })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon: "error", title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

exports.getColorByIdAjax = async (req, res) => {    
    const data = await model.getColorById(req.body.id)
    if(!data.length) return res.json({ status: false, icon:'error', title: "Error", text: "No existen registros cargados" })
    res.json({ status: true, data: data[0] })
}

exports.postAltaColor = async (req, res) => {
    try {
        const validaciones = await ValidarCamposColor(req.body)
        if(!validaciones.status) return res.json(validaciones)
        let resInsert = await model.insertColor(req.body)
        if(!resInsert.affectedRows) return res.json({ status: false, icon:"error", title: "Error", text: "Hubo un error al procesar la solicitud" })
        await eventos.insertarEvento({ usuario: req.session.user.id, tabla: "Colores_Productos", acc: "a", registro: resInsert.insertId })
        res.json({ status: true, icon:"success", title: "Éxito", text: "Solicitud procesada correctamente" })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon:'error', title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

exports.postModificarColor = async (req, res) => {
    try {
        const validaciones = await ValidarCamposColor(req.body)
        if(!validaciones.status) return res.json(validaciones)
        let result = await model.updateColor(req.body)
        if(result.affectedRows == 0) return res.json({ status: false, icon:'error', title: "Error", text: "Hubo un error al procesar la solicitud" })
        await eventos.insertarEvento({ usuario: req.session.user.id, tabla: "Colores_Productos", acc: "m", registro: req.body.id }) 
        return res.json({ status: true, icon: "success", title: "Éxito", text: "Solicitud procesada correctamente" })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon: "error", title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

exports.postEliminarColor = async (req, res) => {
    try {
        let result = await model.deleteColor(req.body.id)
        if(result.affectedRows == 0) return res.json({ status: false, icon: "error", title: "Error", text: "Hubo un error al procesar la solicitud" })
        await eventos.insertarEvento({ usuario: req.session.user.id, tabla: "Colores_Productos", acc: "b", registro: req.body.id })            
        return res.json({ status: true, icon: "success", title: "Éxito", text: "Solicitud procesada correctamente" })
    } catch (error) {
        console.log(error)
        return res.json({ status: false, icon: "error", title: "Error", text: "Hubo un error al procesar la solicitud" })
    }
}

const ValidarCamposColor = o => {
    return new Promise((resolve, reject) => {
        if(!o.id_producto_fk || o.id_producto_fk == 0) return resolve({ status: false, icon:'error', title: 'Error', text: 'Debe seleccionar un producto' })
        if(String(o.descripcion).trim().length == 0) return resolve({ status: false, icon:'error', title: 'Error', text: 'Debe ingresar el color' })
        if(String(o.descripcion).trim().length > 100) return resolve({ status: false, icon:'error', title: 'Error', text: 'El color supera la cantidad permitida' })
       
        if(o.codigo_color && String(o.codigo_color).trim().length > 50) return resolve({ status: false, icon:'error', title: 'Error', text: 'El código de color supera la cantidad permitida' })
        return resolve({ status: true })
    })
}