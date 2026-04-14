const express = require('express')
const router = express.Router()
const controller = require('./controller')
const { auth, checkAcceso } = require('../../middlewares')

router.get('/mediosPagos', auth, checkAcceso('c'), controller.getLista)
router.post('/mediosPagos/getlistaAjax', auth, checkAcceso('c'), controller.getListaAjax)
router.post('/mediosPagos/getListaSelectAjax', auth, controller.getListaSelectAjax)
router.post('/mediosPagos/alta', auth, checkAcceso('a'), controller.postAlta)
router.post('/mediosPagos/getByIdAjax', auth, checkAcceso('c'), controller.getById)
router.post('/mediosPagos/modificar', auth, checkAcceso('m'), controller.postModificar)
router.post('/mediosPagos/eliminar', auth, checkAcceso('b'), controller.postEliminar)

module.exports = router