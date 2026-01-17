const express = require('express')
const router = express.Router()
const controller = require('./controller')
const { auth, checkAcceso } = require('../../middlewares')

router.get('/productos', auth, checkAcceso('c'), controller.getLista)
router.post('/productos/getlistaAjax', auth, checkAcceso('c'), controller.getListaAjax)
router.post('/productos/getListaSelectAjax', auth, controller.getListaSelectAjax)
router.post('/productos/alta', auth, checkAcceso('a'), controller.postAlta)
router.post('/productos/getByIdAjax', auth, checkAcceso('c'), controller.getById)
router.post('/productos/modificar', auth, checkAcceso('m'), controller.postModificar)
router.post('/productos/eliminar', auth, checkAcceso('b'), controller.postEliminar)

module.exports = router
